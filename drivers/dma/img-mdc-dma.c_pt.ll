; ModuleID = '/llk/IR_all_yes/drivers/dma/img-mdc-dma.c_pt.bc'
source_filename = "../drivers/dma/img-mdc-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mdc_dma_soc_data = type { ptr, ptr }
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
%struct.mdc_dma = type { %struct.dma_device, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, [32 x %struct.mdc_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mdc_chan = type { ptr, %struct.virt_dma_chan, %struct.dma_slave_config, ptr, i32, i32, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.mdc_tx_desc = type { ptr, %struct.virt_dma_desc, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mdc_hw_list_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_img_mdc_dma__253_1086_mdc_dma_driver_init6 = internal global ptr @mdc_dma_driver_init, section ".initcall6.init", align 4
@mdc_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mdc_dma_probe, ptr @mdc_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mdc_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_mdc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mdc_dma_driver_exit = internal global ptr @mdc_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description254 = internal constant [71 x i8] c"img_mdc_dma.description=IMG Multi-threaded DMA Controller (MDC) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [61 x i8] c"img_mdc_dma.author=Andrew Bresticker <abrestic@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [41 x i8] c"img_mdc_dma.file=drivers/dma/img-mdc-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [27 x i8] c"img_mdc_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img-mdc-dma\00", [20 x i8] zeroinitializer }, align 32
@mdc_dma_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,pistachio-mdc-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pistachio_mdc_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_mdc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_mdc_suspend_late, ptr @img_mdc_resume_early, ptr @img_mdc_suspend_late, ptr @img_mdc_resume_early, ptr @img_mdc_suspend_late, ptr @img_mdc_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_mdc_runtime_suspend, ptr @img_mdc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img,cr-periph\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"img,max-burst-multiplier\00", [39 x i8] zeroinitializer }, align 32
@mdc_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1010, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MDC with %u channels and %u threads\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mdc_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/dma/img-mdc-dma.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdc_dma_probe._entry_ptr = internal global ptr @mdc_dma_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mdc_issue_desc.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 0, i8 -121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img_mdc_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mdc_issue_desc\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Issuing descriptor on channel %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mdc_chan_irq.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.7, ptr @.str.14, i8 0, i8 -65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mdc_chan_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ on channel %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mdc_chan_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.7, i32 775, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"IRQ with no active descriptor on channel %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mdc_chan_irq._entry_ptr = internal global ptr @mdc_chan_irq._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.18, ptr @.str.19, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@pistachio_mdc_data = internal constant { %struct.mdc_dma_soc_data, [24 x i8] } { %struct.mdc_dma_soc_data { ptr @pistachio_mdc_enable_chan, ptr @pistachio_mdc_disable_chan }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"mdc_dma_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1077, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1079, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"mdc_dma_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 864, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"img_mdc_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1070, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 907, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 911, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 941, i32 42 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 944, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1009, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 540, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 764, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 773, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 101, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"pistachio_mdc_data\00", align 1
@___asan_gen_.98 = private constant [29 x i8] c"../drivers/dma/img-mdc-dma.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 859, i32 38 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_mdc_dma_driver_exit, ptr @__initcall__kmod_img_mdc_dma__253_1086_mdc_dma_driver_init6, ptr @mdc_chan_irq._entry, ptr @mdc_chan_irq._entry_ptr, ptr @mdc_dma_driver_exit, ptr @mdc_dma_probe._entry, ptr @mdc_dma_probe._entry_ptr, ptr @mdc_dma_driver, ptr @.str, ptr @mdc_dma_of_match, ptr @img_mdc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pistachio_mdc_data], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc_dma_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_mdc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc_chan_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mdc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mdc_dma_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdc_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mdc_dma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8512, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup140_crit_edge, label %if.end

entry.cleanup140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %soc = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 11
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %soc, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call3) #8
  %regs = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup140

if.end11:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call13 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  %periph_regs = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %periph_regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %periph_regs, align 4
  %cmp.i245 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call13 to i32
  br label %cleanup140

if.end19:                                         ; preds = %if.end11
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %clk = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21, ptr %clk, align 4
  %cmp.i246 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call21 to i32
  br label %cleanup140

if.end27:                                         ; preds = %if.end19
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #8
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 2304
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !64
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %shr = lshr i32 %14, 8
  %and = and i32 %shr, 255
  %nr_channels = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %nr_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %nr_channels, align 4
  %shr37 = lshr i32 %14, 16
  %and38 = and i32 %shr37, 255
  %shl = shl nuw i32 1, %and38
  %nr_threads = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %nr_threads to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl, ptr %nr_threads, align 4
  %and40 = and i32 %14, 255
  %shl41 = shl nuw i32 1, %and40
  %div = sdiv i32 %shl41, 8
  %bus_width = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %bus_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %bus_width, align 4
  %sub = sub nsw i32 16777216, %div
  %max_xfer_size = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %max_xfer_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %max_xfer_size, align 4
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef %nr_channels, i32 noundef 1, i32 noundef 0) #8
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %max_burst_mult = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 9
  %call.i.i247 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef %max_burst_mult, i32 noundef 1, i32 noundef 0) #8
  %23 = tail call i32 @llvm.smin.i32(i32 %call.i.i247, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i247)
  %tobool50.not = icmp sgt i32 %call.i.i247, -1
  br i1 %tobool50.not, label %if.end52, label %if.end27.cleanup140_crit_edge

if.end27.cleanup140_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.end52:                                         ; preds = %if.end27
  %dev55 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %24 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %dev55, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %25 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mdc_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %26 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mdc_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %27 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mdc_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %28 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mdc_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %29 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mdc_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %30 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mdc_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %31 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mdc_issue_pending, ptr %device_issue_pending, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %32 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mdc_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %33 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mdc_synchronize, ptr %device_synchronize, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %34 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mdc_slave_config, ptr %device_config, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %35 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %36 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %residue_granularity, align 4
  %37 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not260 = icmp eq i32 %38, 0
  br i1 %cmp.not260, label %if.end52.for.end_crit_edge, label %for.body.lr.ph

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end52
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %39 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_load4_noabort(i32 %39)
  %src_addr_widths.promoted = load i32, ptr %src_addr_widths, align 4
  %40 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_load4_noabort(i32 %40)
  %dst_addr_widths.promoted = load i32, ptr %dst_addr_widths, align 4
  %41 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus_width, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %or73263 = phi i32 [ %dst_addr_widths.promoted, %for.body.lr.ph ], [ %or73, %for.body.for.body_crit_edge ]
  %or262 = phi i32 [ %src_addr_widths.promoted, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.0261 = phi i32 [ 1, %for.body.lr.ph ], [ %shl74, %for.body.for.body_crit_edge ]
  %shl69 = shl nuw i32 1, %i.0261
  %or = or i32 %or262, %shl69
  %or73 = or i32 %or73263, %shl69
  %shl74 = shl i32 %i.0261, 1
  %cmp.not = icmp ugt i32 %shl74, %42
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %src_addr_widths, align 4
  %44 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or73, ptr %dst_addr_widths, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end52.for.end_crit_edge
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %channels, ptr %prev.i, align 4
  %47 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp78264.not = icmp eq i32 %48, 0
  br i1 %cmp78264.not, label %for.end.for.end99_crit_edge, label %for.body79.lr.ph

for.end.for.end99_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end99

for.body79.lr.ph:                                 ; preds = %for.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body79

for.body79:                                       ; preds = %for.inc98.for.body79_crit_edge, %for.body79.lr.ph
  %i.1265 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc, %for.inc98.for.body79_crit_edge ]
  %arrayidx = getelementptr %struct.mdc_dma, ptr %call.i, i32 0, i32 12, i32 %i.1265
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %arrayidx, align 4
  %chan_nr = getelementptr %struct.mdc_dma, ptr %call.i, i32 0, i32 12, i32 %i.1265, i32 7
  %50 = ptrtoint ptr %chan_nr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.1265, ptr %chan_nr, align 4
  %call82 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.1265) #8
  %irq = getelementptr %struct.mdc_dma, ptr %call.i, i32 0, i32 12, i32 %i.1265, i32 4
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call82, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp84 = icmp slt i32 %call82, 0
  br i1 %cmp84, label %for.body79.cleanup140_crit_edge, label %if.end87

for.body79.cleanup140_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.end87:                                         ; preds = %for.body79
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end87.dev_name.exit_crit_edge

if.end87.dev_name.exit_crit_edge:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end87.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %55, %if.end.i ], [ %53, %if.end87.dev_name.exit_crit_edge ]
  %call.i248 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call82, ptr noundef nonnull @mdc_chan_irq, ptr noundef null, i32 noundef 4, ptr noundef %retval.0.i, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %cmp93 = icmp slt i32 %call.i248, 0
  br i1 %cmp93, label %dev_name.exit.cleanup140_crit_edge, label %for.inc98

dev_name.exit.cleanup140_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

for.inc98:                                        ; preds = %dev_name.exit
  %vc = getelementptr %struct.mdc_dma, ptr %call.i, i32 0, i32 12, i32 %i.1265, i32 1
  %desc_free = getelementptr %struct.mdc_dma, ptr %call.i, i32 0, i32 12, i32 %i.1265, i32 1, i32 2
  %56 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mdc_desc_free, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %vc, ptr noundef nonnull %call.i) #8
  %inc = add nuw i32 %i.1265, 1
  %57 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_channels, align 4
  %cmp78 = icmp ult i32 %inc, %58
  br i1 %cmp78, label %for.inc98.for.body79_crit_edge, label %for.inc98.for.end99_crit_edge

for.inc98.for.end99_crit_edge:                    ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end99

for.inc98.for.body79_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body79

