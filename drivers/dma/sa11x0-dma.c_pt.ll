; ModuleID = '/llk/IR_all_yes/drivers/dma/sa11x0-dma.c_pt.bc'
source_filename = "../drivers/dma/sa11x0-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_slave_map = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sa11x0_dma_channel_desc = type { i32, ptr }
%struct.sa11x0_dma_dev = type { %struct.dma_device, ptr, %struct.spinlock, %struct.tasklet_struct, %struct.list_head, [6 x %struct.sa11x0_dma_phy] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.sa11x0_dma_phy = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, [2 x i32], [2 x i32], i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sa11x0_dma_chan = type { %struct.virt_dma_chan, ptr, i32, %struct.list_head, i32, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sa11x0_dma_desc = type { %struct.virt_dma_desc, i32, i32, i32, i8, i32, [0 x %struct.sa11x0_dma_sg] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.sa11x0_dma_sg = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_sa11x0_dma__259_1091_sa11x0_dma_init4 = internal global ptr @sa11x0_dma_init, section ".initcall4.init", align 4
@sa11x0_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sa11x0_dma_probe, ptr @sa11x0_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sa11x0_dma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sa11x0_dma_exit = internal global ptr @sa11x0_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author260 = internal constant [31 x i8] c"sa11x0_dma.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [42 x i8] c"sa11x0_dma.description=SA-11x0 DMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [39 x i8] c"sa11x0_dma.file=drivers/dma/sa11x0-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [26 x i8] c"sa11x0_dma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias264 = internal constant [37 x i8] c"sa11x0_dma.alias=platform:sa11x0-dma\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sa11x0-dma\00", [21 x i8] zeroinitializer }, align 32
@sa11x0_dma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sa11x0_dma_suspend, ptr @sa11x0_dma_resume, ptr @sa11x0_dma_suspend, ptr @sa11x0_dma_resume, ptr @sa11x0_dma_suspend, ptr @sa11x0_dma_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sa11x0_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@sa11x0_dma_map = internal constant { [4 x %struct.dma_slave_map], [48 x i8] } { [4 x %struct.dma_slave_map] [%struct.dma_slave_map { ptr @.str.7, ptr @.str.8, ptr @.str.9 }, %struct.dma_slave_map { ptr @.str.7, ptr @.str.10, ptr @.str.11 }, %struct.dma_slave_map { ptr @.str.12, ptr @.str.8, ptr @.str.13 }, %struct.dma_slave_map { ptr @.str.12, ptr @.str.10, ptr @.str.14 }], [48 x i8] zeroinitializer }, align 32
@sa11x0_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 967, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register slave async device: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sa11x0_dma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/dma/sa11x0-dma.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sa11x0_dma_probe._entry_ptr = internal global ptr @sa11x0_dma_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sa11x0-ir\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ser2ICPTr\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ser2ICPRc\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sa11x0-ssp\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ser4SSPTr\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ser4SSPRc\00", [22 x i8] zeroinitializer }, align 32
@sa11x0_dma_tasklet.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sa11x0_dma\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sa11x0_dma_tasklet\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tasklet enter\0A\00", [17 x i8] zeroinitializer }, align 32
@sa11x0_dma_tasklet.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pchan %u: free\0A\00", [16 x i8] zeroinitializer }, align 32
@sa11x0_dma_tasklet.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.19, i8 0, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pchan %u: alloc vchan %p\0A\00", [38 x i8] zeroinitializer }, align 32
@sa11x0_dma_tasklet.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.20, i8 0, i8 96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tasklet exit\0A\00", [18 x i8] zeroinitializer }, align 32
@sa11x0_dma_start_desc.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sa11x0_dma_start_desc\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pchan %u: txd %p[%x]: starting: DDAR:%x\0A\00", [55 x i8] zeroinitializer }, align 32
@sa11x0_dma_start_sg.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sa11x0_dma_start_sg\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pchan %u: load: DCSR:%02x DBS%c:%08x DBT%c:%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@sa11x0_dma_irq.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sa11x0_dma_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pchan %u: irq: DCSR:%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@sa11x0_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 272, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"pchan %u: error. DCSR:%02x DDAR:%08x DBSA:%08x DBTA:%08x DBSB:%08x DBTB:%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sa11x0_dma_irq._entry_ptr = internal global ptr @sa11x0_dma_irq._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.29, ptr @.str.30, ptr @.str.31, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@sa11x0_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 535, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"vchan %p: bad DMA direction: DDAR:%08x dir:%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sa11x0_dma_prep_slave_sg\00", [39 x i8] zeroinitializer }, align 32
@sa11x0_dma_prep_slave_sg._entry_ptr = internal global ptr @sa11x0_dma_prep_slave_sg._entry, section ".printk_index", align 4
@sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vchan %p: bad buffer alignment: %pad\0A\00", [58 x i8] zeroinitializer }, align 32
@sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.33, ptr @.str.4, ptr @.str.35, i8 0, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vchan %p: kzalloc failed\0A\00", [38 x i8] zeroinitializer }, align 32
@sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.33, ptr @.str.4, ptr @.str.36, i8 0, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vchan %p: txd %p: size %zu nr %u\0A\00", [62 x i8] zeroinitializer }, align 32
@sa11x0_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.37, ptr @.str.4, i32 615, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sa11x0_dma_prep_dma_cyclic\00", [37 x i8] zeroinitializer }, align 32
@sa11x0_dma_prep_dma_cyclic._entry_ptr = internal global ptr @sa11x0_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@sa11x0_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.37, ptr @.str.4, ptr @.str.35, i8 0, i8 -99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@sa11x0_dma_init_dmadev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 855, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no memory for channel %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sa11x0_dma_init_dmadev\00", [41 x i8] zeroinitializer }, align 32
@sa11x0_dma_init_dmadev._entry_ptr = internal global ptr @sa11x0_dma_init_dmadev._entry, section ".printk_index", align 4
@chan_desc = internal constant { [16 x %struct.sa11x0_dma_channel_desc], [32 x i8] } { [16 x %struct.sa11x0_dma_channel_desc] [%struct.sa11x0_dma_channel_desc { i32 0, ptr @.str.58 }, %struct.sa11x0_dma_channel_desc { i32 17, ptr @.str.59 }, %struct.sa11x0_dma_channel_desc { i32 32, ptr @.str.60 }, %struct.sa11x0_dma_channel_desc { i32 49, ptr @.str.61 }, %struct.sa11x0_dma_channel_desc { i32 64, ptr @.str.62 }, %struct.sa11x0_dma_channel_desc { i32 81, ptr @.str.63 }, %struct.sa11x0_dma_channel_desc { i32 96, ptr @.str.9 }, %struct.sa11x0_dma_channel_desc { i32 113, ptr @.str.11 }, %struct.sa11x0_dma_channel_desc { i32 128, ptr @.str.64 }, %struct.sa11x0_dma_channel_desc { i32 145, ptr @.str.65 }, %struct.sa11x0_dma_channel_desc { i32 160, ptr @.str.66 }, %struct.sa11x0_dma_channel_desc { i32 177, ptr @.str.67 }, %struct.sa11x0_dma_channel_desc { i32 192, ptr @.str.68 }, %struct.sa11x0_dma_channel_desc { i32 209, ptr @.str.69 }, %struct.sa11x0_dma_channel_desc { i32 224, ptr @.str.13 }, %struct.sa11x0_dma_channel_desc { i32 241, ptr @.str.14 }], [32 x i8] zeroinitializer }, align 32
@sa11x0_dma_device_config.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sa11x0_dma_device_config\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"vchan %p: dma_slave_config addr %pad width %u burst %u\0A\00", [40 x i8] zeroinitializer }, align 32
@sa11x0_dma_device_pause.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 -80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sa11x0_dma_device_pause\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vchan %p: pause\0A\00", [47 x i8] zeroinitializer }, align 32
@sa11x0_dma_device_resume.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 -73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sa11x0_dma_device_resume\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %p: resume\0A\00", [46 x i8] zeroinitializer }, align 32
@sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 -66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sa11x0_dma_device_terminate_all\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vchan %p: terminate all\0A\00", [39 x i8] zeroinitializer }, align 32
@sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.46, ptr @.str.4, ptr @.str.48, i8 0, i8 -65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pchan %u: terminating\0A\00", [41 x i8] zeroinitializer }, align 32
@sa11x0_dma_tx_status.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sa11x0_dma_tx_status\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_status: addr:%pad\0A\00", [42 x i8] zeroinitializer }, align 32
@sa11x0_dma_tx_status.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.49, ptr @.str.4, ptr @.str.51, i8 0, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_status: [%u] %x+%x\0A\00", [41 x i8] zeroinitializer }, align 32
@sa11x0_dma_tx_status.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.49, ptr @.str.4, ptr @.str.52, i8 0, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_status: [%u] +%x\0A\00", [43 x i8] zeroinitializer }, align 32
@sa11x0_dma_tx_status.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.49, ptr @.str.4, ptr @.str.53, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_status: [%u] %x+%x ++\0A\00", [38 x i8] zeroinitializer }, align 32
@sa11x0_dma_tx_status.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.49, ptr @.str.4, ptr @.str.54, i8 0, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_status: bytes 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sa11x0_dma_issue_pending\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %p: issued\0A\00", [46 x i8] zeroinitializer }, align 32
@sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.55, ptr @.str.4, ptr @.str.57, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vchan %p: nothing to issue\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ser0UDCTr\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ser0UDCRc\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser1SDLCTr\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser1SDLCRc\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser1UARTTr\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser1UARTRc\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser3UARTTr\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser3UARTRc\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser4MCP0Tr\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser4MCP0Rc\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser4MCP1Tr\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ser4MCP1Rc\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"sa11x0_dma_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1078, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1080, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"sa11x0_dma_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1074, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 918, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"sa11x0_dma_map\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 820, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 966, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 821, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 821, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 821, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 822, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 822, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 823, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 823, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 824, i32 24 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 333, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 342, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 366, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 384, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 154, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 216, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 263, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 266, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 101, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 534, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 550, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 558, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 598, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 614, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 855, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"chan_desc\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 801, i32 45 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 692, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 707, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 733, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 760, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 767, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 462, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 465, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 473, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 481, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 490, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 513, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 518, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 802, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 803, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 804, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 805, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 806, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 807, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 810, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 811, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 812, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 813, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 814, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [28 x i8] c"../drivers/dma/sa11x0-dma.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 815, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias264, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_sa11x0_dma_exit, ptr @__initcall__kmod_sa11x0_dma__259_1091_sa11x0_dma_init4, ptr @sa11x0_dma_exit, ptr @sa11x0_dma_init_dmadev._entry, ptr @sa11x0_dma_init_dmadev._entry_ptr, ptr @sa11x0_dma_irq._entry, ptr @sa11x0_dma_irq._entry_ptr, ptr @sa11x0_dma_prep_dma_cyclic._entry, ptr @sa11x0_dma_prep_dma_cyclic._entry_ptr, ptr @sa11x0_dma_prep_slave_sg._entry, ptr @sa11x0_dma_prep_slave_sg._entry_ptr, ptr @sa11x0_dma_probe._entry, ptr @sa11x0_dma_probe._entry_ptr, ptr @sa11x0_dma_driver, ptr @.str, ptr @sa11x0_dma_pm_ops, ptr @sa11x0_dma_probe.__key, ptr @.str.1, ptr @sa11x0_dma_map, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @chan_desc, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa11x0_dma_init_dmadev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_desc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sa11x0_dma_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sa11x0_dma_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @sa11x0_dma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 756) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup60_crit_edge, label %do.body

if.end.cleanup60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sa11x0_dma_probe.__key, i16 noundef signext 3) #11
  %chan_pending = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %chan_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chan_pending, ptr %chan_pending, align 4
  %prev.i = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chan_pending, ptr %prev.i, align 8
  %filter = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sa11x0_dma_filter_fn, ptr %filter, align 4
  %mapcnt = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %mapcnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %mapcnt, align 8
  %map = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sa11x0_dma_map, ptr %map, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call11 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %add.i) #11
  %base = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %base, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.body.err_ioremap_crit_edge, label %if.end15

do.body.err_ioremap_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ioremap

if.end15:                                         ; preds = %do.body
  %task = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 3
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @sa11x0_dma_tasklet) #11
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15
  %i.0139 = phi i32 [ 0, %if.end15 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %i.0139
  %dev = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %i.0139, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %dev, align 4
  %num = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %i.0139, i32 2
  %12 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.0139, ptr %num, align 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %mul = shl nuw nsw i32 %i.0139, 5
  %add.ptr = getelementptr i8, ptr %14, i32 %mul
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 2130706432) #11, !srcloc !186
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #11, !srcloc !186
  %call.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0139) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %for.body.while.cond.preheader_crit_edge, label %if.end.i

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

