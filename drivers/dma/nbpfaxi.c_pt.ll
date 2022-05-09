; ModuleID = '/llk/IR_all_yes/drivers/dma/nbpfaxi.c_pt.bc'
source_filename = "../drivers/dma/nbpfaxi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nbpf_config = type { i32, i32 }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nbpf_device = type { %struct.dma_device, ptr, i32, i32, ptr, ptr, i32, [0 x %struct.nbpf_channel] }
%struct.nbpf_channel = type { %struct.dma_chan, %struct.tasklet_struct, ptr, ptr, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nbpf_desc_page = type { %struct.list_head, [12 x %struct.nbpf_desc], [48 x %struct.nbpf_link_desc], [48 x %struct.nbpf_link_reg] }
%struct.nbpf_desc = type { %struct.dma_async_tx_descriptor, i8, i32, ptr, %struct.list_head, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nbpf_link_desc = type { ptr, i32, ptr, %struct.list_head }
%struct.nbpf_link_reg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }

@__initcall__kmod_nbpfaxi__268_1528_nbpf_driver_init6 = internal global ptr @nbpf_driver_init, section ".initcall6.init", align 4
@nbpf_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nbpf_probe, ptr @nbpf_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nbpf_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nbpf_pm_ops, ptr null, ptr null }, ptr @nbpf_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nbpf_driver_exit = internal global ptr @nbpf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author269 = internal constant [61 x i8] c"nbpfaxi.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description270 = internal constant [58 x i8] c"nbpfaxi.description=dmaengine driver for NBPFAXI64* DMACs\00", section ".modinfo", align 1
@__UNIQUE_ID_file271 = internal constant [33 x i8] c"nbpfaxi.file=drivers/dma/nbpfaxi\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [23 x i8] c"nbpfaxi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma-nbpf\00", [23 x i8] zeroinitializer }, align 32
@nbpf_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac1b4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nbpf_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac1b8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac1b16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac4b4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac4b8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 32) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac4b16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 40) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac8b4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac8b8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 56) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,nbpfaxi64dmac8b16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @nbpf_cfg, i64 64) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@nbpf_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nbpf_runtime_suspend, ptr @nbpf_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@nbpf_ids = internal constant { [10 x %struct.platform_device_id], [48 x i8] } { [10 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac1b4\00\00\00\00", i32 ptrtoint (ptr @nbpf_cfg to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac1b8\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 8) to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac1b16\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 16) to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac4b4\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 24) to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac4b8\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 32) to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac4b16\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 40) to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac8b4\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 48) to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac8b8\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 56) to i32) }, %struct.platform_device_id { [20 x i8] c"nbpfaxi64dmac8b16\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @nbpf_cfg, i64 64) to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max-burst-mem-read\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max-burst-mem-write\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma error\00", [22 x i8] zeroinitializer }, align 32
@nbpf_err_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1229, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA error IRQ %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbpf_err_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/nbpfaxi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nbpf_err_irq._entry_ptr = internal global ptr @nbpf_err_irq._entry, section ".printk_index", align 4
@nbpf_read.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 0, i8 81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nbpfaxi\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nbpf_read\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(0x%p + 0x%x) = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@nbpf_error_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 383, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): abort timeout, channel status 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbpf_error_clear\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nbpf_error_clear._entry_ptr = internal global ptr @nbpf_error_clear._entry, section ".printk_index", align 4
@nbpf_chan_read.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.7, ptr @.str.12, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbpf_chan_read\00", [17 x i8] zeroinitializer }, align 32
@nbpf_chan_write.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.7, ptr @.str.12, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nbpf_chan_write\00", [16 x i8] zeroinitializer }, align 32
@nbpf_chan_idle.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 0, i8 -42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbpf_chan_idle\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): force-free desc %p cookie %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nbpf_chan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@nbpf_chan_probe.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.21, ptr @.str.7, ptr @.str.22, i8 1, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nbpf_chan_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): channel %d: -> %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nbpf %d\00", [24 x i8] zeroinitializer }, align 32
@nbpf_chan_irq.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.24, ptr @.str.7, ptr @.str.25, i8 1, i8 42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nbpf_chan_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@nbpf_start.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.26, ptr @.str.7, ptr @.str.27, i8 0, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nbpf_start\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): next 0x%x, cur 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@nbpf_alloc_chan_resources.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.7, ptr @.str.29, i8 1, i8 8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nbpf_alloc_chan_resources\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Entry %s(): terminal %u\0A\00", [39 x i8] zeroinitializer }, align 32
@nbpf_desc_page_alloc.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.30, ptr @.str.7, ptr @.str.31, i8 0, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nbpf_desc_page_alloc\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(): alloc %lu descriptors, %lu segments, total alloc %zu\0A\00", [36 x i8] zeroinitializer }, align 32
@nbpf_desc_page_alloc.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.30, ptr @.str.7, ptr @.str.32, i8 0, i8 -77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): mapped 0x%p to %pad\0A\00", [37 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nbpf_tx_submit.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.35, ptr @.str.7, ptr @.str.36, i8 0, i8 -85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbpf_tx_submit\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Entry %s(%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@nbpf_free_chan_resources.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.37, ptr @.str.7, ptr @.str.38, i8 1, i8 11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nbpf_free_chan_resources\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Entry %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@nbpf_prep_memcpy.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.39, ptr @.str.7, ptr @.str.40, i8 0, i8 -5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nbpf_prep_memcpy\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): %zu @ %pad -> %pad\0A\00", [38 x i8] zeroinitializer }, align 32
@nbpf_prep_one.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 0, i8 -111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nbpf_prep_one\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s(): desc @ %pad: hdr 0x%x, cfg 0x%x, %zu @ %pad -> %pad\0A\00", [37 x i8] zeroinitializer }, align 32
@nbpf_tx_status.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.43, ptr @.str.7, ptr @.str.44, i8 0, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbpf_tx_status\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): residue %u\0A\00", [46 x i8] zeroinitializer }, align 32
@nbpf_issue_pending.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.45, ptr @.str.7, ptr @.str.38, i8 0, i8 -105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nbpf_issue_pending\00", [45 x i8] zeroinitializer }, align 32
@nbpf_prep_slave_sg.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.46, ptr @.str.7, ptr @.str.38, i8 0, i8 -1, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nbpf_prep_slave_sg\00", [45 x i8] zeroinitializer }, align 32
@nbpf_config.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.47, ptr @.str.7, ptr @.str.48, i8 0, i8 -32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nbpf_config\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entry %s\0A\00", [22 x i8] zeroinitializer }, align 32
@nbpf_xfer_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.7, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s(): invalid bus width %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nbpf_xfer_size\00", [17 x i8] zeroinitializer }, align 32
@nbpf_xfer_size._entry_ptr = internal global ptr @nbpf_xfer_size._entry, section ".printk_index", align 4
@nbpf_pause.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.7, ptr @.str.48, i8 0, i8 -39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nbpf_pause\00", [21 x i8] zeroinitializer }, align 32
@nbpf_terminate_all.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.52, ptr @.str.7, ptr @.str.48, i8 0, i8 -36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nbpf_terminate_all\00", [45 x i8] zeroinitializer }, align 32
@nbpf_terminate_all.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.52, ptr @.str.7, ptr @.str.53, i8 0, i8 -36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Terminating\0A\00", [19 x i8] zeroinitializer }, align 32
@nbpf_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.54, ptr @.str.7, ptr @.str.12, i8 0, i8 84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nbpf_write\00", [21 x i8] zeroinitializer }, align 32
@nbpf_of_xlate.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.55, ptr @.str.7, ptr @.str.56, i8 1, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nbpf_of_xlate\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Entry %s(%pOFn)\0A\00", [47 x i8] zeroinitializer }, align 32
@nbpf_cfg = internal global { [9 x %struct.nbpf_config], [56 x i8] } { [9 x %struct.nbpf_config] [%struct.nbpf_config { i32 1, i32 4 }, %struct.nbpf_config { i32 1, i32 8 }, %struct.nbpf_config { i32 1, i32 16 }, %struct.nbpf_config { i32 4, i32 4 }, %struct.nbpf_config { i32 4, i32 8 }, %struct.nbpf_config { i32 4, i32 16 }, %struct.nbpf_config { i32 8, i32 4 }, %struct.nbpf_config { i32 8, i32 8 }, %struct.nbpf_config { i32 8, i32 16 }], [56 x i8] zeroinitializer }, align 32
@switch.table.nbpf_config = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 8, i32 4, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.nbpf_config.57 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 8, i32 4, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"nbpf_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1517, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1519, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"nbpf_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1277, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"nbpf_pm_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1513, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"nbpf_ids\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1484, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1330, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1332, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1362, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1392, i32 24 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1229, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 326, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 382, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 309, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 318, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 857, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1254, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1259, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1261, i32 43 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1193, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 401, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1055, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 705, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 716, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 326, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 685, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1068, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1006, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 579, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 641, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 607, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1020, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 896, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 485, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 868, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 882, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 883, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 335, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1102, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [9 x i8] c"nbpf_cfg\00", align 1
@___asan_gen_.260 = private constant [25 x i8] c"../drivers/dma/nbpfaxi.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 252, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant [25 x i8] c"switch.table.nbpf_config\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [28 x i8] c"switch.table.nbpf_config.57\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__exitcall_nbpf_driver_exit, ptr @__initcall__kmod_nbpfaxi__268_1528_nbpf_driver_init6, ptr @nbpf_driver_exit, ptr @nbpf_err_irq._entry, ptr @nbpf_err_irq._entry_ptr, ptr @nbpf_error_clear._entry, ptr @nbpf_error_clear._entry_ptr, ptr @nbpf_xfer_size._entry, ptr @nbpf_xfer_size._entry_ptr, ptr @nbpf_driver, ptr @.str, ptr @nbpf_match, ptr @nbpf_pm_ops, ptr @nbpf_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nbpf_chan_probe.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @nbpf_cfg, ptr @switch.table.nbpf_config, ptr @switch.table.nbpf_config.57], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_ids to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_err_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_error_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_chan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_xfer_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbpf_cfg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nbpf_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nbpf_config.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nbpf_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nbpf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @nbpf_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %irqbuf = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %irqbuf) #8
  %2 = call ptr @memset(ptr %irqbuf, i32 255, i32 36)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup133_crit_edge, label %if.end

entry.cleanup133_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 252) #8
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 388) #8
  %retval.0.i = select i1 %6, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup133_crit_edge, label %if.end7

if.end.cleanup133_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

if.end7:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev9, align 4
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call10) #8
  %base = getelementptr inbounds %struct.nbpf_device, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call11 to i32
  br label %cleanup133

if.end17:                                         ; preds = %if.end7
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.nbpf_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %clk, align 4
  %cmp.i252 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call18 to i32
  br label %cleanup133

if.end24:                                         ; preds = %if.end17
  %max_burst_mem_read = getelementptr inbounds %struct.nbpf_device, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %max_burst_mem_read, i32 noundef 1, i32 noundef 0) #8
  %max_burst_mem_write = getelementptr inbounds %struct.nbpf_device, ptr %call.i, i32 0, i32 3
  %call.i.i253 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef %max_burst_mem_write, i32 noundef 1, i32 noundef 0) #8
  %config = getelementptr inbounds %struct.nbpf_device, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %config, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %if.end24
  %irqs.0260 = phi i32 [ 0, %if.end24 ], [ %irqs.1.lcssa, %for.inc35.for.body_crit_edge ]
  %i.0259 = phi i32 [ 0, %if.end24 ], [ %inc36, %for.inc35.for.body_crit_edge ]
  %call27 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %i.0259) #8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %for.body.for.end37_crit_edge, label %if.end30

for.body.for.end37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

if.end30:                                         ; preds = %for.body
  %14 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call27, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call27, i32 0, i32 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp32.not256 = icmp ugt i32 %15, %17
  br i1 %cmp32.not256, label %if.end30.for.inc35_crit_edge, label %if.end30.for.body33_crit_edge

if.end30.for.body33_crit_edge:                    ; preds = %if.end30
  br label %for.body33

if.end30.for.inc35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end30.for.body33_crit_edge
  %irqs.1258 = phi i32 [ %inc34, %for.body33.for.body33_crit_edge ], [ %irqs.0260, %if.end30.for.body33_crit_edge ]
  %irq.0257 = phi i32 [ %inc, %for.body33.for.body33_crit_edge ], [ %15, %if.end30.for.body33_crit_edge ]
  %arrayidx = getelementptr [9 x i32], ptr %irqbuf, i32 0, i32 %irqs.1258
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %irq.0257, ptr %arrayidx, align 4
  %inc = add i32 %irq.0257, 1
  %inc34 = add i32 %irqs.1258, 1
  %cmp32.not = icmp ugt i32 %inc, %17
  br i1 %cmp32.not, label %for.body33.for.inc35_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.body33.for.inc35_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

for.inc35:                                        ; preds = %for.body33.for.inc35_crit_edge, %if.end30.for.inc35_crit_edge
  %irqs.1.lcssa = phi i32 [ %irqs.0260, %if.end30.for.inc35_crit_edge ], [ %inc34, %for.body33.for.inc35_crit_edge ]
  %inc36 = add i32 %i.0259, 1
  %cmp = icmp ult i32 %irqs.1.lcssa, 9
  br i1 %cmp, label %for.inc35.for.body_crit_edge, label %for.inc35.for.end37_crit_edge

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %for.body.for.end37_crit_edge
  %irqs.0.lcssa = phi i32 [ %irqs.0260, %for.body.for.end37_crit_edge ], [ %irqs.1.lcssa, %for.inc35.for.end37_crit_edge ]
  %19 = zext i32 %irqs.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irqs.0.lcssa, label %land.lhs.true40 [
    i32 1, label %if.then45
    i32 2, label %for.end37.if.else_crit_edge
  ]

for.end37.if.else_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true40:                                  ; preds = %for.end37
  %add = add i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %irqs.0.lcssa, i32 %add)
  %cmp41.not = icmp eq i32 %irqs.0.lcssa, %add
  br i1 %cmp41.not, label %land.lhs.true40.if.else_crit_edge, label %land.lhs.true40.cleanup133_crit_edge

land.lhs.true40.cleanup133_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

