; ModuleID = '/llk/IR_all_yes/drivers/dma/sun4i-dma.c_pt.bc'
source_filename = "../drivers/dma/sun4i-dma.c"
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
%struct.sun4i_dma_dev = type { [1 x i32], %struct.dma_device, ptr, ptr, ptr, ptr, i32, %struct.spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sun4i_dma_pchan = type { ptr, ptr, i32 }
%struct.sun4i_dma_vchan = type { %struct.virt_dma_chan, %struct.dma_slave_config, ptr, ptr, ptr, i8, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.sun4i_dma_contract = type { %struct.virt_dma_desc, %struct.list_head, %struct.list_head, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.sun4i_dma_promise = type { i32, i32, i32, i32, i32, %struct.list_head }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_sun4i_dma__245_1284_sun4i_dma_driver_init6 = internal global ptr @sun4i_dma_driver_init, section ".initcall6.init", align 4
@sun4i_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_dma_probe, ptr @sun4i_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_dma_driver_exit = internal global ptr @sun4i_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description246 = internal constant [68 x i8] c"sun4i_dma.description=Allwinner A10 Dedicated DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [54 x i8] c"sun4i_dma.author=Emilio L\C3\B3pez <emilio@elopez.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [37 x i8] c"sun4i_dma.file=drivers/dma/sun4i-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [22 x i8] c"sun4i_dma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-dma\00", [22 x i8] zeroinitializer }, align 32
@sun4i_dma_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun4i_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No clock specified\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_dma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/dma/sun4i-dma.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_dma_probe._entry_ptr = internal global ptr @sun4i_dma_probe._entry, section ".printk_index", align 4
@sun4i_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@sun4i_dma_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vchan->vc.lock\00", [16 x i8] zeroinitializer }, align 32
@sun4i_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't enable the clock\0A\00", [37 x i8] zeroinitializer }, align 32
@sun4i_dma_probe._entry_ptr.11 = internal global ptr @sun4i_dma_probe._entry.9, section ".printk_index", align 4
@sun4i_dma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot request IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@sun4i_dma_probe._entry_ptr.14 = internal global ptr @sun4i_dma_probe._entry.12, section ".printk_index", align 4
@sun4i_dma_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1232, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register DMA engine device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun4i_dma_probe._entry_ptr.18 = internal global ptr @sun4i_dma_probe._entry.15, section ".printk_index", align 4
@sun4i_dma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_dma_controller_register failed\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_dma_probe._entry_ptr.21 = internal global ptr @sun4i_dma_probe._entry.19, section ".printk_index", align 4
@sun4i_dma_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 1, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i_dma\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Successfully probed SUN4I_DMA\0A\00", [33 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__execute_vchan_pending.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__execute_vchan_pending\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"processing something to this endpoint already\0A\00", [49 x i8] zeroinitializer }, align 32
@__execute_vchan_pending.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No pending contract found\00", [38 x i8] zeroinitializer }, align 32
@__execute_vchan_pending.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Empty contract found and marked complete\00", [55 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.28, ptr @.str.29, ptr @.str.30, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid DMA direction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun4i_dma_prep_slave_sg\00", [40 x i8] zeroinitializer }, align 32
@sun4i_dma_prep_slave_sg._entry_ptr = internal global ptr @sun4i_dma_prep_slave_sg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@generate_ndma_promise.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"generate_ndma_promise\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"src burst %d, dst burst %d, src buswidth %d, dst buswidth %d\00", [35 x i8] zeroinitializer }, align 32
@sun4i_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.35, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sun4i_dma_prep_dma_cyclic\00", [38 x i8] zeroinitializer }, align 32
@sun4i_dma_prep_dma_cyclic._entry_ptr = internal global ptr @sun4i_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"sun4i_dma_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1275, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1279, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"sun4i_dma_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1269, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1145, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1150, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1205, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1212, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1226, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1232, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1239, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1243, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 340, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 350, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 361, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 101, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 790, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 453, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [27 x i8] c"../drivers/dma/sun4i-dma.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 675, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_sun4i_dma_driver_exit, ptr @__initcall__kmod_sun4i_dma__245_1284_sun4i_dma_driver_init6, ptr @sun4i_dma_driver_exit, ptr @sun4i_dma_prep_dma_cyclic._entry, ptr @sun4i_dma_prep_dma_cyclic._entry_ptr, ptr @sun4i_dma_prep_slave_sg._entry, ptr @sun4i_dma_prep_slave_sg._entry_ptr, ptr @sun4i_dma_probe._entry, ptr @sun4i_dma_probe._entry.12, ptr @sun4i_dma_probe._entry.15, ptr @sun4i_dma_probe._entry.19, ptr @sun4i_dma_probe._entry.9, ptr @sun4i_dma_probe._entry_ptr, ptr @sun4i_dma_probe._entry_ptr.11, ptr @sun4i_dma_probe._entry_ptr.14, ptr @sun4i_dma_probe._entry_ptr.18, ptr @sun4i_dma_probe._entry_ptr.21, ptr @sun4i_dma_driver, ptr @.str, ptr @sun4i_dma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sun4i_dma_probe.__key, ptr @.str.6, ptr @sun4i_dma_probe.__key.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_dma_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_dma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 432, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #8
  %base = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call16, ptr %clk, align 4
  %cmp.i251 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sun4i_dma_probe.__key, i16 noundef signext 3) #8
  %slave = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1
  %cap_mask = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  %channels = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %channels, ptr %prev.i, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 29
  %11 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sun4i_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 49
  %12 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun4i_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 50
  %13 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sun4i_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 39
  %14 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sun4i_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 30
  %15 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sun4i_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 40
  %16 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sun4i_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 44
  %17 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sun4i_dma_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 47
  %18 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sun4i_dma_terminate_all, ptr %device_terminate_all, align 4
  %copy_align = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 10
  %19 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %copy_align, align 4
  %src_addr_widths = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 19
  %20 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 22, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 20
  %21 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 22, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 21
  %22 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 26
  %23 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %residue_granularity, align 4
  %dev52 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 1, i32 15
  %24 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %dev52, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #8
  %pchans = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %pchans to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i, ptr %pchans, align 4
  %call5.i.i252 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 19344, i32 noundef 3520) #8
  %vchans = getelementptr inbounds %struct.sun4i_dma_dev, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %vchans to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i252, ptr %vchans, align 4
  %tobool58.not = icmp eq ptr %call5.i.i252, null
  br i1 %tobool58.not, label %if.end23.cleanup_crit_edge, label %lor.lhs.false

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end23
  %27 = ptrtoint ptr %pchans to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pchans, align 4
  %tobool60.not = icmp eq ptr %28, null
  br i1 %tobool60.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond83.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond83.preheader:                             ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 256
  %31 = ptrtoint ptr %pchans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pchans, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %32, align 4
  %34 = load ptr, ptr %base, align 4
  %add.ptr.1 = getelementptr i8, ptr %34, i32 288
  %35 = load ptr, ptr %pchans, align 4
  %arrayidx.1 = getelementptr %struct.sun4i_dma_pchan, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.1, ptr %arrayidx.1, align 4
  %37 = load ptr, ptr %base, align 4
  %add.ptr.2 = getelementptr i8, ptr %37, i32 320
  %38 = load ptr, ptr %pchans, align 4
  %arrayidx.2 = getelementptr %struct.sun4i_dma_pchan, ptr %38, i32 2
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.2, ptr %arrayidx.2, align 4
  %40 = load ptr, ptr %base, align 4
  %add.ptr.3 = getelementptr i8, ptr %40, i32 352
  %41 = load ptr, ptr %pchans, align 4
  %arrayidx.3 = getelementptr %struct.sun4i_dma_pchan, ptr %41, i32 3
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.3, ptr %arrayidx.3, align 4
  %43 = load ptr, ptr %base, align 4
  %add.ptr.4 = getelementptr i8, ptr %43, i32 384
  %44 = load ptr, ptr %pchans, align 4
  %arrayidx.4 = getelementptr %struct.sun4i_dma_pchan, ptr %44, i32 4
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.4, ptr %arrayidx.4, align 4
  %46 = load ptr, ptr %base, align 4
  %add.ptr.5 = getelementptr i8, ptr %46, i32 416
  %47 = load ptr, ptr %pchans, align 4
  %arrayidx.5 = getelementptr %struct.sun4i_dma_pchan, ptr %47, i32 5
  %48 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.5, ptr %arrayidx.5, align 4
  %49 = load ptr, ptr %base, align 4
  %add.ptr.6 = getelementptr i8, ptr %49, i32 448
  %50 = load ptr, ptr %pchans, align 4
  %arrayidx.6 = getelementptr %struct.sun4i_dma_pchan, ptr %50, i32 6
  %51 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.6, ptr %arrayidx.6, align 4
  %52 = load ptr, ptr %base, align 4
  %add.ptr.7 = getelementptr i8, ptr %52, i32 480
  %53 = load ptr, ptr %pchans, align 4
  %arrayidx.7 = getelementptr %struct.sun4i_dma_pchan, ptr %53, i32 7
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.7, ptr %arrayidx.7, align 4
  %55 = load ptr, ptr %base, align 4
  %add.ptr73 = getelementptr i8, ptr %55, i32 768
  %56 = load ptr, ptr %pchans, align 4
  %arrayidx75 = getelementptr %struct.sun4i_dma_pchan, ptr %56, i32 8
  %57 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr73, ptr %arrayidx75, align 4
  %58 = load ptr, ptr %pchans, align 4
  %is_dedicated = getelementptr %struct.sun4i_dma_pchan, ptr %58, i32 8, i32 2
  %59 = ptrtoint ptr %is_dedicated to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %is_dedicated, align 4
  %60 = load ptr, ptr %base, align 4
  %add.ptr73.1 = getelementptr i8, ptr %60, i32 800
  %61 = load ptr, ptr %pchans, align 4
  %arrayidx75.1 = getelementptr %struct.sun4i_dma_pchan, ptr %61, i32 9
  %62 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr73.1, ptr %arrayidx75.1, align 4
  %63 = load ptr, ptr %pchans, align 4
  %is_dedicated.1 = getelementptr %struct.sun4i_dma_pchan, ptr %63, i32 9, i32 2
  %64 = ptrtoint ptr %is_dedicated.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %is_dedicated.1, align 4
  %65 = load ptr, ptr %base, align 4
  %add.ptr73.2 = getelementptr i8, ptr %65, i32 832
  %66 = load ptr, ptr %pchans, align 4
  %arrayidx75.2 = getelementptr %struct.sun4i_dma_pchan, ptr %66, i32 10
  %67 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr73.2, ptr %arrayidx75.2, align 4
  %68 = load ptr, ptr %pchans, align 4
  %is_dedicated.2 = getelementptr %struct.sun4i_dma_pchan, ptr %68, i32 10, i32 2
  %69 = ptrtoint ptr %is_dedicated.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %is_dedicated.2, align 4
  %70 = load ptr, ptr %base, align 4
  %add.ptr73.3 = getelementptr i8, ptr %70, i32 864
  %71 = load ptr, ptr %pchans, align 4
  %arrayidx75.3 = getelementptr %struct.sun4i_dma_pchan, ptr %71, i32 11
  %72 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr73.3, ptr %arrayidx75.3, align 4
  %73 = load ptr, ptr %pchans, align 4
  %is_dedicated.3 = getelementptr %struct.sun4i_dma_pchan, ptr %73, i32 11, i32 2
  %74 = ptrtoint ptr %is_dedicated.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %is_dedicated.3, align 4
  %75 = load ptr, ptr %base, align 4
  %add.ptr73.4 = getelementptr i8, ptr %75, i32 896
  %76 = load ptr, ptr %pchans, align 4
  %arrayidx75.4 = getelementptr %struct.sun4i_dma_pchan, ptr %76, i32 12
  %77 = ptrtoint ptr %arrayidx75.4 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr73.4, ptr %arrayidx75.4, align 4
  %78 = load ptr, ptr %pchans, align 4
  %is_dedicated.4 = getelementptr %struct.sun4i_dma_pchan, ptr %78, i32 12, i32 2
  %79 = ptrtoint ptr %is_dedicated.4 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %is_dedicated.4, align 4
  %80 = load ptr, ptr %base, align 4
  %add.ptr73.5 = getelementptr i8, ptr %80, i32 928
  %81 = load ptr, ptr %pchans, align 4
  %arrayidx75.5 = getelementptr %struct.sun4i_dma_pchan, ptr %81, i32 13
  %82 = ptrtoint ptr %arrayidx75.5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr73.5, ptr %arrayidx75.5, align 4
  %83 = load ptr, ptr %pchans, align 4
  %is_dedicated.5 = getelementptr %struct.sun4i_dma_pchan, ptr %83, i32 13, i32 2
  %84 = ptrtoint ptr %is_dedicated.5 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %is_dedicated.5, align 4
  %85 = load ptr, ptr %base, align 4
  %add.ptr73.6 = getelementptr i8, ptr %85, i32 960
  %86 = load ptr, ptr %pchans, align 4
  %arrayidx75.6 = getelementptr %struct.sun4i_dma_pchan, ptr %86, i32 14
  %87 = ptrtoint ptr %arrayidx75.6 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr73.6, ptr %arrayidx75.6, align 4
  %88 = load ptr, ptr %pchans, align 4
  %is_dedicated.6 = getelementptr %struct.sun4i_dma_pchan, ptr %88, i32 14, i32 2
  %89 = ptrtoint ptr %is_dedicated.6 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %is_dedicated.6, align 4
  %90 = load ptr, ptr %base, align 4
  %add.ptr73.7 = getelementptr i8, ptr %90, i32 992
  %91 = load ptr, ptr %pchans, align 4
  %arrayidx75.7 = getelementptr %struct.sun4i_dma_pchan, ptr %91, i32 15
  %92 = ptrtoint ptr %arrayidx75.7 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr73.7, ptr %arrayidx75.7, align 4
  %93 = load ptr, ptr %pchans, align 4
  %is_dedicated.7 = getelementptr %struct.sun4i_dma_pchan, ptr %93, i32 15, i32 2
  %94 = ptrtoint ptr %is_dedicated.7 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %is_dedicated.7, align 4
  br label %for.body85

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %for.cond83.preheader
  %i.2267 = phi i32 [ 0, %for.cond83.preheader ], [ %inc97, %for.body85.for.body85_crit_edge ]
  %95 = ptrtoint ptr %vchans to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vchans, align 4
  %arrayidx87 = getelementptr %struct.sun4i_dma_vchan, ptr %96, i32 %i.2267
  %lock89 = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx87, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock89, ptr noundef nonnull @.str.8, ptr noundef nonnull @sun4i_dma_probe.__key.7, i16 noundef signext 3) #8
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx87, i32 0, i32 2
  %97 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @sun4i_dma_free_contract, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %arrayidx87, ptr noundef %slave) #8
  %inc97 = add nuw nsw i32 %i.2267, 1
  %exitcond.not = icmp eq i32 %inc97, 78
  br i1 %exitcond.not, label %for.end98, label %for.body85.for.body85_crit_edge

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85