if.end.i:                                         ; preds = %for.body
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.sa11x0_dma_request_irq.exit_crit_edge

if.end.i.sa11x0_dma_request_irq.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_request_irq.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  br label %sa11x0_dma_request_irq.exit

sa11x0_dma_request_irq.exit:                      ; preds = %if.end.i.i, %if.end.i.sa11x0_dma_request_irq.exit_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.end.i.sa11x0_dma_request_irq.exit_crit_edge ]
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef nonnull @sa11x0_dma_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool23.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool23.not, label %for.inc, label %sa11x0_dma_request_irq.exit.while.cond.preheader_crit_edge

sa11x0_dma_request_irq.exit.while.cond.preheader_crit_edge: ; preds = %sa11x0_dma_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %sa11x0_dma_request_irq.exit.while.cond.preheader_crit_edge, %for.body.while.cond.preheader_crit_edge
  %retval.0.i151 = phi i32 [ %call.i.i, %sa11x0_dma_request_irq.exit.while.cond.preheader_crit_edge ], [ -6, %for.body.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0139)
  %tobool25.not142 = icmp eq i32 %i.0139, 0
  br i1 %tobool25.not142, label %while.cond.preheader.err_irq_crit_edge, label %while.body

while.cond.preheader.err_irq_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

while.body:                                       ; preds = %while.cond.preheader
  %dec = add nsw i32 %i.0139, -1
  %call.i120 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %dec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp sgt i32 %call.i120, 0
  br i1 %cmp.i121, label %if.then.i, label %while.body.sa11x0_dma_free_irq.exit_crit_edge

while.body.sa11x0_dma_free_irq.exit_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %dec
  %call1.i = tail call ptr @free_irq(i32 noundef %call.i120, ptr noundef %arrayidx27) #11
  br label %sa11x0_dma_free_irq.exit

sa11x0_dma_free_irq.exit:                         ; preds = %if.then.i, %while.body.sa11x0_dma_free_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool25.not = icmp eq i32 %dec, 0
  br i1 %tobool25.not, label %sa11x0_dma_free_irq.exit.err_irq_crit_edge, label %while.body.1

sa11x0_dma_free_irq.exit.err_irq_crit_edge:       ; preds = %sa11x0_dma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

while.body.1:                                     ; preds = %sa11x0_dma_free_irq.exit
  %dec.1 = add nsw i32 %i.0139, -2
  %call.i120.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %dec.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.1)
  %cmp.i121.1 = icmp sgt i32 %call.i120.1, 0
  br i1 %cmp.i121.1, label %if.then.i.1, label %while.body.1.sa11x0_dma_free_irq.exit.1_crit_edge

while.body.1.sa11x0_dma_free_irq.exit.1_crit_edge: ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.1

if.then.i.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27.1 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %dec.1
  %call1.i.1 = tail call ptr @free_irq(i32 noundef %call.i120.1, ptr noundef %arrayidx27.1) #11
  br label %sa11x0_dma_free_irq.exit.1

sa11x0_dma_free_irq.exit.1:                       ; preds = %if.then.i.1, %while.body.1.sa11x0_dma_free_irq.exit.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool25.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool25.not.1, label %sa11x0_dma_free_irq.exit.1.err_irq_crit_edge, label %while.body.2

sa11x0_dma_free_irq.exit.1.err_irq_crit_edge:     ; preds = %sa11x0_dma_free_irq.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

while.body.2:                                     ; preds = %sa11x0_dma_free_irq.exit.1
  %dec.2 = add nsw i32 %i.0139, -3
  %call.i120.2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %dec.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.2)
  %cmp.i121.2 = icmp sgt i32 %call.i120.2, 0
  br i1 %cmp.i121.2, label %if.then.i.2, label %while.body.2.sa11x0_dma_free_irq.exit.2_crit_edge

while.body.2.sa11x0_dma_free_irq.exit.2_crit_edge: ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.2

if.then.i.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27.2 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %dec.2
  %call1.i.2 = tail call ptr @free_irq(i32 noundef %call.i120.2, ptr noundef %arrayidx27.2) #11
  br label %sa11x0_dma_free_irq.exit.2

sa11x0_dma_free_irq.exit.2:                       ; preds = %if.then.i.2, %while.body.2.sa11x0_dma_free_irq.exit.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool25.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool25.not.2, label %sa11x0_dma_free_irq.exit.2.err_irq_crit_edge, label %while.body.3

sa11x0_dma_free_irq.exit.2.err_irq_crit_edge:     ; preds = %sa11x0_dma_free_irq.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

while.body.3:                                     ; preds = %sa11x0_dma_free_irq.exit.2
  %dec.3 = add nsw i32 %i.0139, -4
  %call.i120.3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %dec.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.3)
  %cmp.i121.3 = icmp sgt i32 %call.i120.3, 0
  br i1 %cmp.i121.3, label %if.then.i.3, label %while.body.3.sa11x0_dma_free_irq.exit.3_crit_edge

while.body.3.sa11x0_dma_free_irq.exit.3_crit_edge: ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.3

if.then.i.3:                                      ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27.3 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %dec.3
  %call1.i.3 = tail call ptr @free_irq(i32 noundef %call.i120.3, ptr noundef %arrayidx27.3) #11
  br label %sa11x0_dma_free_irq.exit.3

sa11x0_dma_free_irq.exit.3:                       ; preds = %if.then.i.3, %while.body.3.sa11x0_dma_free_irq.exit.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3)
  %tobool25.not.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool25.not.3, label %sa11x0_dma_free_irq.exit.3.err_irq_crit_edge, label %while.body.4

sa11x0_dma_free_irq.exit.3.err_irq_crit_edge:     ; preds = %sa11x0_dma_free_irq.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

while.body.4:                                     ; preds = %sa11x0_dma_free_irq.exit.3
  %dec.4 = add nsw i32 %i.0139, -5
  %call.i120.4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %dec.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.4)
  %cmp.i121.4 = icmp sgt i32 %call.i120.4, 0
  br i1 %cmp.i121.4, label %if.then.i.4, label %while.body.4.err_irq_crit_edge

while.body.4.err_irq_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

if.then.i.4:                                      ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27.4 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 %dec.4
  %call1.i.4 = tail call ptr @free_irq(i32 noundef %call.i120.4, ptr noundef %arrayidx27.4) #11
  br label %err_irq

for.inc:                                          ; preds = %sa11x0_dma_request_irq.exit
  %inc = add nuw nsw i32 %i.0139, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #11
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 39
  %22 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sa11x0_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 8
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 40
  %23 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sa11x0_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 21
  %24 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %directions, align 8
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 26
  %25 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %residue_granularity, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %src_addr_widths, align 8
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 20
  %27 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %dst_addr_widths, align 4
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %channels.i, ptr %channels.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %channels.i, ptr %prev.i.i, align 8
  %dev1.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 15
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev.i, ptr %dev1.i, align 8
  %device_free_chan_resources.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 29
  %31 = ptrtoint ptr %device_free_chan_resources.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sa11x0_dma_free_chan_resources, ptr %device_free_chan_resources.i, align 8
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 44
  %32 = ptrtoint ptr %device_config.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sa11x0_dma_device_config, ptr %device_config.i, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 45
  %33 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sa11x0_dma_device_pause, ptr %device_pause.i, align 8
  %device_resume.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 46
  %34 = ptrtoint ptr %device_resume.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sa11x0_dma_device_resume, ptr %device_resume.i, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 47
  %35 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sa11x0_dma_device_terminate_all, ptr %device_terminate_all.i, align 8
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 49
  %36 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @sa11x0_dma_tx_status, ptr %device_tx_status.i, align 8
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 50
  %37 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @sa11x0_dma_issue_pending, ptr %device_issue_pending.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i123.for.body.i_crit_edge, %for.end
  %i.031.i = phi i32 [ 0, %for.end ], [ %inc.i, %if.end.i123.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 204) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sa11x0_dma_init_dmadev.exit.thread, label %if.end.i123

sa11x0_dma_init_dmadev.exit.thread:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %i.031.i) #15
  br label %do.end45

if.end.i123:                                      ; preds = %for.body.i
  %status.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %status.i, align 8
  %arrayidx.i = getelementptr [16 x %struct.sa11x0_dma_channel_desc], ptr @chan_desc, i32 0, i32 %i.031.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %ddar2.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %call7.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %ddar2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ddar2.i, align 4
  %name.i = getelementptr [16 x %struct.sa11x0_dma_channel_desc], ptr @chan_desc, i32 0, i32 %i.031.i, i32 1
  %43 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.i, align 4
  %name4.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %call7.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %name4.i, align 8
  %node.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %call7.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i29.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %node.i, ptr %prev.i29.i, align 8
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %call7.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @sa11x0_dma_free_desc, ptr %desc_free.i, align 8
  tail call void @vchan_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i) #11
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %sa11x0_dma_init_dmadev.exit, label %if.end.i123.for.body.i_crit_edge

if.end.i123.for.body.i_crit_edge:                 ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sa11x0_dma_init_dmadev.exit:                      ; preds = %if.end.i123
  %call6.i = tail call i32 @dma_async_device_register(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool41.not = icmp eq i32 %call6.i, 0
  br i1 %tobool41.not, label %if.end48, label %sa11x0_dma_init_dmadev.exit.do.end45_crit_edge

sa11x0_dma_init_dmadev.exit.do.end45_crit_edge:   ; preds = %sa11x0_dma_init_dmadev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

do.end45:                                         ; preds = %sa11x0_dma_init_dmadev.exit.do.end45_crit_edge, %sa11x0_dma_init_dmadev.exit.thread
  %retval.2.i135 = phi i32 [ -12, %sa11x0_dma_init_dmadev.exit.thread ], [ %call6.i, %sa11x0_dma_init_dmadev.exit.do.end45_crit_edge ]
  %49 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.2, i32 noundef %retval.2.i135) #15
  tail call fastcc void @sa11x0_dma_free_channels(ptr noundef nonnull %call7.i.i)
  %call.i124 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp sgt i32 %call.i124, 0
  br i1 %cmp.i125, label %if.then.i127, label %do.end45.sa11x0_dma_free_irq.exit129_crit_edge

do.end45.sa11x0_dma_free_irq.exit129_crit_edge:   ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit129

if.end48:                                         ; preds = %sa11x0_dma_init_dmadev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup60

if.then.i127:                                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 0
  %call1.i126 = tail call ptr @free_irq(i32 noundef %call.i124, ptr noundef %arrayidx54) #11
  br label %sa11x0_dma_free_irq.exit129

sa11x0_dma_free_irq.exit129:                      ; preds = %if.then.i127, %do.end45.sa11x0_dma_free_irq.exit129_crit_edge
  %call.i124.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.1)
  %cmp.i125.1 = icmp sgt i32 %call.i124.1, 0
  br i1 %cmp.i125.1, label %if.then.i127.1, label %sa11x0_dma_free_irq.exit129.sa11x0_dma_free_irq.exit129.1_crit_edge

sa11x0_dma_free_irq.exit129.sa11x0_dma_free_irq.exit129.1_crit_edge: ; preds = %sa11x0_dma_free_irq.exit129
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit129.1

if.then.i127.1:                                   ; preds = %sa11x0_dma_free_irq.exit129
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54.1 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 1
  %call1.i126.1 = tail call ptr @free_irq(i32 noundef %call.i124.1, ptr noundef %arrayidx54.1) #11
  br label %sa11x0_dma_free_irq.exit129.1

sa11x0_dma_free_irq.exit129.1:                    ; preds = %if.then.i127.1, %sa11x0_dma_free_irq.exit129.sa11x0_dma_free_irq.exit129.1_crit_edge
  %call.i124.2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.2)
  %cmp.i125.2 = icmp sgt i32 %call.i124.2, 0
  br i1 %cmp.i125.2, label %if.then.i127.2, label %sa11x0_dma_free_irq.exit129.1.sa11x0_dma_free_irq.exit129.2_crit_edge

sa11x0_dma_free_irq.exit129.1.sa11x0_dma_free_irq.exit129.2_crit_edge: ; preds = %sa11x0_dma_free_irq.exit129.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit129.2

if.then.i127.2:                                   ; preds = %sa11x0_dma_free_irq.exit129.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54.2 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 2
  %call1.i126.2 = tail call ptr @free_irq(i32 noundef %call.i124.2, ptr noundef %arrayidx54.2) #11
  br label %sa11x0_dma_free_irq.exit129.2

sa11x0_dma_free_irq.exit129.2:                    ; preds = %if.then.i127.2, %sa11x0_dma_free_irq.exit129.1.sa11x0_dma_free_irq.exit129.2_crit_edge
  %call.i124.3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.3)
  %cmp.i125.3 = icmp sgt i32 %call.i124.3, 0
  br i1 %cmp.i125.3, label %if.then.i127.3, label %sa11x0_dma_free_irq.exit129.2.sa11x0_dma_free_irq.exit129.3_crit_edge