land.lhs.true40.if.else_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then45:                                        ; preds = %for.end37
  %20 = ptrtoint ptr %irqbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irqbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp48.not261 = icmp slt i32 %4, 0
  br i1 %cmp48.not261, label %if.then45.if.end101_crit_edge, label %if.then45.for.body49_crit_edge

if.then45.for.body49_crit_edge:                   ; preds = %if.then45
  br label %for.body49

if.then45.if.end101_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %if.then45.for.body49_crit_edge
  %i.1262 = phi i32 [ %inc54, %for.body49.for.body49_crit_edge ], [ 0, %if.then45.for.body49_crit_edge ]
  %irq52 = getelementptr %struct.nbpf_device, ptr %call.i, i32 0, i32 7, i32 %i.1262, i32 5
  %22 = ptrtoint ptr %irq52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %irq52, align 4
  %inc54 = add i32 %i.1262, 1
  %cmp48.not = icmp sgt i32 %inc54, %4
  br i1 %cmp48.not, label %for.body49.if.end101_crit_edge, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body49

for.body49.if.end101_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.else:                                          ; preds = %land.lhs.true40.if.else_crit_edge, %for.end37.if.else_crit_edge
  %call56 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.else.cleanup133_crit_edge, label %if.end59

if.else.cleanup133_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

if.end59:                                         ; preds = %if.else
  %add60 = add i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %irqs.0.lcssa, i32 %add60)
  %cmp61 = icmp eq i32 %irqs.0.lcssa, %add60
  br i1 %cmp61, label %if.then62, label %if.else83

if.then62:                                        ; preds = %if.end59
  %chan64 = getelementptr inbounds %struct.nbpf_device, ptr %call.i, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp66.not265 = icmp slt i32 %4, 0
  br i1 %cmp66.not265, label %if.then62.for.end77_crit_edge, label %if.then62.for.body67_crit_edge

if.then62.for.body67_crit_edge:                   ; preds = %if.then62
  br label %for.body67

if.then62.for.end77_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %if.then62.for.body67_crit_edge
  %chan63.0267 = phi ptr [ %incdec.ptr, %for.body67.for.body67_crit_edge ], [ %chan64, %if.then62.for.body67_crit_edge ]
  %i.2266 = phi i32 [ %inc76, %for.body67.for.body67_crit_edge ], [ 0, %if.then62.for.body67_crit_edge ]
  %arrayidx68 = getelementptr [9 x i32], ptr %irqbuf, i32 0, i32 %i.2266
  %23 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call56)
  %cmp69 = icmp eq i32 %24, %call56
  %inc71 = zext i1 %cmp69 to i32
  %spec.select = add i32 %i.2266, %inc71
  %arrayidx73 = getelementptr [9 x i32], ptr %irqbuf, i32 0, i32 %spec.select
  %25 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx73, align 4
  %irq74 = getelementptr inbounds %struct.nbpf_channel, ptr %chan63.0267, i32 0, i32 5
  %27 = ptrtoint ptr %irq74 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq74, align 4
  %inc76 = add i32 %spec.select, 1
  %incdec.ptr = getelementptr %struct.nbpf_channel, ptr %chan63.0267, i32 1
  %cmp66.not = icmp sgt i32 %inc76, %4
  br i1 %cmp66.not, label %for.body67.for.end77_crit_edge, label %for.body67.for.body67_crit_edge

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body67

for.body67.for.end77_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.end77:                                        ; preds = %for.body67.for.end77_crit_edge, %if.then62.for.end77_crit_edge
  %chan63.0.lcssa = phi ptr [ %chan64, %if.then62.for.end77_crit_edge ], [ %incdec.ptr, %for.body67.for.end77_crit_edge ]
  %add.ptr = getelementptr %struct.nbpf_channel, ptr %chan64, i32 %4
  %cmp80.not = icmp eq ptr %chan63.0.lcssa, %add.ptr
  br i1 %cmp80.not, label %for.end77.if.end101_crit_edge, label %for.end77.cleanup133_crit_edge

for.end77.cleanup133_crit_edge:                   ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

for.end77.if.end101_crit_edge:                    ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.else83:                                        ; preds = %if.end59
  %28 = ptrtoint ptr %irqbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irqbuf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %call56)
  %cmp85 = icmp eq i32 %29, %call56
  br i1 %cmp85, label %if.then86, label %if.else83.if.end90_crit_edge

if.else83.if.end90_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then86:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx87 = getelementptr inbounds [9 x i32], ptr %irqbuf, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx87, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.else83.if.end90_crit_edge
  %irq.1 = phi i32 [ %31, %if.then86 ], [ %29, %if.else83.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp92.not263 = icmp slt i32 %4, 0
  br i1 %cmp92.not263, label %if.end90.if.end101_crit_edge, label %if.end90.for.body93_crit_edge

if.end90.for.body93_crit_edge:                    ; preds = %if.end90
  br label %for.body93

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %if.end90.for.body93_crit_edge
  %i.4264 = phi i32 [ %inc98, %for.body93.for.body93_crit_edge ], [ 0, %if.end90.for.body93_crit_edge ]
  %irq96 = getelementptr %struct.nbpf_device, ptr %call.i, i32 0, i32 7, i32 %i.4264, i32 5
  %32 = ptrtoint ptr %irq96 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %irq.1, ptr %irq96, align 4
  %inc98 = add i32 %i.4264, 1
  %cmp92.not = icmp sgt i32 %inc98, %4
  br i1 %cmp92.not, label %for.body93.if.end101_crit_edge, label %for.body93.for.body93_crit_edge

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body93

for.body93.if.end101_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %for.body93.if.end101_crit_edge, %if.end90.if.end101_crit_edge, %for.end77.if.end101_crit_edge, %for.body49.if.end101_crit_edge, %if.then45.if.end101_crit_edge
  %eirq.0 = phi i32 [ %call56, %for.end77.if.end101_crit_edge ], [ %call56, %if.end90.if.end101_crit_edge ], [ %21, %if.then45.if.end101_crit_edge ], [ %call56, %for.body93.if.end101_crit_edge ], [ %21, %for.body49.if.end101_crit_edge ]
  %call.i254 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %eirq.0, ptr noundef nonnull @nbpf_err_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %cmp103 = icmp slt i32 %call.i254, 0
  br i1 %cmp103, label %if.end101.cleanup133_crit_edge, label %if.end105

if.end101.cleanup133_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

if.end105:                                        ; preds = %if.end101
  %eirq106 = getelementptr inbounds %struct.nbpf_device, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %eirq106 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %eirq.0, ptr %eirq106, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %channels, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp108269 = icmp sgt i32 %4, 0
  br i1 %cmp108269, label %if.end105.for.body109_crit_edge, label %if.end105.for.end116_crit_edge

if.end105.for.end116_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

if.end105.for.body109_crit_edge:                  ; preds = %if.end105
  br label %for.body109

for.cond107:                                      ; preds = %for.body109
  %inc115 = add nuw nsw i32 %i.5270, 1
  %exitcond.not = icmp eq i32 %inc115, %4
  br i1 %exitcond.not, label %for.cond107.for.end116_crit_edge, label %for.cond107.for.body109_crit_edge

for.cond107.for.body109_crit_edge:                ; preds = %for.cond107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body109

for.cond107.for.end116_crit_edge:                 ; preds = %for.cond107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.body109:                                      ; preds = %for.cond107.for.body109_crit_edge, %if.end105.for.body109_crit_edge
  %i.5270 = phi i32 [ %inc115, %for.cond107.for.body109_crit_edge ], [ 0, %if.end105.for.body109_crit_edge ]
  %call110 = tail call fastcc i32 @nbpf_chan_probe(ptr noundef nonnull %call.i, i32 noundef %i.5270)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %for.body109.cleanup133_crit_edge, label %for.cond107

for.body109.cleanup133_crit_edge:                 ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

for.end116:                                       ; preds = %for.cond107.for.end116_crit_edge, %if.end105.for.end116_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #8
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %36 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nbpf_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %37 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nbpf_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %38 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nbpf_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %39 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @nbpf_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %40 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nbpf_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %41 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @nbpf_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %42 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @nbpf_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %43 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @nbpf_pause, ptr %device_pause, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %44 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @nbpf_terminate_all, ptr %device_terminate_all, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %45 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 279, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %46 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 279, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %47 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 6, ptr %directions, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %49 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk, align 4
  %call120 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %for.end116.cleanup133_crit_edge, label %if.end123

for.end116.cleanup133_crit_edge:                  ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

if.end123:                                        ; preds = %for.end116
  tail call fastcc void @nbpf_configure(ptr noundef nonnull %call.i)
  %call124 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.end123.e_clk_off_crit_edge, label %if.end127

if.end123.e_clk_off_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %e_clk_off

if.end127:                                        ; preds = %if.end123
  %call128 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %1, ptr noundef nonnull @nbpf_of_xlate, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %e_dma_dev_unreg, label %if.end127.cleanup133_crit_edge

if.end127.cleanup133_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

e_dma_dev_unreg:                                  ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #8
  br label %e_clk_off

e_clk_off:                                        ; preds = %e_dma_dev_unreg, %if.end123.e_clk_off_crit_edge
  %ret.0 = phi i32 [ %call124, %if.end123.e_clk_off_crit_edge ], [ %call128, %e_dma_dev_unreg ]
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %52) #8
  tail call void @clk_unprepare(ptr noundef %52) #8
  br label %cleanup133

cleanup133:                                       ; preds = %e_clk_off, %if.end127.cleanup133_crit_edge, %for.end116.cleanup133_crit_edge, %for.body109.cleanup133_crit_edge, %if.end101.cleanup133_crit_edge, %for.end77.cleanup133_crit_edge, %if.else.cleanup133_crit_edge, %land.lhs.true40.cleanup133_crit_edge, %if.then21, %if.then14, %if.end.cleanup133_crit_edge, %entry.cleanup133_crit_edge
  %retval.1 = phi i32 [ %10, %if.then14 ], [ %12, %if.then21 ], [ %ret.0, %e_clk_off ], [ -22, %for.end77.cleanup133_crit_edge ], [ -19, %entry.cleanup133_crit_edge ], [ -12, %if.end.cleanup133_crit_edge ], [ -6, %land.lhs.true40.cleanup133_crit_edge ], [ %call56, %if.else.cleanup133_crit_edge ], [ %call.i254, %if.end101.cleanup133_crit_edge ], [ %call120, %for.end116.cleanup133_crit_edge ], [ 0, %if.end127.cleanup133_crit_edge ], [ %call110, %for.body109.cleanup133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %irqbuf) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %eirq = getelementptr inbounds %struct.nbpf_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %eirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eirq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %3, ptr noundef %1) #8
  %config = getelementptr inbounds %struct.nbpf_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16 = icmp sgt i32 %7, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chan1 = getelementptr inbounds %struct.nbpf_device, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.nbpf_channel, ptr %chan1, i32 %i.017
  %irq = getelementptr %struct.nbpf_channel, ptr %chan1, i32 %i.017, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %9, ptr noundef %add.ptr) #8
  %tasklet = getelementptr %struct.nbpf_channel, ptr %chan1, i32 %i.017, i32 1
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %inc = add nuw nsw i32 %i.017, 1
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %15) #8
  tail call void @dma_async_device_unregister(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.nbpf_device, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_err_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.nbpf_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 788
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !151
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_read.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_err_irq, %nbpf_error_get.exit)) #8
          to label %if.then.i.i [label %nbpf_error_get.exit], !srcloc !153

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_read.__UNIQUE_ID_ddebug238, ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %7, i32 noundef 788, i32 noundef %3) #8
  br label %nbpf_error_get.exit

nbpf_error_get.exit:                              ; preds = %if.then.i.i, %entry
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %irq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %nbpf_error_get.exit.cleanup_crit_edge, label %do.body2.preheader

nbpf_error_get.exit.cleanup_crit_edge:            ; preds = %nbpf_error_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.preheader:                               ; preds = %nbpf_error_get.exit
  %chan.i = getelementptr inbounds %struct.nbpf_device, ptr %dev, i32 0, i32 7
  br label %do.body2

do.body2:                                         ; preds = %nbpf_error_get.exit19.do.body2_crit_edge, %do.body2.preheader
  %error.0 = phi i32 [ %14, %nbpf_error_get.exit19.do.body2_crit_edge ], [ %3, %do.body2.preheader ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %error.0, i1 false) #8, !range !154
  %add.ptr.i = getelementptr %struct.nbpf_channel, ptr %chan.i, i32 %10
  tail call fastcc void @nbpf_error_clear(ptr noundef %add.ptr.i)
  tail call fastcc void @nbpf_chan_idle(ptr noundef %add.ptr.i)
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %12, i32 788
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #8, !srcloc !151
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_read.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_err_irq, %nbpf_error_get.exit19)) #8
          to label %if.then.i.i18 [label %nbpf_error_get.exit19], !srcloc !153

if.then.i.i18:                                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_read.__UNIQUE_ID_ddebug238, ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %18, i32 noundef 788, i32 noundef %14) #8
  br label %nbpf_error_get.exit19

nbpf_error_get.exit19:                            ; preds = %if.then.i.i18, %do.body2
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %nbpf_error_get.exit19.cleanup_crit_edge, label %nbpf_error_get.exit19.do.body2_crit_edge

nbpf_error_get.exit19.do.body2_crit_edge:         ; preds = %nbpf_error_get.exit19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