for.end99:                                        ; preds = %for.inc98.for.end99_crit_edge, %for.end.for.end99_crit_edge
  %init_name.i249 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %init_name.i249 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i249, align 8
  %tobool.not.i250 = icmp eq ptr %60, null
  br i1 %tobool.not.i250, label %if.end.i251, label %for.end99.dev_name.exit253_crit_edge

for.end99.dev_name.exit253_crit_edge:             ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit253

if.end.i251:                                      ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  br label %dev_name.exit253

dev_name.exit253:                                 ; preds = %if.end.i251, %for.end99.dev_name.exit253_crit_edge
  %retval.0.i252 = phi ptr [ %62, %if.end.i251 ], [ %60, %for.end99.dev_name.exit253_crit_edge ]
  %call103 = tail call ptr @dmam_pool_create(ptr noundef %retval.0.i252, ptr noundef %dev, i32 noundef 36, i32 noundef 4, i32 noundef 0) #8
  %desc_pool = getelementptr inbounds %struct.mdc_dma, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call103, ptr %desc_pool, align 4
  %tobool105.not = icmp eq ptr %call103, null
  br i1 %tobool105.not, label %dev_name.exit253.cleanup140_crit_edge, label %if.end107

dev_name.exit253.cleanup140_crit_edge:            ; preds = %dev_name.exit253
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.end107:                                        ; preds = %dev_name.exit253
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %64 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i254 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i254, label %if.end107.if.end117_crit_edge, label %if.then111

if.end107.if.end117_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then111:                                       ; preds = %if.end107
  %call113 = tail call i32 @img_mdc_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then111.if.end117_crit_edge, label %if.then111.cleanup140_crit_edge

if.then111.cleanup140_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.then111.if.end117_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.end117:                                        ; preds = %if.then111.if.end117_crit_edge, %if.end107.if.end117_crit_edge
  %call119 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end117.suspend_crit_edge

if.end117.suspend_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %suspend

if.end122:                                        ; preds = %if.end117
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %call125 = tail call i32 @of_dma_controller_register(ptr noundef %66, ptr noundef nonnull @mdc_of_xlate, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %do.end, label %unregister

do.end:                                           ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_channels, align 4
  %69 = ptrtoint ptr %nr_threads to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_threads, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %68, i32 noundef %70) #11
  br label %cleanup140

unregister:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #8
  br label %suspend

suspend:                                          ; preds = %unregister, %if.end117.suspend_crit_edge
  %ret.0 = phi i32 [ %call119, %if.end117.suspend_crit_edge ], [ %call125, %unregister ]
  %71 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i256 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i256)
  %tobool.not.i257 = icmp ult i16 %bf.load.i256, 8192
  br i1 %tobool.not.i257, label %suspend.if.end138_crit_edge, label %if.then135

suspend.if.end138_crit_edge:                      ; preds = %suspend
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then135:                                       ; preds = %suspend
  call void @__sanitizer_cov_trace_pc() #10
  %call137 = tail call i32 @img_mdc_runtime_suspend(ptr noundef %dev)
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %suspend.if.end138_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup140

cleanup140:                                       ; preds = %if.end138, %do.end, %if.then111.cleanup140_crit_edge, %dev_name.exit253.cleanup140_crit_edge, %dev_name.exit.cleanup140_crit_edge, %for.body79.cleanup140_crit_edge, %if.end27.cleanup140_crit_edge, %if.then24, %if.then16, %if.then8, %entry.cleanup140_crit_edge
  %retval.2 = phi i32 [ %3, %if.then8 ], [ %7, %if.then16 ], [ %9, %if.then24 ], [ %ret.0, %if.end138 ], [ 0, %do.end ], [ -12, %entry.cleanup140_crit_edge ], [ %23, %if.end27.cleanup140_crit_edge ], [ -12, %dev_name.exit253.cleanup140_crit_edge ], [ %call113, %if.then111.cleanup140_crit_edge ], [ %call82, %for.body79.cleanup140_crit_edge ], [ %call.i248, %dev_name.exit.cleanup140_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_dma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #8
  tail call void @dma_async_device_unregister(ptr noundef %1) #8
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %cmp.not44 = icmp eq ptr %5, %channels
  br i1 %cmp.not44, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %mchan.0 = getelementptr i8, ptr %.pn.in45, i32 -36
  %6 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in45, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in45, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in45, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %irq = getelementptr i8, ptr %.pn.in45, i32 200
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %16, ptr noundef %mchan.0) #8
  %task = getelementptr i8, ptr %.pn.in45, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #8
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %17 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp eq i32 %18, 2
  br i1 %cmp.i, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.mdc_dma, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mdc_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %curr_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_phys) #8
  %2 = ptrtoint ptr %curr_phys to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %curr_phys, align 4, !annotation !66
  %tobool.not = icmp ne ptr %sgl, null
  %3 = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  %or.cond = and i1 %tobool.not, %4
  br i1 %or.cond, label %if.end4, label %entry.cleanup37_crit_edge

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 1
  %dst_addr_width.i = getelementptr i8, ptr %chan, i32 196
  %src_addr_width.i = getelementptr i8, ptr %chan, i32 192
  %width.0.in.i = select i1 %cmp.i, ptr %dst_addr_width.i, ptr %src_addr_width.i
  %5 = ptrtoint ptr %width.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %width.0.i = load i32, ptr %width.0.in.i, align 4
  %6 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %width.0.i, label %if.end4.cleanup37_crit_edge [
    i32 1, label %if.end4.sw.epilog.i_crit_edge
    i32 2, label %if.end4.sw.epilog.i_crit_edge114
    i32 4, label %if.end4.sw.epilog.i_crit_edge115
    i32 8, label %if.end4.sw.epilog.i_crit_edge116
  ]

if.end4.sw.epilog.i_crit_edge116:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.sw.epilog.i_crit_edge115:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.sw.epilog.i_crit_edge114:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.sw.epilog.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end4.cleanup37_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

sw.epilog.i:                                      ; preds = %if.end4.sw.epilog.i_crit_edge, %if.end4.sw.epilog.i_crit_edge114, %if.end4.sw.epilog.i_crit_edge115, %if.end4.sw.epilog.i_crit_edge116
  %bus_width.i = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %width.0.i, i32 %8)
  %cmp2.i = icmp ugt i32 %width.0.i, %8
  br i1 %cmp2.i, label %sw.epilog.i.cleanup37_crit_edge, label %if.end7

sw.epilog.i.cleanup37_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end7:                                          ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2304, i32 noundef 148) #12
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup37_crit_edge, label %if.end11

if.end7.cleanup37_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp13105.not = icmp eq i32 %sg_len, 0
  br i1 %cmp13105.not, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %desc_pool = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 3
  %list_phys = getelementptr %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 2
  %list = getelementptr %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 3
  %max_xfer_size = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 10
  %src_addr = getelementptr i8, ptr %chan, i32 184
  %dst_addr = getelementptr i8, ptr %chan, i32 188
  %thread.i = getelementptr i8, ptr %chan, i32 240
  %dst_maxburst.i = getelementptr i8, ptr %chan, i32 204
  %list_len = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 6
  %list_xfer_size = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc.for.body_crit_edge ]
  %prev.0107 = phi ptr [ null, %for.body.lr.ph ], [ %prev.1.lcssa, %for.inc.for.body_crit_edge ]
  %sg.0106 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call34, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0106, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14.not100 = icmp eq i32 %12, 0
  br i1 %cmp14.not100, label %for.body.for.inc_crit_edge, label %while.body.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body.preheader:                             ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0106, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %buf_len.0104 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %12, %while.body.preheader ]
  %buf.0102 = phi i32 [ %add28, %cleanup.while.body_crit_edge ], [ %14, %while.body.preheader ]
  %prev.1101 = phi ptr [ %call15, %cleanup.while.body_crit_edge ], [ %prev.0107, %while.body.preheader ]
  %15 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_pool, align 4
  %call15 = call ptr @dma_pool_alloc(ptr noundef %16, i32 noundef 2048, ptr noundef nonnull %curr_phys) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %free_desc, label %if.end18