sa11x0_dma_free_irq.exit129.2.sa11x0_dma_free_irq.exit129.3_crit_edge: ; preds = %sa11x0_dma_free_irq.exit129.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit129.3

if.then.i127.3:                                   ; preds = %sa11x0_dma_free_irq.exit129.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54.3 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 3
  %call1.i126.3 = tail call ptr @free_irq(i32 noundef %call.i124.3, ptr noundef %arrayidx54.3) #11
  br label %sa11x0_dma_free_irq.exit129.3

sa11x0_dma_free_irq.exit129.3:                    ; preds = %if.then.i127.3, %sa11x0_dma_free_irq.exit129.2.sa11x0_dma_free_irq.exit129.3_crit_edge
  %call.i124.4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.4)
  %cmp.i125.4 = icmp sgt i32 %call.i124.4, 0
  br i1 %cmp.i125.4, label %if.then.i127.4, label %sa11x0_dma_free_irq.exit129.3.sa11x0_dma_free_irq.exit129.4_crit_edge

sa11x0_dma_free_irq.exit129.3.sa11x0_dma_free_irq.exit129.4_crit_edge: ; preds = %sa11x0_dma_free_irq.exit129.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit129.4

if.then.i127.4:                                   ; preds = %sa11x0_dma_free_irq.exit129.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54.4 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 4
  %call1.i126.4 = tail call ptr @free_irq(i32 noundef %call.i124.4, ptr noundef %arrayidx54.4) #11
  br label %sa11x0_dma_free_irq.exit129.4

sa11x0_dma_free_irq.exit129.4:                    ; preds = %if.then.i127.4, %sa11x0_dma_free_irq.exit129.3.sa11x0_dma_free_irq.exit129.4_crit_edge
  %call.i124.5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.5)
  %cmp.i125.5 = icmp sgt i32 %call.i124.5, 0
  br i1 %cmp.i125.5, label %if.then.i127.5, label %sa11x0_dma_free_irq.exit129.4.err_irq_crit_edge

sa11x0_dma_free_irq.exit129.4.err_irq_crit_edge:  ; preds = %sa11x0_dma_free_irq.exit129.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

if.then.i127.5:                                   ; preds = %sa11x0_dma_free_irq.exit129.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54.5 = getelementptr %struct.sa11x0_dma_dev, ptr %call7.i.i, i32 0, i32 5, i32 5
  %call1.i126.5 = tail call ptr @free_irq(i32 noundef %call.i124.5, ptr noundef %arrayidx54.5) #11
  br label %err_irq

err_irq:                                          ; preds = %if.then.i127.5, %sa11x0_dma_free_irq.exit129.4.err_irq_crit_edge, %if.then.i.4, %while.body.4.err_irq_crit_edge, %sa11x0_dma_free_irq.exit.3.err_irq_crit_edge, %sa11x0_dma_free_irq.exit.2.err_irq_crit_edge, %sa11x0_dma_free_irq.exit.1.err_irq_crit_edge, %sa11x0_dma_free_irq.exit.err_irq_crit_edge, %while.cond.preheader.err_irq_crit_edge
  %ret.0 = phi i32 [ %retval.0.i151, %while.cond.preheader.err_irq_crit_edge ], [ %retval.2.i135, %if.then.i127.5 ], [ %retval.2.i135, %sa11x0_dma_free_irq.exit129.4.err_irq_crit_edge ], [ %retval.0.i151, %while.body.4.err_irq_crit_edge ], [ %retval.0.i151, %if.then.i.4 ], [ %retval.0.i151, %sa11x0_dma_free_irq.exit.3.err_irq_crit_edge ], [ %retval.0.i151, %sa11x0_dma_free_irq.exit.2.err_irq_crit_edge ], [ %retval.0.i151, %sa11x0_dma_free_irq.exit.1.err_irq_crit_edge ], [ %retval.0.i151, %sa11x0_dma_free_irq.exit.err_irq_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %task) #11
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %53) #11
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_irq, %do.body.err_ioremap_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_irq ], [ -12, %do.body.err_ioremap_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup60

cleanup60:                                        ; preds = %err_ioremap, %if.end48, %if.end.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -6, %entry.cleanup60_crit_edge ], [ %ret.1, %err_ioremap ], [ -12, %if.end.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dma_async_device_unregister(ptr noundef %1) #11
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels.i, align 4
  %cmp.not27.i = icmp eq ptr %3, %channels.i
  br i1 %cmp.not27.i, label %entry.sa11x0_dma_free_channels.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sa11x0_dma_free_channels.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_channels.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in28.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn.in28.i, i32 -32
  %4 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in28.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in28.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %.pn.in28.i, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #11
  tail call void @kfree(ptr noundef %c.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.sa11x0_dma_free_channels.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.sa11x0_dma_free_channels.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_channels.exit

sa11x0_dma_free_channels.exit:                    ; preds = %list_del.exit.i.sa11x0_dma_free_channels.exit_crit_edge, %entry.sa11x0_dma_free_channels.exit_crit_edge
  %call.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %sa11x0_dma_free_channels.exit.sa11x0_dma_free_irq.exit_crit_edge

sa11x0_dma_free_channels.exit.sa11x0_dma_free_irq.exit_crit_edge: ; preds = %sa11x0_dma_free_channels.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit

if.then.i:                                        ; preds = %sa11x0_dma_free_channels.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 0
  %call1.i = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %arrayidx) #11
  br label %sa11x0_dma_free_irq.exit

sa11x0_dma_free_irq.exit:                         ; preds = %if.then.i, %sa11x0_dma_free_channels.exit.sa11x0_dma_free_irq.exit_crit_edge
  %call.i.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp sgt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %if.then.i.1, label %sa11x0_dma_free_irq.exit.sa11x0_dma_free_irq.exit.1_crit_edge

sa11x0_dma_free_irq.exit.sa11x0_dma_free_irq.exit.1_crit_edge: ; preds = %sa11x0_dma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.1

if.then.i.1:                                      ; preds = %sa11x0_dma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 1
  %call1.i.1 = tail call ptr @free_irq(i32 noundef %call.i.1, ptr noundef %arrayidx.1) #11
  br label %sa11x0_dma_free_irq.exit.1

sa11x0_dma_free_irq.exit.1:                       ; preds = %if.then.i.1, %sa11x0_dma_free_irq.exit.sa11x0_dma_free_irq.exit.1_crit_edge
  %call.i.2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp sgt i32 %call.i.2, 0
  br i1 %cmp.i.2, label %if.then.i.2, label %sa11x0_dma_free_irq.exit.1.sa11x0_dma_free_irq.exit.2_crit_edge

sa11x0_dma_free_irq.exit.1.sa11x0_dma_free_irq.exit.2_crit_edge: ; preds = %sa11x0_dma_free_irq.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.2

if.then.i.2:                                      ; preds = %sa11x0_dma_free_irq.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 2
  %call1.i.2 = tail call ptr @free_irq(i32 noundef %call.i.2, ptr noundef %arrayidx.2) #11
  br label %sa11x0_dma_free_irq.exit.2

sa11x0_dma_free_irq.exit.2:                       ; preds = %if.then.i.2, %sa11x0_dma_free_irq.exit.1.sa11x0_dma_free_irq.exit.2_crit_edge
  %call.i.3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp.i.3 = icmp sgt i32 %call.i.3, 0
  br i1 %cmp.i.3, label %if.then.i.3, label %sa11x0_dma_free_irq.exit.2.sa11x0_dma_free_irq.exit.3_crit_edge

sa11x0_dma_free_irq.exit.2.sa11x0_dma_free_irq.exit.3_crit_edge: ; preds = %sa11x0_dma_free_irq.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.3

if.then.i.3:                                      ; preds = %sa11x0_dma_free_irq.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.3 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 3
  %call1.i.3 = tail call ptr @free_irq(i32 noundef %call.i.3, ptr noundef %arrayidx.3) #11
  br label %sa11x0_dma_free_irq.exit.3

sa11x0_dma_free_irq.exit.3:                       ; preds = %if.then.i.3, %sa11x0_dma_free_irq.exit.2.sa11x0_dma_free_irq.exit.3_crit_edge
  %call.i.4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp.i.4 = icmp sgt i32 %call.i.4, 0
  br i1 %cmp.i.4, label %if.then.i.4, label %sa11x0_dma_free_irq.exit.3.sa11x0_dma_free_irq.exit.4_crit_edge

sa11x0_dma_free_irq.exit.3.sa11x0_dma_free_irq.exit.4_crit_edge: ; preds = %sa11x0_dma_free_irq.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.4

if.then.i.4:                                      ; preds = %sa11x0_dma_free_irq.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.4 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 4
  %call1.i.4 = tail call ptr @free_irq(i32 noundef %call.i.4, ptr noundef %arrayidx.4) #11
  br label %sa11x0_dma_free_irq.exit.4

sa11x0_dma_free_irq.exit.4:                       ; preds = %if.then.i.4, %sa11x0_dma_free_irq.exit.3.sa11x0_dma_free_irq.exit.4_crit_edge
  %call.i.5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp.i.5 = icmp sgt i32 %call.i.5, 0
  br i1 %cmp.i.5, label %if.then.i.5, label %sa11x0_dma_free_irq.exit.4.sa11x0_dma_free_irq.exit.5_crit_edge

sa11x0_dma_free_irq.exit.4.sa11x0_dma_free_irq.exit.5_crit_edge: ; preds = %sa11x0_dma_free_irq.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa11x0_dma_free_irq.exit.5

if.then.i.5:                                      ; preds = %sa11x0_dma_free_irq.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.5 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 5
  %call1.i.5 = tail call ptr @free_irq(i32 noundef %call.i.5, ptr noundef %arrayidx.5) #11
  br label %sa11x0_dma_free_irq.exit.5

sa11x0_dma_free_irq.exit.5:                       ; preds = %if.then.i.5, %sa11x0_dma_free_irq.exit.4.sa11x0_dma_free_irq.exit.5_crit_edge
  %task = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 3
  tail call void @tasklet_kill(ptr noundef %task) #11
  %base = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %14) #11
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sa11x0_dma_filter_fn(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %param) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa11x0_dma_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tasklet, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %t, i32 -340
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.17) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %channels = getelementptr i8, ptr %t, i32 -400
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn186 = load ptr, ptr %channels, align 4
  %cmp.not188 = icmp eq ptr %.pn186, %channels
  br i1 %cmp.not188, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %dev36 = getelementptr i8, ptr %t, i32 -340
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.body.lr.ph
  %.pn189 = phi ptr [ %.pn186, %for.body.lr.ph ], [ %.pn, %if.end42.for.body_crit_edge ]
  %c.0190 = getelementptr i8, ptr %.pn189, i32 -32
  %lock = getelementptr i8, ptr %.pn189, i32 60
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %phy = getelementptr i8, ptr %.pn189, i32 148
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %for.body.if.end42_crit_edge, label %land.lhs.true

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true:                                    ; preds = %for.body
  %txd_done = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %txd_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txd_done, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then16:                                        ; preds = %land.lhs.true
  tail call fastcc void @sa11x0_dma_start_txd(ptr noundef %c.0190)
  %7 = ptrtoint ptr %txd_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txd_done, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %do.body20, label %if.then16.if.end42_crit_edge

if.then16.if.end42_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.body20:                                        ; preds = %if.then16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tasklet, %do.end39)) #11
          to label %if.then34 [label %do.end39], !srcloc !187

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev36, align 4
  %num = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug240, ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef %12) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body20
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %phy, align 4
  %vchan = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %vchan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vchan, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %if.then16.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %for.body.if.end42_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %15 = ptrtoint ptr %.pn189 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn189, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %if.end42.for.end_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end42.for.end_crit_edge, %do.end.for.end_crit_edge
  %lock52 = getelementptr i8, ptr %t, i32 -44
  tail call void @_raw_spin_lock_irq(ptr noundef %lock52) #11
  %phy56 = getelementptr i8, ptr %t, i32 32
  %chan_pending = getelementptr i8, ptr %t, i32 24
  %dev85 = getelementptr i8, ptr %t, i32 -340
  br label %for.body55

for.body55:                                       ; preds = %for.inc91.for.body55_crit_edge, %for.end
  %pch.0192 = phi i32 [ 0, %for.end ], [ %inc, %for.inc91.for.body55_crit_edge ]
  %pch_alloc.0191 = phi i32 [ 0, %for.end ], [ %pch_alloc.1, %for.inc91.for.body55_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.sa11x0_dma_phy], ptr %phy56, i32 0, i32 %pch.0192
  %vchan57 = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %arrayidx, i32 0, i32 3
  %16 = ptrtoint ptr %vchan57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vchan57, align 4
  %cmp58 = icmp eq ptr %17, null
  br i1 %cmp58, label %land.lhs.true59, label %for.body55.for.inc91_crit_edge