for.end98:                                        ; preds = %for.body85
  %98 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk, align 4
  %call.i253 = tail call i32 @clk_prepare(ptr noundef %99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool.not.i = icmp eq i32 %call.i253, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end98.do.end105_crit_edge

for.end98.do.end105_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

if.end.i:                                         ; preds = %for.end98
  %call1.i = tail call i32 @clk_enable(ptr noundef %99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body108, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %99) #8
  br label %do.end105

do.end105:                                        ; preds = %if.then3.i, %for.end98.do.end105_crit_edge
  %retval.0.i254.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i253, %for.end98.do.end105_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

do.body108:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr117 = getelementptr i8, ptr %103, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 -1) #8, !srcloc !89
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %106 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i255 = icmp eq ptr %107, null
  br i1 %tobool.not.i255, label %if.end.i256, label %do.body108.dev_name.exit_crit_edge

do.body108.dev_name.exit_crit_edge:               ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i256:                                      ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i256, %do.body108.dev_name.exit_crit_edge
  %retval.0.i257 = phi ptr [ %109, %if.end.i256 ], [ %107, %do.body108.dev_name.exit_crit_edge ]
  %call.i258 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %105, ptr noundef nonnull @sun4i_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i257, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool123.not = icmp eq i32 %call.i258, 0
  br i1 %tobool123.not, label %if.end129, label %do.end127

do.end127:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %err_clk_disable

if.end129:                                        ; preds = %dev_name.exit
  %call131 = tail call i32 @dma_async_device_register(ptr noundef %slave) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end138, label %do.end136

do.end136:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %err_clk_disable

if.end138:                                        ; preds = %if.end129
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %110 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %of_node, align 8
  %call140 = tail call i32 @of_dma_controller_register(ptr noundef %111, ptr noundef nonnull @sun4i_dma_of_xlate, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %do.body148, label %do.end145

do.end145:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  tail call void @dma_async_device_unregister(ptr noundef %slave) #8
  br label %err_clk_disable

do.body148:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_dma_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_dma_probe, %cleanup)) #8
          to label %if.then154 [label %cleanup], !srcloc !91

if.then154:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_dma_probe.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup

err_clk_disable:                                  ; preds = %do.end145, %do.end136, %do.end127
  %ret.0 = phi i32 [ %call.i258, %do.end127 ], [ %call131, %do.end136 ], [ %call140, %do.end145 ]
  %112 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %113) #8
  tail call void @clk_unprepare(ptr noundef %113) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.then154, %do.body148, %do.end105, %lor.lhs.false.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %6, %do.end ], [ %retval.0.i254.ph, %do.end105 ], [ %ret.0, %err_clk_disable ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ 0, %if.then154 ], [ 0, %do.body148 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %5) #8
  %slave = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %slave) #8
  %clk = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
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
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pchan1 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %pchan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchan1, align 4
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body3_crit_edge

if.then.i.i.do.body3_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge100 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge100, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body3_crit_edge

if.else.i.i.do.body3_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body3:                                         ; preds = %if.else.i.i.do.body3_crit_edge, %if.then.i.i.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call10 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.body3.dma_set_residue.exit_crit_edge, label %if.end13

do.body3.dma_set_residue.exit_crit_edge:          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