if.end18:                                         ; preds = %while.body
  %tobool19.not = icmp eq ptr %prev.1101, null
  %17 = ptrtoint ptr %curr_phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %curr_phys, align 4
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %list_phys to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %list_phys, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %node_addr = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %prev.1101, i32 0, i32 5
  %20 = ptrtoint ptr %node_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %node_addr, align 4
  %next_desc = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %prev.1101, i32 0, i32 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  %next_desc.sink = phi ptr [ %next_desc, %if.else ], [ %list, %if.then20 ]
  %21 = ptrtoint ptr %next_desc.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call15, ptr %next_desc.sink, align 4
  %22 = ptrtoint ptr %max_xfer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_xfer_size, align 4
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %buf_len.0104)
  br i1 %cmp.i, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_addr, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %29 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1342177144, ptr %call15, align 4
  %30 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %thread.i, align 4
  %shl.i = shl i32 %31, 28
  %shl3.i = shl i32 %31, 24
  %or.i = or i32 %shl.i, %shl3.i
  %shl5.i = shl i32 %31, 16
  %or6.i = or i32 %or.i, %shl5.i
  %readport_conf.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 1
  %32 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or6.i, ptr %readport_conf.i, align 4
  %read_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 2
  %33 = ptrtoint ptr %read_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %buf.0102, ptr %read_addr.i, align 4
  %write_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 3
  %34 = ptrtoint ptr %write_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %write_addr.i, align 4
  %sub.i = add i32 %24, -1
  %xfer_size.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 4
  %35 = ptrtoint ptr %xfer_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %xfer_size.i, align 4
  %node_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 5
  %36 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %node_addr.i, align 4
  %cmds_done.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 6
  %37 = ptrtoint ptr %cmds_done.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cmds_done.i, align 4
  %ctrl_status.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 7
  %38 = ptrtoint ptr %ctrl_status.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 17, ptr %ctrl_status.i, align 4
  %next_desc.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call15, i32 0, i32 8
  %39 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %next_desc.i, align 4
  %bus_width.i87 = getelementptr inbounds %struct.mdc_dma, ptr %28, i32 0, i32 8
  %40 = ptrtoint ptr %bus_width.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bus_width.i87, align 4
  %sub7.i = add i32 %41, -1
  %42 = or i32 %26, %buf.0102
  %43 = and i32 %sub7.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %44 = icmp ne i32 %43, 0
  %max_burst_mult.i = getelementptr inbounds %struct.mdc_dma, ptr %28, i32 0, i32 9
  %45 = ptrtoint ptr %max_burst_mult.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_burst_mult.i, align 4
  %sub15.i = sext i1 %44 to i32
  %.pn.i = add i32 %46, %sub15.i
  %max_burst.0.i = mul i32 %.pn.i, %41
  %47 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1342176888, ptr %call15, align 4
  %or22.i = or i32 %or6.i, 2
  %48 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or22.i, ptr %readport_conf.i, align 4
  %49 = ptrtoint ptr %bus_width.i87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bus_width.i87, align 4
  %51 = call i32 @llvm.cttz.i32(i32 %50, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %iszero.i.i.i = icmp eq i32 %50, 0
  %.op122.i = or i32 %51, -1342176888
  %or.i.i = select i1 %iszero.i.i.i, i32 -1, i32 %.op122.i
  %52 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i.i, ptr %call15, align 4
  %53 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dst_addr_width.i, align 4
  %55 = call i32 @llvm.cttz.i32(i32 %54, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %iszero.i.i106.i = icmp eq i32 %54, 0
  %.op.i.i = shl nuw nsw i32 %55, 4
  %shl.i.i = select i1 %iszero.i.i106.i, i32 1342176880, i32 %.op.i.i
  %or.i107.i = or i32 %shl.i.i, %or.i.i
  %56 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i107.i, ptr %call15, align 4
  %57 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst_maxburst.i, align 4
  %59 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dst_addr_width.i, align 4
  %mul27.i = mul i32 %60, %58
  %61 = call i32 @llvm.umin.i32(i32 %max_burst.0.i, i32 %mul27.i) #8
  %sub55.i = shl i32 %61, 4
  %shl56.i = add i32 %sub55.i, -16
  %or58.i = or i32 %shl56.i, %or22.i
  %62 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or58.i, ptr %readport_conf.i, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_addr, align 4
  call fastcc void @mdc_list_desc_config(ptr noundef %add.ptr.i, ptr noundef nonnull %call15, i32 noundef %dir, i32 noundef %64, i32 noundef %buf.0102, i32 noundef %24)
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.then24
  %65 = ptrtoint ptr %list_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %list_len, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %list_len, align 4
  %67 = ptrtoint ptr %list_xfer_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %list_xfer_size, align 4
  %add = add i32 %68, %24
  store i32 %add, ptr %list_xfer_size, align 4
  %add28 = add i32 %24, %buf.0102
  %sub = sub i32 %buf_len.0104, %24
  %cmp14.not = icmp eq i32 %sub, 0
  br i1 %cmp14.not, label %cleanup.for.inc_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %prev.1.lcssa = phi ptr [ %prev.0107, %for.body.for.inc_crit_edge ], [ %call15, %cleanup.for.inc_crit_edge ]
  %inc33 = add nuw i32 %i.0108, 1
  %call34 = call ptr @sg_next(ptr noundef %sg.0106) #8
  %exitcond.not = icmp eq i32 %inc33, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %vd = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1
  call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %flags, ptr %flags2.i, align 8
  %tx_submit.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %70 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5
  %71 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 8
  %tx_result.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %tx_result.i, align 8
  %residue.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %73 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %75, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %node.i, ptr %prev.i.i, align 4
  %77 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %desc_allocated.i, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %node.i, ptr %75, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup37

free_desc:                                        ; preds = %while.body
  %80 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %list, align 4
  %tobool.not7.i.i = icmp eq ptr %81, null
  br i1 %tobool.not7.i.i, label %free_desc.mdc_desc_free.exit_crit_edge, label %while.body.lr.ph.i.i

free_desc.mdc_desc_free.exit_crit_edge:           ; preds = %free_desc
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_desc_free.exit

while.body.lr.ph.i.i:                             ; preds = %free_desc
  %82 = ptrtoint ptr %list_phys to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %list_phys, align 8
  %84 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call7.i.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %desc_pool.i.i = getelementptr inbounds %struct.mdc_dma, ptr %87, i32 0, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %curr_phys.09.i.i = phi i32 [ %83, %while.body.lr.ph.i.i ], [ %91, %while.body.i.i.while.body.i.i_crit_edge ]
  %curr.08.i.i = phi ptr [ %81, %while.body.lr.ph.i.i ], [ %89, %while.body.i.i.while.body.i.i_crit_edge ]
  %next_desc.i.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %next_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %next_desc.i.i, align 4
  %node_addr.i.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %node_addr.i.i, align 4
  %92 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc_pool.i.i, align 4
  call void @dma_pool_free(ptr noundef %93, ptr noundef nonnull %curr.08.i.i, i32 noundef %curr_phys.09.i.i) #8
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %while.body.i.i.mdc_desc_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.mdc_desc_free.exit_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_desc_free.exit

mdc_desc_free.exit:                               ; preds = %while.body.i.i.mdc_desc_free.exit_crit_edge, %free_desc.mdc_desc_free.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup37

cleanup37:                                        ; preds = %mdc_desc_free.exit, %vchan_tx_prep.exit, %if.end7.cleanup37_crit_edge, %sw.epilog.i.cleanup37_crit_edge, %if.end4.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.0 = phi ptr [ null, %mdc_desc_free.exit ], [ %vd, %vchan_tx_prep.exit ], [ null, %entry.cleanup37_crit_edge ], [ null, %if.end7.cleanup37_crit_edge ], [ null, %if.end4.cleanup37_crit_edge ], [ null, %sw.epilog.i.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_phys) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mdc_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #2 align 64 {
entry:
  %curr_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_phys) #8
  %2 = ptrtoint ptr %curr_phys to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %curr_phys, align 4, !annotation !66
  %3 = or i32 %period_len, %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp ne i32 %3, 0
  %5 = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %6 = icmp ult i32 %5, 2
  %or.cond123 = and i1 %4, %6
  br i1 %or.cond123, label %if.end5, label %entry.cleanup50_crit_edge

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 1
  %dst_addr_width.i = getelementptr i8, ptr %chan, i32 196
  %src_addr_width.i = getelementptr i8, ptr %chan, i32 192
  %width.0.in.i = select i1 %cmp.i, ptr %dst_addr_width.i, ptr %src_addr_width.i
  %7 = ptrtoint ptr %width.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %width.0.i = load i32, ptr %width.0.in.i, align 4
  %8 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %width.0.i, label %if.end5.cleanup50_crit_edge [
    i32 1, label %if.end5.sw.epilog.i_crit_edge
    i32 2, label %if.end5.sw.epilog.i_crit_edge146
    i32 4, label %if.end5.sw.epilog.i_crit_edge147
    i32 8, label %if.end5.sw.epilog.i_crit_edge148
  ]

if.end5.sw.epilog.i_crit_edge148:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end5.sw.epilog.i_crit_edge147:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end5.sw.epilog.i_crit_edge146:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end5.sw.epilog.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end5.cleanup50_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

sw.epilog.i:                                      ; preds = %if.end5.sw.epilog.i_crit_edge, %if.end5.sw.epilog.i_crit_edge146, %if.end5.sw.epilog.i_crit_edge147, %if.end5.sw.epilog.i_crit_edge148
  %bus_width.i = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %width.0.i, i32 %10)
  %cmp2.i = icmp ugt i32 %width.0.i, %10
  br i1 %cmp2.i, label %sw.epilog.i.cleanup50_crit_edge, label %if.end8

sw.epilog.i.cleanup50_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

if.end8:                                          ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2304, i32 noundef 148) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup50_crit_edge, label %if.end12

if.end8.cleanup50_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

if.end12:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %cyclic = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %cyclic, align 8
  %list_xfer_size = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %list_xfer_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %buf_len, ptr %list_xfer_size, align 4
  %max_xfer_size = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %max_xfer_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_xfer_size, align 4
  %add = add i32 %period_len, -1
  %sub = add i32 %add, %16
  %div = udiv i32 %sub, %16
  %list_period_len = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %list_period_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %list_period_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp15.not136 = icmp eq i32 %buf_len, 0
  br i1 %cmp15.not136, label %if.end12.while.end45_crit_edge, label %while.body.lr.ph

if.end12.while.end45_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end45

while.body.lr.ph:                                 ; preds = %if.end12
  %desc_pool = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 3
  %list_phys = getelementptr %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 2
  %list = getelementptr %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 3
  %src_addr = getelementptr i8, ptr %chan, i32 184
  %dst_addr = getelementptr i8, ptr %chan, i32 188
  %thread.i = getelementptr i8, ptr %chan, i32 240
  %dst_maxburst.i = getelementptr i8, ptr %chan, i32 204
  %list_len = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 6
  br label %while.body