for.body55.for.inc91_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc91

land.lhs.true59:                                  ; preds = %for.body55
  %18 = ptrtoint ptr %chan_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %chan_pending, align 4
  %cmp.i.not = icmp eq ptr %19, %chan_pending
  br i1 %cmp.i.not, label %land.lhs.true59.for.inc91_crit_edge, label %if.then62

land.lhs.true59.for.inc91_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc91

if.then62:                                        ; preds = %land.lhs.true59
  %add.ptr67 = getelementptr i8, ptr %19, i32 -188
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then62.list_del_init.exit_crit_edge

if.then62.list_del_init.exit_crit_edge:           ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then62.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i, align 4
  %shl = shl nuw nsw i32 1, %pch.0192
  %or = or i32 %shl, %pch_alloc.0191
  %28 = ptrtoint ptr %vchan57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr67, ptr %vchan57, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tasklet, %for.inc91)) #11
          to label %if.then83 [label %for.inc91], !srcloc !187

if.then83:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug241, ptr noundef %30, ptr noundef nonnull @.str.19, i32 noundef %pch.0192, ptr noundef %add.ptr67) #11
  br label %for.inc91

for.inc91:                                        ; preds = %if.then83, %list_del_init.exit, %land.lhs.true59.for.inc91_crit_edge, %for.body55.for.inc91_crit_edge
  %pch_alloc.1 = phi i32 [ %pch_alloc.0191, %land.lhs.true59.for.inc91_crit_edge ], [ %or, %if.then83 ], [ %pch_alloc.0191, %for.body55.for.inc91_crit_edge ], [ %or, %list_del_init.exit ]
  %inc = add nuw nsw i32 %pch.0192, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end92, label %for.inc91.for.body55_crit_edge

for.inc91.for.body55_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55

for.end92:                                        ; preds = %for.inc91
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock52) #11
  %and = and i32 %pch_alloc.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool98.not = icmp eq i32 %and, 0
  br i1 %tobool98.not, label %for.end92.for.inc109_crit_edge, label %if.then99

for.end92.for.inc109_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc109

if.then99:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #13
  %vchan102 = getelementptr i8, ptr %t, i32 44
  %31 = ptrtoint ptr %vchan102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vchan102, align 4
  %lock104 = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock104) #11
  %phy105 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %phy105 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %phy56, ptr %phy105, align 4
  tail call fastcc void @sa11x0_dma_start_txd(ptr noundef %32)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock104) #11
  br label %for.inc109

for.inc109:                                       ; preds = %if.then99, %for.end92.for.inc109_crit_edge
  %and.1 = and i32 %pch_alloc.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool98.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool98.not.1, label %for.inc109.for.inc109.1_crit_edge, label %if.then99.1

for.inc109.for.inc109.1_crit_edge:                ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc109.1

if.then99.1:                                      ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx101.1 = getelementptr i8, ptr %t, i32 84
  %vchan102.1 = getelementptr i8, ptr %t, i32 96
  %34 = ptrtoint ptr %vchan102.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vchan102.1, align 4
  %lock104.1 = getelementptr inbounds %struct.virt_dma_chan, ptr %35, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock104.1) #11
  %phy105.1 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %phy105.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx101.1, ptr %phy105.1, align 4
  tail call fastcc void @sa11x0_dma_start_txd(ptr noundef %35)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock104.1) #11
  br label %for.inc109.1

for.inc109.1:                                     ; preds = %if.then99.1, %for.inc109.for.inc109.1_crit_edge
  %and.2 = and i32 %pch_alloc.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool98.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool98.not.2, label %for.inc109.1.for.inc109.2_crit_edge, label %if.then99.2

for.inc109.1.for.inc109.2_crit_edge:              ; preds = %for.inc109.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc109.2

if.then99.2:                                      ; preds = %for.inc109.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx101.2 = getelementptr i8, ptr %t, i32 136
  %vchan102.2 = getelementptr i8, ptr %t, i32 148
  %37 = ptrtoint ptr %vchan102.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vchan102.2, align 4
  %lock104.2 = getelementptr inbounds %struct.virt_dma_chan, ptr %38, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock104.2) #11
  %phy105.2 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %phy105.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx101.2, ptr %phy105.2, align 4
  tail call fastcc void @sa11x0_dma_start_txd(ptr noundef %38)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock104.2) #11
  br label %for.inc109.2

for.inc109.2:                                     ; preds = %if.then99.2, %for.inc109.1.for.inc109.2_crit_edge
  %and.3 = and i32 %pch_alloc.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool98.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool98.not.3, label %for.inc109.2.for.inc109.3_crit_edge, label %if.then99.3

for.inc109.2.for.inc109.3_crit_edge:              ; preds = %for.inc109.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc109.3

if.then99.3:                                      ; preds = %for.inc109.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx101.3 = getelementptr i8, ptr %t, i32 188
  %vchan102.3 = getelementptr i8, ptr %t, i32 200
  %40 = ptrtoint ptr %vchan102.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vchan102.3, align 4
  %lock104.3 = getelementptr inbounds %struct.virt_dma_chan, ptr %41, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock104.3) #11
  %phy105.3 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %phy105.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx101.3, ptr %phy105.3, align 4
  tail call fastcc void @sa11x0_dma_start_txd(ptr noundef %41)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock104.3) #11
  br label %for.inc109.3

for.inc109.3:                                     ; preds = %if.then99.3, %for.inc109.2.for.inc109.3_crit_edge
  %and.4 = and i32 %pch_alloc.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool98.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool98.not.4, label %for.inc109.3.for.inc109.4_crit_edge, label %if.then99.4

for.inc109.3.for.inc109.4_crit_edge:              ; preds = %for.inc109.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc109.4

if.then99.4:                                      ; preds = %for.inc109.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx101.4 = getelementptr i8, ptr %t, i32 240
  %vchan102.4 = getelementptr i8, ptr %t, i32 252
  %43 = ptrtoint ptr %vchan102.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vchan102.4, align 4
  %lock104.4 = getelementptr inbounds %struct.virt_dma_chan, ptr %44, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock104.4) #11
  %phy105.4 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %phy105.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx101.4, ptr %phy105.4, align 4
  tail call fastcc void @sa11x0_dma_start_txd(ptr noundef %44)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock104.4) #11
  br label %for.inc109.4

for.inc109.4:                                     ; preds = %if.then99.4, %for.inc109.3.for.inc109.4_crit_edge
  %and.5 = and i32 %pch_alloc.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool98.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool98.not.5, label %for.inc109.4.for.inc109.5_crit_edge, label %if.then99.5

for.inc109.4.for.inc109.5_crit_edge:              ; preds = %for.inc109.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc109.5

if.then99.5:                                      ; preds = %for.inc109.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx101.5 = getelementptr i8, ptr %t, i32 292
  %vchan102.5 = getelementptr i8, ptr %t, i32 304
  %46 = ptrtoint ptr %vchan102.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vchan102.5, align 4
  %lock104.5 = getelementptr inbounds %struct.virt_dma_chan, ptr %47, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock104.5) #11
  %phy105.5 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %phy105.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx101.5, ptr %phy105.5, align 4
  tail call fastcc void @sa11x0_dma_start_txd(ptr noundef %47)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock104.5) #11
  br label %for.inc109.5

for.inc109.5:                                     ; preds = %if.then99.5, %for.inc109.4.for.inc109.5_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tasklet, %do.end131)) #11
          to label %if.then126 [label %do.end131], !srcloc !187

if.then126:                                       ; preds = %for.inc109.5
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug242, ptr noundef %50, ptr noundef nonnull @.str.20) #11
  br label %do.end131

do.end131:                                        ; preds = %if.then126, %for.inc109.5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sa11x0_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sg, i32 noundef %sglen, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ddar = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ddar, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %dir)
  %cmp.not = icmp eq i32 %cond, %dir
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, ptr noundef %chan, i32 noundef %1, i32 noundef %dir) #15
  br label %cleanup118

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen)
  %cmp2 = icmp eq i32 %sglen, 0
  br i1 %cmp2, label %if.end.cleanup118_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup118_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup118

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %if.end.for.body_crit_edge
  %sgent.0189 = phi ptr [ %call29, %for.inc.critedge.for.body_crit_edge ], [ %sg, %if.end.for.body_crit_edge ]
  %i.0188 = phi i32 [ %inc, %for.inc.critedge.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %j.0187 = phi i32 [ %j.1, %for.inc.critedge.for.body_crit_edge ], [ %sglen, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #11
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgent.0189, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr, align 4
  %and11 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.inc.critedge, label %do.body14

do.body14:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_prep_slave_sg, %cleanup118.critedge)) #11
          to label %if.then20 [label %cleanup118.critedge], !srcloc !187

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan, align 4
  %dev22 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug250, ptr noundef %12, ptr noundef nonnull @.str.34, ptr noundef %chan, ptr noundef nonnull %addr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  br label %cleanup118

for.inc.critedge:                                 ; preds = %for.body
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgent.0189, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %14)
  %cmp6 = icmp ugt i32 %14, 8191
  %sub = add i32 %14, 8187
  %div = udiv i32 %sub, 8188
  %sub8 = add nsw i32 %div, -1
  %add9 = select i1 %cmp6, i32 %sub8, i32 0
  %j.1 = add i32 %add9, %j.0187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  %inc = add nuw i32 %i.0188, 1
  %call29 = tail call ptr @sg_next(ptr noundef %sgent.0189) #11
  %exitcond.not = icmp eq i32 %inc, %sglen
  br i1 %exitcond.not, label %if.end8.i.i, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end8.i.i:                                      ; preds = %for.inc.critedge
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %j.1, i32 8) #11
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %17, i32 136) #11
  %retval.0.i181 = select i1 %16, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i181, i32 noundef 2848) #17
  %tobool32.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool32.not, label %do.body34, label %for.body58.preheader

for.body58.preheader:                             ; preds = %if.end8.i.i
  %umax = call i32 @llvm.umax.i32(i32 %sglen, i32 1)
  br label %for.body58

do.body34:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_prep_slave_sg, %cleanup118)) #11
          to label %if.then48 [label %cleanup118], !srcloc !187

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %dev50 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug251, ptr noundef %21, ptr noundef nonnull @.str.35, ptr noundef %chan) #11
  br label %cleanup118

for.body58:                                       ; preds = %do.end83.for.body58_crit_edge, %for.body58.preheader
  %sgent.1194 = phi ptr [ %call86, %do.end83.for.body58_crit_edge ], [ %sg, %for.body58.preheader ]
  %i.1193 = phi i32 [ %inc85, %do.end83.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %j.2192 = phi i32 [ %inc80, %do.end83.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %size.0191 = phi i32 [ %add63, %do.end83.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %dma_address60 = getelementptr inbounds %struct.scatterlist, ptr %sgent.1194, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address60, align 4
  %dma_length62 = getelementptr inbounds %struct.scatterlist, ptr %sgent.1194, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length62, align 4
  br label %do.body64

do.body64:                                        ; preds = %if.end72.do.body64_crit_edge, %for.body58
  %j.3 = phi i32 [ %j.2192, %for.body58 ], [ %inc80, %if.end72.do.body64_crit_edge ]
  %addr59.0 = phi i32 [ %23, %for.body58 ], [ %add78, %if.end72.do.body64_crit_edge ]
  %len61.0 = phi i32 [ %25, %for.body58 ], [ %sub79, %if.end72.do.body64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %len61.0)
  %cmp65 = icmp ugt i32 %len61.0, 8191
  br i1 %cmp65, label %if.then66, label %do.body64.if.end72_crit_edge

do.body64.if.end72_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then66:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  %sub68 = add i32 %len61.0, 8187
  %div69 = udiv i32 %sub68, 8188
  %div70 = udiv i32 %len61.0, %div69
  %and71 = and i32 %div70, -4
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %do.body64.if.end72_crit_edge
  %tlen.0 = phi i32 [ %and71, %if.then66 ], [ %len61.0, %do.body64.if.end72_crit_edge ]
  %arrayidx = getelementptr %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 6, i32 %j.3
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %addr59.0, ptr %arrayidx, align 8
  %len77 = getelementptr %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 6, i32 %j.3, i32 1
  %27 = ptrtoint ptr %len77 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %tlen.0, ptr %len77, align 4
  %add78 = add i32 %tlen.0, %addr59.0
  %sub79 = sub i32 %len61.0, %tlen.0
  %inc80 = add i32 %j.3, 1
  %tobool82.not = icmp eq i32 %sub79, 0
  br i1 %tobool82.not, label %do.end83, label %if.end72.do.body64_crit_edge

if.end72.do.body64_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

do.end83:                                         ; preds = %if.end72
  %add63 = add i32 %25, %size.0191
  %inc85 = add nuw i32 %i.1193, 1
  %call86 = tail call ptr @sg_next(ptr noundef %sgent.1194) #11
  %exitcond197.not = icmp eq i32 %inc85, %umax
  br i1 %exitcond197.not, label %for.end87, label %do.end83.for.body58_crit_edge

do.end83.for.body58_crit_edge:                    ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body58

for.end87:                                        ; preds = %do.end83
  %28 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ddar, align 4
  %ddar89 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %ddar89 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ddar89, align 4
  %size90 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %size90 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add63, ptr %size90, align 8
  %sglen91 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %sglen91 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc80, ptr %sglen91, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_prep_slave_sg, %do.end114)) #11
          to label %if.then106 [label %do.end114], !srcloc !187

if.then106:                                       ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan, align 4
  %dev108 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev108, align 4
  %37 = ptrtoint ptr %size90 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size90, align 8
  %39 = ptrtoint ptr %sglen91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sglen91, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug252, ptr noundef %36, ptr noundef nonnull @.str.36, ptr noundef %chan, ptr noundef nonnull %call9.i.i, i32 noundef %38, i32 noundef %40) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then106, %for.end87
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #11
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %47, ptr noundef %desc_allocated.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end114.vchan_tx_prep.exit_crit_edge