if.end13:                                         ; preds = %do.body3
  %demands = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call10, i32 0, i32 1
  %10 = ptrtoint ptr %demands to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn102 = load ptr, ptr %demands, align 4
  %cmp17.not103 = icmp eq ptr %.pn102, %demands
  br i1 %cmp17.not103, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %.pn105 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn102, %if.end13.for.body_crit_edge ]
  %bytes.0104 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %len = getelementptr i8, ptr %.pn105, i32 -4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %add = add i32 %12, %bytes.0104
  %13 = ptrtoint ptr %.pn105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn105, align 4
  %cmp17.not = icmp eq ptr %.pn, %demands
  br i1 %cmp17.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end13.for.end_crit_edge
  %bytes.0.lcssa = phi i32 [ 0, %if.end13.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %14 = ptrtoint ptr %demands to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %demands, align 4
  %cmp31.not = icmp eq ptr %15, %demands
  %add.ptr35 = getelementptr i8, ptr %15, i32 -20
  %spec.select = select i1 %cmp31.not, ptr null, ptr %add.ptr35
  %tobool36.not = icmp eq ptr %spec.select, null
  %tobool37.not = icmp eq ptr %1, null
  %or.cond92 = select i1 %tobool36.not, i1 true, i1 %tobool37.not
  br i1 %or.cond92, label %for.end.dma_set_residue.exit_crit_edge, label %if.then38

for.end.dma_set_residue.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

if.then38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %len39 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %spec.select, i32 0, i32 4
  %16 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len39, align 4
  %sub = sub i32 %bytes.0.lcssa, %17
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr50 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %add54 = add i32 %21, %sub
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then38, %for.end.dma_set_residue.exit_crit_edge, %do.body3.dma_set_residue.exit_crit_edge
  %bytes.1 = phi i32 [ %bytes.0.lcssa, %for.end.dma_set_residue.exit_crit_edge ], [ 0, %do.body3.dma_set_residue.exit_crit_edge ], [ %add54, %if.then38 ]
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %22 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bytes.1, ptr %residue1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i99.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i99 = zext i1 %retval.0.i.i99.shrunk to i32
  ret i32 %retval.0.i.i99
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %if.then

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__execute_vchan_pending(ptr noundef %add.ptr.i, ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun4i_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1
  %tobool.not = icmp eq ptr %sgl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2304, i32 noundef 136) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %demands.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %demands.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %demands.i, ptr %demands.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %demands.i, ptr %prev.i.i, align 8
  %completed_demands.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %completed_demands.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %completed_demands.i, ptr %completed_demands.i, align 4
  %prev.i4.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %completed_demands.i, ptr %prev.i4.i, align 8
  %is_dedicated = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 6
  %9 = ptrtoint ptr %is_dedicated to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_dedicated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  %. = select i1 %tobool9.not, i32 22, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then12, label %if.else20

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %endpoint = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %endpoint, align 4
  %conv = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, %.
  %or16 = or i32 %or, 2097152
  br label %if.end32

if.else20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %shl22 = shl nuw nsw i32 %., 16
  %endpoint26 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %endpoint26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %endpoint26, align 4
  %conv27 = zext i8 %14 to i32
  %or28 = or i32 %shl22, %conv27
  %or31 = or i32 %or28, 32
  br label %if.end32

if.end32:                                         ; preds = %if.else20, %if.then12
  %endpoints.0 = phi i32 [ %or16, %if.then12 ], [ %or31, %if.else20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp33109.not = icmp eq i32 %sg_len, 0
  br i1 %cmp33109.not, label %if.end32.for.end_crit_edge, label %for.body.lr.ph

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  %dst_addr = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 2
  %src_addr = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 1
  %src_maxburst.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 5
  %dst_maxburst.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 6
  %src_addr_width.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 3
  %dst_addr_width.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %sg.0110 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call55, %list_add_tail.exit.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0110, i32 0, i32 3
  %srcaddr.0.in = select i1 %cmp, ptr %dma_address, ptr %src_addr
  %dstaddr.0.in = select i1 %cmp, ptr %dst_addr, ptr %dma_address
  %15 = ptrtoint ptr %dstaddr.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %dstaddr.0 = load i32, ptr %dstaddr.0.in, align 4
  %16 = ptrtoint ptr %srcaddr.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %srcaddr.0 = load i32, ptr %srcaddr.0.in, align 4
  %17 = ptrtoint ptr %is_dedicated to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %is_dedicated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool42.not = icmp eq i32 %18, 0
  %dma_length46 = getelementptr inbounds %struct.scatterlist, ptr %sg.0110, i32 0, i32 4
  %19 = ptrtoint ptr %dma_length46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length46, align 4
  br i1 %tobool42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i99 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2304, i32 noundef 28) #12
  %tobool.not.i100 = icmp eq ptr %call7.i.i.i99, null
  br i1 %tobool.not.i100, label %if.then43.cleanup_crit_edge, label %if.end.i101

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i101:                                      ; preds = %if.then43
  %src1.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i99, i32 0, i32 2
  %22 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %srcaddr.0, ptr %src1.i, align 8
  %dst.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i99, i32 0, i32 3
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dstaddr.0, ptr %dst.i, align 4
  %len2.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i99, i32 0, i32 4
  %24 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %len2.i, align 8
  %25 = ptrtoint ptr %call7.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2147450880, ptr %call7.i.i.i99, align 8
  %26 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_maxburst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp.i.i = icmp ugt i32 %27, 8
  br i1 %cmp.i.i, label %if.end.i101.fail.i_crit_edge, label %if.end5.i

if.end.i101.fail.i_crit_edge:                     ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end5.i:                                        ; preds = %if.end.i101
  %28 = shl nuw nsw i32 %27, 5
  %shl.i = and i32 %28, 2147450752
  %or.i = or i32 %shl.i, -2147450880
  %29 = ptrtoint ptr %call7.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %call7.i.i.i99, align 8
  %30 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_maxburst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %cmp.i1.i = icmp ugt i32 %31, 8
  br i1 %cmp.i1.i, label %if.end5.i.fail.i_crit_edge, label %if.end10.i

if.end5.i.fail.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end10.i:                                       ; preds = %if.end5.i
  %32 = shl nuw nsw i32 %31, 21
  %shl11.i = and i32 %32, 2139095040
  %or13.i = or i32 %shl11.i, %or.i
  %33 = ptrtoint ptr %call7.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or13.i, ptr %call7.i.i.i99, align 8
  %34 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %src_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp.i4.i = icmp ugt i32 %35, 4
  br i1 %cmp.i4.i, label %if.end10.i.fail.i_crit_edge, label %if.end17.i

if.end10.i.fail.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end17.i:                                       ; preds = %if.end10.i
  %36 = shl nuw nsw i32 %35, 8
  %shl18.i = and i32 %36, 2147450368
  %or20.i = or i32 %shl18.i, %or13.i
  %37 = ptrtoint ptr %call7.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or20.i, ptr %call7.i.i.i99, align 8
  %38 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dst_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i7.i = icmp ugt i32 %39, 4
  br i1 %cmp.i7.i, label %if.end17.i.fail.i_crit_edge, label %if.end48.thread105

if.end17.i.fail.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end48.thread105:                               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = shl nuw nsw i32 %39, 24
  %shl25.i = and i32 %40, 2113929216
  %or27.i = or i32 %shl25.i, %or20.i
  %41 = ptrtoint ptr %call7.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or27.i, ptr %call7.i.i.i99, align 8
  br label %if.end51

fail.i:                                           ; preds = %if.end17.i.fail.i_crit_edge, %if.end10.i.fail.i_crit_edge, %if.end5.i.fail.i_crit_edge, %if.end.i101.fail.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i99) #8
  br label %cleanup

if.end48:                                         ; preds = %for.body
  %call47 = tail call fastcc ptr @generate_ndma_promise(ptr noundef %chan, i32 noundef %srcaddr.0, i32 noundef %dstaddr.0, i32 noundef %20, ptr noundef %cfg, i32 noundef %dir)
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %if.end48.cleanup_crit_edge, label %if.end48.if.end51_crit_edge

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end48.if.end51_crit_edge, %if.end48.thread105
  %promise.0108 = phi ptr [ %call7.i.i.i99, %if.end48.thread105 ], [ %call47, %if.end48.if.end51_crit_edge ]
  %42 = ptrtoint ptr %promise.0108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %promise.0108, align 4
  %or53 = or i32 %43, %endpoints.0
  store i32 %or53, ptr %promise.0108, align 4
  %para54 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0108, i32 0, i32 1
  %44 = ptrtoint ptr %para54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 65537, ptr %para54, align 4
  %list = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0108, i32 0, i32 5
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %46, ptr noundef %demands.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.list_add_tail.exit_crit_edge

if.end51.list_add_tail.exit_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list, ptr %prev.i.i, align 8
  %48 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %demands.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0108, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end51.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.0112, 1
  %call55 = tail call ptr @sg_next(ptr noundef %sg.0110) #8
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end32.for.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i102 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i102, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %57, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %node.i, ptr %prev.i.i102, align 4
  %59 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i, align 8
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %node.i, ptr %57, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end48.cleanup_crit_edge, %fail.i, %if.then43.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %fail.i ], [ null, %if.end48.cleanup_crit_edge ], [ null, %if.then43.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun4i_dma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2304, i32 noundef 136) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %demands.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %demands.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %demands.i, ptr %demands.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %demands.i, ptr %prev.i.i, align 8
  %completed_demands.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %completed_demands.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %completed_demands.i, ptr %completed_demands.i, align 4
  %prev.i4.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %completed_demands.i, ptr %prev.i4.i, align 8
  %src_addr_width = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %dst_maxburst, align 4
  %is_dedicated = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 6
  %9 = ptrtoint ptr %is_dedicated to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_dedicated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2304, i32 noundef 28) #12
  %tobool.not.i42 = icmp eq ptr %call7.i.i.i41, null
  br i1 %tobool.not.i42, label %if.then3.if.then8_crit_edge, label %if.end.i43