nbpf_error_get.exit19.cleanup_crit_edge:          ; preds = %nbpf_error_get.exit19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %nbpf_error_get.exit19.cleanup_crit_edge, %nbpf_error_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nbpf_error_get.exit.cleanup_crit_edge ], [ 1, %nbpf_error_get.exit19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbpf_chan_probe(ptr noundef %nbpf, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan2 = getelementptr inbounds %struct.nbpf_device, ptr %nbpf, i32 0, i32 7
  %add.ptr = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n
  %nbpf3 = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 3
  %0 = ptrtoint ptr %nbpf3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %nbpf, ptr %nbpf3, align 4
  %base = getelementptr inbounds %struct.nbpf_device, ptr %nbpf, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %mul = shl i32 %n, 6
  %add.ptr5 = getelementptr i8, ptr %2, i32 %mul
  %base6 = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 2
  %3 = ptrtoint ptr %base6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr5, ptr %base6, align 4
  %desc_page = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 21
  %4 = ptrtoint ptr %desc_page to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %desc_page, ptr %desc_page, align 4
  %prev.i = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 21, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %desc_page, ptr %prev.i, align 4
  %lock = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @nbpf_chan_probe.__key, i16 noundef signext 3) #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %nbpf, ptr %add.ptr, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %add.ptr, i32 0, i32 2
  %7 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %completed_cookie.i, align 4
  %dmarq_cfg.i = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 13
  %9 = ptrtoint ptr %dmarq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %dmarq_cfg.i, align 4
  %terminal.i = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 12
  %10 = ptrtoint ptr %terminal.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %terminal.i, align 4
  %flags.i = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 14
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_probe.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_chan_probe, %do.end15)) #8
          to label %if.then [label %do.end15], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.dma_device, ptr %nbpf, i32 0, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_probe.__UNIQUE_ID_ddebug266, ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %n, ptr noundef %15) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %name = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 4
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %n)
  %tasklet = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 1
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @nbpf_chan_tasklet) #8
  %dev18 = getelementptr inbounds %struct.dma_device, ptr %nbpf, i32 0, i32 15
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 4
  %irq = getelementptr %struct.nbpf_channel, ptr %chan2, i32 %n, i32 5
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %17, i32 noundef %19, ptr noundef nonnull @nbpf_chan_irq, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end15.cleanup_crit_edge, label %if.end23

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %do.end15
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %add.ptr, i32 0, i32 8
  %channels = getelementptr inbounds %struct.dma_device, ptr %nbpf, i32 0, i32 3
  %prev.i50 = getelementptr inbounds %struct.dma_device, ptr %nbpf, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i50, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %21, ptr noundef %channels) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %device_node, ptr %prev.i50, align 4
  %23 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %device_node, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end23.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end15.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_alloc_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 17
  %0 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free, ptr %free, align 4
  %prev.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free, ptr %prev.i, align 4
  %free_links = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 16
  %2 = ptrtoint ptr %free_links to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %free_links, ptr %free_links, align 4
  %prev.i19 = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %free_links, ptr %prev.i19, align 4
  %queued = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 18
  %4 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %queued, ptr %queued, align 4
  %prev.i20 = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queued, ptr %prev.i20, align 4
  %active = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 19
  %6 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %active, ptr %active, align 4
  %prev.i21 = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %active, ptr %prev.i21, align 4
  %done = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 20
  %8 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %done, ptr %done, align 4
  %prev.i22 = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %done, ptr %prev.i22, align 4
  %call = tail call fastcc i32 @nbpf_desc_page_alloc(ptr noundef %dchan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_alloc_chan_resources.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_alloc_chan_resources, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !153

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %terminal = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 12
  %14 = ptrtoint ptr %terminal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %terminal, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_alloc_chan_resources.__UNIQUE_ID_ddebug262, ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %dmarq_cfg.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 13
  %16 = ptrtoint ptr %dmarq_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dmarq_cfg.i, align 4
  %or.i = or i32 %17, -2147483648
  %base.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 2
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_alloc_chan_resources, %cleanup)) #8
          to label %if.then.i.i [label %cleanup], !srcloc !153

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dchan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %24, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %26, i32 noundef 44, i32 noundef %or.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbpf_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_free_chan_resources.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_free_chan_resources, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_free_chan_resources.__UNIQUE_ID_ddebug263, ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_free_chan_resources, %nbpf_chan_halt.exit)) #8
          to label %if.then.i.i [label %nbpf_chan_halt.exit], !srcloc !153

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dchan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %11, i32 noundef 40, i32 noundef 2) #8
  br label %nbpf_chan_halt.exit

nbpf_chan_halt.exit:                              ; preds = %if.then.i.i, %do.end
  tail call fastcc void @nbpf_chan_idle(ptr noundef %dchan)
  %dmarq_cfg.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 13
  %12 = ptrtoint ptr %dmarq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %dmarq_cfg.i, align 4
  %terminal.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 12
  %13 = ptrtoint ptr %terminal.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %terminal.i, align 4
  %flags.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 14
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags.i, align 4
  %desc_page = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 21
  %15 = ptrtoint ptr %desc_page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_page, align 4
  %cmp.not48 = icmp eq ptr %16, %desc_page
  br i1 %cmp.not48, label %nbpf_chan_halt.exit.for.end30_crit_edge, label %nbpf_chan_halt.exit.for.body_crit_edge

nbpf_chan_halt.exit.for.body_crit_edge:           ; preds = %nbpf_chan_halt.exit
  br label %for.body

nbpf_chan_halt.exit.for.end30_crit_edge:          ; preds = %nbpf_chan_halt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.body:                                         ; preds = %for.end.for.body_crit_edge, %nbpf_chan_halt.exit.for.body_crit_edge
  %dpage.049 = phi ptr [ %tmp1.051, %for.end.for.body_crit_edge ], [ %16, %nbpf_chan_halt.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %dpage.049 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp1.051 = load ptr, ptr %dpage.049, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dpage.049) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dpage.049, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %dpage.049 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dpage.049, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %24 = ptrtoint ptr %dpage.049 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %dpage.049, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dpage.049, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ldesc18 = getelementptr inbounds %struct.nbpf_desc_page, ptr %dpage.049, i32 0, i32 2
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %list_del.exit
  %i.046 = phi i32 [ 0, %list_del.exit ], [ %inc, %for.body21.for.body21_crit_edge ]
  %ldesc.045 = phi ptr [ %ldesc18, %list_del.exit ], [ %incdec.ptr, %for.body21.for.body21_crit_edge ]
  %26 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dchan, align 4
  %dev23 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev23, align 4
  %hwdesc_dma_addr = getelementptr inbounds %struct.nbpf_link_desc, ptr %ldesc.045, i32 0, i32 1
  %30 = ptrtoint ptr %hwdesc_dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwdesc_dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %31, i32 noundef 32, i32 noundef 1, i32 noundef 0) #8
  %inc = add nuw nsw i32 %i.046, 1
  %incdec.ptr = getelementptr %struct.nbpf_link_desc, ptr %ldesc.045, i32 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.end:                                          ; preds = %for.body21
  %32 = ptrtoint ptr %dpage.049 to i32
  tail call void @free_pages(i32 noundef %32, i32 noundef 0) #8
  %cmp.not = icmp eq ptr %tmp1.051, %desc_page
  br i1 %cmp.not, label %for.end.for.end30_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.end30:                                        ; preds = %for.end.for.end30_crit_edge, %nbpf_chan_halt.exit.for.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nbpf_prep_memcpy(ptr noundef %dchan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %dst.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %dst_sg = alloca %struct.scatterlist, align 4
  %src_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dst, ptr %dst.addr, align 4
  %1 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src, ptr %src.addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_sg) #8
  %2 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg, i32 0, i32 4
  %4 = call ptr @memset(ptr %dst_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_sg) #8
  %5 = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 4
  %7 = call ptr @memset(ptr %src_sg, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %dst_sg, i32 noundef 1) #8
  call void @sg_init_table(ptr noundef nonnull %src_sg, i32 noundef 1) #8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dst, ptr %2, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %src, ptr %5, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %3, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %len, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_prep_memcpy.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_prep_memcpy, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_prep_memcpy.__UNIQUE_ID_ddebug260, ptr noundef %15, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %len, ptr noundef nonnull %src.addr, ptr noundef nonnull %dst.addr) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = call fastcc ptr @nbpf_prep_sg(ptr noundef %dchan, ptr noundef nonnull %src_sg, ptr noundef nonnull %dst_sg, i32 noundef 1, i32 noundef 0, i32 noundef %flags)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_sg) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_sg) #8
  ret ptr %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_tx_status(ptr noundef %dchan, i32 noundef %cookie, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %cmp26 = phi i1 [ false, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ false, %if.else.i.i.dma_cookie_status.exit_crit_edge ], [ true, %if.end8.i.i ]
  %retval.0.i.i = phi i32 [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ], [ 1, %if.end8.i.i ]
  br i1 %tobool.not.i, label %dma_cookie_status.exit.if.end86_crit_edge, label %if.then

dma_cookie_status.exit.if.end86_crit_edge:        ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then:                                          ; preds = %dma_cookie_status.exit
  %lock = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %running7 = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 22
  %8 = ptrtoint ptr %running7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %running7, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ -22, %if.then.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %cookie)
  %cmp11 = icmp eq i32 %cond, %cookie
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %cond.end
  %base.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !151
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_tx_status, %nbpf_bytes_left.exit)) #8
          to label %if.then.i.i118 [label %nbpf_bytes_left.exit], !srcloc !153

if.then.i.i118:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dchan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_read.__UNIQUE_ID_ddebug236, ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, ptr noundef %21, i32 noundef 32, i32 noundef %15) #8
  br label %nbpf_bytes_left.exit

nbpf_bytes_left.exit:                             ; preds = %if.then.i.i118, %if.then13
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %22 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %residue, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_tx_status.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_tx_status, %if.end84)) #8
          to label %if.then22 [label %if.end84], !srcloc !153

if.then22:                                        ; preds = %nbpf_bytes_left.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %residue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_tx_status.__UNIQUE_ID_ddebug251, ptr noundef %26, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %28) #8
  br label %if.end84

if.else:                                          ; preds = %cond.end
  br i1 %cmp26, label %if.then28, label %if.else.if.end84_crit_edge

if.else.if.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then28:                                        ; preds = %if.else
  %active = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 19
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then28
  %.pn.in = phi ptr [ %active, %if.then28 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %29 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp33.not = icmp eq ptr %.pn, %active
  br i1 %cmp33.not, label %if.then49, label %for.body

for.body:                                         ; preds = %for.cond
  %desc.0 = getelementptr i8, ptr %.pn, i32 -120
  %30 = ptrtoint ptr %desc.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %desc.0, align 4
  %cmp39 = icmp eq i32 %31, %cookie
  br i1 %cmp39, label %for.body.cond.true78_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cond.true78_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true78

if.then49:                                        ; preds = %for.cond
  %queued = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 18
  br label %for.cond54

for.cond54:                                       ; preds = %for.body61.for.cond54_crit_edge, %if.then49
  %.pn117.in = phi ptr [ %queued, %if.then49 ], [ %.pn117, %for.body61.for.cond54_crit_edge ]
  %32 = ptrtoint ptr %.pn117.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn117 = load ptr, ptr %.pn117.in, align 4
  %cmp57.not = icmp eq ptr %.pn117, %queued
  br i1 %cmp57.not, label %for.cond54.cond.end80_crit_edge, label %for.body61

for.cond54.cond.end80_crit_edge:                  ; preds = %for.cond54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end80

for.body61:                                       ; preds = %for.cond54
  %desc.1 = getelementptr i8, ptr %.pn117, i32 -120
  %33 = ptrtoint ptr %desc.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desc.1, align 4
  %cmp64 = icmp eq i32 %34, %cookie
  br i1 %cmp64, label %for.body61.cond.true78_crit_edge, label %for.body61.for.cond54_crit_edge

for.body61.for.cond54_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond54

for.body61.cond.true78_crit_edge:                 ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true78

cond.true78:                                      ; preds = %for.body61.cond.true78_crit_edge, %for.body.cond.true78_crit_edge
  %35 = phi ptr [ %.pn117, %for.body61.cond.true78_crit_edge ], [ %.pn, %for.body.cond.true78_crit_edge ]
  %length = getelementptr i8, ptr %35, i32 -16
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length, align 4
  br label %cond.end80

cond.end80:                                       ; preds = %cond.true78, %for.cond54.cond.end80_crit_edge
  %cond81 = phi i32 [ %37, %cond.true78 ], [ 0, %for.cond54.cond.end80_crit_edge ]
  %residue82 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %38 = ptrtoint ptr %residue82 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond81, ptr %residue82, align 4
  br label %if.end84

if.end84:                                         ; preds = %cond.end80, %if.else.if.end84_crit_edge, %if.then22, %nbpf_bytes_left.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %dma_cookie_status.exit.if.end86_crit_edge
  %paused = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 23
  %39 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %paused, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool87.not = icmp eq i8 %40, 0
  %spec.select = select i1 %tobool87.not, i32 %retval.0.i.i, i32 2
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbpf_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_issue_pending.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_issue_pending, %do.body6)) #8
          to label %if.then [label %do.body6], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_issue_pending.__UNIQUE_ID_ddebug250, ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.45) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 15
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %queued = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 18
  %4 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not = icmp eq ptr %5, %queued
  br i1 %cmp.i.not, label %do.body6.unlock_crit_edge, label %if.end17

do.body6.unlock_crit_edge:                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end17:                                         ; preds = %do.body6
  %active = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 19
  %6 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not.i = icmp eq ptr %7, %queued
  br i1 %cmp.i.not.i, label %if.end17.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end17.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %7, ptr %9, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %active, ptr %11, align 4
  store ptr %11, ptr %prev.i, align 4
  %15 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %queued, ptr %queued, align 4
  store ptr %queued, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end17.list_splice_tail_init.exit_crit_edge
  %running = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 22
  %16 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %running, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %if.then20, label %list_splice_tail_init.exit.unlock_crit_edge

list_splice_tail_init.exit.unlock_crit_edge:      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then20:                                        ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active, align 4
  %add.ptr24 = getelementptr i8, ptr %19, i32 -120
  tail call fastcc void @nbpf_start(ptr noundef %add.ptr24)
  %20 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr24, ptr %running, align 4
  br label %unlock

unlock:                                           ; preds = %if.then20, %list_splice_tail_init.exit.unlock_crit_edge, %do.body6.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nbpf_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %slave_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %slave_sg) #8
  %0 = getelementptr inbounds %struct.scatterlist, ptr %slave_sg, i32 0, i32 3
  %1 = call ptr @memset(ptr %slave_sg, i32 255, i32 20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_prep_slave_sg.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_prep_slave_sg, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_prep_slave_sg.__UNIQUE_ID_ddebug261, ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.46) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @sg_init_table(ptr noundef nonnull %slave_sg, i32 noundef 1) #8
  %6 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %direction, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %slave_dst_addr = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 9
  %7 = ptrtoint ptr %slave_dst_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_dst_addr, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %0, align 4
  %call5 = call fastcc ptr @nbpf_prep_sg(ptr noundef %dchan, ptr noundef %sgl, ptr noundef nonnull %slave_sg, i32 noundef %sg_len, i32 noundef 1, i32 noundef %flags)
  br label %cleanup

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %slave_src_addr = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 6
  %10 = ptrtoint ptr %slave_src_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave_src_addr, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %0, align 4
  %call8 = call fastcc ptr @nbpf_prep_sg(ptr noundef %dchan, ptr noundef nonnull %slave_sg, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef 2, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %sw.bb6 ], [ %call5, %sw.bb ], [ null, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %slave_sg) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_config(ptr nocapture noundef %dchan, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_config.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_config, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_config.__UNIQUE_ID_ddebug259, ptr noundef %3, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_addr, align 4
  %slave_dst_addr = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 9
  %6 = ptrtoint ptr %slave_dst_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %slave_dst_addr, align 4
  %nbpf = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 3
  %7 = ptrtoint ptr %nbpf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nbpf, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %9 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_addr_width, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 8
  br i1 %11, label %switch.hole_check, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %10) #11
  br label %nbpf_xfer_size.exit

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %12 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %switch.lobit.not = icmp eq i8 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.nbpf_config, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nbpf_xfer_size.exit