do.end114.vchan_tx_prep.exit_crit_edge:           ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %node.i, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i, align 16
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %node.i, ptr %47, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %do.end114.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  br label %cleanup118

cleanup118.critedge:                              ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  br label %cleanup118

cleanup118:                                       ; preds = %cleanup118.critedge, %vchan_tx_prep.exit, %if.then48, %do.body34, %if.then20, %if.end.cleanup118_crit_edge, %do.end
  %retval.2 = phi ptr [ null, %do.end ], [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %if.end.cleanup118_crit_edge ], [ null, %cleanup118.critedge ], [ null, %if.then20 ], [ null, %if.then48 ], [ null, %do.body34 ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sa11x0_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %addr, i32 noundef %size, i32 noundef %period, i32 noundef %dir, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ddar = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ddar, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %dir)
  %cmp.not = icmp eq i32 %cond, %dir
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, ptr noundef %chan, i32 noundef %1, i32 noundef %dir) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %period, 8187
  %div = udiv i32 %sub, 8188
  %mul = mul i32 %div, %size
  %div2 = udiv i32 %mul, %period
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %period)
  %cmp3 = icmp ult i32 %mul, %period
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end8.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div2, i32 8) #11
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 136) #11
  %retval.0.i162 = select i1 %7, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i162, i32 noundef 2848) #17
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %do.body10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %period, i32 %size)
  %cmp25172.not = icmp ugt i32 %period, %size
  br i1 %cmp25172.not, label %for.cond.preheader.for.end76_crit_edge, label %for.cond26.preheader.lr.ph

for.cond.preheader.for.end76_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end76

for.cond26.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %div24 = udiv i32 %size, %period
  call void @__sanitizer_cov_trace_const_cmp4(i32 8188, i32 %sub)
  %9 = icmp ult i32 %sub, 8188
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  %umax177 = call i32 @llvm.umax.i32(i32 %div24, i32 1)
  br label %for.cond26.preheader

do.body10:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_prep_dma_cyclic, %cleanup)) #11
          to label %if.then16 [label %cleanup], !srcloc !187

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %dev18 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug253, ptr noundef %13, ptr noundef nonnull @.str.35, ptr noundef %chan) #11
  br label %cleanup

for.cond26.preheader:                             ; preds = %if.end66.for.cond26.preheader_crit_edge, %for.cond26.preheader.lr.ph
  %addr.addr.0175 = phi i32 [ %addr, %for.cond26.preheader.lr.ph ], [ %addr.addr.1.lcssa, %if.end66.for.cond26.preheader_crit_edge ]
  %i.0174 = phi i32 [ 0, %for.cond26.preheader.lr.ph ], [ %inc75, %if.end66.for.cond26.preheader_crit_edge ]
  %k.0173 = phi i32 [ 0, %for.cond26.preheader.lr.ph ], [ %k.1.lcssa, %if.end66.for.cond26.preheader_crit_edge ]
  br i1 %9, label %for.cond26.preheader.for.end_crit_edge, label %for.body28.preheader

for.cond26.preheader.for.end_crit_edge:           ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body28.preheader:                             ; preds = %for.cond26.preheader
  %14 = add i32 %umax, %k.0173
  br label %for.body28

for.body28:                                       ; preds = %if.end36.for.body28_crit_edge, %for.body28.preheader
  %addr.addr.1169 = phi i32 [ %add41, %if.end36.for.body28_crit_edge ], [ %addr.addr.0175, %for.body28.preheader ]
  %len.0167 = phi i32 [ %sub42, %if.end36.for.body28_crit_edge ], [ %period, %for.body28.preheader ]
  %k.1166 = phi i32 [ %inc43, %if.end36.for.body28_crit_edge ], [ %k.0173, %for.body28.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %len.0167)
  %cmp29 = icmp ugt i32 %len.0167, 8191
  br i1 %cmp29, label %if.then30, label %for.body28.if.end36_crit_edge

for.body28.if.end36_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then30:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  %sub32 = add i32 %len.0167, 8187
  %div33 = udiv i32 %sub32, 8188
  %div34 = udiv i32 %len.0167, %div33
  %and35 = and i32 %div34, -4
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %for.body28.if.end36_crit_edge
  %tlen.0 = phi i32 [ %and35, %if.then30 ], [ %len.0167, %for.body28.if.end36_crit_edge ]
  %arrayidx = getelementptr %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 6, i32 %k.1166
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %addr.addr.1169, ptr %arrayidx, align 8
  %len40 = getelementptr %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 6, i32 %k.1166, i32 1
  %16 = ptrtoint ptr %len40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %tlen.0, ptr %len40, align 4
  %add41 = add i32 %tlen.0, %addr.addr.1169
  %sub42 = sub i32 %len.0167, %tlen.0
  %inc43 = add i32 %k.1166, 1
  %exitcond.not = icmp eq i32 %inc43, %14
  br i1 %exitcond.not, label %if.end36.for.end_crit_edge, label %if.end36.for.body28_crit_edge

if.end36.for.body28_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %for.cond26.preheader.for.end_crit_edge
  %k.1.lcssa = phi i32 [ %k.0173, %for.cond26.preheader.for.end_crit_edge ], [ %14, %if.end36.for.end_crit_edge ]
  %len.0.lcssa = phi i32 [ %period, %for.cond26.preheader.for.end_crit_edge ], [ %sub42, %if.end36.for.end_crit_edge ]
  %addr.addr.1.lcssa = phi i32 [ %addr.addr.0175, %for.cond26.preheader.for.end_crit_edge ], [ %add41, %if.end36.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa)
  %cmp44.not = icmp eq i32 %len.0.lcssa, 0
  br i1 %cmp44.not, label %for.end.if.end66_crit_edge, label %do.end60, !prof !188

for.end.if.end66_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 649, i32 noundef 9, ptr noundef null) #11
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %for.end.if.end66_crit_edge
  %inc75 = add nuw i32 %i.0174, 1
  %exitcond178.not = icmp eq i32 %inc75, %umax177
  br i1 %exitcond178.not, label %if.end66.for.end76_crit_edge, label %if.end66.for.cond26.preheader_crit_edge

if.end66.for.cond26.preheader_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond26.preheader

if.end66.for.end76_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end76

for.end76:                                        ; preds = %if.end66.for.end76_crit_edge, %for.cond.preheader.for.end76_crit_edge
  %k.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end76_crit_edge ], [ %k.1.lcssa, %if.end66.for.end76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa, i32 %div2)
  %cmp78.not = icmp eq i32 %k.0.lcssa, %div2
  br i1 %cmp78.not, label %for.end76.if.end100_crit_edge, label %do.end94, !prof !188

for.end76.if.end100_crit_edge:                    ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

do.end94:                                         ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 652, i32 noundef 9, ptr noundef null) #11
  br label %if.end100

if.end100:                                        ; preds = %do.end94, %for.end76.if.end100_crit_edge
  %17 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ddar, align 4
  %ddar109 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ddar109 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ddar109, align 4
  %size110 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %size110 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size, ptr %size110, align 8
  %sglen111 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %sglen111 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div2, ptr %sglen111, align 4
  %cyclic = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cyclic, align 128
  %period112 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call9.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %period112 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %period112, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #11
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %30, ptr noundef %desc_allocated.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end100.vchan_tx_prep.exit_crit_edge

if.end100.vchan_tx_prep.exit_crit_edge:           ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %node.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 16
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %node.i, ptr %30, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end100.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then16, %do.body10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then16 ], [ null, %do.body10 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sa11x0_dma_free_channels(ptr noundef readonly %dmadev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %cmp.not27 = icmp eq ptr %1, %channels
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %c.0 = getelementptr i8, ptr %.pn.in28, i32 -32
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in28, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr i8, ptr %.pn.in28, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #11
  tail call void @kfree(ptr noundef %c.0) #11
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sa11x0_dma_start_txd(ptr noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, %desc_issued.i.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not43 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = or i1 %cmp.not.i.i, %tobool.not43
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr i8, ptr %1, i32 4
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %txd_load.i = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %txd_load.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i.i, ptr %txd_load.i, align 4
  %sg_load.i = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %sg_load.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sg_load.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_start_desc.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_start_txd, %sa11x0_dma_start_desc.exit)) #11
          to label %if.then.i [label %sa11x0_dma_start_desc.exit], !srcloc !187

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %dev4.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4.i, align 4
  %num.i = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num.i, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %ddar.i = getelementptr i8, ptr %1, i32 8
  %22 = ptrtoint ptr %ddar.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ddar.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_start_desc.__UNIQUE_ID_ddebug236, ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef %19, ptr noundef nonnull %add.ptr.i.i, i32 noundef %21, i32 noundef %23) #11
  br label %sa11x0_dma_start_desc.exit

sa11x0_dma_start_desc.exit:                       ; preds = %if.then.i, %list_del.exit.i
  %txd_done = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %txd_done to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i.i, ptr %txd_done, align 4
  %sg_done = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %sg_done to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sg_done, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !189
  %29 = and i32 %28, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not = icmp eq i32 %29, 0
  br i1 %tobool2.not, label %sa11x0_dma_start_desc.exit.if.end_crit_edge, label %do.end, !prof !188

sa11x0_dma_start_desc.exit.if.end_crit_edge:      ; preds = %sa11x0_dma_start_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %sa11x0_dma_start_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 313, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %sa11x0_dma_start_desc.exit.if.end_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr25 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 1358954496) #11, !srcloc !186
  %ddar = getelementptr i8, ptr %1, i32 8
  %32 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ddar, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #11, !srcloc !186
  tail call fastcc void @sa11x0_dma_start_sg(ptr noundef %3, ptr noundef %c)
  tail call fastcc void @sa11x0_dma_start_sg(ptr noundef %3, ptr noundef %c)
  br label %if.end28

if.end28:                                         ; preds = %if.end, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sa11x0_dma_start_sg(ptr nocapture noundef %p, ptr noundef %c) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txd_load = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %txd_load to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txd_load, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !189
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %and)
  %cmp = icmp eq i32 %and, 80
  br i1 %cmp, label %if.end.cleanup49_crit_edge, label %if.end3

if.end.cleanup49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.end3:                                          ; preds = %if.end
  %sg_load = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 4
  %6 = ptrtoint ptr %sg_load to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_load, align 4
  %sglen = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp eq i32 %7, %9
  br i1 %cmp4, label %if.then5, label %if.end3.if.end18_crit_edge

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then5:                                         ; preds = %if.end3
  %cyclic = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cyclic, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.then7, label %if.else15

if.then7:                                         ; preds = %if.then5
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %12 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %13, %desc_issued.i.i
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -108
  %tobool9.not90 = icmp eq ptr %add.ptr.i.i, null
  %tobool9.not = or i1 %cmp.not.i.i, %tobool9.not90
  br i1 %tobool9.not, label %if.then7.cleanup.thread86_crit_edge, label %land.lhs.true

if.then7.cleanup.thread86_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread86

land.lhs.true:                                    ; preds = %if.then7
  %ddar = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ddar, align 4
  %ddar10 = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ddar10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ddar10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp11 = icmp eq i32 %15, %17
  br i1 %cmp11, label %if.then12, label %land.lhs.true.cleanup.thread86_crit_edge

land.lhs.true.cleanup.thread86_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread86

if.then12:                                        ; preds = %land.lhs.true
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.list_del.exit.i_crit_edge

if.then12.list_del.exit.i_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %13, i32 4
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then12.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.i = getelementptr i8, ptr %13, i32 4
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %txd_load to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i.i, ptr %txd_load, align 4
  %27 = ptrtoint ptr %sg_load to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %sg_load, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_start_desc.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_start_sg, %if.end18)) #11
          to label %cleanup.thread [label %if.end18], !srcloc !187