while.cond.loopexit:                              ; preds = %cleanup.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %buf_len.addr.1.lcssa = phi i32 [ %buf_len.addr.0137, %while.body.while.cond.loopexit_crit_edge ], [ %sub40, %cleanup.while.cond.loopexit_crit_edge ]
  %prev.1.lcssa = phi ptr [ %prev.0138, %while.body.while.cond.loopexit_crit_edge ], [ %call20, %cleanup.while.cond.loopexit_crit_edge ]
  %buf_addr.addr.1.lcssa = phi i32 [ %buf_addr.addr.0139, %while.body.while.cond.loopexit_crit_edge ], [ %add39, %cleanup.while.cond.loopexit_crit_edge ]
  %cmp15.not = icmp eq i32 %buf_len.addr.1.lcssa, 0
  br i1 %cmp15.not, label %while.cond.loopexit.while.end45_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.loopexit.while.end45_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end45

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %buf_addr.addr.0139 = phi i32 [ %buf_addr, %while.body.lr.ph ], [ %buf_addr.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %prev.0138 = phi ptr [ null, %while.body.lr.ph ], [ %prev.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %buf_len.addr.0137 = phi i32 [ %buf_len, %while.body.lr.ph ], [ %buf_len.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %18 = call i32 @llvm.umin.i32(i32 %buf_len.addr.0137, i32 %period_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18.not128 = icmp eq i32 %18, 0
  br i1 %cmp18.not128, label %while.body.while.cond.loopexit_crit_edge, label %while.body.while.body19_crit_edge

while.body.while.body19_crit_edge:                ; preds = %while.body
  br label %while.body19

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

while.body19:                                     ; preds = %cleanup.while.body19_crit_edge, %while.body.while.body19_crit_edge
  %buf_addr.addr.1132 = phi i32 [ %add39, %cleanup.while.body19_crit_edge ], [ %buf_addr.addr.0139, %while.body.while.body19_crit_edge ]
  %remainder.0131 = phi i32 [ %sub41, %cleanup.while.body19_crit_edge ], [ %18, %while.body.while.body19_crit_edge ]
  %prev.1130 = phi ptr [ %call20, %cleanup.while.body19_crit_edge ], [ %prev.0138, %while.body.while.body19_crit_edge ]
  %buf_len.addr.1129 = phi i32 [ %sub40, %cleanup.while.body19_crit_edge ], [ %buf_len.addr.0137, %while.body.while.body19_crit_edge ]
  %19 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc_pool, align 4
  %call20 = call ptr @dma_pool_alloc(ptr noundef %20, i32 noundef 2048, ptr noundef nonnull %curr_phys) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %free_desc, label %if.end23

if.end23:                                         ; preds = %while.body19
  %tobool24.not = icmp eq ptr %prev.1130, null
  %21 = ptrtoint ptr %curr_phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %curr_phys, align 4
  br i1 %tobool24.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %list_phys to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %list_phys, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %node_addr = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %prev.1130, i32 0, i32 5
  %24 = ptrtoint ptr %node_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %node_addr, align 4
  %next_desc = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %prev.1130, i32 0, i32 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  %next_desc.sink = phi ptr [ %next_desc, %if.else ], [ %list, %if.then25 ]
  %25 = ptrtoint ptr %next_desc.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call20, ptr %next_desc.sink, align 4
  %26 = ptrtoint ptr %max_xfer_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_xfer_size, align 4
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 %remainder.0131)
  br i1 %cmp.i, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst_addr, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %33 = ptrtoint ptr %call20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1342177144, ptr %call20, align 4
  %34 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %thread.i, align 4
  %shl.i = shl i32 %35, 28
  %shl3.i = shl i32 %35, 24
  %or.i = or i32 %shl.i, %shl3.i
  %shl5.i = shl i32 %35, 16
  %or6.i = or i32 %or.i, %shl5.i
  %readport_conf.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 1
  %36 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or6.i, ptr %readport_conf.i, align 4
  %read_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 2
  %37 = ptrtoint ptr %read_addr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %buf_addr.addr.1132, ptr %read_addr.i, align 4
  %write_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 3
  %38 = ptrtoint ptr %write_addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %30, ptr %write_addr.i, align 4
  %sub.i = add i32 %28, -1
  %xfer_size.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 4
  %39 = ptrtoint ptr %xfer_size.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i, ptr %xfer_size.i, align 4
  %node_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 5
  %40 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %node_addr.i, align 4
  %cmds_done.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 6
  %41 = ptrtoint ptr %cmds_done.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %cmds_done.i, align 4
  %ctrl_status.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 7
  %42 = ptrtoint ptr %ctrl_status.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 17, ptr %ctrl_status.i, align 4
  %next_desc.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call20, i32 0, i32 8
  %43 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %next_desc.i, align 4
  %bus_width.i108 = getelementptr inbounds %struct.mdc_dma, ptr %32, i32 0, i32 8
  %44 = ptrtoint ptr %bus_width.i108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bus_width.i108, align 4
  %sub7.i = add i32 %45, -1
  %46 = or i32 %30, %buf_addr.addr.1132
  %47 = and i32 %sub7.i, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp ne i32 %47, 0
  %max_burst_mult.i = getelementptr inbounds %struct.mdc_dma, ptr %32, i32 0, i32 9
  %49 = ptrtoint ptr %max_burst_mult.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_burst_mult.i, align 4
  %sub15.i = sext i1 %48 to i32
  %.pn.i = add i32 %50, %sub15.i
  %max_burst.0.i = mul i32 %.pn.i, %45
  %51 = ptrtoint ptr %call20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1342176888, ptr %call20, align 4
  %or22.i = or i32 %or6.i, 2
  %52 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or22.i, ptr %readport_conf.i, align 4
  %53 = ptrtoint ptr %bus_width.i108 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bus_width.i108, align 4
  %55 = call i32 @llvm.cttz.i32(i32 %54, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %iszero.i.i.i = icmp eq i32 %54, 0
  %.op122.i = or i32 %55, -1342176888
  %or.i.i = select i1 %iszero.i.i.i, i32 -1, i32 %.op122.i
  %56 = ptrtoint ptr %call20 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i, ptr %call20, align 4
  %57 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst_addr_width.i, align 4
  %59 = call i32 @llvm.cttz.i32(i32 %58, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %iszero.i.i106.i = icmp eq i32 %58, 0
  %.op.i.i = shl nuw nsw i32 %59, 4
  %shl.i.i = select i1 %iszero.i.i106.i, i32 1342176880, i32 %.op.i.i
  %or.i107.i = or i32 %shl.i.i, %or.i.i
  %60 = ptrtoint ptr %call20 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i107.i, ptr %call20, align 4
  %61 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dst_maxburst.i, align 4
  %63 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dst_addr_width.i, align 4
  %mul27.i = mul i32 %64, %62
  %65 = call i32 @llvm.umin.i32(i32 %max_burst.0.i, i32 %mul27.i) #8
  %sub55.i = shl i32 %65, 4
  %shl56.i = add i32 %sub55.i, -16
  %or58.i = or i32 %shl56.i, %or22.i
  %66 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or58.i, ptr %readport_conf.i, align 4
  br label %cleanup

if.else36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %src_addr, align 4
  call fastcc void @mdc_list_desc_config(ptr noundef %add.ptr.i, ptr noundef nonnull %call20, i32 noundef %dir, i32 noundef %68, i32 noundef %buf_addr.addr.1132, i32 noundef %28)
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.then35
  %69 = ptrtoint ptr %list_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %list_len, align 4
  %inc = add i32 %70, 1
  store i32 %inc, ptr %list_len, align 4
  %add39 = add i32 %28, %buf_addr.addr.1132
  %sub40 = sub i32 %buf_len.addr.1129, %28
  %sub41 = sub i32 %remainder.0131, %28
  %cmp18.not = icmp eq i32 %sub41, 0
  br i1 %cmp18.not, label %cleanup.while.cond.loopexit_crit_edge, label %cleanup.while.body19_crit_edge

cleanup.while.body19_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body19

cleanup.while.cond.loopexit_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

while.end45:                                      ; preds = %while.cond.loopexit.while.end45_crit_edge, %if.end12.while.end45_crit_edge
  %prev.0.lcssa = phi ptr [ null, %if.end12.while.end45_crit_edge ], [ %prev.1.lcssa, %while.cond.loopexit.while.end45_crit_edge ]
  %list_phys46 = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %list_phys46 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %list_phys46, align 8
  %node_addr47 = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %prev.0.lcssa, i32 0, i32 5
  %73 = ptrtoint ptr %node_addr47 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %node_addr47, align 4
  %vd = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1
  call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %74 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %flags, ptr %flags2.i, align 8
  %tx_submit.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %75 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5
  %76 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 8
  %tx_result.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %tx_result.i, align 8
  %residue.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %78 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %80, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.end45.vchan_tx_prep.exit_crit_edge

while.end45.vchan_tx_prep.exit_crit_edge:         ; preds = %while.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %while.end45
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %node.i, ptr %prev.i.i, align 4
  %82 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %desc_allocated.i, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %83 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %node.i, ptr %80, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %while.end45.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup50

free_desc:                                        ; preds = %while.body19
  %85 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %list, align 4
  %tobool.not7.i.i = icmp eq ptr %86, null
  br i1 %tobool.not7.i.i, label %free_desc.mdc_desc_free.exit_crit_edge, label %while.body.lr.ph.i.i

free_desc.mdc_desc_free.exit_crit_edge:           ; preds = %free_desc
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_desc_free.exit

while.body.lr.ph.i.i:                             ; preds = %free_desc
  %87 = ptrtoint ptr %list_phys to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %list_phys, align 8
  %89 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call7.i.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %desc_pool.i.i = getelementptr inbounds %struct.mdc_dma, ptr %92, i32 0, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %curr_phys.09.i.i = phi i32 [ %88, %while.body.lr.ph.i.i ], [ %96, %while.body.i.i.while.body.i.i_crit_edge ]
  %curr.08.i.i = phi ptr [ %86, %while.body.lr.ph.i.i ], [ %94, %while.body.i.i.while.body.i.i_crit_edge ]
  %next_desc.i.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i.i, i32 0, i32 8
  %93 = ptrtoint ptr %next_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %next_desc.i.i, align 4
  %node_addr.i.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %node_addr.i.i, align 4
  %97 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %desc_pool.i.i, align 4
  call void @dma_pool_free(ptr noundef %98, ptr noundef nonnull %curr.08.i.i, i32 noundef %curr_phys.09.i.i) #8
  %tobool.not.i.i = icmp eq ptr %94, null
  br i1 %tobool.not.i.i, label %while.body.i.i.mdc_desc_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.mdc_desc_free.exit_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_desc_free.exit

mdc_desc_free.exit:                               ; preds = %while.body.i.i.mdc_desc_free.exit_crit_edge, %free_desc.mdc_desc_free.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup50

cleanup50:                                        ; preds = %mdc_desc_free.exit, %vchan_tx_prep.exit, %if.end8.cleanup50_crit_edge, %sw.epilog.i.cleanup50_crit_edge, %if.end5.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.0 = phi ptr [ null, %mdc_desc_free.exit ], [ %vd, %vchan_tx_prep.exit ], [ null, %entry.cleanup50_crit_edge ], [ null, %if.end8.cleanup50_crit_edge ], [ null, %if.end5.cleanup50_crit_edge ], [ null, %sw.epilog.i.cleanup50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_phys) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mdc_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %curr_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_phys) #8
  %2 = ptrtoint ptr %curr_phys to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %curr_phys, align 4, !annotation !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup18_crit_edge, label %if.end

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2304, i32 noundef 148) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup18_crit_edge, label %while.body.lr.ph

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

while.body.lr.ph:                                 ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %list_xfer_size = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %list_xfer_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %list_xfer_size, align 4
  %desc_pool = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 3
  %list_phys = getelementptr %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 2
  %list = getelementptr %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 3
  %max_xfer_size = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 10
  %thread.i = getelementptr i8, ptr %chan, i32 240
  %list_len = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %prev.063 = phi ptr [ null, %while.body.lr.ph ], [ %call7, %cleanup.while.body_crit_edge ]
  %dest.addr.062 = phi i32 [ %dest, %while.body.lr.ph ], [ %add15, %cleanup.while.body_crit_edge ]
  %len.addr.061 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %src.addr.060 = phi i32 [ %src, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_pool, align 4
  %call7 = call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef 2048, ptr noundef nonnull %curr_phys) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %free_desc, label %if.end10

if.end10:                                         ; preds = %while.body
  %tobool11.not = icmp eq ptr %prev.063, null
  %8 = ptrtoint ptr %curr_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curr_phys, align 4
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %node_addr = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %prev.063, i32 0, i32 5
  %10 = ptrtoint ptr %node_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %node_addr, align 4
  %next_desc = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %prev.063, i32 0, i32 8
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %list_phys to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %list_phys, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12
  %next_desc.sink = phi ptr [ %next_desc, %if.then12 ], [ %list, %if.else ]
  %12 = ptrtoint ptr %next_desc.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %next_desc.sink, align 4
  %13 = ptrtoint ptr %max_xfer_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_xfer_size, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 %len.addr.061)
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %18 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1342177144, ptr %call7, align 4
  %19 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %thread.i, align 4
  %shl.i = shl i32 %20, 28
  %shl3.i = shl i32 %20, 24
  %or.i = or i32 %shl.i, %shl3.i
  %shl5.i = shl i32 %20, 16
  %or6.i = or i32 %or.i, %shl5.i
  %readport_conf.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 1
  %21 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or6.i, ptr %readport_conf.i, align 4
  %read_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 2
  %22 = ptrtoint ptr %read_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %src.addr.060, ptr %read_addr.i, align 4
  %write_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 3
  %23 = ptrtoint ptr %write_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dest.addr.062, ptr %write_addr.i, align 4
  %sub.i = add i32 %15, -1
  %xfer_size.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 4
  %24 = ptrtoint ptr %xfer_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %xfer_size.i, align 4
  %node_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 5
  %25 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %node_addr.i, align 4
  %cmds_done.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 6
  %26 = ptrtoint ptr %cmds_done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cmds_done.i, align 4
  %ctrl_status.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 7
  %27 = ptrtoint ptr %ctrl_status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 17, ptr %ctrl_status.i, align 4
  %next_desc.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %call7, i32 0, i32 8
  %28 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %next_desc.i, align 4
  %bus_width.i = getelementptr inbounds %struct.mdc_dma, ptr %17, i32 0, i32 8
  %29 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bus_width.i, align 4
  %sub7.i = add i32 %30, -1
  %31 = or i32 %dest.addr.062, %src.addr.060
  %32 = and i32 %sub7.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp ne i32 %32, 0
  %max_burst_mult.i = getelementptr inbounds %struct.mdc_dma, ptr %17, i32 0, i32 9
  %34 = ptrtoint ptr %max_burst_mult.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_burst_mult.i, align 4
  %sub15.i = sext i1 %33 to i32
  %.pn.i = add i32 %35, %sub15.i
  %36 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1342172792, ptr %call7, align 4
  %37 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bus_width.i, align 4
  %39 = call i32 @llvm.cttz.i32(i32 %38, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %iszero.i.i115.i = icmp eq i32 %38, 0
  %.op123.i = or i32 %39, -1342172792
  %or.i117.i = select i1 %iszero.i.i115.i, i32 -1, i32 %.op123.i
  %40 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i117.i, ptr %call7, align 4
  %41 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus_width.i, align 4
  %43 = call i32 @llvm.cttz.i32(i32 %42, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %iszero.i.i118.i = icmp eq i32 %42, 0
  %.op.i119.i = shl nuw nsw i32 %43, 4
  %shl.i120.i = select i1 %iszero.i.i118.i, i32 1342172784, i32 %.op.i119.i
  %or.i121.i = or i32 %shl.i120.i, %or.i117.i
  %44 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i121.i, ptr %call7, align 4
  %max_burst.0.i = shl i32 %30, 4
  %sub55.i = mul i32 %max_burst.0.i, %.pn.i
  %shl56.i = add i32 %sub55.i, -16
  %or58.i = or i32 %shl56.i, %or6.i
  %45 = ptrtoint ptr %readport_conf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or58.i, ptr %readport_conf.i, align 4
  %46 = ptrtoint ptr %list_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %list_len, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %list_len, align 4
  %add = add i32 %15, %src.addr.060
  %add15 = add i32 %15, %dest.addr.062
  %sub = sub i32 %len.addr.061, %15
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup
  %vd = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1
  call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %flags, ptr %flags2.i, align 8
  %tx_submit.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5
  %50 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 8
  %tx_result.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tx_result.i, align 8
  %residue.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %52 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %54, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.end.vchan_tx_prep.exit_crit_edge

while.end.vchan_tx_prep.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %node.i, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %desc_allocated.i, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %node.i, ptr %54, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %while.end.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup18

free_desc:                                        ; preds = %while.body
  %59 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %list, align 4
  %tobool.not7.i.i = icmp eq ptr %60, null
  br i1 %tobool.not7.i.i, label %free_desc.mdc_desc_free.exit_crit_edge, label %while.body.lr.ph.i.i

free_desc.mdc_desc_free.exit_crit_edge:           ; preds = %free_desc
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_desc_free.exit

while.body.lr.ph.i.i:                             ; preds = %free_desc
  %61 = ptrtoint ptr %list_phys to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %list_phys, align 8
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %desc_pool.i.i = getelementptr inbounds %struct.mdc_dma, ptr %66, i32 0, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %curr_phys.09.i.i = phi i32 [ %62, %while.body.lr.ph.i.i ], [ %70, %while.body.i.i.while.body.i.i_crit_edge ]
  %curr.08.i.i = phi ptr [ %60, %while.body.lr.ph.i.i ], [ %68, %while.body.i.i.while.body.i.i_crit_edge ]
  %next_desc.i.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %next_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next_desc.i.i, align 4
  %node_addr.i.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %node_addr.i.i, align 4
  %71 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc_pool.i.i, align 4
  call void @dma_pool_free(ptr noundef %72, ptr noundef nonnull %curr.08.i.i, i32 noundef %curr_phys.09.i.i) #8
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %while.body.i.i.mdc_desc_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.mdc_desc_free.exit_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_desc_free.exit

mdc_desc_free.exit:                               ; preds = %while.body.i.i.mdc_desc_free.exit_crit_edge, %free_desc.mdc_desc_free.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup18

cleanup18:                                        ; preds = %mdc_desc_free.exit, %vchan_tx_prep.exit, %if.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.0 = phi ptr [ null, %mdc_desc_free.exit ], [ %vd, %vchan_tx_prep.exit ], [ null, %entry.cleanup18_crit_edge ], [ null, %if.end.cleanup18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_phys) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_alloc_chan_resources(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call3 = tail call i32 @mdc_terminate_all(ptr noundef %chan)
  %soc = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %disable_chan = getelementptr inbounds %struct.mdc_dma_soc_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disable_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_chan, align 4
  tail call void %7(ptr noundef %add.ptr.i) #8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
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
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body4_crit_edge

if.then.i.i.do.body4_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge119 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge119, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body4_crit_edge

if.else.i.i.do.body4_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body4:                                         ; preds = %if.else.i.i.do.body4_crit_edge, %if.then.i.i.do.body4_crit_edge
  %lock = getelementptr i8, ptr %chan, i32 92
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call11 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %list_xfer_size = getelementptr i8, ptr %call11, i32 136
  %8 = ptrtoint ptr %list_xfer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %list_xfer_size, align 4
  br label %dma_set_residue.exit

if.else:                                          ; preds = %do.body4
  %desc = getelementptr i8, ptr %chan, i32 228
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.else.dma_set_residue.exit_crit_edge, label %land.lhs.true

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

land.lhs.true:                                    ; preds = %if.else
  %vd17 = getelementptr inbounds %struct.mdc_tx_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %vd17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vd17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp20 = icmp eq i32 %13, %cookie
  br i1 %cmp20, label %do.body24.preheader, label %land.lhs.true.dma_set_residue.exit_crit_edge

land.lhs.true.dma_set_residue.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

do.body24.preheader:                              ; preds = %land.lhs.true
  %chan_nr.i = getelementptr i8, ptr %chan, i32 244
  br label %do.body24

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %do.body24.preheader
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan_nr.i, align 4
  %mul.i = shl i32 %17, 6
  %add.i = or i32 %mul.i, 24
  %regs.i.i = getelementptr inbounds %struct.mdc_dma, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %23 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chan_nr.i, align 4
  %mul.i103 = shl i32 %24, 6
  %add.i104 = or i32 %mul.i103, 48
  %regs.i.i105 = getelementptr inbounds %struct.mdc_dma, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %regs.i.i105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i105, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %26, i32 %add.i104
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i106) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %30 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan_nr.i, align 4
  %mul.i108 = shl i32 %31, 6
  %add.i109 = or i32 %mul.i108, 24
  %regs.i.i110 = getelementptr inbounds %struct.mdc_dma, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %regs.i.i110 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i110, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %33, i32 %add.i109
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i111) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %35 = xor i32 %34, %20
  %36 = and i32 %35, -65537
  %cmp30.not = icmp eq i32 %36, 0
  br i1 %cmp30.not, label %do.end32, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.end32:                                         ; preds = %do.body24
  %37 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %shr34 = lshr i32 %38, 16
  %sub = sub i32 %38, %shr34
  %rem = and i32 %sub, 63
  %cmd_loaded = getelementptr inbounds %struct.mdc_tx_desc, ptr %11, i32 0, i32 5
  %39 = ptrtoint ptr %cmd_loaded to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmd_loaded, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool36.not = icmp eq i8 %40, 0
  br i1 %tobool36.not, label %do.end32.if.end39_crit_edge, label %if.else38

do.end32.if.end39_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.else38:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  %list_cmds_done = getelementptr inbounds %struct.mdc_tx_desc, ptr %11, i32 0, i32 9
  %41 = ptrtoint ptr %list_cmds_done to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %list_cmds_done, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %do.end32.if.end39_crit_edge
  %.pn = phi i32 [ %42, %if.else38 ], [ -1, %do.end32.if.end39_crit_edge ]
  %cmds.0 = add i32 %.pn, %rem
  %list_xfer_size40 = getelementptr inbounds %struct.mdc_tx_desc, ptr %11, i32 0, i32 8
  %43 = ptrtoint ptr %list_xfer_size40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %list_xfer_size40, align 4
  %list = getelementptr inbounds %struct.mdc_tx_desc, ptr %11, i32 0, i32 3
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %ldesc.0124 = load ptr, ptr %list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmds.0)
  %cmp41125 = icmp sgt i32 %cmds.0, 0
  br i1 %cmp41125, label %if.end39.for.body_crit_edge, label %if.end39.for.end_crit_edge

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end39.for.body_crit_edge
  %ldesc.0128 = phi ptr [ %ldesc.0, %for.body.for.body_crit_edge ], [ %ldesc.0124, %if.end39.for.body_crit_edge ]
  %i.0127 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end39.for.body_crit_edge ]
  %bytes.0126 = phi i32 [ %sub44, %for.body.for.body_crit_edge ], [ %44, %if.end39.for.body_crit_edge ]
  %xfer_size = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc.0128, i32 0, i32 4
  %46 = ptrtoint ptr %xfer_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xfer_size, align 4
  %add43.neg = xor i32 %47, -1
  %sub44 = add i32 %bytes.0126, %add43.neg
  %next_desc = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc.0128, i32 0, i32 8
  %inc = add nuw nsw i32 %i.0127, 1
  %48 = ptrtoint ptr %next_desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %ldesc.0 = load ptr, ptr %next_desc, align 4
  %exitcond.not = icmp eq i32 %inc, %cmds.0
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end39.for.end_crit_edge
  %bytes.0.lcssa = phi i32 [ %44, %if.end39.for.end_crit_edge ], [ %sub44, %for.body.for.end_crit_edge ]
  %ldesc.0.lcssa = phi ptr [ %ldesc.0124, %if.end39.for.end_crit_edge ], [ %ldesc.0, %for.body.for.end_crit_edge ]
  %tobool45.not = icmp eq ptr %ldesc.0.lcssa, null
  br i1 %tobool45.not, label %for.end.dma_set_residue.exit_crit_edge, label %if.then46

for.end.dma_set_residue.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %27)
  %cmp47.not = icmp eq i32 %27, -256
  %xfer_size54 = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc.0.lcssa, i32 0, i32 4
  %49 = ptrtoint ptr %xfer_size54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %xfer_size54, align 4
  br i1 %cmp47.not, label %if.else53, label %if.then49

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %sub51.neg = add i32 %bytes.0.lcssa, %37
  %sub52 = sub i32 %sub51.neg, %50
  br label %dma_set_residue.exit