nbpf_xfer_size.exit:                              ; preds = %switch.lookup, %do.end.i
  %size.0.i = phi i32 [ 1, %do.end.i ], [ %switch.load, %switch.lookup ]
  %config.i.i = getelementptr inbounds %struct.nbpf_device, ptr %8, i32 0, i32 5
  %14 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.nbpf_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size.i.i, align 4
  %mul.i.i = shl i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %mul.i.i, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %mul.i.i, i1 true) #8, !range !154
  %sub.i.op.i.i.i = xor i32 %18, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %19 = tail call i32 @llvm.cttz.i32(i32 %size.0.i, i1 true) #8, !range !154
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %sub.i.i.i) #8
  %slave_dst_width = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 10
  %21 = ptrtoint ptr %slave_dst_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %slave_dst_width, align 4
  %22 = ptrtoint ptr %nbpf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nbpf, align 4
  %24 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 6
  %26 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 1, i32 %27
  %28 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %25, label %do.end.i35 [
    i32 8, label %sw.bb.i31
    i32 4, label %sw.bb1.i32
    i32 2, label %sw.bb3.i33
    i32 1, label %nbpf_xfer_size.exit.nbpf_xfer_size.exit50_crit_edge
  ]

nbpf_xfer_size.exit.nbpf_xfer_size.exit50_crit_edge: ; preds = %nbpf_xfer_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbpf_xfer_size.exit50

sw.bb.i31:                                        ; preds = %nbpf_xfer_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %spec.store.select.i, 3
  br label %nbpf_xfer_size.exit50

sw.bb1.i32:                                       ; preds = %nbpf_xfer_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul2.i = shl i32 %spec.store.select.i, 2
  br label %nbpf_xfer_size.exit50

sw.bb3.i33:                                       ; preds = %nbpf_xfer_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i = shl i32 %spec.store.select.i, 1
  br label %nbpf_xfer_size.exit50

do.end.i35:                                       ; preds = %nbpf_xfer_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %25) #11
  br label %nbpf_xfer_size.exit50

nbpf_xfer_size.exit50:                            ; preds = %do.end.i35, %sw.bb3.i33, %sw.bb1.i32, %sw.bb.i31, %nbpf_xfer_size.exit.nbpf_xfer_size.exit50_crit_edge
  %size.0.i36 = phi i32 [ %mul4.i, %sw.bb3.i33 ], [ %mul2.i, %sw.bb1.i32 ], [ %mul.i, %sw.bb.i31 ], [ %spec.store.select.i, %nbpf_xfer_size.exit.nbpf_xfer_size.exit50_crit_edge ], [ %spec.store.select.i, %do.end.i35 ]
  %config.i.i37 = getelementptr inbounds %struct.nbpf_device, ptr %23, i32 0, i32 5
  %29 = ptrtoint ptr %config.i.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i.i37, align 4
  %buffer_size.i.i38 = getelementptr inbounds %struct.nbpf_config, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %buffer_size.i.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_size.i.i38, align 4
  %mul.i.i39 = shl i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i39)
  %tobool.not.i.i.i.i45 = icmp eq i32 %mul.i.i39, 0
  %33 = tail call i32 @llvm.ctlz.i32(i32 %mul.i.i39, i1 true) #8, !range !154
  %sub.i.op.i.i.i46 = xor i32 %33, 31
  %sub.i.i.i47 = select i1 %tobool.not.i.i.i.i45, i32 -1, i32 %sub.i.op.i.i.i46
  %34 = tail call i32 @llvm.cttz.i32(i32 %size.0.i36, i1 false) #8, !range !154
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 %sub.i.i.i47) #8
  %slave_dst_burst = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 11
  %36 = ptrtoint ptr %slave_dst_burst to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %slave_dst_burst, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %37 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %src_addr, align 4
  %slave_src_addr = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 6
  %39 = ptrtoint ptr %slave_src_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %slave_src_addr, align 4
  %40 = ptrtoint ptr %nbpf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nbpf, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %42 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_addr_width, align 4
  %switch.tableidx98 = add i32 %43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx98)
  %44 = icmp ult i32 %switch.tableidx98, 8
  br i1 %44, label %switch.hole_check99, label %nbpf_xfer_size.exit50.do.end.i55_crit_edge

nbpf_xfer_size.exit50.do.end.i55_crit_edge:       ; preds = %nbpf_xfer_size.exit50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i55

do.end.i55:                                       ; preds = %switch.hole_check99.do.end.i55_crit_edge, %nbpf_xfer_size.exit50.do.end.i55_crit_edge
  %call.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %43) #11
  br label %nbpf_xfer_size.exit70

switch.hole_check99:                              ; preds = %nbpf_xfer_size.exit50
  %switch.maskindex101 = trunc i32 %switch.tableidx98 to i8
  %switch.shifted102 = lshr i8 -117, %switch.maskindex101
  %45 = and i8 %switch.shifted102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %switch.lobit103.not = icmp eq i8 %45, 0
  br i1 %switch.lobit103.not, label %switch.hole_check99.do.end.i55_crit_edge, label %switch.lookup100

switch.hole_check99.do.end.i55_crit_edge:         ; preds = %switch.hole_check99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i55

switch.lookup100:                                 ; preds = %switch.hole_check99
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep104 = getelementptr inbounds [8 x i32], ptr @switch.table.nbpf_config.57, i32 0, i32 %switch.tableidx98
  %46 = ptrtoint ptr %switch.gep104 to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load105 = load i32, ptr %switch.gep104, align 4
  br label %nbpf_xfer_size.exit70

nbpf_xfer_size.exit70:                            ; preds = %switch.lookup100, %do.end.i55
  %size.0.i56 = phi i32 [ 1, %do.end.i55 ], [ %switch.load105, %switch.lookup100 ]
  %config.i.i57 = getelementptr inbounds %struct.nbpf_device, ptr %41, i32 0, i32 5
  %47 = ptrtoint ptr %config.i.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i.i57, align 4
  %buffer_size.i.i58 = getelementptr inbounds %struct.nbpf_config, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %buffer_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buffer_size.i.i58, align 4
  %mul.i.i59 = shl i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i59)
  %tobool.not.i.i.i.i65 = icmp eq i32 %mul.i.i59, 0
  %51 = tail call i32 @llvm.ctlz.i32(i32 %mul.i.i59, i1 true) #8, !range !154
  %sub.i.op.i.i.i66 = xor i32 %51, 31
  %sub.i.i.i67 = select i1 %tobool.not.i.i.i.i65, i32 -1, i32 %sub.i.op.i.i.i66
  %52 = tail call i32 @llvm.cttz.i32(i32 %size.0.i56, i1 true) #8, !range !154
  %53 = tail call i32 @llvm.smin.i32(i32 %52, i32 %sub.i.i.i67) #8
  %slave_src_width = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 7
  %54 = ptrtoint ptr %slave_src_width to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %slave_src_width, align 4
  %55 = ptrtoint ptr %nbpf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nbpf, align 4
  %57 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %59 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i71 = icmp eq i32 %60, 0
  %spec.store.select.i72 = select i1 %tobool.not.i71, i32 1, i32 %60
  %61 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %58, label %do.end.i80 [
    i32 8, label %sw.bb.i74
    i32 4, label %sw.bb1.i76
    i32 2, label %sw.bb3.i78
    i32 1, label %nbpf_xfer_size.exit70.nbpf_xfer_size.exit95_crit_edge
  ]

nbpf_xfer_size.exit70.nbpf_xfer_size.exit95_crit_edge: ; preds = %nbpf_xfer_size.exit70
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbpf_xfer_size.exit95

sw.bb.i74:                                        ; preds = %nbpf_xfer_size.exit70
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i73 = shl i32 %spec.store.select.i72, 3
  br label %nbpf_xfer_size.exit95

sw.bb1.i76:                                       ; preds = %nbpf_xfer_size.exit70
  call void @__sanitizer_cov_trace_pc() #10
  %mul2.i75 = shl i32 %spec.store.select.i72, 2
  br label %nbpf_xfer_size.exit95

sw.bb3.i78:                                       ; preds = %nbpf_xfer_size.exit70
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i77 = shl i32 %spec.store.select.i72, 1
  br label %nbpf_xfer_size.exit95

do.end.i80:                                       ; preds = %nbpf_xfer_size.exit70
  call void @__sanitizer_cov_trace_pc() #10
  %call.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %58) #11
  br label %nbpf_xfer_size.exit95

nbpf_xfer_size.exit95:                            ; preds = %do.end.i80, %sw.bb3.i78, %sw.bb1.i76, %sw.bb.i74, %nbpf_xfer_size.exit70.nbpf_xfer_size.exit95_crit_edge
  %size.0.i81 = phi i32 [ %mul4.i77, %sw.bb3.i78 ], [ %mul2.i75, %sw.bb1.i76 ], [ %mul.i73, %sw.bb.i74 ], [ %spec.store.select.i72, %nbpf_xfer_size.exit70.nbpf_xfer_size.exit95_crit_edge ], [ %spec.store.select.i72, %do.end.i80 ]
  %config.i.i82 = getelementptr inbounds %struct.nbpf_device, ptr %56, i32 0, i32 5
  %62 = ptrtoint ptr %config.i.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i.i82, align 4
  %buffer_size.i.i83 = getelementptr inbounds %struct.nbpf_config, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %buffer_size.i.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buffer_size.i.i83, align 4
  %mul.i.i84 = shl i32 %65, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i84)
  %tobool.not.i.i.i.i90 = icmp eq i32 %mul.i.i84, 0
  %66 = tail call i32 @llvm.ctlz.i32(i32 %mul.i.i84, i1 true) #8, !range !154
  %sub.i.op.i.i.i91 = xor i32 %66, 31
  %sub.i.i.i92 = select i1 %tobool.not.i.i.i.i90, i32 -1, i32 %sub.i.op.i.i.i91
  %67 = tail call i32 @llvm.cttz.i32(i32 %size.0.i81, i1 false) #8, !range !154
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 %sub.i.i.i92) #8
  %slave_src_burst = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 8
  %69 = ptrtoint ptr %slave_src_burst to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %slave_src_burst, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_pause(ptr nocapture noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_pause.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_pause, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_pause.__UNIQUE_ID_ddebug256, ptr noundef %3, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.51) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %paused = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 23
  %4 = ptrtoint ptr %paused to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %paused, align 4
  %base.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 2
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_pause, %nbpf_chan_write.exit)) #8
          to label %if.then.i [label %nbpf_chan_write.exit], !srcloc !153

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dchan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %12, i32 noundef 40, i32 noundef 256) #8
  br label %nbpf_chan_write.exit

nbpf_chan_write.exit:                             ; preds = %if.then.i, %do.end
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 33554432) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_pause, %nbpf_chan_write.exit12)) #8
          to label %if.then.i11 [label %nbpf_chan_write.exit12], !srcloc !153

if.then.i11:                                      ; preds = %nbpf_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dchan, align 4
  %dev.i10 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %dev.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i10, align 4
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %18, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %20, i32 noundef 40, i32 noundef 2) #8
  br label %nbpf_chan_write.exit12

nbpf_chan_write.exit12:                           ; preds = %if.then.i11, %nbpf_chan_write.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_terminate_all.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_terminate_all, %do.body5)) #8
          to label %if.then [label %do.body5], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_terminate_all.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.52) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_terminate_all.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_terminate_all, %do.end24)) #8
          to label %if.then19 [label %do.end24], !srcloc !153

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dchan, align 4
  %dev21 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_terminate_all.__UNIQUE_ID_ddebug258, ptr noundef %7, ptr noundef nonnull @.str.53) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body5
  %base.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %dchan, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_terminate_all, %nbpf_chan_halt.exit)) #8
          to label %if.then.i.i [label %nbpf_chan_halt.exit], !srcloc !153

if.then.i.i:                                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dchan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %15, i32 noundef 40, i32 noundef 2) #8
  br label %nbpf_chan_halt.exit

nbpf_chan_halt.exit:                              ; preds = %if.then.i.i, %do.end24
  tail call fastcc void @nbpf_chan_idle(ptr noundef %dchan)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbpf_configure(ptr nocapture noundef readonly %nbpf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.nbpf_device, ptr %nbpf, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_configure, %nbpf_write.exit)) #8
          to label %if.then.i [label %nbpf_write.exit], !srcloc !153

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %nbpf, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_write.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.54, ptr noundef %5, i32 noundef 768, i32 noundef 2) #8
  br label %nbpf_write.exit