cleanup.thread:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %dev4.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev4.i, align 4
  %num.i = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 2
  %32 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num.i, align 4
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i, align 4
  %36 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ddar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_start_desc.__UNIQUE_ID_ddebug236, ptr noundef %31, ptr noundef nonnull @.str.22, i32 noundef %33, ptr noundef nonnull %add.ptr.i.i, i32 noundef %35, i32 noundef %37) #11
  br label %if.end18

cleanup.thread86:                                 ; preds = %land.lhs.true.cleanup.thread86_crit_edge, %if.then7.cleanup.thread86_crit_edge
  %38 = ptrtoint ptr %txd_load to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %txd_load, align 4
  br label %cleanup49

if.else15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %sg_load to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sg_load, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %cleanup.thread, %list_del.exit.i, %if.end3.if.end18_crit_edge
  %txd.1 = phi ptr [ %1, %if.else15 ], [ %1, %if.end3.if.end18_crit_edge ], [ %add.ptr.i.i, %cleanup.thread ], [ %add.ptr.i.i, %list_del.exit.i ]
  %40 = ptrtoint ptr %sg_load to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sg_load, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %sg_load, align 4
  %arrayidx = getelementptr %struct.sa11x0_dma_desc, ptr %txd.1, i32 0, i32 6, i32 %41
  %and21 = and i32 %5, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 192
  %and23 = and i32 %5, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  %or.cond = or i1 %cmp22, %cmp24
  br i1 %or.cond, label %if.end18.if.end27_crit_edge, label %if.else26

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.end18.if.end27_crit_edge
  %cmp42 = phi i32 [ 66, %if.else26 ], [ 65, %if.end18.if.end27_crit_edge ]
  %dbtx.0 = phi i32 [ 28, %if.else26 ], [ 20, %if.end18.if.end27_crit_edge ]
  %dcsr.0 = phi i32 [ 67, %if.else26 ], [ 19, %if.end18.if.end27_crit_edge ]
  %dbsx.0 = phi i32 [ 24, %if.else26 ], [ 16, %if.end18.if.end27_crit_edge ]
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %add.ptr28 = getelementptr i8, ptr %3, i32 %dbsx.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %44) #11, !srcloc !186
  %len = getelementptr %struct.sa11x0_dma_desc, ptr %txd.1, i32 0, i32 6, i32 %41, i32 1
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %add.ptr29 = getelementptr i8, ptr %3, i32 %dbtx.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %47) #11, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %48 = shl nuw nsw i32 %dcsr.0, 24
  %add.ptr30 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %48) #11, !srcloc !186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_start_sg.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_start_sg, %cleanup49)) #11
          to label %if.then38 [label %cleanup49], !srcloc !187

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 1
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %dev39 = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev39, align 4
  %num = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 2
  %53 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num, align 4
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_start_sg.__UNIQUE_ID_ddebug237, ptr noundef %52, ptr noundef nonnull @.str.24, i32 noundef %54, i32 noundef %dcsr.0, i32 noundef %cmp42, i32 noundef %56, i32 noundef %cmp42, i32 noundef %58) #11
  br label %cleanup49

cleanup49:                                        ; preds = %if.then38, %if.end27, %cleanup.thread86, %if.end.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !189
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = shl nuw nsw i32 %and, 24
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #11, !srcloc !186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_irq.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_irq, %do.end)) #11
          to label %if.then10 [label %do.end], !srcloc !187

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %num = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %dev_id, i32 0, i32 2
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_irq.__UNIQUE_ID_ddebug238, ptr noundef %10, ptr noundef nonnull @.str.26, i32 noundef %12, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %and13 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end.if.end47_crit_edge, label %do.end18

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev20 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev20, align 4
  %num21 = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %dev_id, i32 0, i32 2
  %15 = ptrtoint ptr %num21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num21, align 4
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_id, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !189
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %add.ptr29 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #11, !srcloc !189
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 4
  %add.ptr34 = getelementptr i8, ptr %26, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #11, !srcloc !189
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 4
  %add.ptr39 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #11, !srcloc !189
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %add.ptr44 = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #11, !srcloc !189
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.27, i32 noundef %16, i32 noundef %5, i32 noundef %20, i32 noundef %24, i32 noundef %28, i32 noundef %32, i32 noundef %36) #15
  br label %if.end47

if.end47:                                         ; preds = %do.end18, %do.end.if.end47_crit_edge
  %vchan = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %dev_id, i32 0, i32 3
  %37 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vchan, align 4
  %tobool48.not = icmp eq ptr %38, null
  br i1 %tobool48.not, label %if.end47.cleanup_crit_edge, label %if.then49

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %if.end47
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %38, i32 0, i32 3
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %phy = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy, align 4
  %cmp59 = icmp eq ptr %40, %dev_id
  br i1 %cmp59, label %if.then61, label %if.then49.if.end70_crit_edge

if.then49.if.end70_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then61:                                        ; preds = %if.then49
  %and62 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then61.if.end65_crit_edge, label %if.then64

if.then61.if.end65_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sa11x0_dma_complete(ptr noundef %dev_id, ptr noundef nonnull %38)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then61.if.end65_crit_edge
  %and66 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sa11x0_dma_complete(ptr noundef %dev_id, ptr noundef nonnull %38)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge, %if.then49.if.end70_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call54) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end70 ], [ 1, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sa11x0_dma_complete(ptr nocapture noundef %p, ptr noundef %c) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txd_done = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %txd_done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txd_done, align 4
  %sg_done = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %sg_done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_done, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sg_done, align 4
  %sglen = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %5)
  %cmp = icmp eq i32 %inc, %5
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %entry
  %cyclic = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cyclic, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i = icmp slt i32 %11, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !192

do.body2.i.i:                                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !193
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then1
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %completed_cookie.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_complete, %do.end.i)) #11
          to label %if.then.i [label %do.end.i], !srcloc !187

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %17, ptr noundef nonnull @.str.31, ptr noundef %1, i32 noundef %11) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %19, ptr noundef %desc_completed.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node.i, ptr %19, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #11
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %24 = ptrtoint ptr %sg_done to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sg_done, align 4
  %txd_load = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 5
  %25 = ptrtoint ptr %txd_load to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %txd_load, align 4
  %27 = ptrtoint ptr %txd_done to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %txd_done, align 4
  %tobool5.not = icmp eq ptr %26, null
  br i1 %tobool5.not, label %if.then6, label %vchan_cookie_complete.exit.if.end14_crit_edge

vchan_cookie_complete.exit.if.end14_crit_edge:    ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then6:                                         ; preds = %vchan_cookie_complete.exit
  %dev = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %p, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %29, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i28, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i28:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %29, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %task) #11
  br label %if.end14

if.else:                                          ; preds = %if.then
  %period = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %period, align 4
  %rem = urem i32 %inc, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then9, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.else
  %chan.i29 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %chan.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan.i29, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %cyclic.i, align 4
  %state.i.i30 = getelementptr inbounds %struct.virt_dma_chan, ptr %33, i32 0, i32 1, i32 1
  %call.i.i31 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %call.i.i31, 0
  br i1 %tobool.not.i.i32, label %if.then.i.i34, label %if.then9.if.end11_crit_edge

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then.i.i34:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %task.i33 = getelementptr inbounds %struct.virt_dma_chan, ptr %33, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i33) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then.i.i34, %if.then9.if.end11_crit_edge, %if.else.if.end11_crit_edge
  %35 = ptrtoint ptr %sg_done to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sg_done, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.then.i28, %if.then6.if.end14_crit_edge, %vchan_cookie_complete.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call fastcc void @sa11x0_dma_start_sg(ptr noundef %p, ptr noundef %c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa11x0_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %node = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #11
  %10 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %head.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %head.i, ptr %10, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %13 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %14, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_device_config(ptr noundef %chan, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ddar1 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %ddar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ddar1, align 4
  %and = and i32 %1, 241
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #11
  %and2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_addr, align 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %5 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_addr, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %width.0.in = phi ptr [ %src_addr_width, %if.then ], [ %dst_addr_width, %if.else ]
  %maxburst.0.in = phi ptr [ %src_maxburst, %if.then ], [ %dst_maxburst, %if.else ]
  %8 = ptrtoint ptr %maxburst.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %maxburst.0 = load i32, ptr %maxburst.0.in, align 4
  %9 = ptrtoint ptr %width.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %width.0 = load i32, ptr %width.0.in, align 4
  %width.0.off = add i32 %width.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %width.0.off)
  %switch = icmp ult i32 %width.0.off, 2
  br i1 %switch, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %10 = zext i32 %maxburst.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %maxburst.0, label %lor.lhs.false.cleanup_crit_edge [
    i32 4, label %lor.lhs.false.if.end8_crit_edge
    i32 8, label %lor.lhs.false.if.end8_crit_edge52
  ]

lor.lhs.false.if.end8_crit_edge52:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge52
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %width.0)
  %cmp9 = icmp eq i32 %width.0, 2
  %or = or i32 %and, 8
  %spec.select = select i1 %cmp9, i32 %or, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %maxburst.0)
  %cmp12 = icmp eq i32 %maxburst.0, 8
  %or14 = or i32 %spec.select, 4
  %ddar.1 = select i1 %cmp12, i32 %or14, i32 %spec.select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_device_config.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_device_config, %do.end)) #11
          to label %if.then21 [label %do.end], !srcloc !187

if.then21:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_device_config.__UNIQUE_ID_ddebug254, ptr noundef %14, ptr noundef nonnull @.str.41, ptr noundef %chan, ptr noundef nonnull %addr, i32 noundef %width.0, i32 noundef %maxburst.0) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end8
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %and25 = and i32 %16, -268435456
  %or26 = or i32 %and25, %ddar.1
  %and27 = shl i32 %16, 6
  %shl = and i32 %and27, 268435200
  %or28 = or i32 %or26, %shl
  %17 = ptrtoint ptr %ddar1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or28, ptr %ddar1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_device_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_device_pause.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_device_pause, %do.body7)) #11
          to label %if.then [label %do.body7], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_device_pause.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef %chan) #11
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %status = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp16 = icmp eq i32 %5, 1
  br i1 %cmp16, label %if.then18, label %do.body7.if.end28_crit_edge

do.body7.if.end28_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then18:                                        ; preds = %do.body7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %status, align 4
  %phy = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %if.else, label %do.body22

do.body22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #11, !srcloc !186
  br label %if.end28

if.else:                                          ; preds = %if.then18
  %lock25 = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock25) #11
  %node = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock25) #11
  br label %if.end28

if.end28:                                         ; preds = %list_del_init.exit, %do.body22, %do.body7.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_device_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_device_resume.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_device_resume, %do.body7)) #11
          to label %if.then [label %do.body7], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_device_resume.__UNIQUE_ID_ddebug256, ptr noundef %3, ptr noundef nonnull @.str.45, ptr noundef %chan) #11
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %status = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp16 = icmp eq i32 %5, 2
  br i1 %cmp16, label %if.then18, label %do.body7.if.end33_crit_edge

do.body7.if.end33_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then18:                                        ; preds = %do.body7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %status, align 4
  %phy = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %if.else, label %do.body22

do.body22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #11, !srcloc !186
  br label %if.end33

if.else:                                          ; preds = %if.then18
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %11 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i.not = icmp eq ptr %12, %desc_issued
  br i1 %cmp.i.not, label %if.else.if.end33_crit_edge, label %if.then28

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %if.else
  %lock29 = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock29) #11
  %node = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3
  %chan_pending = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %14, ptr noundef %chan_pending) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then28.list_add_tail.exit_crit_edge

if.then28.list_add_tail.exit_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node, ptr %prev.i, align 4
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chan_pending, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then28.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock29) #11
  br label %if.end33

if.end33:                                         ; preds = %list_add_tail.exit, %if.else.if.end33_crit_edge, %do.body22, %do.body7.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_device_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_device_terminate_all, %do.body7)) #11
          to label %if.then [label %do.body7], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug257, ptr noundef %6, ptr noundef nonnull @.str.47, ptr noundef %chan) #11
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %7 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %8, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %do.body7.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

do.body7.list_splice_tail_init.exit.i_crit_edge:  ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
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

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %do.body7.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %18, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
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
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %27 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %28, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
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
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %37 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %38, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
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
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %47 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %48, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
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
  %phy = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 1
  %57 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy, align 4
  %tobool17.not = icmp eq ptr %58, null
  br i1 %tobool17.not, label %vchan_get_all_descriptors.exit.if.end63_crit_edge, label %do.body19