if.else53:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %add55.neg = xor i32 %50, -1
  %sub56 = add i32 %bytes.0.lcssa, %add55.neg
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.else53, %if.then49, %for.end.dma_set_residue.exit_crit_edge, %land.lhs.true.dma_set_residue.exit_crit_edge, %if.else.dma_set_residue.exit_crit_edge, %if.then13
  %bytes.2 = phi i32 [ %9, %if.then13 ], [ 0, %land.lhs.true.dma_set_residue.exit_crit_edge ], [ 0, %if.else.dma_set_residue.exit_crit_edge ], [ %sub52, %if.then49 ], [ %sub56, %if.else53 ], [ %bytes.0.lcssa, %for.end.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %51 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %bytes.2, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i118.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i118 = zext i1 %retval.0.i.i118.shrunk to i32
  ret i32 %retval.0.i.i118
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %lock = getelementptr i8, ptr %chan, i32 92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr i8, ptr %chan, i32 228
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mdc_issue_desc(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr i8, ptr %chan, i32 92
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %chan_nr.i = getelementptr i8, ptr %chan, i32 244
  %5 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan_nr.i, align 4
  %mul.i = shl i32 %6, 6
  %add.i = or i32 %mul.i, 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void @arm_heavy_mb() #8
  %regs.i.i = getelementptr inbounds %struct.mdc_dma, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 4096) #8, !srcloc !71
  %desc = getelementptr i8, ptr %chan, i32 228
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %vd = getelementptr inbounds %struct.mdc_tx_desc, ptr %10, i32 0, i32 1
  %chan.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %10, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %10, i32 0, i32 1, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %14, ptr noundef %desc_terminated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %10, i32 0, i32 1, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node.i, ptr %14, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 9
  %19 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %20, %vd
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %vchan_terminate_vdesc.exit, %entry.if.end_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %23 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %24, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end.list_splice_tail_init.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i22, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %34, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i12.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %43 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %44, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i18.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %53 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %54, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i24.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %56, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %head, ptr %58, align 4
  store ptr %58, ptr %0, align 4
  %62 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i23 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %63 = ptrtoint ptr %desc_terminated.i23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %desc_terminated.i23, align 4
  %cmp.i.not.i27.i = icmp eq ptr %64, %desc_terminated.i23
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i30.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %66, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %head, ptr %68, align 4
  store ptr %68, ptr %0, align 4
  %72 = ptrtoint ptr %desc_terminated.i23 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %desc_terminated.i23, ptr %desc_terminated.i23, align 4
  store ptr %desc_terminated.i23, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %call9 = call fastcc i32 @mdc_get_new_events(ptr noundef %add.ptr.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_slave_config(ptr noundef %chan, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %chan, i32 92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %config6 = getelementptr i8, ptr %chan, i32 180
  %0 = call ptr @memcpy(ptr %config6, ptr %config, i32 48)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc_chan_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mdc_chan, ptr %dev_id, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc_chan_irq.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mdc_chan_irq, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %chan_nr = getelementptr inbounds %struct.mdc_chan, ptr %dev_id, i32 0, i32 7
  %4 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_nr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc_chan_irq.__UNIQUE_ID_ddebug252, ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @mdc_get_new_events(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.out_crit_edge, label %if.end8

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %do.end
  %desc = getelementptr inbounds %struct.mdc_chan, ptr %dev_id, i32 0, i32 3
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %do.end13, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end8
  %cmd_loaded = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 5
  %list_cmds_done = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 9
  %cyclic = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 4
  %list_len = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 6
  %list_period_len = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 7
  %vd = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 1
  %chan.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 1, i32 0, i32 3
  br label %for.body

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %dev.i64 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev.i64 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i64, align 4
  %chan_nr16 = getelementptr inbounds %struct.mdc_chan, ptr %dev_id, i32 0, i32 7
  %12 = ptrtoint ptr %chan_nr16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_nr16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %13) #11
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %cmd_loaded to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_loaded, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %cmd_loaded to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cmd_loaded, align 1
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %17 = ptrtoint ptr %list_cmds_done to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %list_cmds_done, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %list_cmds_done, align 4
  %19 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cyclic, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %list_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %list_len, align 4
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  %rem = urem i32 %inc, %22
  %23 = ptrtoint ptr %list_cmds_done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rem, ptr %list_cmds_done, align 4
  %24 = ptrtoint ptr %list_period_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %list_period_len, align 4
  %rem26 = urem i32 %rem, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem26)
  %cmp27 = icmp eq i32 %rem26, 0
  br i1 %cmp27, label %if.then28, label %if.then23.for.inc_crit_edge

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then28:                                        ; preds = %if.then23
  %26 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vd, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %27, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then28.for.inc_crit_edge

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %27, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #8
  br label %for.inc

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %22)
  %cmp32 = icmp eq i32 %inc, %22
  br i1 %cmp32, label %if.then33, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then33:                                        ; preds = %if.else
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %desc, align 4
  %30 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i, align 4
  %32 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.i = icmp slt i32 %33, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !73

do.body2.i.i:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then33
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %completed_cookie.i.i, align 4
  %35 = ptrtoint ptr %vd to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %vd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mdc_chan_irq, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !72

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %31, align 4
  %dev.i66 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i66, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %39, ptr noundef nonnull @.str.19, ptr noundef %vd, i32 noundef %33) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 1, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %41, ptr noundef %desc_completed.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node.i, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mdc_tx_desc, ptr %7, i32 0, i32 1, i32 2, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %node.i, ptr %41, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i67 = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 1, i32 1
  %call.i.i68 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %tobool.not.i.i69 = icmp eq i32 %call.i.i68, 0
  br i1 %tobool.not.i.i69, label %if.then.i.i71, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_cookie_complete.exit