nbpf_write.exit:                                  ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nbpf_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %2 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_dma_data, align 4
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_of_xlate.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_of_xlate, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !153

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_spec, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_of_xlate.__UNIQUE_ID_ddebug264, ptr noundef %7, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, ptr noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 4
  %terminal = getelementptr inbounds %struct.nbpf_channel, ptr %call, i32 0, i32 12
  %12 = ptrtoint ptr %terminal to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %terminal, align 4
  %arrayidx12 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx12, align 4
  %flags = getelementptr inbounds %struct.nbpf_channel, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flags, align 4
  %trunc.i = trunc i32 %14 to i6
  %rev.i = tail call i6 @llvm.bitreverse.i6(i6 %trunc.i) #8
  %mask.i = and i6 %rev.i, -16
  %or.i = zext i6 %mask.i to i32
  %and6.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 0, i32 576
  %or9.i = or i32 %cond8.i, %11
  %or10.i = or i32 %or9.i, %or.i
  %dmarq_cfg.i = getelementptr inbounds %struct.nbpf_channel, ptr %call, i32 0, i32 13
  %16 = ptrtoint ptr %dmarq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or10.i, ptr %dmarq_cfg.i, align 4
  %or.i25 = or i32 %or10.i, -2147483648
  %base.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i25) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_of_xlate, %cleanup)) #8
          to label %if.then.i.i [label %cleanup], !srcloc !153

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %23, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %25, i32 noundef 44, i32 noundef %or.i25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %if.then.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbpf_error_clear(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_error_clear, %for.body)) #8
          to label %if.then.i.i [label %for.body], !srcloc !153

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %7, i32 noundef 40, i32 noundef 2) #8
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %if.then.i.i, %entry
  %i.027 = phi i32 [ %dec, %do.end.for.body_crit_edge ], [ 1000, %entry ], [ 1000, %if.then.i.i ]
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !151
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_error_clear, %nbpf_chan_read.exit)) #8
          to label %if.then.i [label %nbpf_chan_read.exit], !srcloc !153

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_read.__UNIQUE_ID_ddebug236, ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, ptr noundef %17, i32 noundef 36, i32 noundef %11) #8
  br label %nbpf_chan_read.exit

nbpf_chan_read.exit:                              ; preds = %if.then.i, %for.body
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %nbpf_chan_read.exit.if.end13_crit_edge, label %do.end

nbpf_chan_read.exit.if.end13_crit_edge:           ; preds = %nbpf_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end:                                           ; preds = %nbpf_chan_read.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !160
  %dec = add nsw i32 %i.027, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end12, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %11) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %nbpf_chan_read.exit.if.end13_crit_edge
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 134217728) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_error_clear, %nbpf_chan_write.exit)) #8
          to label %if.then.i23 [label %nbpf_chan_write.exit], !srcloc !153

if.then.i23:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan, align 4
  %dev.i22 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i22, align 4
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %29, i32 noundef 40, i32 noundef 8) #8
  br label %nbpf_chan_write.exit

nbpf_chan_write.exit:                             ; preds = %if.then.i23, %if.end13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbpf_chan_idle(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 15
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %done = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 20
  %3 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %done, align 4
  %cmp.i.not.i = icmp eq ptr %4, %done
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head, align 4
  %prev2.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %prev3.i.i, align 4
  store ptr %4, ptr %head, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %done, ptr %done, align 4
  store ptr %done, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %active = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 19
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %active, align 4
  %cmp.i.not.i44 = icmp eq ptr %14, %active
  br i1 %cmp.i.not.i44, label %list_splice_init.exit.list_splice_init.exit49_crit_edge, label %if.then.i48

list_splice_init.exit.list_splice_init.exit49_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit49

if.then.i48:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head, align 4
  %prev2.i.i45 = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %prev2.i.i45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i45, align 4
  %prev3.i.i46 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %head, ptr %prev3.i.i46, align 4
  store ptr %14, ptr %head, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i47 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i47, align 4
  %22 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %active, ptr %active, align 4
  store ptr %active, ptr %prev2.i.i45, align 4
  br label %list_splice_init.exit49

list_splice_init.exit49:                          ; preds = %if.then.i48, %list_splice_init.exit.list_splice_init.exit49_crit_edge
  %queued = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 18
  %23 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not.i50 = icmp eq ptr %24, %queued
  br i1 %cmp.i.not.i50, label %list_splice_init.exit49.list_splice_init.exit55_crit_edge, label %if.then.i54

list_splice_init.exit49.list_splice_init.exit55_crit_edge: ; preds = %list_splice_init.exit49
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit55

if.then.i54:                                      ; preds = %list_splice_init.exit49
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head, align 4
  %prev2.i.i51 = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev2.i.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i51, align 4
  %prev3.i.i52 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %head, ptr %prev3.i.i52, align 4
  store ptr %24, ptr %head, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %28, align 4
  %prev6.i.i53 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev6.i.i53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev6.i.i53, align 4
  %32 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %queued, ptr %queued, align 4
  store ptr %queued, ptr %prev2.i.i51, align 4
  br label %list_splice_init.exit55

list_splice_init.exit55:                          ; preds = %if.then.i54, %list_splice_init.exit49.list_splice_init.exit55_crit_edge
  %running = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 22
  %33 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %running, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  %34 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head, align 4
  %cmp14.not59 = icmp eq ptr %35, %head
  br i1 %cmp14.not59, label %list_splice_init.exit55.for.end_crit_edge, label %do.body16.lr.ph

list_splice_init.exit55.for.end_crit_edge:        ; preds = %list_splice_init.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body16.lr.ph:                                  ; preds = %list_splice_init.exit55
  %nbpf = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 3
  br label %do.body16

do.body16:                                        ; preds = %list_del.exit.do.body16_crit_edge, %do.body16.lr.ph
  %.pn.in60 = phi ptr [ %35, %do.body16.lr.ph ], [ %.pn64, %list_del.exit.do.body16_crit_edge ]
  %desc.062 = getelementptr i8, ptr %.pn.in60, i32 -120
  %36 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn64 = load ptr, ptr %.pn.in60, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_idle.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_chan_idle, %do.end24)) #8
          to label %if.then [label %do.end24], !srcloc !153

if.then:                                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %nbpf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nbpf, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %41 = ptrtoint ptr %desc.062 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %desc.062, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_idle.__UNIQUE_ID_ddebug255, ptr noundef %40, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %desc.062, i32 noundef %42) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then, %do.body16
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end24.list_del.exit_crit_edge

do.end24.list_del.exit_crit_edge:                 ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn.in60, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end24.list_del.exit_crit_edge
  %49 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in60, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call fastcc void @nbpf_desc_put(ptr noundef %desc.062)
  %cmp14.not = icmp eq ptr %.pn64, %head
  br i1 %cmp14.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.do.body16_crit_edge

list_del.exit.do.body16_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %list_splice_init.exit55.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbpf_desc_put(ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.nbpf_desc, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %lock = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %sg = getelementptr inbounds %struct.nbpf_desc, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %cmp14.not35 = icmp eq ptr %3, %sg
  br i1 %cmp14.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %free_links = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn, %list_move.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %4, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %12 = ptrtoint ptr %free_links to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_links, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %free_links, ptr noundef %13) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %prev1.i.i2.i, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free_links, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %free_links to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %4, ptr %free_links, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cmp14.not = icmp eq ptr %.pn, %sg
  br i1 %cmp14.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %node22 = getelementptr inbounds %struct.nbpf_desc, ptr %desc, i32 0, i32 5
  %free = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %free, align 4
  %call.i.i33 = tail call zeroext i1 @__list_add_valid(ptr noundef %node22, ptr noundef %free, ptr noundef %19) #8
  br i1 %call.i.i33, label %if.end.i.i34, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i34:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node22, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %node22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %node22, align 4
  %prev3.i.i = getelementptr inbounds %struct.nbpf_desc, ptr %desc, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %free, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node22, ptr %free, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i34, %for.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbpf_chan_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i83 = alloca %struct.dmaengine_result, align 8
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr i8, ptr %t, i32 164
  %0 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %done, align 4
  %cmp.i.not113 = icmp eq ptr %1, %done
  br i1 %cmp.i.not113, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lock = getelementptr i8, ptr %t, i32 88
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.else.for.cond_crit_edge, %while.body
  %.pn.in = phi ptr [ %3, %while.body ], [ %.pn, %if.else.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %done
  br i1 %cmp.not, label %cleanup.thread, label %for.body

for.body:                                         ; preds = %for.cond
  %user_wait = getelementptr i8, ptr %.pn.in, i32 -20
  %5 = ptrtoint ptr %user_wait to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %user_wait, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %if.end30, label %if.else

if.else:                                          ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn.in, i32 -116
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 2
  %cmp.i65.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i65.not, label %if.else.for.cond_crit_edge, label %if.then15

if.else.for.cond_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then15:                                        ; preds = %if.else
  %desc.0.le = getelementptr i8, ptr %.pn.in, i32 -120
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.for.end_crit_edge

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i, %if.then15.for.end_crit_edge
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call fastcc void @nbpf_desc_put(ptr noundef %desc.0.le)
  br label %cleanup

cleanup.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %while.end

if.end30:                                         ; preds = %for.body
  %user_wait.le = getelementptr i8, ptr %.pn.in, i32 -20
  %desc.0.le111 = getelementptr i8, ptr %.pn.in, i32 -120
  %17 = ptrtoint ptr %desc.0.le111 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc.0.le111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i66 = icmp slt i32 %18, 1
  br i1 %cmp.i66, label %do.body2.i, label %dma_cookie_complete.exit, !prof !161

do.body2.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end30
  %chan.i = getelementptr i8, ptr %.pn.in, i32 -108
  %19 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %completed_cookie.i, align 4
  %22 = ptrtoint ptr %desc.0.le111 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %desc.0.le111, align 4
  %flags.i67 = getelementptr i8, ptr %.pn.in, i32 -116
  %23 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i67, align 4
  %and.i68 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %cmp.i69.not = icmp eq i32 %and.i68, 0
  br i1 %cmp.i69.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %dma_cookie_complete.exit
  %call.i.i70 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #8
  br i1 %call.i.i70, label %if.end.i.i73, label %if.then34.list_del.exit75_crit_edge

if.then34.list_del.exit75_crit_edge:              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit75

if.end.i.i73:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i71 = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i71, align 4
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i72 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i72, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit75

list_del.exit75:                                  ; preds = %if.end.i.i73, %if.then34.list_del.exit75_crit_edge
  %31 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i74 = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i74, align 4
  %callback.i = getelementptr i8, ptr %.pn.in, i32 -96
  %33 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr i8, ptr %.pn.in, i32 -92
  %35 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr i8, ptr %.pn.in, i32 -88
  %37 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %callback_param.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #8
  %39 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del.exit75
  call void @__sanitizer_cov_trace_pc() #10
  call void %36(ptr noundef %38, ptr noundef nonnull %dummy_result.i) #8
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %list_del.exit75
  %tobool4.not.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %34(ptr noundef %38) #8
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #8
  call fastcc void @nbpf_desc_put(ptr noundef %desc.0.le111)
  br label %cleanup

if.else36:                                        ; preds = %dma_cookie_complete.exit
  %40 = ptrtoint ptr %user_wait.le to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %user_wait.le, align 4
  %callback.i78 = getelementptr i8, ptr %.pn.in, i32 -96
  %41 = ptrtoint ptr %callback.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %callback.i78, align 4
  %callback_result.i79 = getelementptr i8, ptr %.pn.in, i32 -92
  %43 = ptrtoint ptr %callback_result.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %callback_result.i79, align 4
  %callback_param.i81 = getelementptr i8, ptr %.pn.in, i32 -88
  %45 = ptrtoint ptr %callback_param.i81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %callback_param.i81, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i83) #8
  %47 = ptrtoint ptr %dummy_result.i83 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %dummy_result.i83, align 8
  %tobool.not.i85 = icmp eq ptr %44, null
  br i1 %tobool.not.i85, label %if.else.i89, label %if.then.i87

if.then.i87:                                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  call void %44(ptr noundef %46, ptr noundef nonnull %dummy_result.i83) #8
  br label %dmaengine_desc_callback_invoke.exit92

if.else.i89:                                      ; preds = %if.else36
  %tobool4.not.i88 = icmp eq ptr %42, null
  br i1 %tobool4.not.i88, label %if.else.i89.dmaengine_desc_callback_invoke.exit92_crit_edge, label %if.then5.i91

if.else.i89.dmaengine_desc_callback_invoke.exit92_crit_edge: ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_desc_callback_invoke.exit92

if.then5.i91:                                     ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #10
  call void %42(ptr noundef %46) #8
  br label %dmaengine_desc_callback_invoke.exit92

dmaengine_desc_callback_invoke.exit92:            ; preds = %if.then5.i91, %if.else.i89.dmaengine_desc_callback_invoke.exit92_crit_edge, %if.then.i87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i83) #8
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_desc_callback_invoke.exit92, %dmaengine_desc_callback_invoke.exit, %for.end
  %48 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %done, align 4
  %cmp.i.not = icmp eq ptr %49, %done
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_chan_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nbpf.i = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %nbpf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nbpf.i, align 4
  %base.i.i = getelementptr inbounds %struct.nbpf_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 792
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !151
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_read.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_chan_irq, %nbpf_status_get.exit)) #8
          to label %if.then.i.i [label %nbpf_status_get.exit], !srcloc !153

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_read.__UNIQUE_ID_ddebug238, ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %9, i32 noundef 792, i32 noundef %5) #8
  br label %nbpf_status_get.exit

nbpf_status_get.exit:                             ; preds = %if.then.i.i, %entry
  %10 = ptrtoint ptr %nbpf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nbpf.i, align 4
  %chan2.i = getelementptr inbounds %struct.nbpf_device, ptr %11, i32 0, i32 7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dev to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %chan2.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 252
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %and.i = and i32 %shl.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %nbpf_status_get.exit.cleanup_crit_edge, label %if.end

nbpf_status_get.exit.cleanup_crit_edge:           ; preds = %nbpf_status_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %nbpf_status_get.exit
  %base.i.i81 = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i81, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82, i32 536870912) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_chan_irq, %nbpf_status_ack.exit)) #8
          to label %if.then.i.i84 [label %nbpf_status_ack.exit], !srcloc !153

if.then.i.i84:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev.i.i83 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i83, align 4
  %18 = ptrtoint ptr %base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i81, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %19, i32 noundef 40, i32 noundef 32) #8
  br label %nbpf_status_ack.exit

nbpf_status_ack.exit:                             ; preds = %if.then.i.i84, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_irq.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_chan_irq, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !153

if.then7:                                         ; preds = %nbpf_status_ack.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.dma_chan, ptr %dev, i32 0, i32 5
  %20 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev8, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_irq.__UNIQUE_ID_ddebug265, ptr noundef %device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %nbpf_status_ack.exit
  %lock = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %running = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 22
  %22 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %running, align 4
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %unlock, label %if.else, !prof !161

if.else:                                          ; preds = %do.end
  %node = getelementptr inbounds %struct.nbpf_desc, ptr %23, i32 0, i32 5
  %done45 = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.nbpf_desc, ptr %23, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %31, ptr noundef %done45) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %node, ptr %prev.i2.i, align 4
  %33 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %done45, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nbpf_desc, ptr %23, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %node, ptr %31, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %36 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %running, align 4
  %active = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 19
  %37 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %38, %active
  br i1 %cmp.i.not, label %list_move_tail.exit.if.then60_crit_edge, label %if.then49