vchan_get_all_descriptors.exit.if.end63_crit_edge: ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.body19:                                        ; preds = %vchan_get_all_descriptors.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_device_terminate_all, %do.body39)) #11
          to label %if.then33 [label %do.body39], !srcloc !187

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %dev35 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %59 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev35, align 4
  %num = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug258, ptr noundef %60, ptr noundef nonnull @.str.48, i32 noundef %62) #11
  br label %do.body39

do.body39:                                        ; preds = %if.then33, %do.body19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  call void @arm_heavy_mb() #11
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %58, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2063597568) #11, !srcloc !186
  %txd_load = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %58, i32 0, i32 5
  %65 = ptrtoint ptr %txd_load to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %txd_load, align 4
  %tobool42.not = icmp eq ptr %66, null
  br i1 %tobool42.not, label %do.body39.if.end51_crit_edge, label %if.then43

do.body39.if.end51_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then43:                                        ; preds = %do.body39
  %txd_done = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %58, i32 0, i32 7
  %67 = ptrtoint ptr %txd_done to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %txd_done, align 4
  %cmp45.not = icmp eq ptr %66, %68
  br i1 %cmp45.not, label %if.then43.if.end49_crit_edge, label %if.then47

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %if.then43
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %70, ptr noundef nonnull %head) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then47.if.end49_crit_edge

if.then47.if.end49_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end.i.i:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %node, ptr %2, align 4
  %72 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %head, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %66, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %node, ptr %70, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end.i.i, %if.then47.if.end49_crit_edge, %if.then43.if.end49_crit_edge
  %75 = ptrtoint ptr %txd_load to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %txd_load, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %do.body39.if.end51_crit_edge
  %txd_done52 = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %58, i32 0, i32 7
  %76 = ptrtoint ptr %txd_done52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %txd_done52, align 4
  %tobool53.not = icmp eq ptr %77, null
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %if.then54

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then54:                                        ; preds = %if.end51
  %node57 = getelementptr inbounds %struct.virt_dma_desc, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %2, align 4
  %call.i.i95 = call zeroext i1 @__list_add_valid(ptr noundef %node57, ptr noundef %79, ptr noundef nonnull %head) #11
  br i1 %call.i.i95, label %if.end.i.i97, label %if.then54.list_add_tail.exit98_crit_edge

if.then54.list_add_tail.exit98_crit_edge:         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit98

if.end.i.i97:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %node57, ptr %2, align 4
  %81 = ptrtoint ptr %node57 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %head, ptr %node57, align 4
  %prev3.i.i96 = getelementptr inbounds %struct.virt_dma_desc, ptr %77, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %prev3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i96, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %node57, ptr %79, align 4
  br label %list_add_tail.exit98

list_add_tail.exit98:                             ; preds = %if.end.i.i97, %if.then54.list_add_tail.exit98_crit_edge
  %84 = ptrtoint ptr %txd_done52 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %txd_done52, align 4
  br label %if.end59

if.end59:                                         ; preds = %list_add_tail.exit98, %if.end51.if.end59_crit_edge
  %85 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %phy, align 4
  %lock61 = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock61) #11
  %vchan = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %58, i32 0, i32 3
  %86 = ptrtoint ptr %vchan to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %vchan, align 4
  call void @_raw_spin_unlock(ptr noundef %lock61) #11
  %state.i = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 3, i32 1
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end59.if.end63_crit_edge

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 3
  call void @__tasklet_schedule(ptr noundef %task) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then.i, %if.end59.if.end63_crit_edge, %vchan_get_all_descriptors.exit.if.end63_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #11
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef %state) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  br i1 %tobool.not.i, label %if.then4, label %do.body6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %phy = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %call14 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %call14, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  br label %if.end171

if.else:                                          ; preds = %do.body6
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %if.else.if.end171_crit_edge, label %if.else21

if.else.if.end171_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.else21:                                        ; preds = %if.else
  %txd_done = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %txd_done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txd_done, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.else21.if.else30_crit_edge, label %land.lhs.true

if.else21.if.else30_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else30

land.lhs.true:                                    ; preds = %if.else21
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cookie)
  %cmp26 = icmp eq i32 %19, %cookie
  br i1 %cmp26, label %land.lhs.true.if.then46_crit_edge, label %land.lhs.true.if.else30_crit_edge

land.lhs.true.if.else30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else30

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

if.else30:                                        ; preds = %land.lhs.true.if.else30_crit_edge, %if.else21.if.else30_crit_edge
  %txd_load = getelementptr inbounds %struct.sa11x0_dma_phy, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %txd_load to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txd_load, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.else30.if.end43_crit_edge, label %land.lhs.true32

if.else30.if.end43_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true32:                                  ; preds = %if.else30
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cookie)
  %cmp37 = icmp eq i32 %23, %cookie
  br i1 %cmp37, label %land.lhs.true32.if.then46_crit_edge, label %land.lhs.true32.if.end43_crit_edge

land.lhs.true32.if.end43_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true32.if.then46_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

if.end43:                                         ; preds = %land.lhs.true32.if.end43_crit_edge, %if.else30.if.end43_crit_edge
  %status44 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 2
  %24 = ptrtoint ptr %status44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status44, align 4
  br label %if.end171

if.then46:                                        ; preds = %land.lhs.true32.if.then46_crit_edge, %land.lhs.true.if.then46_crit_edge
  %txd.0.ph = phi ptr [ %21, %land.lhs.true32.if.then46_crit_edge ], [ %17, %land.lhs.true.if.then46_crit_edge ]
  %status44280 = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 2
  %26 = ptrtoint ptr %status44280 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status44280, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #11
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %13, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !189
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %and.i = and i32 %31, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16
  %and1.i = and i32 %31, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and1.i)
  %cmp2.i = icmp eq i32 %and1.i, 128
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  %reg.0.i = select i1 %or.cond.i, i32 16, i32 24
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %13, align 4
  %add.ptr5.i = getelementptr i8, ptr %33, i32 %reg.0.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #11, !srcloc !189
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tx_status, %do.end58)) #11
          to label %if.then55 [label %do.end58], !srcloc !187

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug243, ptr noundef %38, ptr noundef nonnull @.str.50, ptr noundef nonnull %addr) #11
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %if.then46
  %sglen = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 5
  %39 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp59296.not = icmp eq i32 %40, 0
  br i1 %cmp59296.not, label %do.end58.for.end_crit_edge, label %do.body61.lr.ph

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body61.lr.ph:                                  ; preds = %do.end58
  %dev77 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  br label %do.body61

do.body61:                                        ; preds = %for.inc.do.body61_crit_edge, %do.body61.lr.ph
  %i.0297 = phi i32 [ 0, %do.body61.lr.ph ], [ %inc129, %for.inc.do.body61_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tx_status, %do.end83)) #11
          to label %if.then75 [label %do.end83], !srcloc !187

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev77, align 4
  %arrayidx = getelementptr %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 6, i32 %i.0297
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %len = getelementptr %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 6, i32 %i.0297, i32 1
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug244, ptr noundef %42, ptr noundef nonnull @.str.51, i32 noundef %i.0297, i32 noundef %44, i32 noundef %46) #11
  br label %do.end83

do.end83:                                         ; preds = %if.then75, %do.body61
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr, align 4
  %arrayidx85 = getelementptr %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 6, i32 %i.0297
  %49 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp87.not = icmp ugt i32 %50, %48
  br i1 %cmp87.not, label %do.end83.for.inc_crit_edge, label %land.lhs.true89

do.end83.for.inc_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true89:                                  ; preds = %do.end83
  %len95 = getelementptr %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 6, i32 %i.0297, i32 1
  %51 = ptrtoint ptr %len95 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len95, align 4
  %add = add i32 %52, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add)
  %cmp96 = icmp ult i32 %48, %add
  br i1 %cmp96, label %if.then98, label %land.lhs.true89.for.inc_crit_edge

land.lhs.true89.for.inc_crit_edge:                ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then98:                                        ; preds = %land.lhs.true89
  %sub.neg = sub i32 %50, %48
  %sub106 = add i32 %52, %sub.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tx_status, %do.end126)) #11
          to label %if.then121 [label %do.end126], !srcloc !187

if.then121:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev77, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug245, ptr noundef %54, ptr noundef nonnull @.str.52, i32 noundef %i.0297, i32 noundef %sub106) #11
  br label %do.end126

do.end126:                                        ; preds = %if.then121, %if.then98
  %inc = add nuw i32 %i.0297, 1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true89.for.inc_crit_edge, %do.end83.for.inc_crit_edge
  %inc129 = add nuw i32 %i.0297, 1
  %55 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sglen, align 4
  %cmp59 = icmp ult i32 %inc129, %56
  br i1 %cmp59, label %for.inc.do.body61_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.do.body61_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end126, %do.end58.for.end_crit_edge
  %i.1 = phi i32 [ %inc, %do.end126 ], [ 0, %do.end58.for.end_crit_edge ], [ %inc129, %for.inc.for.end_crit_edge ]
  %bytes.0 = phi i32 [ %sub106, %do.end126 ], [ 0, %do.end58.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %57 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %58)
  %cmp132299 = icmp ult i32 %i.1, %58
  br i1 %cmp132299, label %do.body135.lr.ph, label %for.end.for.end167_crit_edge

for.end.for.end167_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end167

do.body135.lr.ph:                                 ; preds = %for.end
  %dev151 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  br label %do.body135

do.body135:                                       ; preds = %do.end160.do.body135_crit_edge, %do.body135.lr.ph
  %bytes.1302 = phi i32 [ %bytes.0, %do.body135.lr.ph ], [ %add164, %do.end160.do.body135_crit_edge ]
  %i.2300 = phi i32 [ %i.1, %do.body135.lr.ph ], [ %inc166, %do.end160.do.body135_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tx_status, %do.end160)) #11
          to label %if.then149 [label %do.end160], !srcloc !187

if.then149:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev151, align 4
  %arrayidx153 = getelementptr %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 6, i32 %i.2300
  %61 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx153, align 4
  %len157 = getelementptr %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 6, i32 %i.2300, i32 1
  %63 = ptrtoint ptr %len157 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len157, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug246, ptr noundef %60, ptr noundef nonnull @.str.53, i32 noundef %i.2300, i32 noundef %62, i32 noundef %64) #11
  br label %do.end160

do.end160:                                        ; preds = %if.then149, %do.body135
  %len163 = getelementptr %struct.sa11x0_dma_desc, ptr %txd.0.ph, i32 0, i32 6, i32 %i.2300, i32 1
  %65 = ptrtoint ptr %len163 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len163, align 4
  %add164 = add i32 %66, %bytes.1302
  %inc166 = add nuw i32 %i.2300, 1
  %67 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sglen, align 4
  %cmp132 = icmp ult i32 %inc166, %68
  br i1 %cmp132, label %do.end160.do.body135_crit_edge, label %do.end160.for.end167_crit_edge

do.end160.for.end167_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end167

do.end160.do.body135_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body135

for.end167:                                       ; preds = %do.end160.for.end167_crit_edge, %for.end.for.end167_crit_edge
  %bytes.1.lcssa = phi i32 [ %bytes.0, %for.end.for.end167_crit_edge ], [ %add164, %do.end160.for.end167_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  br label %if.end171

if.end171:                                        ; preds = %for.end167, %if.end43, %if.else.if.end171_crit_edge, %if.then16
  %.sink = phi i32 [ %15, %if.then16 ], [ 0, %if.else.if.end171_crit_edge ], [ %bytes.1.lcssa, %for.end167 ], [ 0, %if.end43 ]
  %ret.0 = phi i32 [ 1, %if.then16 ], [ 1, %if.else.if.end171_crit_edge ], [ %27, %for.end167 ], [ %25, %if.end43 ]
  %residue20 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %69 = ptrtoint ptr %residue20 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink, ptr %residue20, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_tx_status, %cleanup)) #11
          to label %if.then188 [label %cleanup], !srcloc !187

if.then188:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  %dev190 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %70 = ptrtoint ptr %dev190 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev190, align 4
  %residue191 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %72 = ptrtoint ptr %residue191 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %residue191, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug247, ptr noundef %71, ptr noundef nonnull @.str.54, i32 noundef %73) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then188, %if.end171, %if.then4, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %ret.0, %if.then188 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ], [ %ret.0, %if.end171 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa11x0_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %phy = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 1
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then9, label %if.then.if.end50_crit_edge

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then9:                                         ; preds = %if.then
  %lock10 = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock10) #11
  %node = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %node, align 4
  %cmp.i.not = icmp eq ptr %17, %node
  br i1 %cmp.i.not, label %if.then13, label %if.then9.if.end26_crit_edge

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then13:                                        ; preds = %if.then9
  %chan_pending = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %19, ptr noundef %chan_pending) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_add_tail.exit_crit_edge

if.then13.list_add_tail.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node, ptr %prev.i, align 4
  %21 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %chan_pending, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sa11x0_dma_chan, ptr %chan, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then13.list_add_tail.exit_crit_edge
  %state.i = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_add_tail.exit.tasklet_schedule.exit_crit_edge