if.then.i.i71:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %task.i70 = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i70) #8
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i71, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  tail call fastcc void @mdc_issue_desc(ptr noundef %dev_id)
  br label %out

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then.i.i, %if.then28.for.inc_crit_edge, %if.then23.for.inc_crit_edge, %if.then19
  %inc38 = add nuw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc38, %call5
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %vchan_cookie_complete.exit, %do.end13, %do.end.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %vd, i32 -4
  %list.i = getelementptr i8, ptr %vd, i32 120
  %0 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list.i, align 4
  %tobool.not7.i = icmp eq ptr %1, null
  br i1 %tobool.not7.i, label %entry.mdc_list_desc_free.exit_crit_edge, label %while.body.lr.ph.i

entry.mdc_list_desc_free.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_list_desc_free.exit

while.body.lr.ph.i:                               ; preds = %entry
  %list_phys.i = getelementptr i8, ptr %vd, i32 116
  %2 = ptrtoint ptr %list_phys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %list_phys.i, align 4
  %4 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr3.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %desc_pool.i = getelementptr inbounds %struct.mdc_dma, ptr %7, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %curr_phys.09.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %11, %while.body.i.while.body.i_crit_edge ]
  %curr.08.i = phi ptr [ %1, %while.body.lr.ph.i ], [ %9, %while.body.i.while.body.i_crit_edge ]
  %next_desc.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i, i32 0, i32 8
  %8 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_desc.i, align 4
  %node_addr.i = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %curr.08.i, i32 0, i32 5
  %10 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_addr.i, align 4
  %12 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_pool.i, align 4
  tail call void @dma_pool_free(ptr noundef %13, ptr noundef nonnull %curr.08.i, i32 noundef %curr_phys.09.i) #8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body.i.mdc_list_desc_free.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.mdc_list_desc_free.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc_list_desc_free.exit