list_move_tail.exit.if.then60_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.then49:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %38, i32 -120
  tail call fastcc void @nbpf_start(ptr noundef %add.ptr)
  %39 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr, ptr %running, align 4
  br label %if.then60

unlock:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1197, i32 noundef 9, ptr noundef null) #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

if.then60:                                        ; preds = %if.then49, %list_move_tail.exit.if.then60_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %state.i = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 1, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr inbounds %struct.nbpf_channel, ptr %dev, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then60.cleanup_crit_edge, %unlock, %nbpf_status_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nbpf_status_get.exit.cleanup_crit_edge ], [ 0, %unlock ], [ 1, %if.then60.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbpf_start(ptr nocapture noundef readonly %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.nbpf_desc, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %sg = getelementptr inbounds %struct.nbpf_desc, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -12
  %hwdesc_dma_addr = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %hwdesc_dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwdesc_dma_addr, align 4
  %base.i = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_start, %nbpf_chan_write.exit)) #8
          to label %if.then.i [label %nbpf_chan_write.exit], !srcloc !153

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %14, i32 noundef 56, i32 noundef %5) #8
  br label %nbpf_chan_write.exit

nbpf_chan_write.exit:                             ; preds = %if.then.i, %entry
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 16908288) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_start, %nbpf_chan_write.exit5)) #8
          to label %if.then.i4 [label %nbpf_chan_write.exit5], !srcloc !153

if.then.i4:                                       ; preds = %nbpf_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev.i3 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev.i3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i3, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %20, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %22, i32 noundef 40, i32 noundef 513) #8
  br label %nbpf_chan_write.exit5

nbpf_chan_write.exit5:                            ; preds = %if.then.i4, %nbpf_chan_write.exit
  %paused = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %paused to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %paused, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %config = getelementptr inbounds %struct.nbpf_link_reg, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %config to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %config, align 1
  %and = and i32 %27, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nbpf_chan_write.exit5.do.body_crit_edge, label %if.then

nbpf_chan_write.exit5.do.body_crit_edge:          ; preds = %nbpf_chan_write.exit5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %nbpf_chan_write.exit5
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 67108864) #8, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_start, %do.body)) #8
          to label %if.then.i9 [label %do.body], !srcloc !153

if.then.i9:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %dev.i8 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i8, align 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_write.__UNIQUE_ID_ddebug237, ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %35, i32 noundef 40, i32 noundef 4) #8
  br label %do.body

do.body:                                          ; preds = %if.then.i9, %if.then, %nbpf_chan_write.exit5.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_start.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_start, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !153

if.then7:                                         ; preds = %do.body
  %nbpf = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %nbpf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nbpf, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %41, i32 56
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !151
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_start, %nbpf_chan_read.exit)) #8
          to label %if.then.i14 [label %nbpf_chan_read.exit], !srcloc !153

if.then.i14:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %dev.i13 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %dev.i13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i13, align 4
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_read.__UNIQUE_ID_ddebug236, ptr noundef %47, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, ptr noundef %49, i32 noundef 56, i32 noundef %43) #8
  br label %nbpf_chan_read.exit

nbpf_chan_read.exit:                              ; preds = %if.then.i14, %if.then7
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %51, i32 60
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #8, !srcloc !151
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_chan_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_start, %nbpf_chan_read.exit19)) #8
          to label %if.then.i18 [label %nbpf_chan_read.exit19], !srcloc !153

if.then.i18:                                      ; preds = %nbpf_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %dev.i17 = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %dev.i17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i17, align 4
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_chan_read.__UNIQUE_ID_ddebug236, ptr noundef %57, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, ptr noundef %59, i32 noundef 60, i32 noundef %53) #8
  br label %nbpf_chan_read.exit19

nbpf_chan_read.exit19:                            ; preds = %if.then.i18, %nbpf_chan_read.exit
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_start.__UNIQUE_ID_ddebug240, ptr noundef %39, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %43, i32 noundef %53) #8
  br label %do.end

do.end:                                           ; preds = %nbpf_chan_read.exit19, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbpf_desc_page_alloc(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  %lhead = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_zeroed_page(i32 noundef 3265) #8
  %0 = inttoptr i32 %call to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #8
  %1 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %head, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lhead) #8
  %4 = getelementptr inbounds %struct.list_head, ptr %lhead, i32 0, i32 1
  %5 = ptrtoint ptr %lhead to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lhead, ptr %lhead, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lhead, ptr %4, align 4
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan, align 4
  %dev3 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_desc_page_alloc.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_desc_page_alloc, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !153

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_desc_page_alloc.__UNIQUE_ID_ddebug253, ptr noundef %10, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 12, i32 noundef 48, i32 noundef 4040) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %ldesc11 = getelementptr inbounds %struct.nbpf_desc_page, ptr %0, i32 0, i32 2
  %hwdesc12 = getelementptr inbounds %struct.nbpf_desc_page, ptr %0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %ldesc.0116 = phi ptr [ %ldesc11, %do.end ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0115 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %hwdesc.0113 = phi ptr [ %hwdesc12, %do.end ], [ %incdec.ptr37, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %ldesc.0116 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hwdesc.0113, ptr %ldesc.0116, align 4
  %node = getelementptr inbounds %struct.nbpf_link_desc, ptr %ldesc.0116, i32 0, i32 3
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %13, ptr noundef nonnull %lhead) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node, ptr %4, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lhead, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.nbpf_link_desc, ptr %ldesc.0116, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %dev16 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev16, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %hwdesc.0113) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %list_add_tail.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !163

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %21) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i91, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i91:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i91, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i91 ], [ %23, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_dma_map_single(ptr noundef %21, ptr noundef %hwdesc.0113, i32 noundef 32) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %hwdesc.0113 to i32
  %sub.i = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i = and i32 %27, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %21, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i92 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %hwdesc_dma_addr = getelementptr inbounds %struct.nbpf_link_desc, ptr %ldesc.0116, i32 0, i32 1
  %28 = ptrtoint ptr %hwdesc_dma_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i92, ptr %hwdesc_dma_addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_desc_page_alloc.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_desc_page_alloc, %for.inc)) #8
          to label %if.then32 [label %for.inc], !srcloc !153

if.then32:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_desc_page_alloc.__UNIQUE_ID_ddebug254, ptr noundef %10, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %hwdesc.0113, ptr noundef %hwdesc_dma_addr) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %dma_map_single_attrs.exit
  %inc = add nuw nsw i32 %i.0115, 1
  %incdec.ptr = getelementptr %struct.nbpf_link_desc, ptr %ldesc.0116, i32 1
  %incdec.ptr37 = getelementptr %struct.nbpf_link_reg, ptr %hwdesc.0113, i32 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %desc38 = getelementptr inbounds %struct.nbpf_desc_page, ptr %0, i32 0, i32 1
  br label %for.body42

for.body42:                                       ; preds = %list_add_tail.exit98.for.body42_crit_edge, %for.end
  %i.1120 = phi i32 [ 0, %for.end ], [ %inc47, %list_add_tail.exit98.for.body42_crit_edge ]
  %desc.0118 = phi ptr [ %desc38, %for.end ], [ %incdec.ptr48, %list_add_tail.exit98.for.body42_crit_edge ]
  call void @dma_async_tx_descriptor_init(ptr noundef %desc.0118, ptr noundef %chan) #8
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0118, i32 0, i32 4
  %29 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nbpf_tx_submit, ptr %tx_submit, align 4
  %chan44 = getelementptr inbounds %struct.nbpf_desc, ptr %desc.0118, i32 0, i32 3
  %30 = ptrtoint ptr %chan44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %chan, ptr %chan44, align 4
  %sg = getelementptr inbounds %struct.nbpf_desc, ptr %desc.0118, i32 0, i32 4
  %31 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %sg, ptr %sg, align 4
  %prev.i93 = getelementptr inbounds %struct.nbpf_desc, ptr %desc.0118, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %sg, ptr %prev.i93, align 4
  %node45 = getelementptr inbounds %struct.nbpf_desc, ptr %desc.0118, i32 0, i32 5
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i.i95 = call zeroext i1 @__list_add_valid(ptr noundef %node45, ptr noundef %34, ptr noundef nonnull %head) #8
  br i1 %call.i.i95, label %if.end.i.i97, label %for.body42.list_add_tail.exit98_crit_edge

for.body42.list_add_tail.exit98_crit_edge:        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit98

if.end.i.i97:                                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %node45, ptr %1, align 4
  %36 = ptrtoint ptr %node45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head, ptr %node45, align 4
  %prev3.i.i96 = getelementptr inbounds %struct.nbpf_desc, ptr %desc.0118, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i96, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %node45, ptr %34, align 4
  br label %list_add_tail.exit98

list_add_tail.exit98:                             ; preds = %if.end.i.i97, %for.body42.list_add_tail.exit98_crit_edge
  %inc47 = add nuw nsw i32 %i.1120, 1
  %incdec.ptr48 = getelementptr %struct.nbpf_desc, ptr %desc.0118, i32 1
  %exitcond121.not = icmp eq i32 %inc47, 12
  br i1 %exitcond121.not, label %for.end49, label %list_add_tail.exit98.for.body42_crit_edge

list_add_tail.exit98.for.body42_crit_edge:        ; preds = %list_add_tail.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42

for.end49:                                        ; preds = %list_add_tail.exit98
  %lock = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 15
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %39 = ptrtoint ptr %lhead to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %lhead, align 4
  %cmp.i.not.i = icmp eq ptr %40, %lhead
  br i1 %cmp.i.not.i, label %for.end49.list_splice_tail.exit_crit_edge, label %if.then.i101

for.end49.list_splice_tail.exit_crit_edge:        ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail.exit

if.then.i101:                                     ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #10
  %free_links = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 16
  %prev.i99 = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i99, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 4
  %prev3.i.i100 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i100 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i100, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %free_links, ptr %44, align 4
  store ptr %44, ptr %prev.i99, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i101, %for.end49.list_splice_tail.exit_crit_edge
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %head, align 4
  %cmp.i.not.i102 = icmp eq ptr %49, %head
  br i1 %cmp.i.not.i102, label %list_splice_tail.exit.list_splice_tail.exit107_crit_edge, label %if.then.i106

list_splice_tail.exit.list_splice_tail.exit107_crit_edge: ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail.exit107

if.then.i106:                                     ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %free = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 17
  %prev.i103 = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i103, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %prev3.i.i105 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i105 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i105, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %free, ptr %53, align 4
  store ptr %53, ptr %prev.i103, align 4
  br label %list_splice_tail.exit107

list_splice_tail.exit107:                         ; preds = %if.then.i106, %list_splice_tail.exit.list_splice_tail.exit107_crit_edge
  %desc_page = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 21
  %57 = ptrtoint ptr %desc_page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc_page, align 4
  %call.i.i108 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %0, ptr noundef %desc_page, ptr noundef %58) #8
  br i1 %call.i.i108, label %if.end.i.i110, label %list_splice_tail.exit107.list_add.exit_crit_edge