if.then3.if.then8_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i43:                                       ; preds = %if.then3
  %src1.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i41, i32 0, i32 2
  %12 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %src, ptr %src1.i, align 8
  %dst.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i41, i32 0, i32 3
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dest, ptr %dst.i, align 4
  %len2.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i41, i32 0, i32 4
  %14 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %len2.i, align 8
  %15 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2147450880, ptr %call7.i.i.i41, align 8
  %16 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp.i.i = icmp ugt i32 %17, 8
  br i1 %cmp.i.i, label %if.end.i43.fail.i_crit_edge, label %if.end5.i

if.end.i43.fail.i_crit_edge:                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end5.i:                                        ; preds = %if.end.i43
  %18 = shl nuw nsw i32 %17, 5
  %shl.i = and i32 %18, 2147450752
  %or.i = or i32 %shl.i, -2147450880
  %19 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %call7.i.i.i41, align 8
  %20 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp.i1.i = icmp ugt i32 %21, 8
  br i1 %cmp.i1.i, label %if.end5.i.fail.i_crit_edge, label %if.end10.i

if.end5.i.fail.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end10.i:                                       ; preds = %if.end5.i
  %22 = shl nuw nsw i32 %21, 21
  %shl11.i = and i32 %22, 2139095040
  %or13.i = or i32 %shl11.i, %or.i
  %23 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or13.i, ptr %call7.i.i.i41, align 8
  %24 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.i4.i = icmp ugt i32 %25, 4
  br i1 %cmp.i4.i, label %if.end10.i.fail.i_crit_edge, label %if.end17.i

if.end10.i.fail.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end17.i:                                       ; preds = %if.end10.i
  %26 = shl nuw nsw i32 %25, 8
  %shl18.i = and i32 %26, 2147450368
  %or20.i = or i32 %shl18.i, %or13.i
  %27 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or20.i, ptr %call7.i.i.i41, align 8
  %28 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp.i7.i = icmp ugt i32 %29, 4
  br i1 %cmp.i7.i, label %if.end17.i.fail.i_crit_edge, label %if.end6.thread48

if.end17.i.fail.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end6.thread48:                                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = shl nuw nsw i32 %29, 24
  %shl25.i = and i32 %30, 2113929216
  %or27.i = or i32 %shl25.i, %or20.i
  %31 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or27.i, ptr %call7.i.i.i41, align 8
  br label %if.end9

fail.i:                                           ; preds = %if.end17.i.fail.i_crit_edge, %if.end10.i.fail.i_crit_edge, %if.end5.i.fail.i_crit_edge, %if.end.i43.fail.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i41) #8
  br label %if.then8

if.end6:                                          ; preds = %if.end
  %call5 = tail call fastcc ptr @generate_ndma_promise(ptr noundef %chan, i32 noundef %src, i32 noundef %dest, i32 noundef %len, ptr noundef %cfg, i32 noundef 0)
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end6.if.then8_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %fail.i, %if.then3.if.then8_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end6.thread48
  %promise.051 = phi ptr [ %call7.i.i.i41, %if.end6.thread48 ], [ %call5, %if.end6.if.end9_crit_edge ]
  %32 = ptrtoint ptr %is_dedicated to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %is_dedicated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool11.not = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %promise.051 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %promise.051, align 4
  %. = select i1 %tobool11.not, i32 1441814, i32 65537
  %or16 = or i32 %35, %.
  store i32 %or16, ptr %promise.051, align 4
  %list = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.051, i32 0, i32 5
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %37, ptr noundef %demands.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list, ptr %prev.i.i, align 8
  %39 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %demands.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.051, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i44 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i44, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %48, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add_tail.exit.vchan_tx_prep.exit_crit_edge

list_add_tail.exit.vchan_tx_prep.exit_crit_edge:  ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %node.i, ptr %prev.i.i44, align 4
  %50 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i, align 8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %node.i, ptr %48, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %list_add_tail.exit.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %if.then8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun4i_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf, i32 noundef %len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1
  %0 = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2304, i32 noundef 136) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %demands.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %demands.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %demands.i, ptr %demands.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %demands.i, ptr %prev.i.i, align 8
  %completed_demands.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %completed_demands.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %completed_demands.i, ptr %completed_demands.i, align 4
  %prev.i4.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %completed_demands.i, ptr %prev.i4.i, align 8
  %is_cyclic = getelementptr inbounds %struct.sun4i_dma_contract, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %is_cyclic to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %is_cyclic, align 4
  %is_dedicated = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 6
  %10 = ptrtoint ptr %is_dedicated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_dedicated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %. = select i1 %tobool6.not, i32 22, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then9, label %if.else17

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dst_addr = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_addr, align 4
  %endpoint = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %endpoint, align 4
  %conv = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, %.
  %or13 = or i32 %or, 2097152
  br label %if.end29

if.else17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_addr, align 4
  %shl19 = shl nuw nsw i32 %., 16
  %endpoint23 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 5
  %18 = ptrtoint ptr %endpoint23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %endpoint23, align 4
  %conv24 = zext i8 %19 to i32
  %or25 = or i32 %shl19, %conv24
  %or28 = or i32 %or25, 32
  br label %if.end29

if.end29:                                         ; preds = %if.else17, %if.then9
  %src.0 = phi i32 [ %buf, %if.then9 ], [ %17, %if.else17 ]
  %dest.0 = phi i32 [ %13, %if.then9 ], [ %buf, %if.else17 ]
  %endpoints.0 = phi i32 [ %or13, %if.then9 ], [ %or28, %if.else17 ]
  %div = udiv i32 %len, %period_len
  %sub = add i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp31119.not = icmp ult i32 %sub, 2
  br i1 %cmp31119.not, label %if.end29.for.end_crit_edge, label %for.body.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %div30108 = lshr i32 %sub, 1
  %mul = shl i32 %period_len, 1
  %src_maxburst.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 5
  %dst_maxburst.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 6
  %src_addr_width.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 3
  %dst_addr_width.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1, i32 4
  %smax = call i32 @llvm.smax.i32(i32 %div30108, i32 1)
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %dest.1121 = phi i32 [ %dest.0, %for.body.lr.ph ], [ %dest.2, %list_add_tail.exit.for.body_crit_edge ]
  %src.1120 = phi i32 [ %src.0, %for.body.lr.ph ], [ %src.2, %list_add_tail.exit.for.body_crit_edge ]
  %mul33 = mul i32 %mul, %i.0122
  %sub34 = sub i32 %len, %mul33
  %20 = tail call i32 @llvm.umin.i32(i32 %sub34, i32 %mul)
  %add41 = add i32 %mul33, %buf
  %src.2 = select i1 %cmp, i32 %add41, i32 %src.1120
  %dest.2 = select i1 %cmp, i32 %dest.1121, i32 %add41
  %21 = ptrtoint ptr %is_dedicated to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %is_dedicated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool46.not = icmp eq i32 %22, 0
  br i1 %tobool46.not, label %if.end51, label %if.then47

if.then47:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2304, i32 noundef 28) #12
  %tobool.not.i110 = icmp eq ptr %call7.i.i.i109, null
  br i1 %tobool.not.i110, label %if.then47.cleanup_crit_edge, label %if.end.i111

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i111:                                      ; preds = %if.then47
  %src1.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i109, i32 0, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %src.2, ptr %src1.i, align 8
  %dst.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i109, i32 0, i32 3
  %25 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dest.2, ptr %dst.i, align 4
  %len2.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i.i109, i32 0, i32 4
  %26 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %len2.i, align 8
  %27 = ptrtoint ptr %call7.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2147450880, ptr %call7.i.i.i109, align 8
  %28 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_maxburst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp.i.i = icmp ugt i32 %29, 8
  br i1 %cmp.i.i, label %if.end.i111.fail.i_crit_edge, label %if.end5.i

if.end.i111.fail.i_crit_edge:                     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end5.i:                                        ; preds = %if.end.i111
  %30 = shl nuw nsw i32 %29, 5
  %shl.i = and i32 %30, 2147450752
  %or.i = or i32 %shl.i, -2147450880
  %31 = ptrtoint ptr %call7.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %call7.i.i.i109, align 8
  %32 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dst_maxburst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp.i1.i = icmp ugt i32 %33, 8
  br i1 %cmp.i1.i, label %if.end5.i.fail.i_crit_edge, label %if.end10.i

if.end5.i.fail.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end10.i:                                       ; preds = %if.end5.i
  %34 = shl nuw nsw i32 %33, 21
  %shl11.i = and i32 %34, 2139095040
  %or13.i = or i32 %shl11.i, %or.i
  %35 = ptrtoint ptr %call7.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or13.i, ptr %call7.i.i.i109, align 8
  %36 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp.i4.i = icmp ugt i32 %37, 4
  br i1 %cmp.i4.i, label %if.end10.i.fail.i_crit_edge, label %if.end17.i