mdc_list_desc_free.exit:                          ; preds = %while.body.i.mdc_list_desc_free.exit_crit_edge, %entry.mdc_list_desc_free.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr3.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_mdc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mdc_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup19_crit_edge

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end:                                           ; preds = %entry
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %2 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_dma_data, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36 = load ptr, ptr %channels, align 4
  %cmp3.not38 = icmp eq ptr %.pn36, %channels
  br i1 %cmp3.not38, label %if.end.cleanup19_crit_edge, label %for.body.lr.ph

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn39 = phi ptr [ %.pn36, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %chan_nr = getelementptr i8, ptr %.pn39, i32 212
  %7 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_nr, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %chan.040 = getelementptr i8, ptr %.pn39, i32 -32
  %call6 = tail call ptr @dma_get_slave_channel(ptr noundef %chan.040) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.for.inc_crit_edge, label %cleanup

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %args.le = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %9 = ptrtoint ptr %args.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %args.le, align 4
  %periph = getelementptr i8, ptr %.pn39, i32 204
  %11 = ptrtoint ptr %periph to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %periph, align 4
  %arrayidx12 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %thread = getelementptr i8, ptr %.pn39, i32 208
  %14 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %thread, align 4
  br label %cleanup19

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp3.not = icmp eq ptr %.pn, %channels
  br i1 %cmp3.not, label %for.inc.cleanup19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %cleanup, %if.end.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi ptr [ %chan.040, %cleanup ], [ null, %entry.cleanup19_crit_edge ], [ null, %if.end.cleanup19_crit_edge ], [ null, %for.inc.cleanup19_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_mdc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mdc_list_desc_config(ptr nocapture noundef readonly %mchan, ptr noundef %ldesc, i32 noundef %dir, i32 noundef %src, i32 noundef %dst, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mchan, align 4
  %2 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1342177144, ptr %ldesc, align 4
  %thread = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 6
  %3 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thread, align 4
  %shl = shl i32 %4, 28
  %shl3 = shl i32 %4, 24
  %or = or i32 %shl, %shl3
  %shl5 = shl i32 %4, 16
  %or6 = or i32 %or, %shl5
  %readport_conf = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 1
  %5 = ptrtoint ptr %readport_conf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or6, ptr %readport_conf, align 4
  %read_addr = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 2
  %6 = ptrtoint ptr %read_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %src, ptr %read_addr, align 4
  %write_addr = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 3
  %7 = ptrtoint ptr %write_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dst, ptr %write_addr, align 4
  %sub = add i32 %len, -1
  %xfer_size = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 4
  %8 = ptrtoint ptr %xfer_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %xfer_size, align 4
  %node_addr = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 5
  %9 = ptrtoint ptr %node_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %node_addr, align 4
  %cmds_done = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 6
  %10 = ptrtoint ptr %cmds_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cmds_done, align 4
  %ctrl_status = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 7
  %11 = ptrtoint ptr %ctrl_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 17, ptr %ctrl_status, align 4
  %next_desc = getelementptr inbounds %struct.mdc_hw_list_desc, ptr %ldesc, i32 0, i32 8
  %12 = ptrtoint ptr %next_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %next_desc, align 4
  %bus_width = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_width, align 4
  %sub7 = add i32 %14, -1
  %15 = or i32 %dst, %src
  %16 = and i32 %sub7, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp ne i32 %16, 0
  %max_burst_mult = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %max_burst_mult to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_burst_mult, align 4
  %sub15 = sext i1 %17 to i32
  %.pn = add i32 %19, %sub15
  %max_burst.0 = mul i32 %.pn, %14
  %20 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %dir, label %if.else48 [
    i32 1, label %if.then18
    i32 2, label %if.then31
  ]

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1342176888, ptr %ldesc, align 4
  %or22 = or i32 %or6, 2
  %22 = ptrtoint ptr %readport_conf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or22, ptr %readport_conf, align 4
  %23 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_width, align 4
  %25 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %iszero.i.i = icmp eq i32 %24, 0
  %.op122 = or i32 %25, -1342176888
  %or.i = select i1 %iszero.i.i, i32 -1, i32 %.op122
  %26 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %ldesc, align 4
  %dst_addr_width = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst_addr_width, align 4
  %29 = tail call i32 @llvm.cttz.i32(i32 %28, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %iszero.i.i106 = icmp eq i32 %28, 0
  %.op.i = shl nuw nsw i32 %29, 4
  %shl.i = select i1 %iszero.i.i106, i32 1342176880, i32 %.op.i
  %or.i107 = or i32 %shl.i, %or.i
  %30 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i107, ptr %ldesc, align 4
  %dst_maxburst = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dst_maxburst, align 4
  %33 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst_addr_width, align 4
  %mul27 = mul i32 %34, %32
  %35 = tail call i32 @llvm.umin.i32(i32 %max_burst.0, i32 %mul27)
  br label %if.end54

if.then31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1342173048, ptr %ldesc, align 4
  %or35 = or i32 %or6, 2
  %37 = ptrtoint ptr %readport_conf to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or35, ptr %readport_conf, align 4
  %src_addr_width = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_addr_width, align 4
  %40 = tail call i32 @llvm.cttz.i32(i32 %39, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %iszero.i.i108 = icmp eq i32 %39, 0
  %.op = or i32 %40, -1342173048
  %or.i110 = select i1 %iszero.i.i108, i32 -1, i32 %.op
  %41 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i110, ptr %ldesc, align 4
  %42 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bus_width, align 4
  %44 = tail call i32 @llvm.cttz.i32(i32 %43, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %iszero.i.i111 = icmp eq i32 %43, 0
  %.op.i112 = shl nuw nsw i32 %44, 4
  %shl.i113 = select i1 %iszero.i.i111, i32 1342173040, i32 %.op.i112
  %or.i114 = or i32 %shl.i113, %or.i110
  %45 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i114, ptr %ldesc, align 4
  %src_maxburst = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 2, i32 5
  %46 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_maxburst, align 4
  %48 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %src_addr_width, align 4
  %mul41 = mul i32 %49, %47
  %50 = tail call i32 @llvm.umin.i32(i32 %max_burst.0, i32 %mul41)
  br label %if.end54

if.else48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1342172792, ptr %ldesc, align 4
  %52 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bus_width, align 4
  %54 = tail call i32 @llvm.cttz.i32(i32 %53, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %iszero.i.i115 = icmp eq i32 %53, 0
  %.op123 = or i32 %54, -1342172792
  %or.i117 = select i1 %iszero.i.i115, i32 -1, i32 %.op123
  %55 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i117, ptr %ldesc, align 4
  %56 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bus_width, align 4
  %58 = tail call i32 @llvm.cttz.i32(i32 %57, i1 true) #8, !range !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %iszero.i.i118 = icmp eq i32 %57, 0
  %.op.i119 = shl nuw nsw i32 %58, 4
  %shl.i120 = select i1 %iszero.i.i118, i32 1342172784, i32 %.op.i119
  %or.i121 = or i32 %shl.i120, %or.i117
  %59 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.i121, ptr %ldesc, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else48, %if.then31, %if.then18
  %burst_size.0 = phi i32 [ %35, %if.then18 ], [ %50, %if.then31 ], [ %max_burst.0, %if.else48 ]
  %sub55 = shl i32 %burst_size.0, 4
  %shl56 = add i32 %sub55, -16
  %60 = ptrtoint ptr %readport_conf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %readport_conf, align 4
  %or58 = or i32 %shl56, %61
  store i32 %or58, ptr %readport_conf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdc_issue_desc(ptr noundef %mchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mchan, align 4
  %desc_issued.i = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %3, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -108
  %tobool.not68 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not68
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %3, i32 -112
  %desc = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 3
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr3.i, ptr %desc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc_issue_desc.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mdc_issue_desc, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !72

if.then8:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %chan_nr = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 7
  %15 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan_nr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc_issue_desc.__UNIQUE_ID_ddebug251, ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %list_del.exit
  %soc = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void %20(ptr noundef %mchan) #8
  %21 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mchan, align 4
  %chan_nr.i = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 7
  %23 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chan_nr.i, align 4
  %mul.i = shl i32 %24, 6
  %regs.i.i = getelementptr inbounds %struct.mdc_dma, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %mul.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %28 = or i32 %27, -2013265744
  %29 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mchan, align 4
  %31 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan_nr.i, align 4
  %mul.i45 = shl i32 %32, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %regs.i.i46 = getelementptr inbounds %struct.mdc_dma, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %regs.i.i46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i46, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %34, i32 %mul.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47, i32 %28) #8, !srcloc !71
  %thread = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 6
  %35 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %thread, align 4
  %shl = shl i32 %36, 28
  %shl13 = shl i32 %36, 24
  %or14 = or i32 %shl, %shl13
  %shl16 = shl i32 %36, 16
  %or17 = or i32 %or14, %shl16
  %37 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mchan, align 4
  %39 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chan_nr.i, align 4
  %mul.i49 = shl i32 %40, 6
  %add.i = or i32 %mul.i49, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or17) #8
  %regs.i.i50 = getelementptr inbounds %struct.mdc_dma, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %regs.i.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i50, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %43, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51, i32 %41) #8, !srcloc !71
  %list_phys = getelementptr i8, ptr %3, i32 8
  %44 = ptrtoint ptr %list_phys to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %list_phys, align 4
  %46 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mchan, align 4
  %48 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan_nr.i, align 4
  %mul.i53 = shl i32 %49, 6
  %add.i54 = or i32 %mul.i53, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  %regs.i.i55 = getelementptr inbounds %struct.mdc_dma, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %regs.i.i55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i55, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %52, i32 %add.i54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56, i32 %50) #8, !srcloc !71
  %53 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mchan, align 4
  %55 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chan_nr.i, align 4
  %mul.i58 = shl i32 %56, 6
  %add.i59 = or i32 %mul.i58, 28
  %regs.i.i60 = getelementptr inbounds %struct.mdc_dma, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %regs.i.i60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i60, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %58, i32 %add.i59
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %60 = or i32 %59, 268435456
  %61 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mchan, align 4
  %63 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chan_nr.i, align 4
  %mul.i63 = shl i32 %64, 6
  %add.i64 = or i32 %mul.i63, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %regs.i.i65 = getelementptr inbounds %struct.mdc_dma, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %regs.i.i65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i65, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %66, i32 %add.i64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 %60) #8, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdc_get_new_events(ptr nocapture noundef readonly %mchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mchan, align 4
  %chan_nr.i = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 7
  %2 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_nr.i, align 4
  %mul.i = shl i32 %3, 6
  %add.i = or i32 %mul.i, 24
  %regs.i.i = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %7 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mchan, align 4
  %9 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan_nr.i, align 4
  %mul.i25 = shl i32 %10, 6
  %add.i26 = or i32 %mul.i25, 24
  %regs.i.i27 = getelementptr inbounds %struct.mdc_dma, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %regs.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i27, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %12, i32 %add.i26
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #8, !srcloc !64
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %and3 = and i32 %14, 63
  %and4 = and i32 %14, -4129025
  %shl = shl nuw nsw i32 %and3, 16
  %or = or i32 %shl, %and4
  %15 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mchan, align 4
  %17 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan_nr.i, align 4
  %mul.i30 = shl i32 %18, 6
  %add.i31 = or i32 %mul.i30, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %regs.i.i32 = getelementptr inbounds %struct.mdc_dma, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %regs.i.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i32, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %21, i32 %add.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i33, i32 %19) #8, !srcloc !71
  %22 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mchan, align 4
  %24 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan_nr.i, align 4
  %mul.i35 = shl i32 %25, 6
  %add.i36 = or i32 %mul.i35, 24
  %regs.i.i37 = getelementptr inbounds %struct.mdc_dma, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %regs.i.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i37, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %27, i32 %add.i36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #8, !srcloc !64
  %29 = lshr i32 %28, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %and7 = and i32 %29, 63
  %cmp.not = icmp eq i32 %and3, %and7
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %30 = lshr i32 %6, 8
  %and = and i32 %30, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and)
  %cmp8.not = icmp ult i32 %and3, %and
  %ret.0.p.v = select i1 %cmp8.not, i32 64, i32 0
  %ret.0.p = sub nsw i32 %and3, %and
  %ret.0 = add nsw i32 %ret.0.p, %ret.0.p.v
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_mdc_enable_chan(ptr nocapture noundef readonly %mchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mchan, align 4
  %periph_regs = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %periph_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %periph_regs, align 4
  %chan_nr = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 7
  %4 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_nr, align 4
  %6 = add i32 %5, 288
  %add = and i32 %6, -4
  %rem = shl i32 %5, 3
  %mul3 = and i32 %rem, 24
  %shl = shl nuw nsw i32 63, %mul3
  %periph = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 5
  %7 = ptrtoint ptr %periph to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %periph, align 4
  %shl7 = shl i32 %8, %mul3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef %shl, i32 noundef %shl7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_mdc_disable_chan(ptr nocapture noundef readonly %mchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mchan, align 4
  %periph_regs = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %periph_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %periph_regs, align 4
  %chan_nr = getelementptr inbounds %struct.mdc_chan, ptr %mchan, i32 0, i32 7
  %4 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_nr, align 4
  %6 = add i32 %5, 288
  %add = and i32 %6, -4
  %rem = shl i32 %5, 3
  %mul3 = and i32 %rem, 24
  %shl = shl nuw nsw i32 63, %mul3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_mdc_suspend_late(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_channels = getelementptr inbounds %struct.mdc_dma, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %desc = getelementptr %struct.mdc_dma, ptr %1, i32 0, i32 12, i32 %i.011, i32 3
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup4_crit_edge

for.body.cleanup4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup4

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  br label %cleanup4

cleanup4:                                         ; preds = %for.end, %for.body.cleanup4_crit_edge
  %retval.2 = phi i32 [ %call3, %for.end ], [ -16, %for.body.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_mdc_resume_early(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_img_mdc_dma__253_1086_mdc_dma_driver_init6, !1, !"__initcall__kmod_img_mdc_dma__253_1086_mdc_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/img-mdc-dma.c", i32 1086, i32 1}
!2 = !{ptr @__exitcall_mdc_dma_driver_exit, !1, !"__exitcall_mdc_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description254, !4, !"__UNIQUE_ID_description254", i1 false, i1 false}
!4 = !{!"../drivers/dma/img-mdc-dma.c", i32 1088, i32 1}
!5 = !{ptr @__UNIQUE_ID_author255, !6, !"__UNIQUE_ID_author255", i1 false, i1 false}
!6 = !{!"../drivers/dma/img-mdc-dma.c", i32 1089, i32 1}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../drivers/dma/img-mdc-dma.c", i32 1090, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/img-mdc-dma.c", i32 1079, i32 11}
!12 = !{ptr @mdc_dma_driver, !13, !"mdc_dma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/img-mdc-dma.c", i32 1077, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/img-mdc-dma.c", i32 907, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/img-mdc-dma.c", i32 911, i32 39}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/img-mdc-dma.c", i32 941, i32 42}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/img-mdc-dma.c", i32 944, i32 8}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/img-mdc-dma.c", i32 1009, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mdc_dma_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @mdc_dma_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/img-mdc-dma.c", i32 540, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mdc_issue_desc.__UNIQUE_ID_ddebug251, !31, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/img-mdc-dma.c", i32 764, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mdc_chan_irq.__UNIQUE_ID_ddebug252, !36, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/img-mdc-dma.c", i32 773, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mdc_chan_irq._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mdc_chan_irq._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !45, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!49 = !{ptr @mdc_dma_of_match, !50, !"mdc_dma_of_match", i1 false, i1 false}
!50 = !{!"../drivers/dma/img-mdc-dma.c", i32 864, i32 34}
!51 = !{ptr @pistachio_mdc_data, !52, !"pistachio_mdc_data", i1 false, i1 false}
!52 = !{!"../drivers/dma/img-mdc-dma.c", i32 859, i32 38}
!53 = !{ptr @img_mdc_pm_ops, !54, !"img_mdc_pm_ops", i1 false, i1 false}
!54 = !{!"../drivers/dma/img-mdc-dma.c", i32 1070, i32 32}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 6275233}
!65 = !{i64 2154565435}
!66 = !{!"auto-init"}
!67 = !{i32 0, i32 33}
!68 = !{i64 2154508808}
!69 = !{i8 0, i8 2}
!70 = !{i64 2154565817}
!71 = !{i64 6274815}
!72 = !{i64 2148748415, i64 2148748420, i64 2148748433, i64 2148748477, i64 2148748511, i64 2148748532}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2154507308, i64 2154507795, i64 2154507345, i64 2154507401, i64 2154507435, i64 2154507459, i64 2154507500, i64 2154507521, i64 2154507549, i64 2154507583}