list_splice_tail.exit107.list_add.exit_crit_edge: ; preds = %list_splice_tail.exit107
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i110:                                    ; preds = %list_splice_tail.exit107
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %0, ptr %prev1.i.i, align 4
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %0, align 4
  %prev3.i.i109 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i109 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %desc_page, ptr %prev3.i.i109, align 4
  %62 = ptrtoint ptr %desc_page to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %0, ptr %desc_page, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i110, %list_splice_tail.exit107.list_add.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 12, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lhead) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.nbpf_desc, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %lock = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %chan1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1.i, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #8
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %node = getelementptr inbounds %struct.nbpf_desc, ptr %tx, i32 0, i32 5
  %queued = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.nbpf_channel, ptr %1, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef %queued) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queued, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.nbpf_desc, ptr %tx, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_tx_submit.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_tx_submit, %do.end16)) #8
          to label %if.then [label %do.end16], !srcloc !153

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_tx_submit.__UNIQUE_ID_ddebug252, ptr noundef %18, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %6) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then, %list_add_tail.exit
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nbpf_prep_sg(ptr noundef %chan, ptr noundef %src_sg, ptr noundef %dst_sg, i32 noundef %len, i32 noundef %direction, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %head.i.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %direction, label %sw.bb2 [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %inc_src.0.off0 = phi i1 [ true, %sw.bb2 ], [ true, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ]
  %inc_dst.0.off0 = phi i1 [ true, %sw.bb2 ], [ false, %sw.bb1 ], [ true, %entry.sw.epilog_crit_edge ]
  %mem_sg.0 = phi ptr [ %src_sg, %sw.bb2 ], [ %src_sg, %sw.bb1 ], [ %dst_sg, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i.i) #8
  %1 = getelementptr inbounds %struct.list_head, ptr %head.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i.i, ptr %head.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head.i.i, ptr %1, align 4
  %lock.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 15
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %done.i.i = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 20
  %4 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %done.i.i, align 4
  %cmp14.not74.i.i = icmp eq ptr %5, %done.i.i
  br i1 %cmp14.not74.i.i, label %sw.epilog.for.end.i.i_crit_edge, label %sw.epilog.for.body.i.i_crit_edge

sw.epilog.for.body.i.i_crit_edge:                 ; preds = %sw.epilog
  br label %for.body.i.i

sw.epilog.for.end.i.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.for.body.i.i_crit_edge
  %.pn.in75.i.i = phi ptr [ %.pn77.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %5, %sw.epilog.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in75.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn77.i.i = load ptr, ptr %.pn.in75.i.i, align 4
  %flags.i.i.i = getelementptr i8, ptr %.pn.in75.i.i, i32 -116
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %user_wait.i.i = getelementptr i8, ptr %.pn.in75.i.i, i32 -20
  %9 = ptrtoint ptr %user_wait.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %user_wait.i.i, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in75.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in75.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in75.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in75.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in75.i.i, ptr noundef nonnull %head.i.i, ptr noundef %18) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge

__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn.in75.i.i, ptr %prev1.i.i2.i.i.i, align 4
  %20 = ptrtoint ptr %.pn.in75.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %.pn.in75.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in75.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i.i, ptr %prev3.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in75.i.i, ptr %head.i.i, align 4
  br label %list_move.exit.i.i

list_move.exit.i.i:                               ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge
  %23 = ptrtoint ptr %user_wait.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %user_wait.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_move.exit.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp14.not.i.i = icmp eq ptr %.pn77.i.i, %done.i.i
  br i1 %cmp14.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %sw.epilog.for.end.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #8
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 4
  %cmp38.not78.i.i = icmp eq ptr %25, %head.i.i
  br i1 %cmp38.not78.i.i, label %for.end.i.i.nbpf_scan_acked.exit.i_crit_edge, label %for.end.i.i.for.body41.i.i_crit_edge

for.end.i.i.for.body41.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body41.i.i

for.end.i.i.nbpf_scan_acked.exit.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbpf_scan_acked.exit.i

for.body41.i.i:                                   ; preds = %list_del.exit.i.i.for.body41.i.i_crit_edge, %for.end.i.i.for.body41.i.i_crit_edge
  %.pn65.in79.i.i = phi ptr [ %.pn65.i.i, %list_del.exit.i.i.for.body41.i.i_crit_edge ], [ %25, %for.end.i.i.for.body41.i.i_crit_edge ]
  %desc.1.i.i = getelementptr i8, ptr %.pn65.in79.i.i, i32 -120
  %26 = ptrtoint ptr %.pn65.in79.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn65.i.i = load ptr, ptr %.pn65.in79.i.i, align 4
  %call.i.i68.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn65.in79.i.i) #8
  br i1 %call.i.i68.i.i, label %if.end.i.i71.i.i, label %for.body41.i.i.list_del.exit.i.i_crit_edge

for.body41.i.i.list_del.exit.i.i_crit_edge:       ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i71.i.i:                                 ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i69.i.i = getelementptr inbounds %struct.list_head, ptr %.pn65.in79.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i69.i.i, align 4
  %29 = ptrtoint ptr %.pn65.in79.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn65.in79.i.i, align 4
  %prev1.i.i.i70.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i70.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i71.i.i, %for.body41.i.i.list_del.exit.i.i_crit_edge
  %33 = ptrtoint ptr %.pn65.in79.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn65.in79.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn65.in79.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call fastcc void @nbpf_desc_put(ptr noundef %desc.1.i.i) #8
  %cmp38.not.i.i = icmp eq ptr %.pn65.i.i, %head.i.i
  br i1 %cmp38.not.i.i, label %list_del.exit.i.i.nbpf_scan_acked.exit.i_crit_edge, label %list_del.exit.i.i.for.body41.i.i_crit_edge

list_del.exit.i.i.for.body41.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41.i.i

list_del.exit.i.i.nbpf_scan_acked.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbpf_scan_acked.exit.i

nbpf_scan_acked.exit.i:                           ; preds = %list_del.exit.i.i.nbpf_scan_acked.exit.i_crit_edge, %for.end.i.i.nbpf_scan_acked.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i.i) #8
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %free.i = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 17
  %free_links.i = getelementptr inbounds %struct.nbpf_channel, ptr %chan, i32 0, i32 16
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond31.i.do.body.i_crit_edge, %nbpf_scan_acked.exit.i
  %prev.0.i = phi ptr [ null, %nbpf_scan_acked.exit.i ], [ %prev.3.i, %do.cond31.i.do.body.i_crit_edge ]
  %35 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %free.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %free.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %do.body.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  %call2.i = call fastcc i32 @nbpf_desc_page_alloc(ptr noundef %chan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i.cleanup28_crit_edge, label %if.end.i

if.then.i.cleanup28_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup28

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  br label %do.cond31.i

if.end5.i:                                        ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %36, i32 -120
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end5.i.list_del.exit.i_crit_edge

if.end5.i.list_del.exit.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i64.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i64.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end5.i.list_del.exit.i_crit_edge
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %sg.i = getelementptr i8, ptr %36, i32 -8
  %prev.i2.i.i = getelementptr i8, ptr %36, i32 -4
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.cond.i.do.body7.i_crit_edge, %list_del.exit.i
  %i.0.i = phi i32 [ 0, %list_del.exit.i ], [ %i.1.i, %do.cond.i.do.body7.i_crit_edge ]
  %prev.1.i = phi ptr [ %prev.0.i, %list_del.exit.i ], [ %prev.2.i, %do.cond.i.do.body7.i_crit_edge ]
  %45 = ptrtoint ptr %free_links.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %free_links.i, align 4
  %cmp.i65.not.i = icmp eq ptr %46, %free_links.i
  br i1 %cmp.i65.not.i, label %if.then10.i, label %if.end17.i

if.then10.i:                                      ; preds = %do.body7.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  %call12.i = call fastcc i32 @nbpf_desc_page_alloc(ptr noundef %chan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nbpf_desc_put(ptr noundef %add.ptr.i) #8
  br label %cleanup28

if.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  br label %do.cond.i

if.end17.i:                                       ; preds = %do.body7.i
  %add.ptr22.i = getelementptr i8, ptr %46, i32 -12
  %desc23.i = getelementptr i8, ptr %46, i32 -4
  %47 = ptrtoint ptr %desc23.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i, ptr %desc23.i, align 4
  %tobool24.not.i = icmp eq ptr %prev.1.i, null
  br i1 %tobool24.not.i, label %if.end17.i.if.end27.i_crit_edge, label %if.then25.i

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %hwdesc_dma_addr.i = getelementptr i8, ptr %46, i32 -8
  %48 = ptrtoint ptr %hwdesc_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hwdesc_dma_addr.i, align 4
  %50 = ptrtoint ptr %prev.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.1.i, align 4
  %next26.i = getelementptr inbounds %struct.nbpf_link_reg, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %next26.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %49, ptr %next26.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end17.i.if.end27.i_crit_edge
  %call.i.i67.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #8
  br i1 %call.i.i67.i, label %if.end.i.i70.i, label %if.end27.i.__list_del_entry.exit.i.i_crit_edge

if.end27.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i70.i:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i68.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i68.i, align 4
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %46, align 4
  %prev1.i.i.i69.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i69.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i70.i, %if.end27.i.__list_del_entry.exit.i.i_crit_edge
  %59 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i71.i = call zeroext i1 @__list_add_valid(ptr noundef %46, ptr noundef %60, ptr noundef %sg.i) #8
  br i1 %call.i.i.i71.i, label %if.end.i.i.i72.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit.i

if.end.i.i.i72.i:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %46, ptr %prev.i2.i.i, align 4
  %62 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sg.i, ptr %46, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %46, ptr %60, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i72.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.0.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %list_move_tail.exit.i, %if.end15.i
  %i.1.i = phi i32 [ %i.0.i, %if.end15.i ], [ %inc.i, %list_move_tail.exit.i ]
  %prev.2.i = phi ptr [ %prev.1.i, %if.end15.i ], [ %add.ptr22.i, %list_move_tail.exit.i ]
  %cmp29.i = icmp ult i32 %i.1.i, %len
  br i1 %cmp29.i, label %do.cond.i.do.body7.i_crit_edge, label %do.cond.i.do.cond31.i_crit_edge

do.cond.i.do.cond31.i_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond31.i

do.cond.i.do.body7.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

do.cond31.i:                                      ; preds = %do.cond.i.do.cond31.i_crit_edge, %if.end.i
  %prev.3.i = phi ptr [ %prev.0.i, %if.end.i ], [ %prev.2.i, %do.cond.i.do.cond31.i_crit_edge ]
  %desc.1.i = phi ptr [ null, %if.end.i ], [ %add.ptr.i, %do.cond.i.do.cond31.i_crit_edge ]
  %tobool32.not.i = icmp eq ptr %desc.1.i, null
  br i1 %tobool32.not.i, label %do.cond31.i.do.body.i_crit_edge, label %if.end

do.cond31.i.do.body.i_crit_edge:                  ; preds = %do.cond31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end:                                           ; preds = %do.cond31.i
  %65 = ptrtoint ptr %prev.3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.3.i, align 4
  %next35.i = getelementptr inbounds %struct.nbpf_link_reg, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %next35.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 0, ptr %next35.i, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  %flags3 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.1.i, i32 0, i32 1
  %68 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %flags, ptr %flags3, align 4
  %69 = ptrtoint ptr %desc.1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -16, ptr %desc.1.i, align 4
  %user_wait = getelementptr inbounds %struct.nbpf_desc, ptr %desc.1.i, i32 0, i32 1
  %70 = ptrtoint ptr %user_wait to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %user_wait, align 4
  %sg = getelementptr inbounds %struct.nbpf_desc, ptr %desc.1.i, i32 0, i32 4
  %71 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn67 = load ptr, ptr %sg, align 4
  %cmp.not68 = icmp eq ptr %.pn67, %sg
  br i1 %cmp.not68, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp21 = icmp eq i32 %direction, 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn74 = phi ptr [ %.pn67, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %src_sg.addr.073 = phi ptr [ %src_sg, %for.body.lr.ph ], [ %src_sg.addr.1, %cleanup.for.body_crit_edge ]
  %dst_sg.addr.072 = phi ptr [ %dst_sg, %for.body.lr.ph ], [ %dst_sg.addr.1, %cleanup.for.body_crit_edge ]
  %mem_sg.171 = phi ptr [ %mem_sg.0, %for.body.lr.ph ], [ %dst_sg.addr.1.src_sg.addr.1, %cleanup.for.body_crit_edge ]
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %data_len.069 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %ldesc.0 = getelementptr i8, ptr %.pn74, i32 -12
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %src_sg.addr.073, i32 0, i32 3
  %72 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_address, align 4
  %dma_address6 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg.addr.072, i32 0, i32 3
  %74 = ptrtoint ptr %dma_address6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_address6, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %mem_sg.171, i32 0, i32 4
  %76 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.070, i32 %sub)
  %cmp7 = icmp eq i32 %i.070, %sub
  %call8 = call fastcc i32 @nbpf_prep_one(ptr noundef %ldesc.0, i32 noundef %direction, i32 noundef %73, i32 noundef %75, i32 noundef %77, i1 noundef zeroext %cmp7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %cleanup.thread, label %if.end11

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nbpf_desc_put(ptr noundef nonnull %desc.1.i)
  br label %cleanup28

if.end11:                                         ; preds = %for.body
  %78 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_length, align 4
  %add = add i32 %79, %data_len.069
  br i1 %inc_src.0.off0, label %if.then14, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call ptr @sg_next(ptr noundef %src_sg.addr.073) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %src_sg.addr.1 = phi ptr [ %call15, %if.then14 ], [ %src_sg.addr.073, %if.end11.if.end16_crit_edge ]
  br i1 %inc_dst.0.off0, label %if.then18, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call ptr @sg_next(ptr noundef %dst_sg.addr.072) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge
  %dst_sg.addr.1 = phi ptr [ %call19, %if.then18 ], [ %dst_sg.addr.072, %if.end16.cleanup_crit_edge ]
  %dst_sg.addr.1.src_sg.addr.1 = select i1 %cmp21, ptr %dst_sg.addr.1, ptr %src_sg.addr.1
  %inc = add i32 %i.070, 1
  %80 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn = load ptr, ptr %.pn74, align 4
  %cmp.not = icmp eq ptr %.pn, %sg
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %data_len.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %cleanup.for.end_crit_edge ]
  %length = getelementptr inbounds %struct.nbpf_desc, ptr %desc.1.i, i32 0, i32 2
  %81 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %data_len.0.lcssa, ptr %length, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %for.end, %cleanup.thread, %if.then14.i, %if.then.i.cleanup28_crit_edge
  %retval.2 = phi ptr [ %desc.1.i, %for.end ], [ null, %cleanup.thread ], [ null, %if.then14.i ], [ null, %if.then.i.cleanup28_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nbpf_prep_one(ptr noundef %ldesc, i32 noundef %direction, i32 noundef %src, i32 noundef %dst, i32 noundef %size, i1 noundef zeroext %last) unnamed_addr #2 align 64 {
entry:
  %src.addr = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %src, ptr %src.addr, align 4
  %1 = ptrtoint ptr %dst.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dst, ptr %dst.addr, align 4
  %2 = ptrtoint ptr %ldesc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ldesc, align 4
  %desc2 = getelementptr inbounds %struct.nbpf_link_desc, ptr %ldesc, i32 0, i32 2
  %4 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc2, align 4
  %chan3 = getelementptr inbounds %struct.nbpf_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %chan3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev4 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %or = select i1 %last, i32 7, i32 5
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %or, ptr %3, align 1
  %13 = load i32, ptr %src.addr, align 4
  %src_addr = getelementptr inbounds %struct.nbpf_link_reg, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %src_addr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %src_addr, align 1
  %15 = load i32, ptr %dst.addr, align 4
  %dst_addr = getelementptr inbounds %struct.nbpf_link_reg, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %dst_addr to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %dst_addr, align 1
  %transaction_size = getelementptr inbounds %struct.nbpf_link_reg, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %transaction_size to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %size, ptr %transaction_size, align 1
  %nbpf = getelementptr inbounds %struct.nbpf_channel, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %nbpf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nbpf, align 4
  %config.i = getelementptr inbounds %struct.nbpf_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.nbpf_config, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_size.i, align 4
  %mul.i = shl i32 %23, 3
  %max_burst_mem_read.i = getelementptr inbounds %struct.nbpf_device, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %max_burst_mem_read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_burst_mem_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %max_burst_mem_write.i = getelementptr inbounds %struct.nbpf_device, ptr %19, i32 0, i32 3
  %26 = ptrtoint ptr %max_burst_mem_write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_burst_mem_write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.nbpf_xfer_ds.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.nbpf_xfer_ds.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbpf_xfer_ds.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %28 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %direction, label %if.then.i.nbpf_xfer_ds.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb15.i
    i32 2, label %sw.bb20.i
  ]

if.then.i.nbpf_xfer_ds.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbpf_xfer_ds.exit

sw.bb.i:                                          ; preds = %if.then.i
  %max_burst_mem_write3.i = getelementptr inbounds %struct.nbpf_device, ptr %19, i32 0, i32 3
  %29 = ptrtoint ptr %max_burst_mem_write3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_burst_mem_write3.i, align 4
  br i1 %tobool.not.i, label %sw.bb.i.nbpf_xfer_ds.exit_crit_edge, label %cond.false.i

sw.bb.i.nbpf_xfer_ds.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbpf_xfer_ds.exit

cond.false.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4.i = icmp eq i32 %30, 0
  %31 = tail call i32 @llvm.umin.i32(i32 %25, i32 %30) #8
  %spec.select69.i = select i1 %cmp4.i, i32 %25, i32 %31
  br label %nbpf_xfer_ds.exit

sw.bb15.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.i = select i1 %tobool.not.i, i32 %mul.i, i32 %25
  br label %nbpf_xfer_ds.exit

sw.bb20.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_burst_mem_write21.i = getelementptr inbounds %struct.nbpf_device, ptr %19, i32 0, i32 3
  %32 = ptrtoint ptr %max_burst_mem_write21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_burst_mem_write21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool22.not.i = icmp eq i32 %33, 0
  %spec.select67.i = select i1 %tobool22.not.i, i32 %mul.i, i32 %33
  br label %nbpf_xfer_ds.exit

nbpf_xfer_ds.exit:                                ; preds = %sw.bb20.i, %sw.bb15.i, %cond.false.i, %sw.bb.i.nbpf_xfer_ds.exit_crit_edge, %if.then.i.nbpf_xfer_ds.exit_crit_edge, %lor.lhs.false.i.nbpf_xfer_ds.exit_crit_edge
  %max_burst.0.i = phi i32 [ %mul.i, %if.then.i.nbpf_xfer_ds.exit_crit_edge ], [ %mul.i, %lor.lhs.false.i.nbpf_xfer_ds.exit_crit_edge ], [ %30, %sw.bb.i.nbpf_xfer_ds.exit_crit_edge ], [ %spec.select.i, %sw.bb15.i ], [ %spec.select67.i, %sw.bb20.i ], [ %spec.select69.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_burst.0.i)
  %tobool.not.i.i.i = icmp eq i32 %max_burst.0.i, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %max_burst.0.i, i1 true) #8, !range !154
  %sub.i.op.i.i = xor i32 %34, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %35 = tail call i32 @llvm.cttz.i32(i32 %size, i1 false) #8, !range !154
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 %sub.i.i) #8
  %37 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %direction, label %nbpf_xfer_ds.exit.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb24
    i32 0, label %sw.bb45
  ]