if.end10.i.fail.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end17.i:                                       ; preds = %if.end10.i
  %38 = shl nuw nsw i32 %37, 8
  %shl18.i = and i32 %38, 2147450368
  %or20.i = or i32 %shl18.i, %or13.i
  %39 = ptrtoint ptr %call7.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or20.i, ptr %call7.i.i.i109, align 8
  %40 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp.i7.i = icmp ugt i32 %41, 4
  br i1 %cmp.i7.i, label %if.end17.i.fail.i_crit_edge, label %if.end51.thread115

if.end17.i.fail.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end51.thread115:                               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = shl nuw nsw i32 %41, 24
  %shl25.i = and i32 %42, 2113929216
  %or27.i = or i32 %shl25.i, %or20.i
  %43 = ptrtoint ptr %call7.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or27.i, ptr %call7.i.i.i109, align 8
  br label %if.end54

fail.i:                                           ; preds = %if.end17.i.fail.i_crit_edge, %if.end10.i.fail.i_crit_edge, %if.end5.i.fail.i_crit_edge, %if.end.i111.fail.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i109) #8
  br label %cleanup

if.end51:                                         ; preds = %for.body
  %call50 = tail call fastcc ptr @generate_ndma_promise(ptr noundef %chan, i32 noundef %src.2, i32 noundef %dest.2, i32 noundef %20, ptr noundef %cfg, i32 noundef %dir)
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.end51.cleanup_crit_edge, label %if.end51.if.end54_crit_edge

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end51.if.end54_crit_edge, %if.end51.thread115
  %promise.0118 = phi ptr [ %call7.i.i.i109, %if.end51.thread115 ], [ %call50, %if.end51.if.end54_crit_edge ]
  %44 = ptrtoint ptr %promise.0118 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %promise.0118, align 4
  %or56 = or i32 %45, %endpoints.0
  store i32 %or56, ptr %promise.0118, align 4
  %list = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0118, i32 0, i32 5
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %47, ptr noundef %demands.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end54.list_add_tail.exit_crit_edge

if.end54.list_add_tail.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %list, ptr %prev.i.i, align 8
  %49 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %demands.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0118, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %list, ptr %47, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end54.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end29.for.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i112 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %prev.i.i112 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i112, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %58, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %prev.i.i112 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %node.i, ptr %prev.i.i112, align 4
  %60 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i, align 8
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %node.i, ptr %58, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end51.cleanup_crit_edge, %fail.i, %if.then47.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %fail.i ], [ null, %if.end51.cleanup_crit_edge ], [ null, %if.then47.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_dma_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %cfg, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %pchan2 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %pchan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pchan2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #8
  %4 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %head, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %4, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %7 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %8, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
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
  store ptr %12, ptr %4, align 4
  %16 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %18, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
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
  store ptr %22, ptr %4, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
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
  store ptr %32, ptr %4, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
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
  store ptr %42, ptr %4, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %4, align 4
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
  store ptr %52, ptr %4, align 4
  %56 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %vchan_get_all_descriptors.exit.do.body23_crit_edge, label %if.then

vchan_get_all_descriptors.exit.do.body23_crit_edge: ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

if.then:                                          ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #8
  %pchans.i = getelementptr i8, ptr %1, i32 364
  %59 = ptrtoint ptr %pchans.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pchans.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  %lock.i = getelementptr i8, ptr %1, i32 384
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %base.i = getelementptr i8, ptr %1, i32 372
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !93
  %64 = call i32 @llvm.bswap.i32(i32 %63) #8
  %mul7.i = shl nsw i32 %sub.ptr.div.i, 1
  %shl8.i = shl nuw i32 1, %mul7.i
  %add16.i = or i32 %mul7.i, 1
  %shl17.i = shl nuw i32 1, %add16.i
  %65 = or i32 %shl17.i, %shl8.i
  %66 = xor i32 %65, -1
  %and19.i = and i32 %64, %66
  %67 = call i32 @llvm.bswap.i32(i32 %and19.i) #8
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #8, !srcloc !89
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %70 = ptrtoint ptr %pchans.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pchans.i, align 4
  %sub.ptr.rhs.cast.i59 = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i60 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i59
  %sub.ptr.div.i61 = sdiv exact i32 %sub.ptr.sub.i60, 12
  %call2.i63 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %vchan.i = getelementptr inbounds %struct.sun4i_dma_pchan, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %vchan.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %vchan.i, align 4
  call void @_clear_bit(i32 noundef %sub.ptr.div.i61, ptr noundef %add.ptr.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i63) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then, %vchan_get_all_descriptors.exit.do.body23_crit_edge
  %call32 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %processing = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %chan, i32 0, i32 3
  %73 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %processing, align 4
  %74 = ptrtoint ptr %pchan2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %pchan2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_dma_free_contract(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demands = getelementptr inbounds %struct.sun4i_dma_contract, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %demands to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demands, align 4
  %cmp.not50 = icmp eq ptr %1, %demands
  br i1 %cmp.not50, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in51 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %promise.0 = getelementptr i8, ptr %.pn.in51, i32 -20
  %2 = ptrtoint ptr %.pn.in51 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in51, align 4
  tail call void @kfree(ptr noundef %promise.0) #8
  %cmp.not = icmp eq ptr %.pn, %demands
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %completed_demands = getelementptr inbounds %struct.sun4i_dma_contract, ptr %vd, i32 0, i32 2
  %3 = ptrtoint ptr %completed_demands to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %completed_demands, align 4
  %cmp25.not52 = icmp eq ptr %4, %completed_demands
  br i1 %cmp25.not52, label %for.end.for.end34_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %.pn47.in53 = phi ptr [ %.pn47, %for.body27.for.body27_crit_edge ], [ %4, %for.end.for.body27_crit_edge ]
  %promise.1 = getelementptr i8, ptr %.pn47.in53, i32 -20
  %5 = ptrtoint ptr %.pn47.in53 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn47 = load ptr, ptr %.pn47.in53, align 4
  tail call void @kfree(ptr noundef %promise.1) #8
  %cmp25.not = icmp eq ptr %.pn47, %completed_demands
  br i1 %cmp25.not, label %for.body27.for.end34_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27

for.body27.for.end34_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.end34:                                        ; preds = %for.body27.for.end34_crit_edge, %for.end.for.end34_crit_edge
  tail call void @kfree(ptr noundef %vd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %pendirq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pchans1 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %pchans1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchans1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pendirq) #8
  %base = getelementptr inbounds %struct.sun4i_dma_dev, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !93
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %pendirq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pendirq, align 4
  %lock.i = getelementptr inbounds %struct.sun4i_dma_dev, ptr %dev_id, i32 0, i32 7
  %vchans = getelementptr inbounds %struct.sun4i_dma_dev, ptr %dev_id, i32 0, i32 3
  br label %handle_pending

handle_pending:                                   ; preds = %if.then54.handle_pending_crit_edge, %entry
  %tobool53.not = phi i1 [ false, %entry ], [ true, %if.then54.handle_pending_crit_edge ]
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %pendirq, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2)
  %cmp114 = icmp slt i32 %call2, 32
  br i1 %cmp114, label %handle_pending.for.body_crit_edge, label %handle_pending.for.end_crit_edge

handle_pending.for.end_crit_edge:                 ; preds = %handle_pending
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

handle_pending.for.body_crit_edge:                ; preds = %handle_pending
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %handle_pending.for.body_crit_edge
  %free_room.0119 = phi i32 [ %free_room.2, %for.inc.for.body_crit_edge ], [ 0, %handle_pending.for.body_crit_edge ]
  %bit.0116 = phi i32 [ %call26, %for.inc.for.body_crit_edge ], [ %call2, %handle_pending.for.body_crit_edge ]
  %disableirqs.0115 = phi i32 [ %disableirqs.2, %for.inc.for.body_crit_edge ], [ 0, %handle_pending.for.body_crit_edge ]
  %shr = ashr i32 %bit.0116, 1
  %arrayidx = getelementptr %struct.sun4i_dma_pchan, ptr %1, i32 %shr
  %vchan3 = getelementptr %struct.sun4i_dma_pchan, ptr %1, i32 %shr, i32 1
  %7 = ptrtoint ptr %vchan3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vchan3, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %contract4 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %contract4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %contract4, align 4
  %and = and i32 %bit.0116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else16, label %if.then6

if.then6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %8, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock) #8
  %processing = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %processing to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %processing, align 4
  %list = getelementptr inbounds %struct.sun4i_dma_promise, ptr %12, i32 0, i32 5
  %completed_demands = getelementptr inbounds %struct.sun4i_dma_contract, ptr %10, i32 0, i32 2
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.__list_del_entry.exit.i_crit_edge