list_add_tail.exit.tasklet_schedule.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %task) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %list_add_tail.exit.tasklet_schedule.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_issue_pending, %if.end26)) #11
          to label %if.then22 [label %if.end26], !srcloc !187

if.then22:                                        ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug248, ptr noundef %25, ptr noundef nonnull @.str.56, ptr noundef %chan) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %tasklet_schedule.exit, %if.then9.if.end26_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock10) #11
  br label %if.end50

do.body29:                                        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sa11x0_dma_issue_pending, %if.end50)) #11
          to label %if.then43 [label %if.end50], !srcloc !187

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %dev45 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug249, ptr noundef %27, ptr noundef nonnull @.str.57, ptr noundef %chan) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %do.body29, %if.end26, %if.then.if.end50_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa11x0_dma_free_desc(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %if.end75.for.body_crit_edge, %entry
  %pch.0111 = phi i32 [ 0, %entry ], [ %inc, %if.end75.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !189
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 50331648) #11, !srcloc !186
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !189
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %if.end

if.end:                                           ; preds = %do.body, %for.body.if.end_crit_edge
  %dcsr.0 = phi i32 [ %11, %do.body ], [ %5, %for.body.if.end_crit_edge ]
  %and9 = and i32 %5, 3
  %and10 = and i32 %dcsr.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15 = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #11, !srcloc !189
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %dbs = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 8
  %16 = ptrtoint ptr %dbs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dbs, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %add.ptr21 = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #11, !srcloc !189
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %dbt = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 9
  %21 = ptrtoint ptr %dbt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dbt, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #11, !srcloc !189
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %arrayidx31 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx31, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %add.ptr34 = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #11, !srcloc !189
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %and39 = shl i32 %dcsr.0, 2
  %31 = and i32 %and39, 64
  %and41 = lshr i32 %dcsr.0, 2
  %32 = and i32 %and41, 16
  %or = or i32 %31, %32
  br label %if.end75

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr47 = getelementptr i8, ptr %13, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #11, !srcloc !189
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %dbs50 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 8
  %35 = ptrtoint ptr %dbs50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dbs50, align 4
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %add.ptr54 = getelementptr i8, ptr %37, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #11, !srcloc !189
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %dbt57 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 9
  %40 = ptrtoint ptr %dbt57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dbt57, align 4
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %add.ptr61 = getelementptr i8, ptr %42, i32 24
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #11, !srcloc !189
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %arrayidx65 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 8, i32 1
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx65, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %add.ptr68 = getelementptr i8, ptr %47, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #11, !srcloc !189
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %and73 = and i32 %dcsr.0, 80
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then12
  %.sink = phi i32 [ %49, %if.else ], [ %30, %if.then12 ]
  %or.pn = phi i32 [ %and73, %if.else ], [ %or, %if.then12 ]
  %50 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 9, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %50, align 4
  %saved_dcsr.0 = or i32 %or.pn, %and9
  %dcsr76 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.0111, i32 10
  %52 = ptrtoint ptr %dcsr76 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %saved_dcsr.0, ptr %dcsr76, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !199
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %add.ptr81 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 1342177280) #11, !srcloc !186
  %inc = add nuw nsw i32 %pch.0111, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %if.end75.for.body_crit_edge

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa11x0_dma_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %pch.079 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !189
  %5 = and i32 %4, -788529152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !188

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1052, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %txd_done = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079, i32 7
  %6 = ptrtoint ptr %txd_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txd_done, align 4
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %if.end29, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end29:                                         ; preds = %if.end
  %txd_load = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079, i32 5
  %8 = ptrtoint ptr %txd_load to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txd_load, align 4
  %tobool30.not = icmp eq ptr %9, null
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end29.if.end32_crit_edge

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end29.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %txd.078 = phi ptr [ %9, %if.end29.if.end32_crit_edge ], [ %7, %if.end.if.end32_crit_edge ]
  %ddar = getelementptr inbounds %struct.sa11x0_dma_desc, ptr %txd.078, i32 0, i32 1
  %10 = ptrtoint ptr %ddar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ddar, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !186
  %dbs = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079, i32 8
  %15 = ptrtoint ptr %dbs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dbs, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %17) #11, !srcloc !186
  %dbt = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079, i32 9
  %20 = ptrtoint ptr %dbt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dbt, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %add.ptr40 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %22) #11, !srcloc !186
  %arrayidx42 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079, i32 8, i32 1
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx42, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %add.ptr44 = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %27) #11, !srcloc !186
  %arrayidx46 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx46, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %add.ptr48 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %32) #11, !srcloc !186
  %dcsr49 = getelementptr %struct.sa11x0_dma_dev, ptr %1, i32 0, i32 5, i32 %pch.079, i32 10
  %35 = ptrtoint ptr %dcsr49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dcsr49, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %add.ptr51 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %37) #11, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end29.cleanup_crit_edge
  %inc = add nuw nsw i32 %pch.079, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_sa11x0_dma__259_1091_sa11x0_dma_init4, !1, !"__initcall__kmod_sa11x0_dma__259_1091_sa11x0_dma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/sa11x0-dma.c", i32 1091, i32 1}
!2 = !{ptr @__exitcall_sa11x0_dma_exit, !3, !"__exitcall_sa11x0_dma_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/sa11x0-dma.c", i32 1097, i32 1}
!4 = !{ptr @__UNIQUE_ID_author260, !5, !"__UNIQUE_ID_author260", i1 false, i1 false}
!5 = !{!"../drivers/dma/sa11x0-dma.c", i32 1099, i32 1}
!6 = !{ptr @__UNIQUE_ID_description261, !7, !"__UNIQUE_ID_description261", i1 false, i1 false}
!7 = !{!"../drivers/dma/sa11x0-dma.c", i32 1100, i32 1}
!8 = !{ptr @__UNIQUE_ID_file262, !9, !"__UNIQUE_ID_file262", i1 false, i1 false}
!9 = !{!"../drivers/dma/sa11x0-dma.c", i32 1101, i32 1}
!10 = !{ptr @__UNIQUE_ID_license263, !9, !"__UNIQUE_ID_license263", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias264, !12, !"__UNIQUE_ID_alias264", i1 false, i1 false}
!12 = !{!"../drivers/dma/sa11x0-dma.c", i32 1102, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma/sa11x0-dma.c", i32 1080, i32 11}
!15 = !{ptr @sa11x0_dma_driver, !16, !"sa11x0_dma_driver", i1 false, i1 false}
!16 = !{!"../drivers/dma/sa11x0-dma.c", i32 1078, i32 31}
!17 = !{ptr @sa11x0_dma_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/dma/sa11x0-dma.c", i32 918, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/sa11x0-dma.c", i32 966, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sa11x0_dma_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sa11x0_dma_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/sa11x0-dma.c", i32 821, i32 4}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/sa11x0-dma.c", i32 821, i32 17}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/sa11x0-dma.c", i32 821, i32 23}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/sa11x0-dma.c", i32 822, i32 17}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/sa11x0-dma.c", i32 822, i32 23}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/sa11x0-dma.c", i32 823, i32 4}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/sa11x0-dma.c", i32 823, i32 24}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/sa11x0-dma.c", i32 824, i32 24}
!44 = !{ptr @sa11x0_dma_map, !45, !"sa11x0_dma_map", i1 false, i1 false}
!45 = !{!"../drivers/dma/sa11x0-dma.c", i32 820, i32 35}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/sa11x0-dma.c", i32 333, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug239, !47, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/sa11x0-dma.c", i32 342, i32 5}
!53 = !{ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug240, !52, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/sa11x0-dma.c", i32 366, i32 4}
!56 = !{ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug241, !55, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/sa11x0-dma.c", i32 384, i32 2}
!59 = !{ptr @sa11x0_dma_tasklet.__UNIQUE_ID_ddebug242, !58, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/sa11x0-dma.c", i32 154, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sa11x0_dma_start_desc.__UNIQUE_ID_ddebug236, !61, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/sa11x0-dma.c", i32 216, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sa11x0_dma_start_sg.__UNIQUE_ID_ddebug237, !65, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/sa11x0-dma.c", i32 263, i32 2}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sa11x0_dma_irq.__UNIQUE_ID_ddebug238, !69, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/sa11x0-dma.c", i32 266, i32 3}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sa11x0_dma_irq._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sa11x0_dma_irq._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !78, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/sa11x0-dma.c", i32 534, i32 3}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sa11x0_dma_prep_slave_sg._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sa11x0_dma_prep_slave_sg._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/sa11x0-dma.c", i32 550, i32 4}
!89 = !{ptr @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug250, !88, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/sa11x0-dma.c", i32 558, i32 3}
!92 = !{ptr @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug251, !91, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/sa11x0-dma.c", i32 598, i32 2}
!95 = !{ptr @sa11x0_dma_prep_slave_sg.__UNIQUE_ID_ddebug252, !94, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/sa11x0-dma.c", i32 614, i32 3}
!98 = !{ptr @sa11x0_dma_prep_dma_cyclic._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @sa11x0_dma_prep_dma_cyclic._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @sa11x0_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug253, !101, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!101 = !{!"../drivers/dma/sa11x0-dma.c", i32 628, i32 3}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/sa11x0-dma.c", i32 855, i32 4}
!104 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sa11x0_dma_init_dmadev._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @sa11x0_dma_init_dmadev._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/sa11x0-dma.c", i32 692, i32 2}
!109 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sa11x0_dma_device_config.__UNIQUE_ID_ddebug254, !108, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/sa11x0-dma.c", i32 707, i32 2}
!113 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @sa11x0_dma_device_pause.__UNIQUE_ID_ddebug255, !112, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/sa11x0-dma.c", i32 733, i32 2}
!117 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @sa11x0_dma_device_resume.__UNIQUE_ID_ddebug256, !116, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/sa11x0-dma.c", i32 760, i32 2}
!121 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug257, !120, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma/sa11x0-dma.c", i32 767, i32 3}
!125 = !{ptr @sa11x0_dma_device_terminate_all.__UNIQUE_ID_ddebug258, !124, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/sa11x0-dma.c", i32 462, i32 4}
!128 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug243, !127, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/dma/sa11x0-dma.c", i32 465, i32 5}
!132 = !{ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug244, !131, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/sa11x0-dma.c", i32 473, i32 6}
!135 = !{ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug245, !134, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/sa11x0-dma.c", i32 481, i32 5}
!138 = !{ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug246, !137, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/dma/sa11x0-dma.c", i32 490, i32 2}
!141 = !{ptr @sa11x0_dma_tx_status.__UNIQUE_ID_ddebug247, !140, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/sa11x0-dma.c", i32 513, i32 5}
!144 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug248, !143, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/dma/sa11x0-dma.c", i32 518, i32 3}
!148 = !{ptr @sa11x0_dma_issue_pending.__UNIQUE_ID_ddebug249, !147, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/dma/sa11x0-dma.c", i32 802, i32 2}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/sa11x0-dma.c", i32 803, i32 2}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/dma/sa11x0-dma.c", i32 804, i32 2}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dma/sa11x0-dma.c", i32 805, i32 2}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/dma/sa11x0-dma.c", i32 806, i32 2}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/dma/sa11x0-dma.c", i32 807, i32 2}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/dma/sa11x0-dma.c", i32 810, i32 2}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/dma/sa11x0-dma.c", i32 811, i32 2}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/dma/sa11x0-dma.c", i32 812, i32 2}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/dma/sa11x0-dma.c", i32 813, i32 2}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/dma/sa11x0-dma.c", i32 814, i32 2}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/dma/sa11x0-dma.c", i32 815, i32 2}
!173 = !{ptr @chan_desc, !174, !"chan_desc", i1 false, i1 false}
!174 = !{!"../drivers/dma/sa11x0-dma.c", i32 801, i32 45}
!175 = !{ptr @sa11x0_dma_pm_ops, !176, !"sa11x0_dma_pm_ops", i1 false, i1 false}
!176 = !{!"../drivers/dma/sa11x0-dma.c", i32 1074, i32 32}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 6292705}
!187 = !{i64 2148258202, i64 2148258207, i64 2148258220, i64 2148258264, i64 2148258298, i64 2148258319}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 6293123}
!190 = !{i8 0, i8 2}
!191 = !{i64 2154243873}
!192 = !{!"branch_weights", i32 1, i32 2000}
!193 = !{i64 2154183914, i64 2154184401, i64 2154183951, i64 2154184007, i64 2154184041, i64 2154184065, i64 2154184106, i64 2154184127, i64 2154184155, i64 2154184189}
!194 = !{i64 2154316763}
!195 = !{i64 2154319840}
!196 = !{i64 2154325444}
!197 = !{i64 2154185414}
!198 = !{i64 2154339717}
!199 = !{i64 2154343121}