nbpf_xfer_ds.exit.cleanup_crit_edge:              ; preds = %nbpf_xfer_ds.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %nbpf_xfer_ds.exit
  %slave_src_width = getelementptr inbounds %struct.nbpf_channel, ptr %7, i32 0, i32 7
  %38 = ptrtoint ptr %slave_src_width to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slave_src_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp = icmp ugt i32 %39, 2
  br i1 %cmp, label %cond.true, label %sw.bb.cond.end_crit_edge

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %slave_src_burst = getelementptr inbounds %struct.nbpf_channel, ptr %7, i32 0, i32 8
  %40 = ptrtoint ptr %slave_src_burst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slave_src_burst, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb.cond.end_crit_edge
  %cond8 = phi i32 [ %41, %cond.true ], [ %39, %sw.bb.cond.end_crit_edge ]
  %42 = tail call i32 @llvm.umin.i32(i32 %36, i32 %cond8)
  %slave_src_burst14 = getelementptr inbounds %struct.nbpf_channel, ptr %7, i32 0, i32 8
  %43 = ptrtoint ptr %slave_src_burst14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %slave_src_burst14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %44)
  %cmp15 = icmp ugt i32 %36, %44
  %spec.select = select i1 %cmp, i32 %36, i32 %44
  %mem_xfer.0 = select i1 %cmp15, i32 %spec.select, i32 %36
  %shl = shl i32 %mem_xfer.0, 16
  %and = and i32 %shl, 983040
  %shl19 = shl i32 %42, 12
  %and20 = and i32 %shl19, 61440
  %or18 = or i32 %and20, %and
  %or23 = or i32 %or18, 135266312
  br label %sw.epilog

sw.bb24:                                          ; preds = %nbpf_xfer_ds.exit
  %slave_dst_width = getelementptr inbounds %struct.nbpf_channel, ptr %7, i32 0, i32 10
  %45 = ptrtoint ptr %slave_dst_width to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slave_dst_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp25 = icmp ugt i32 %46, 2
  br i1 %cmp25, label %cond.true26, label %sw.bb24.cond.end29_crit_edge

sw.bb24.cond.end29_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end29

cond.true26:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %slave_dst_burst = getelementptr inbounds %struct.nbpf_channel, ptr %7, i32 0, i32 11
  %47 = ptrtoint ptr %slave_dst_burst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slave_dst_burst, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true26, %sw.bb24.cond.end29_crit_edge
  %cond30 = phi i32 [ %48, %cond.true26 ], [ %46, %sw.bb24.cond.end29_crit_edge ]
  %49 = tail call i32 @llvm.umin.i32(i32 %36, i32 %cond30)
  %shl37 = shl i32 %36, 12
  %and38 = and i32 %shl37, 61440
  %shl40 = shl i32 %49, 16
  %and41 = and i32 %shl40, 983040
  %or39 = or i32 %and38, %and41
  %or43 = or i32 %or39, 2097160
  br label %sw.epilog

sw.bb45:                                          ; preds = %nbpf_xfer_ds.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shl46 = shl i32 %36, 12
  %and47 = and i32 %shl46, 61440
  %shl49 = shl i32 %36, 16
  %and50 = and i32 %shl49, 983040
  %or48 = or i32 %and50, %and47
  %or51 = or i32 %or48, 37748736
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %cond.end29, %cond.end
  %or51.sink = phi i32 [ %or51, %sw.bb45 ], [ %or43, %cond.end29 ], [ %or23, %cond.end ]
  %config52 = getelementptr inbounds %struct.nbpf_link_reg, ptr %3, i32 0, i32 4
  %50 = ptrtoint ptr %config52 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %or51.sink, ptr %config52, align 1
  %dmarq_cfg = getelementptr inbounds %struct.nbpf_channel, ptr %7, i32 0, i32 13
  %51 = ptrtoint ptr %dmarq_cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dmarq_cfg, align 4
  %config57 = getelementptr inbounds %struct.nbpf_link_reg, ptr %3, i32 0, i32 4
  %or55 = select i1 %last, i32 -2147483648, i32 -2130706432
  %or56 = or i32 %or55, %52
  %or58 = or i32 %or56, %or51.sink
  %53 = ptrtoint ptr %config57 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %or58, ptr %config57, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nbpf_prep_one.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nbpf_prep_one, %do.end)) #8
          to label %if.then66 [label %do.end], !srcloc !153

if.then66:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %hwdesc_dma_addr = getelementptr inbounds %struct.nbpf_link_desc, ptr %ldesc, i32 0, i32 1
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %3, align 1
  %56 = ptrtoint ptr %config57 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %config57, align 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nbpf_prep_one.__UNIQUE_ID_ddebug249, ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, ptr noundef %hwdesc_dma_addr, i32 noundef %55, i32 noundef %57, i32 noundef %size, ptr noundef nonnull %src.addr, ptr noundef nonnull %dst.addr) #8
  br label %do.end

do.end:                                           ; preds = %if.then66, %sw.epilog
  %hwdesc_dma_addr70 = getelementptr inbounds %struct.nbpf_link_desc, ptr %ldesc, i32 0, i32 1
  %58 = ptrtoint ptr %hwdesc_dma_addr70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwdesc_dma_addr70, align 4
  call void @dma_sync_single_for_device(ptr noundef %11, i32 noundef %59, i32 noundef 32, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %nbpf_xfer_ds.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %nbpf_xfer_ds.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.nbpf_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbpf_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.nbpf_device, ptr %1, i32 0, i32 4
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i6 @llvm.bitreverse.i6(i6) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !134, !136, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_nbpfaxi__268_1528_nbpf_driver_init6, !1, !"__initcall__kmod_nbpfaxi__268_1528_nbpf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/nbpfaxi.c", i32 1528, i32 1}
!2 = !{ptr @__exitcall_nbpf_driver_exit, !1, !"__exitcall_nbpf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author269, !4, !"__UNIQUE_ID_author269", i1 false, i1 false}
!4 = !{!"../drivers/dma/nbpfaxi.c", i32 1530, i32 1}
!5 = !{ptr @__UNIQUE_ID_description270, !6, !"__UNIQUE_ID_description270", i1 false, i1 false}
!6 = !{!"../drivers/dma/nbpfaxi.c", i32 1531, i32 1}
!7 = !{ptr @__UNIQUE_ID_file271, !8, !"__UNIQUE_ID_file271", i1 false, i1 false}
!8 = !{!"../drivers/dma/nbpfaxi.c", i32 1532, i32 1}
!9 = !{ptr @__UNIQUE_ID_license272, !8, !"__UNIQUE_ID_license272", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/nbpfaxi.c", i32 1519, i32 11}
!12 = !{ptr @nbpf_driver, !13, !"nbpf_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/nbpfaxi.c", i32 1517, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/nbpfaxi.c", i32 1330, i32 27}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/nbpfaxi.c", i32 1332, i32 27}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/nbpfaxi.c", i32 1362, i32 40}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/nbpfaxi.c", i32 1392, i32 24}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/nbpfaxi.c", i32 1229, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nbpf_err_irq._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @nbpf_err_irq._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/nbpfaxi.c", i32 326, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nbpf_read.__UNIQUE_ID_ddebug238, !31, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/nbpfaxi.c", i32 382, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nbpf_error_clear._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @nbpf_error_clear._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/nbpfaxi.c", i32 309, i32 2}
!43 = !{ptr @nbpf_chan_read.__UNIQUE_ID_ddebug236, !42, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/nbpfaxi.c", i32 318, i32 2}
!46 = !{ptr @nbpf_chan_write.__UNIQUE_ID_ddebug237, !45, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/nbpfaxi.c", i32 857, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nbpf_chan_idle.__UNIQUE_ID_ddebug255, !48, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!51 = !{ptr @nbpf_chan_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/dma/nbpfaxi.c", i32 1254, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/nbpfaxi.c", i32 1259, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nbpf_chan_probe.__UNIQUE_ID_ddebug266, !55, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/nbpfaxi.c", i32 1261, i32 43}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/nbpfaxi.c", i32 1193, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nbpf_chan_irq.__UNIQUE_ID_ddebug265, !61, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/nbpfaxi.c", i32 401, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nbpf_start.__UNIQUE_ID_ddebug240, !65, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/nbpfaxi.c", i32 1055, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nbpf_alloc_chan_resources.__UNIQUE_ID_ddebug262, !69, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/nbpfaxi.c", i32 705, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @nbpf_desc_page_alloc.__UNIQUE_ID_ddebug253, !73, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/nbpfaxi.c", i32 716, i32 3}
!78 = !{ptr @nbpf_desc_page_alloc.__UNIQUE_ID_ddebug254, !77, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/nbpfaxi.c", i32 685, i32 2}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nbpf_tx_submit.__UNIQUE_ID_ddebug252, !84, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/nbpfaxi.c", i32 1068, i32 2}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @nbpf_free_chan_resources.__UNIQUE_ID_ddebug263, !88, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/nbpfaxi.c", i32 1006, i32 2}
!93 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @nbpf_prep_memcpy.__UNIQUE_ID_ddebug260, !92, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/nbpfaxi.c", i32 579, i32 2}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @nbpf_prep_one.__UNIQUE_ID_ddebug249, !96, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/nbpfaxi.c", i32 641, i32 4}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @nbpf_tx_status.__UNIQUE_ID_ddebug251, !100, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/nbpfaxi.c", i32 607, i32 2}
!105 = !{ptr @nbpf_issue_pending.__UNIQUE_ID_ddebug250, !104, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/nbpfaxi.c", i32 1020, i32 2}
!108 = !{ptr @nbpf_prep_slave_sg.__UNIQUE_ID_ddebug261, !107, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/nbpfaxi.c", i32 896, i32 2}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @nbpf_config.__UNIQUE_ID_ddebug259, !110, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/dma/nbpfaxi.c", i32 485, i32 3}
!115 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @nbpf_xfer_size._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @nbpf_xfer_size._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/nbpfaxi.c", i32 868, i32 2}
!120 = !{ptr @nbpf_pause.__UNIQUE_ID_ddebug256, !119, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/nbpfaxi.c", i32 882, i32 2}
!123 = !{ptr @nbpf_terminate_all.__UNIQUE_ID_ddebug257, !122, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/nbpfaxi.c", i32 883, i32 2}
!126 = !{ptr @nbpf_terminate_all.__UNIQUE_ID_ddebug258, !125, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/nbpfaxi.c", i32 335, i32 2}
!129 = !{ptr @nbpf_write.__UNIQUE_ID_ddebug239, !128, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/dma/nbpfaxi.c", i32 1102, i32 2}
!132 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @nbpf_of_xlate.__UNIQUE_ID_ddebug264, !131, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!134 = !{ptr @nbpf_match, !135, !"nbpf_match", i1 false, i1 false}
!135 = !{!"../drivers/dma/nbpfaxi.c", i32 1277, i32 34}
!136 = !{ptr @nbpf_cfg, !137, !"nbpf_cfg", i1 false, i1 false}
!137 = !{!"../drivers/dma/nbpfaxi.c", i32 252, i32 27}
!138 = !{ptr @nbpf_pm_ops, !139, !"nbpf_pm_ops", i1 false, i1 false}
!139 = !{!"../drivers/dma/nbpfaxi.c", i32 1513, i32 32}
!140 = !{ptr @nbpf_ids, !141, !"nbpf_ids", i1 false, i1 false}
!141 = !{!"../drivers/dma/nbpfaxi.c", i32 1484, i32 40}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 6288205}
!152 = !{i64 2153828554}
!153 = !{i64 2148820118, i64 2148820123, i64 2148820136, i64 2148820180, i64 2148820214, i64 2148820235}
!154 = !{i32 0, i32 33}
!155 = !{i64 2153829909}
!156 = !{i64 6287787}
!157 = !{i64 2154407041}
!158 = !{i8 0, i8 2}
!159 = !{i64 2154454378}
!160 = !{i64 2154454220}
!161 = !{!"branch_weights", i32 1, i32 2000}
!162 = !{i64 2154405541, i64 2154406028, i64 2154405578, i64 2154405634, i64 2154405668, i64 2154405692, i64 2154405733, i64 2154405754, i64 2154405782, i64 2154405816}
!163 = !{!"branch_weights", i32 2000, i32 1}