if.then6.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %12, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then6.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %10, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %20, ptr noundef %completed_demands) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev.i2.i, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %completed_demands, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %12, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %20, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %is_cyclic = getelementptr inbounds %struct.sun4i_dma_contract, ptr %10, i32 0, i32 3
  %25 = ptrtoint ptr %is_cyclic to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %is_cyclic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not = icmp eq i32 %26, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %list_move_tail.exit
  %demands.i = getelementptr inbounds %struct.sun4i_dma_contract, ptr %10, i32 0, i32 1
  %27 = ptrtoint ptr %demands.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %demands.i, align 4
  %cmp.not.i = icmp eq ptr %28, %demands.i
  %add.ptr.i = getelementptr i8, ptr %28, i32 -20
  %tobool.not15.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not15.i
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.get_next_cyclic_promise.exit_crit_edge

if.then8.get_next_cyclic_promise.exit_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_next_cyclic_promise.exit

if.then.i:                                        ; preds = %if.then8
  %29 = ptrtoint ptr %completed_demands to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %completed_demands, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %completed_demands
  br i1 %cmp.i.not.i.i, label %if.then.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i.list_splice_init.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i2.i, align 4
  %prev3.i.i.i101 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %demands.i, ptr %prev3.i.i.i101, align 4
  %34 = ptrtoint ptr %demands.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %30, ptr %demands.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %28, ptr %32, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %prev6.i.i.i, align 4
  %37 = ptrtoint ptr %completed_demands to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %completed_demands, ptr %completed_demands, align 4
  store ptr %completed_demands, ptr %prev.i2.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i.list_splice_init.exit.i_crit_edge
  %38 = ptrtoint ptr %demands.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %demands.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %39, i32 -20
  br label %get_next_cyclic_promise.exit

get_next_cyclic_promise.exit:                     ; preds = %list_splice_init.exit.i, %if.then8.get_next_cyclic_promise.exit_crit_edge
  %promise.0.i = phi ptr [ %add.ptr.i, %if.then8.get_next_cyclic_promise.exit_crit_edge ], [ %add.ptr8.i, %list_splice_init.exit.i ]
  %40 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %promise.0.i, ptr %processing, align 4
  %is_dedicated.i = getelementptr %struct.sun4i_dma_pchan, ptr %1, i32 %shr, i32 2
  %41 = ptrtoint ptr %is_dedicated.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %is_dedicated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i102 = icmp eq i32 %42, 0
  %src9.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0.i, i32 0, i32 2
  %43 = ptrtoint ptr %src9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %src9.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #8
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %add.ptr11.i = getelementptr i8, ptr %47, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %45) #8
  %dst12.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0.i, i32 0, i32 3
  %48 = ptrtoint ptr %dst12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dst12.i, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #8
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %add.ptr14.i = getelementptr i8, ptr %52, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %50) #8
  %len15.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0.i, i32 0, i32 4
  %53 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len15.i, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #8
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %add.ptr17.i = getelementptr i8, ptr %57, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %55) #8
  br i1 %tobool.not.i102, label %if.else.i, label %if.then.i103

if.then.i103:                                     ; preds = %get_next_cyclic_promise.exit
  call void @__sanitizer_cov_trace_pc() #10
  %para.i = getelementptr inbounds %struct.sun4i_dma_promise, ptr %promise.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %para.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %para.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %add.ptr6.i = getelementptr i8, ptr %62, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %60) #8, !srcloc !89
  %63 = ptrtoint ptr %promise.0.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %promise.0.i, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #8
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #8, !srcloc !89
  br label %configure_pchan.exit

if.else.i:                                        ; preds = %get_next_cyclic_promise.exit
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %promise.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %promise.0.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #8, !srcloc !89
  br label %configure_pchan.exit

configure_pchan.exit:                             ; preds = %if.else.i, %if.then.i103
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 3
  %73 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %10, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %74, i32 0, i32 1, i32 1
  %call.i.i104 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %tobool.not.i.i = icmp eq i32 %call.i.i104, 0
  br i1 %tobool.not.i.i, label %if.then.i.i105, label %configure_pchan.exit.if.end13_crit_edge

configure_pchan.exit.if.end13_crit_edge:          ; preds = %configure_pchan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then.i.i105:                                   ; preds = %configure_pchan.exit
  call void @__sanitizer_cov_trace_pc() #10
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %74, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %task.i) #8
  br label %if.end13

if.else:                                          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %processing, align 4
  %pchan12 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %8, i32 0, i32 2
  %77 = ptrtoint ptr %pchan12 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %pchan12, align 4
  %shl = shl nuw i32 1, %bit.0116
  %or = or i32 %shl, %disableirqs.0115
  %78 = ptrtoint ptr %pchans1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pchans1, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %80 = ptrtoint ptr %vchan3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %vchan3, align 4
  call void @_clear_bit(i32 noundef %sub.ptr.div.i, ptr noundef %dev_id) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then.i.i105, %configure_pchan.exit.if.end13_crit_edge
  %disableirqs.1 = phi i32 [ %or, %if.else ], [ %disableirqs.0115, %configure_pchan.exit.if.end13_crit_edge ], [ %disableirqs.0115, %if.then.i.i105 ]
  %free_room.1 = phi i32 [ 1, %if.else ], [ %free_room.0119, %configure_pchan.exit.if.end13_crit_edge ], [ %free_room.0119, %if.then.i.i105 ]
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %for.inc

if.else16:                                        ; preds = %if.end
  %is_cyclic17 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %10, i32 0, i32 3
  %81 = ptrtoint ptr %is_cyclic17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %is_cyclic17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool18.not = icmp eq i32 %82, 0
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.else16
  %chan.i106 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 3
  %83 = ptrtoint ptr %chan.i106 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chan.i106, align 4
  %cyclic.i107 = getelementptr inbounds %struct.virt_dma_chan, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %cyclic.i107 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %10, ptr %cyclic.i107, align 4
  %state.i.i108 = getelementptr inbounds %struct.virt_dma_chan, ptr %84, i32 0, i32 1, i32 1
  %call.i.i109 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %call.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.then.i.i112, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i.i112:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %task.i111 = getelementptr inbounds %struct.virt_dma_chan, ptr %84, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %task.i111) #8
  br label %for.inc

if.else21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  %shl22 = shl nuw i32 1, %bit.0116
  %or23 = or i32 %shl22, %disableirqs.0115
  br label %for.inc

for.inc:                                          ; preds = %if.else21, %if.then.i.i112, %if.then19.for.inc_crit_edge, %if.end13, %for.body.for.inc_crit_edge
  %disableirqs.2 = phi i32 [ %disableirqs.1, %if.end13 ], [ %or23, %if.else21 ], [ %disableirqs.0115, %for.body.for.inc_crit_edge ], [ %disableirqs.0115, %if.then19.for.inc_crit_edge ], [ %disableirqs.0115, %if.then.i.i112 ]
  %free_room.2 = phi i32 [ %free_room.1, %if.end13 ], [ %free_room.0119, %if.else21 ], [ %free_room.0119, %for.body.for.inc_crit_edge ], [ %free_room.0119, %if.then19.for.inc_crit_edge ], [ %free_room.0119, %if.then.i.i112 ]
  %add = add nsw i32 %bit.0116, 1
  %call26 = call i32 @_find_next_bit_be(ptr noundef nonnull %pendirq, i32 noundef 32, i32 noundef %add) #8
  %cmp = icmp slt i32 %call26, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %handle_pending.for.end_crit_edge
  %disableirqs.0.lcssa = phi i32 [ 0, %handle_pending.for.end_crit_edge ], [ %disableirqs.2, %for.inc.for.end_crit_edge ]
  %free_room.0.lcssa = phi i32 [ 0, %handle_pending.for.end_crit_edge ], [ %free_room.2, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !93
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %neg = xor i32 %disableirqs.0.lcssa, -1
  %and33 = and i32 %89, %neg
  %90 = call i32 @llvm.bswap.i32(i32 %and33)
  %91 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !89
  call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %93 = ptrtoint ptr %pendirq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pendirq, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %97, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %95) #8, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_room.0.lcssa)
  %tobool39.not = icmp eq i32 %free_room.0.lcssa, 0
  br i1 %tobool39.not, label %for.end.if.end52_crit_edge, label %for.end.for.body43_crit_edge

for.end.for.body43_crit_edge:                     ; preds = %for.end
  br label %for.body43

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.end.for.body43_crit_edge
  %i.0121 = phi i32 [ %inc, %for.body43.for.body43_crit_edge ], [ 0, %for.end.for.body43_crit_edge ]
  %98 = ptrtoint ptr %vchans to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vchans, align 4
  %arrayidx44 = getelementptr %struct.sun4i_dma_vchan, ptr %99, i32 %i.0121
  %lock46 = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx44, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock46) #8
  call fastcc void @__execute_vchan_pending(ptr noundef %dev_id, ptr noundef %arrayidx44)
  call void @_raw_spin_unlock(ptr noundef %lock46) #8
  %inc = add nuw nsw i32 %i.0121, 1
  %exitcond.not = icmp eq i32 %inc, 78
  br i1 %exitcond.not, label %for.body43.if.end52_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.body43.if.end52_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %for.body43.if.end52_crit_edge, %for.end.if.end52_crit_edge
  br i1 %tobool53.not, label %if.end52.if.end63_crit_edge, label %if.then54

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then54:                                        ; preds = %if.end52
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr57 = getelementptr i8, ptr %101, i32 4
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #8, !srcloc !93
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %104 = ptrtoint ptr %pendirq to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %pendirq, align 4
  %tobool60.not = icmp eq i32 %102, 0
  br i1 %tobool60.not, label %if.then54.if.end63_crit_edge, label %if.then54.handle_pending_crit_edge

if.then54.handle_pending_crit_edge:               ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_pending

if.then54.if.end63_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %if.then54.if.end63_crit_edge, %if.end52.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pendirq) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun4i_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %conv3 = trunc i32 %5 to i8
  %conv4 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv4)
  %switch = icmp ult i32 %conv4, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp.not = icmp eq i32 %conv4, 0
  %conv = trunc i32 %3 to i8
  %conv11 = and i32 %5, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11)
  %cmp12.not = icmp eq i32 %conv11, 0
  %or.cond42 = select i1 %cmp.not, i1 true, i1 %cmp12.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool14.not = icmp ne i8 %conv, 0
  %or.cond43 = select i1 %tobool14.not, i1 true, i1 %cmp12.not
  %or.cond = select i1 %or.cond42, i1 %or.cond43, i1 false
  br i1 %or.cond, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %slave = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 1
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %slave) #8
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %is_dedicated26 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %is_dedicated26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv4, ptr %is_dedicated26, align 4
  %endpoint27 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %endpoint27 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %endpoint27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end23 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end20.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__execute_vchan_pending(ptr noundef %priv, ptr noundef %vchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !94

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 328, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pchans1.i = getelementptr inbounds %struct.sun4i_dma_dev, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %pchans1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pchans1.i, align 4
  %is_dedicated.i = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %vchan, i32 0, i32 6
  %3 = ptrtoint ptr %is_dedicated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_dedicated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 8
  %.26.i = select i1 %tobool.not.i, i32 8, i32 16
  %lock.i = getelementptr inbounds %struct.sun4i_dma_dev, ptr %priv, i32 0, i32 7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call6.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %priv, i32 noundef %.26.i, i32 noundef %..i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %.26.i)
  %cmp7.i = icmp slt i32 %call6.i, %.26.i
  br i1 %cmp7.i, label %find_and_use_pchan.exit, label %find_and_use_pchan.exit.thread

find_and_use_pchan.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br label %cleanup

find_and_use_pchan.exit:                          ; preds = %if.end
  %arrayidx.i = getelementptr %struct.sun4i_dma_pchan, ptr %2, i32 %call6.i
  %vchan9.i = getelementptr %struct.sun4i_dma_pchan, ptr %2, i32 %call6.i, i32 1
  %5 = ptrtoint ptr %vchan9.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vchan, ptr %vchan9.i, align 4
  tail call void @_set_bit(i32 noundef %call6.i, ptr noundef %priv) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  %tobool25.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool25.not, label %find_and_use_pchan.exit.cleanup_crit_edge, label %if.end27

find_and_use_pchan.exit.cleanup_crit_edge:        ; preds = %find_and_use_pchan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %find_and_use_pchan.exit
  %processing = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %vchan, i32 0, i32 3
  %6 = ptrtoint ptr %processing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %processing, align 4
  %tobool28.not = icmp eq ptr %7, null
  br i1 %tobool28.not, label %do.body49.preheader, label %do.body30

do.body49.preheader:                              ; preds = %if.end27
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 6
  %dev.i12 = getelementptr inbounds %struct.dma_chan, ptr %vchan, i32 0, i32 5
  br label %do.body49

do.body30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__execute_vchan_pending.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__execute_vchan_pending, %release_pchan)) #8
          to label %if.then42 [label %release_pchan], !srcloc !91

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %vchan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__execute_vchan_pending.__UNIQUE_ID_ddebug236, ptr noundef %device.i, ptr noundef nonnull @.str.25) #8
  br label %release_pchan

do.body49:                                        ; preds = %do.cond104.do.body49_crit_edge, %do.body49.preheader
  %10 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %11, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 -108
  %tobool52.not34 = icmp eq ptr %add.ptr.i, null
  %tobool52.not = or i1 %cmp.not.i, %tobool52.not34
  br i1 %tobool52.not, label %do.body54, label %if.end75

do.body54:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__execute_vchan_pending.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__execute_vchan_pending, %release_pchan)) #8
          to label %if.then68 [label %release_pchan], !srcloc !91

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i12, align 4
  %device.i8 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__execute_vchan_pending.__UNIQUE_ID_ddebug237, ptr noundef %device.i8, ptr noundef nonnull @.str.26) #8
  br label %release_pchan

if.end75:                                         ; preds = %do.body49
  %demands = getelementptr i8, ptr %11, i32 8
  %14 = ptrtoint ptr %demands to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %demands, align 4
  %cmp.i.not = icmp eq ptr %15, %demands
  br i1 %cmp.i.not, label %if.then79, label %if.end75.do.cond104_crit_edge

if.end75.do.cond104_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond104

if.then79:                                        ; preds = %if.end75
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then79.list_del.exit_crit_edge

if.then79.list_del.exit_crit_edge:                ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then79.list_del.exit_crit_edge
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i = getelementptr %struct.list_head, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan.i = getelementptr i8, ptr %11, i32 -96
  %24 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan.i, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.i = icmp slt i32 %27, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !94

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !95
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %completed_cookie.i.i, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__execute_vchan_pending, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !91

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  %dev.i9 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %33, ptr noundef nonnull @.str.30, ptr noundef nonnull %add.ptr.i, i32 noundef %27) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 7
  %prev.i.i10 = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i10, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %35, ptr noundef %desc_completed.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %11, ptr %prev.i.i10, align 4
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %desc_completed.i, ptr %11, align 4
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %11, ptr %35, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 1, i32 1
  %call.i.i11 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i.i = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #8
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__execute_vchan_pending.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__execute_vchan_pending, %do.cond104)) #8
          to label %if.then96 [label %do.cond104], !srcloc !91

if.then96:                                        ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i12, align 4
  %device.i13 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__execute_vchan_pending.__UNIQUE_ID_ddebug238, ptr noundef %device.i13, ptr noundef nonnull @.str.27) #8
  br label %do.cond104

do.cond104:                                       ; preds = %if.then96, %vchan_cookie_complete.exit, %if.end75.do.cond104_crit_edge
  %42 = ptrtoint ptr %demands to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %demands, align 4
  %cmp.i14.not = icmp eq ptr %43, %demands
  br i1 %cmp.i14.not, label %do.cond104.do.body49_crit_edge, label %do.end108

do.cond104.do.body49_crit_edge:                   ; preds = %do.cond104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.end108:                                        ; preds = %do.cond104
  %add.ptr = getelementptr i8, ptr %43, i32 -20
  %44 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %processing, align 4
  %tobool112.not = icmp eq ptr %add.ptr, null
  br i1 %tobool112.not, label %do.end108.cleanup_crit_edge, label %if.then113

do.end108.cleanup_crit_edge:                      ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then113:                                       ; preds = %do.end108
  %contract114 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %vchan, i32 0, i32 4
  %45 = ptrtoint ptr %contract114 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i, ptr %contract114, align 4
  %pchan115 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %vchan, i32 0, i32 2
  %46 = ptrtoint ptr %pchan115 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx.i, ptr %pchan115, align 4
  %is_cyclic = getelementptr i8, ptr %11, i32 24
  %47 = ptrtoint ptr %is_cyclic to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %is_cyclic, align 4
  %49 = ptrtoint ptr %pchans1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pchans1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %base.i = getelementptr inbounds %struct.sun4i_dma_dev, ptr %priv, i32 0, i32 4
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !93
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i17 = icmp eq i32 %48, 0
  %mul7.i = shl nsw i32 %sub.ptr.div.i, 1
  %shl8.i = shl nuw i32 1, %mul7.i
  %or.i = or i32 %shl8.i, %54
  %neg.i = xor i32 %shl8.i, -1
  %and.i = and i32 %54, %neg.i
  %reg.0.i = select i1 %tobool.not.i17, i32 %and.i, i32 %or.i
  %add16.i = or i32 %mul7.i, 1
  %shl17.i = shl nuw i32 1, %add16.i
  %or13.i = or i32 %reg.0.i, %shl17.i
  %55 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #8
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %is_dedicated.i18 = getelementptr %struct.sun4i_dma_pchan, ptr %2, i32 %call6.i, i32 2
  %58 = ptrtoint ptr %is_dedicated.i18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %is_dedicated.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i19 = icmp eq i32 %59, 0
  %src9.i = getelementptr i8, ptr %43, i32 -12
  %60 = ptrtoint ptr %src9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %src9.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %62) #8
  %dst12.i = getelementptr i8, ptr %43, i32 -8
  %65 = ptrtoint ptr %dst12.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dst12.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %67) #8
  %len15.i = getelementptr i8, ptr %43, i32 -4
  %70 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len15.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %74, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %72) #8
  br i1 %tobool.not.i19, label %if.else.i, label %if.then.i20

if.then.i20:                                      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  %para.i = getelementptr i8, ptr %43, i32 -16
  %75 = ptrtoint ptr %para.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %para.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %79, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %77) #8, !srcloc !89
  %80 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #8, !srcloc !89
  br label %cleanup

if.else.i:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #8, !srcloc !89
  br label %cleanup

release_pchan:                                    ; preds = %if.then68, %do.body54, %if.then42, %do.body30
  %90 = ptrtoint ptr %pchans1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pchans1.i, align 4
  %sub.ptr.lhs.cast.i22 = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i23 = ptrtoint ptr %91 to i32
  %sub.ptr.sub.i24 = sub i32 %sub.ptr.lhs.cast.i22, %sub.ptr.rhs.cast.i23
  %sub.ptr.div.i25 = sdiv exact i32 %sub.ptr.sub.i24, 12
  %call2.i27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %92 = ptrtoint ptr %vchan9.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %vchan9.i, align 4
  tail call void @_clear_bit(i32 noundef %sub.ptr.div.i25, ptr noundef %priv) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i27) #8
  br label %cleanup

cleanup:                                          ; preds = %release_pchan, %if.else.i, %if.then.i20, %do.end108.cleanup_crit_edge, %find_and_use_pchan.exit.cleanup_crit_edge, %find_and_use_pchan.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @generate_ndma_promise(ptr nocapture noundef readonly %chan, i32 noundef %src, i32 noundef %dest, i32 noundef %len, ptr nocapture noundef %sconfig, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %entry.if.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb11.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb.i:                                          ; preds = %entry
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 4
  %1 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %sw.bb.i.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 6
  %3 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dst_maxburst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 3
  %5 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.i = icmp eq i32 %6, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %2, ptr %src_addr_width.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 5
  %8 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_maxburst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end5.i.if.end_crit_edge

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %4, ptr %src_maxburst.i, align 4
  br label %if.end

sw.bb11.i:                                        ; preds = %entry
  %src_addr_width12.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 3
  %11 = ptrtoint ptr %src_addr_width12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_addr_width12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13.i = icmp eq i32 %12, 0
  br i1 %cmp13.i, label %sw.bb11.i.cleanup_crit_edge, label %lor.lhs.false14.i

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false14.i:                                ; preds = %sw.bb11.i
  %src_maxburst15.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 5
  %13 = ptrtoint ptr %src_maxburst15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_maxburst15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not.i = icmp eq i32 %14, 0
  br i1 %tobool16.not.i, label %lor.lhs.false14.i.cleanup_crit_edge, label %if.end18.i

lor.lhs.false14.i.cleanup_crit_edge:              ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.i:                                       ; preds = %lor.lhs.false14.i
  %dst_addr_width19.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 4
  %15 = ptrtoint ptr %dst_addr_width19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_addr_width19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp20.i = icmp eq i32 %16, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.end18.i.if.end24.i_crit_edge

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dst_addr_width19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %dst_addr_width19.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %dst_maxburst25.i = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 6
  %18 = ptrtoint ptr %dst_maxburst25.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_maxburst25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool26.not.i = icmp eq i32 %19, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end24.i.if.end_crit_edge

if.end24.i.if.end_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dst_maxburst25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %14, ptr %dst_maxburst25.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then27.i, %if.end24.i.if.end_crit_edge, %if.then7.i, %if.end5.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2304, i32 noundef 28) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %src5 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %src5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %src, ptr %src5, align 8
  %dst = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dest, ptr %dst, align 4
  %len6 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %len6, align 8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2147450880, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generate_ndma_promise.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@generate_ndma_promise, %do.end)) #8
          to label %if.then12 [label %do.end], !srcloc !91

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 5
  %28 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 6
  %30 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_maxburst, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 3
  %32 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 4
  %34 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dst_addr_width, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @generate_ndma_promise.__UNIQUE_ID_ddebug239, ptr noundef %device.i, ptr noundef nonnull @.str.34, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end4
  %src_maxburst15 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 5
  %36 = ptrtoint ptr %src_maxburst15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_maxburst15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp.i72 = icmp ugt i32 %37, 8
  br i1 %cmp.i72, label %do.end.fail_crit_edge, label %if.end18

do.end.fail_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end18:                                         ; preds = %do.end
  %38 = shl nuw nsw i32 %37, 5
  %shl = and i32 %38, -128
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call7.i.i, align 8
  %or = or i32 %40, %shl
  store i32 %or, ptr %call7.i.i, align 8
  %dst_maxburst20 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 6
  %41 = ptrtoint ptr %dst_maxburst20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst_maxburst20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp.i74 = icmp ugt i32 %42, 8
  br i1 %cmp.i74, label %if.end18.fail_crit_edge, label %if.end24

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end24:                                         ; preds = %if.end18
  %43 = shl nuw nsw i32 %42, 21
  %shl25 = and i32 %43, -8388608
  %or27 = or i32 %shl25, %or
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or27, ptr %call7.i.i, align 8
  %src_addr_width28 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 3
  %45 = ptrtoint ptr %src_addr_width28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_addr_width28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp.i77 = icmp ugt i32 %46, 4
  br i1 %cmp.i77, label %if.end24.fail_crit_edge, label %if.end32

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end32:                                         ; preds = %if.end24
  %47 = shl nuw nsw i32 %46, 8
  %shl33 = and i32 %47, -512
  %or35 = or i32 %shl33, %or27
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or35, ptr %call7.i.i, align 8
  %dst_addr_width36 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 4
  %49 = ptrtoint ptr %dst_addr_width36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dst_addr_width36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp.i80 = icmp ugt i32 %50, 4
  br i1 %cmp.i80, label %if.end32.fail_crit_edge, label %if.end40

if.end32.fail_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %51 = shl nuw nsw i32 %50, 24
  %shl41 = and i32 %51, -33554432
  %or43 = or i32 %shl41, %or35
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or43, ptr %call7.i.i, align 8
  br label %cleanup

fail:                                             ; preds = %if.end32.fail_crit_edge, %if.end24.fail_crit_edge, %if.end18.fail_crit_edge, %do.end.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end40, %if.end.cleanup_crit_edge, %lor.lhs.false14.i.cleanup_crit_edge, %sw.bb11.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ %call7.i.i, %if.end40 ], [ null, %if.end.cleanup_crit_edge ], [ null, %sw.bb.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %sw.bb11.i.cleanup_crit_edge ], [ null, %lor.lhs.false14.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_sun4i_dma__245_1284_sun4i_dma_driver_init6, !1, !"__initcall__kmod_sun4i_dma__245_1284_sun4i_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/sun4i-dma.c", i32 1284, i32 1}
!2 = !{ptr @__exitcall_sun4i_dma_driver_exit, !1, !"__exitcall_sun4i_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description246, !4, !"__UNIQUE_ID_description246", i1 false, i1 false}
!4 = !{!"../drivers/dma/sun4i-dma.c", i32 1286, i32 1}
!5 = !{ptr @__UNIQUE_ID_author247, !6, !"__UNIQUE_ID_author247", i1 false, i1 false}
!6 = !{!"../drivers/dma/sun4i-dma.c", i32 1287, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../drivers/dma/sun4i-dma.c", i32 1288, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/sun4i-dma.c", i32 1279, i32 12}
!12 = !{ptr @sun4i_dma_driver, !13, !"sun4i_dma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/sun4i-dma.c", i32 1275, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/sun4i-dma.c", i32 1145, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun4i_dma_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun4i_dma_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sun4i_dma_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/dma/sun4i-dma.c", i32 1150, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sun4i_dma_probe.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/dma/sun4i-dma.c", i32 1205, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/sun4i-dma.c", i32 1212, i32 3}
!30 = !{ptr @sun4i_dma_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sun4i_dma_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/sun4i-dma.c", i32 1226, i32 3}
!34 = !{ptr @sun4i_dma_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sun4i_dma_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/sun4i-dma.c", i32 1232, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sun4i_dma_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sun4i_dma_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/sun4i-dma.c", i32 1239, i32 3}
!43 = !{ptr @sun4i_dma_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sun4i_dma_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/sun4i-dma.c", i32 1243, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sun4i_dma_probe.__UNIQUE_ID_ddebug244, !46, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/sun4i-dma.c", i32 340, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__execute_vchan_pending.__UNIQUE_ID_ddebug236, !50, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/sun4i-dma.c", i32 350, i32 4}
!55 = !{ptr @__execute_vchan_pending.__UNIQUE_ID_ddebug237, !54, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/sun4i-dma.c", i32 361, i32 4}
!58 = !{ptr @__execute_vchan_pending.__UNIQUE_ID_ddebug238, !57, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !60, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/sun4i-dma.c", i32 790, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sun4i_dma_prep_slave_sg._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sun4i_dma_prep_slave_sg._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/sun4i-dma.c", i32 453, i32 2}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @generate_ndma_promise.__UNIQUE_ID_ddebug239, !70, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/sun4i-dma.c", i32 675, i32 3}
!75 = !{ptr @sun4i_dma_prep_dma_cyclic._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sun4i_dma_prep_dma_cyclic._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @sun4i_dma_match, !78, !"sun4i_dma_match", i1 false, i1 false}
!78 = !{!"../drivers/dma/sun4i-dma.c", i32 1269, i32 34}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2154448140}
!89 = !{i64 6333084}
!90 = !{i64 2154448532}
!91 = !{i64 2148814973, i64 2148814978, i64 2148814991, i64 2148815035, i64 2148815069, i64 2148815090}
!92 = !{i64 2154331644}
!93 = !{i64 6333502}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2154330144, i64 2154330631, i64 2154330181, i64 2154330237, i64 2154330271, i64 2154330295, i64 2154330336, i64 2154330357, i64 2154330385, i64 2154330419}
