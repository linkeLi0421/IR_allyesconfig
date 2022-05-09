; ModuleID = '/llk/IR_all_yes/drivers/dma/altera-msgdma.c_pt.bc'
source_filename = "../drivers/dma/altera-msgdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.msgdma_device = type { %struct.spinlock, ptr, %struct.tasklet_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, %struct.dma_device, %struct.dma_chan, i32, ptr, i32, %struct.dma_slave_config, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.msgdma_sw_desc = type { %struct.dma_async_tx_descriptor, %struct.msgdma_extended_desc, %struct.list_head, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.msgdma_extended_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_altera_msgdma__245_960_msgdma_driver_init6 = internal global ptr @msgdma_driver_init, section ".initcall6.init", align 4
@msgdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msgdma_probe, ptr @msgdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msgdma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_msgdma_driver_exit = internal global ptr @msgdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias246 = internal constant [43 x i8] c"altera_msgdma.alias=platform:altera-msgdma\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [47 x i8] c"altera_msgdma.description=Altera mSGDMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [47 x i8] c"altera_msgdma.author=Stefan Roese <sr@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [45 x i8] c"altera_msgdma.file=drivers/dma/altera-msgdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [26 x i8] c"altera_msgdma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"altera-msgdma\00", [18 x i8] zeroinitializer }, align 32
@msgdma_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-msgdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csr\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"desc\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"resp\00", [27 x i8] zeroinitializer }, align 32
@msgdma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mdev->lock\00", [20 x i8] zeroinitializer }, align 32
@msgdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 893, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to set coherent mask to 64\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msgdma_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/dma/altera-msgdma.c\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msgdma_probe._entry_ptr = internal global ptr @msgdma_probe._entry, section ".printk_index", align 4
@msgdma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 908, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device was not probed from DT\00", [34 x i8] zeroinitializer }, align 32
@msgdma_probe._entry_ptr.12 = internal global ptr @msgdma_probe._entry.10, section ".printk_index", align 4
@msgdma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 912, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Altera mSGDMA driver probe success\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@msgdma_probe._entry_ptr.16 = internal global ptr @msgdma_probe._entry.13, section ".printk_index", align 4
@request_and_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 777, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"optional resource %s not defined\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"request_and_map\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@request_and_map._entry_ptr = internal global ptr @request_and_map._entry, section ".printk_index", align 4
@request_and_map._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.7, i32 780, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mandatory resource %s not defined\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@request_and_map._entry_ptr.23 = internal global ptr @request_and_map._entry.20, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@request_and_map._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.7, i32 787, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to request %s\0A\00", [42 x i8] zeroinitializer }, align 32
@request_and_map._entry_ptr.26 = internal global ptr @request_and_map._entry.24, section ".printk_index", align 4
@request_and_map._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.7, i32 794, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ioremap of %s failed!\00", [42 x i8] zeroinitializer }, align 32
@request_and_map._entry_ptr.29 = internal global ptr @request_and_map._entry.27, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@msgdma_tasklet.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.7, ptr @.str.32, i8 0, i8 -82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"altera_msgdma\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msgdma_tasklet\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s (%d): response count=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@msgdma_prep_memcpy.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.33, ptr @.str.7, ptr @.str.34, i8 0, i8 86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msgdma_prep_memcpy\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mdev %p descs are not available\0A\00", [63 x i8] zeroinitializer }, align 32
@msgdma_prep_slave_sg.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.35, ptr @.str.7, ptr @.str.34, i8 0, i8 102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msgdma_prep_slave_sg\00", [43 x i8] zeroinitializer }, align 32
@msgdma_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 484, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA channel did not reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msgdma_reset\00", [19 x i8] zeroinitializer }, align 32
@msgdma_reset._entry_ptr = internal global ptr @msgdma_reset._entry, section ".printk_index", align 4
@msgdma_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 937, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Altera mSGDMA driver removed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msgdma_remove\00", [18 x i8] zeroinitializer }, align 32
@msgdma_remove._entry_ptr = internal global ptr @msgdma_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967277]
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"msgdma_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 951, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 953, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"msgdma_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 943, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 821, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 826, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 831, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 851, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 893, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 908, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 912, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 776, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 780, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 787, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 794, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 695, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 347, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 410, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 484, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [31 x i8] c"../drivers/dma/altera-msgdma.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 937, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_msgdma_driver_exit, ptr @__initcall__kmod_altera_msgdma__245_960_msgdma_driver_init6, ptr @msgdma_driver_exit, ptr @msgdma_probe._entry, ptr @msgdma_probe._entry.10, ptr @msgdma_probe._entry.13, ptr @msgdma_probe._entry_ptr, ptr @msgdma_probe._entry_ptr.12, ptr @msgdma_probe._entry_ptr.16, ptr @msgdma_remove._entry, ptr @msgdma_remove._entry_ptr, ptr @msgdma_reset._entry, ptr @msgdma_reset._entry_ptr, ptr @request_and_map._entry, ptr @request_and_map._entry.20, ptr @request_and_map._entry.24, ptr @request_and_map._entry.27, ptr @request_and_map._entry_ptr, ptr @request_and_map._entry_ptr.23, ptr @request_and_map._entry_ptr.26, ptr @request_and_map._entry_ptr.29, ptr @msgdma_driver, ptr @.str, ptr @msgdma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @msgdma_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_and_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_and_map._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_and_map._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_and_map._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgdma_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msgdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msgdma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msgdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @msgdma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msgdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %dma_res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_res) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 616, i32 noundef 2304) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %csr = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 16
  %call3 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.1, ptr noundef nonnull %dma_res, ptr noundef %csr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %desc = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 17
  %call7 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.2, ptr noundef nonnull %dma_res, ptr noundef %desc, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %resp = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 18
  %call11 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.3, ptr noundef nonnull %dma_res, ptr noundef %resp, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 15
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call15, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.dev_name.exit_crit_edge

if.end18.dev_name.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end18.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %if.end18.dev_name.exit_crit_edge ]
  %call.i143 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call15, ptr noundef nonnull @msgdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool24.not = icmp eq i32 %call.i143, 0
  br i1 %tobool24.not, label %if.end26, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %dev_name.exit
  %irq_tasklet = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %irq_tasklet, ptr noundef nonnull @msgdma_tasklet) #9
  %dmachan = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 10
  %cookie.i = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %completed_cookie.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @msgdma_probe.__key, i16 noundef signext 3) #9
  %active_list = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %active_list, ptr %prev.i, align 4
  %pending_list = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  %prev.i144 = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_list, ptr %prev.i144, align 4
  %done_list = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %done_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %done_list, ptr %done_list, align 4
  %prev.i145 = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i145 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %done_list, ptr %prev.i145, align 4
  %free_list = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i146 = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free_list, ptr %prev.i146, align 4
  %dmadev = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9
  %cap_mask = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 6
  %17 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  %src_addr_widths = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 19
  %18 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 20
  %19 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 21
  %20 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 26
  %21 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %residue_granularity, align 4
  %channels = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i147 = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %channels, ptr %prev.i147, align 4
  %device_tx_status = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 49
  %24 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 50
  %25 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @msgdma_issue_pending, ptr %device_issue_pending, align 4
  %dev31 = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 15
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev31, align 4
  %copy_align = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 10
  %27 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %copy_align, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 30
  %28 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @msgdma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 39
  %29 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @msgdma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 44
  %30 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @msgdma_dma_config, ptr %device_config, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 27
  %31 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @msgdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 9, i32 29
  %32 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @msgdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %33 = ptrtoint ptr %dmachan to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dmadev, ptr %dmachan, align 4
  %device_node = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 10, i32 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %channels, ptr noundef %channels) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %device_node, ptr %prev.i147, align 4
  %35 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.msgdma_device, ptr %call.i, i32 0, i32 10, i32 8, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %channels, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %device_node, ptr %channels, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end26.list_add_tail.exit_crit_edge
  %call36 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %list_add_tail.exit.if.end48_crit_edge, label %do.end41

list_add_tail.exit.if.end48_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end41:                                         ; preds = %list_add_tail.exit
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  %call44 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef 4294967295)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end41.if.end48_crit_edge, label %do.end41.fail_crit_edge

do.end41.fail_crit_edge:                          ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

do.end41.if.end48_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %do.end41.if.end48_crit_edge, %list_add_tail.exit.if.end48_crit_edge
  tail call fastcc void @msgdma_reset(ptr noundef nonnull %call.i)
  %call49 = tail call i32 @dma_async_device_register(ptr noundef %dmadev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.fail_crit_edge

if.end48.fail_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end52:                                         ; preds = %if.end48
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %call54 = tail call i32 @of_dma_controller_register(ptr noundef %39, ptr noundef nonnull @of_dma_xlate_by_chan_id, ptr noundef %dmadev) #9
  %40 = zext i32 %call54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call54, label %if.end52.fail_crit_edge [
    i32 -22, label %do.end59
    i32 0, label %if.end52.do.end68_crit_edge
    i32 -19, label %if.end52.do.end68_crit_edge149
  ]

if.end52.do.end68_crit_edge149:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.end52.do.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.end52.fail_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %do.end68

do.end68:                                         ; preds = %do.end59, %if.end52.do.end68_crit_edge, %if.end52.do.end68_crit_edge149
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %cleanup

fail:                                             ; preds = %if.end52.fail_crit_edge, %if.end48.fail_crit_edge, %do.end41.fail_crit_edge
  %ret.0 = phi i32 [ %call44, %do.end41.fail_crit_edge ], [ %call49, %if.end48.fail_crit_edge ], [ %call54, %if.end52.fail_crit_edge ]
  tail call fastcc void @msgdma_dev_remove(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end68, %dev_name.exit.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %do.end68 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -6, %if.end14.cleanup_crit_edge ], [ %call.i143, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msgdma_remove(ptr noundef %pdev) #2 align 64 {
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
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_dma_controller_free(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dmadev = getelementptr inbounds %struct.msgdma_device, ptr %1, i32 0, i32 9
  tail call void @dma_async_device_unregister(ptr noundef %dmadev) #9
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.msgdma_dev_remove.exit_crit_edge, label %if.end.i

if.end.msgdma_dev_remove.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_dev_remove.exit

if.end.i:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.msgdma_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr inbounds %struct.msgdma_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %1) #9
  %irq_tasklet.i = getelementptr inbounds %struct.msgdma_device, ptr %1, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %irq_tasklet.i) #9
  %device_node.i = getelementptr inbounds %struct.msgdma_device, ptr %1, i32 0, i32 10, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.msgdma_device, ptr %1, i32 0, i32 10, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %device_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.msgdma_device, ptr %1, i32 0, i32 10, i32 8, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %msgdma_dev_remove.exit

msgdma_dev_remove.exit:                           ; preds = %list_del.exit.i, %if.end.msgdma_dev_remove.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef %name, ptr nocapture noundef writeonly %res, ptr nocapture noundef writeonly %ptr, i1 noundef zeroext %optional) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %name) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %res, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  br i1 %optional, label %if.then1, label %do.end4

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %name) #12
  br label %cleanup

do.end4:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %name) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end5.dev_name.exit_crit_edge ]
  %call8 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef %retval.0.i) #9
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %do.end13, label %if.end14

do.end13:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %name) #12
  br label %cleanup

if.end14:                                         ; preds = %dev_name.exit
  %10 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call8, align 4
  %end.i43 = getelementptr inbounds %struct.resource, ptr %call8, i32 0, i32 1
  %12 = ptrtoint ptr %end.i43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i43, align 4
  %sub.i44 = sub i32 1, %11
  %add.i45 = add i32 %sub.i44, %13
  %call17 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %11, i32 noundef %add.i45) #9
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %ptr, align 4
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %do.end22, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end14.cleanup_crit_edge, %do.end13, %do.end4, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -19, %do.end4 ], [ -16, %do.end13 ], [ -12, %do.end22 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msgdma_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %csr = getelementptr inbounds %struct.msgdma_device, ptr %data, i32 0, i32 16
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %data) #9
  %idle = getelementptr inbounds %struct.msgdma_device, ptr %data, i32 0, i32 8
  %4 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %idle, align 4
  tail call fastcc void @msgdma_start_transfer(ptr noundef %data)
  tail call void @_raw_spin_unlock(ptr noundef %data) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.msgdma_device, ptr %data, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_tasklet = getelementptr inbounds %struct.msgdma_device, ptr %data, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end.tasklet_schedule.exit_crit_edge
  %5 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 131072) #9, !srcloc !97
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgdma_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %resp = getelementptr i8, ptr %t, i32 564
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.while.body.lr.ph_crit_edge, label %if.then

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.then:                                          ; preds = %entry
  %csr = getelementptr i8, ptr %t, i32 556
  %2 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !94
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msgdma_tasklet.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@msgdma_tasklet, %if.end18)) #9
          to label %if.then15 [label %if.end18], !srcloc !98

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %t, i32 -4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msgdma_tasklet.__UNIQUE_ID_ddebug244, ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 696, i32 noundef %5) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool19.not52 = icmp eq i32 %4, 0
  br i1 %tobool19.not52, label %if.end18.while.end_crit_edge, label %if.end18.while.body.lr.ph_crit_edge

if.end18.while.body.lr.ph_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end18.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %count.056 = phi i32 [ %5, %if.end18.while.body.lr.ph_crit_edge ], [ 1, %entry.while.body.lr.ph_crit_edge ]
  %active_list.i = getelementptr i8, ptr %t, i32 40
  %done_list.i = getelementptr i8, ptr %t, i32 48
  %prev.i10.i = getelementptr i8, ptr %t, i32 52
  br label %while.body

while.body:                                       ; preds = %msgdma_chan_desc_cleanup.exit.while.body_crit_edge, %while.body.lr.ph
  %dec53.in = phi i32 [ %count.056, %while.body.lr.ph ], [ %dec53, %msgdma_chan_desc_cleanup.exit.while.body_crit_edge ]
  %dec53 = add i32 %dec53.in, -1
  %8 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resp, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %while.body.if.end29_crit_edge, label %if.then22

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then22:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #9, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %11 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resp, align 4
  %add.ptr27 = getelementptr i8, ptr %12, i32 4
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %while.body.if.end29_crit_edge
  %14 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %active_list.i, align 4
  %cmp.not.i = icmp eq ptr %15, %active_list.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 -132
  %tobool.not13.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not13.i
  br i1 %tobool.not.i, label %if.end29.msgdma_complete_descriptor.exit_crit_edge, label %if.end.i

if.end29.msgdma_complete_descriptor.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_complete_descriptor.exit

if.end.i:                                         ; preds = %if.end29
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp slt i32 %25, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !99

do.body2.i.i:                                     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !100
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit.i
  %chan.i.i = getelementptr i8, ptr %15, i32 -120
  %26 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %completed_cookie.i.i, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %add.ptr.i, align 4
  %30 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i10.i, align 4
  %call.i.i11.i = call zeroext i1 @__list_add_valid(ptr noundef %15, ptr noundef %31, ptr noundef %done_list.i) #9
  br i1 %call.i.i11.i, label %if.end.i.i12.i, label %dma_cookie_complete.exit.i.msgdma_complete_descriptor.exit_crit_edge

dma_cookie_complete.exit.i.msgdma_complete_descriptor.exit_crit_edge: ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_complete_descriptor.exit

if.end.i.i12.i:                                   ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %15, ptr %prev.i10.i, align 4
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %done_list.i, ptr %15, align 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %15, ptr %31, align 4
  br label %msgdma_complete_descriptor.exit

msgdma_complete_descriptor.exit:                  ; preds = %if.end.i.i12.i, %dma_cookie_complete.exit.i.msgdma_complete_descriptor.exit_crit_edge, %if.end29.msgdma_complete_descriptor.exit_crit_edge
  %36 = ptrtoint ptr %done_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %done_list.i, align 4
  %cmp.not35.i = icmp eq ptr %37, %done_list.i
  br i1 %cmp.not35.i, label %msgdma_complete_descriptor.exit.msgdma_chan_desc_cleanup.exit_crit_edge, label %msgdma_complete_descriptor.exit.for.body.i_crit_edge

msgdma_complete_descriptor.exit.for.body.i_crit_edge: ; preds = %msgdma_complete_descriptor.exit
  br label %for.body.i

msgdma_complete_descriptor.exit.msgdma_chan_desc_cleanup.exit_crit_edge: ; preds = %msgdma_complete_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_chan_desc_cleanup.exit

for.body.i:                                       ; preds = %if.end.i49.for.body.i_crit_edge, %msgdma_complete_descriptor.exit.for.body.i_crit_edge
  %.pn.in36.i = phi ptr [ %.pn38.i, %if.end.i49.for.body.i_crit_edge ], [ %37, %msgdma_complete_descriptor.exit.for.body.i_crit_edge ]
  %desc.037.i = getelementptr i8, ptr %.pn.in36.i, i32 -132
  %38 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn38.i = load ptr, ptr %.pn.in36.i, align 4
  %call.i.i.i42 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36.i) #9
  br i1 %call.i.i.i42, label %if.end.i.i.i45, label %for.body.i.list_del.exit.i47_crit_edge

for.body.i.list_del.exit.i47_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i47

if.end.i.i.i45:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i43 = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i43, align 4
  %41 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in36.i, align 4
  %prev1.i.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i44, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i47

list_del.exit.i47:                                ; preds = %if.end.i.i.i45, %for.body.i.list_del.exit.i47_crit_edge
  %45 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36.i, align 4
  %prev.i.i46 = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i46, align 4
  %callback.i.i = getelementptr i8, ptr %.pn.in36.i, i32 -108
  %47 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %.pn.in36.i, i32 -104
  %49 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %.pn.in36.i, i32 -100
  %51 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %callback_param.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %dmaengine_desc_callback_valid.exit.i, label %if.then.i

dmaengine_desc_callback_valid.exit.i:             ; preds = %list_del.exit.i47
  %tobool1.i.not.i = icmp eq ptr %50, null
  br i1 %tobool1.i.not.i, label %dmaengine_desc_callback_valid.exit.i.if.end.i49_crit_edge, label %if.then.thread.i

dmaengine_desc_callback_valid.exit.i.if.end.i49_crit_edge: ; preds = %dmaengine_desc_callback_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i49

if.then.thread.i:                                 ; preds = %dmaengine_desc_callback_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #9
  %53 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %dummy_result.i.i, align 8
  br label %if.then.i.i

if.then.i:                                        ; preds = %list_del.exit.i47
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #9
  %54 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i27.i = icmp eq ptr %50, null
  br i1 %tobool.not.i27.i, label %if.then5.i.i, label %if.then.i.if.then.i.i_crit_edge

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.if.then.i.i_crit_edge, %if.then.thread.i
  call void %50(ptr noundef %52, ptr noundef nonnull %dummy_result.i.i) #9
  br label %dmaengine_desc_callback_invoke.exit.i

if.then5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %48(ptr noundef %52) #9
  br label %dmaengine_desc_callback_invoke.exit.i

dmaengine_desc_callback_invoke.exit.i:            ; preds = %if.then5.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #9
  call void @_raw_spin_lock(ptr noundef %add.ptr) #9
  br label %if.end.i49

if.end.i49:                                       ; preds = %dmaengine_desc_callback_invoke.exit.i, %dmaengine_desc_callback_valid.exit.i.if.end.i49_crit_edge
  call fastcc void @msgdma_free_descriptor(ptr noundef %add.ptr, ptr noundef %desc.037.i) #9
  %cmp.not.i48 = icmp eq ptr %.pn38.i, %done_list.i
  br i1 %cmp.not.i48, label %if.end.i49.msgdma_chan_desc_cleanup.exit_crit_edge, label %if.end.i49.for.body.i_crit_edge

if.end.i49.for.body.i_crit_edge:                  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i49.msgdma_chan_desc_cleanup.exit_crit_edge: ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_chan_desc_cleanup.exit

msgdma_chan_desc_cleanup.exit:                    ; preds = %if.end.i49.msgdma_chan_desc_cleanup.exit_crit_edge, %msgdma_complete_descriptor.exit.msgdma_chan_desc_cleanup.exit_crit_edge
  %tobool19.not = icmp eq i32 %dec53, 0
  br i1 %tobool19.not, label %msgdma_chan_desc_cleanup.exit.while.end_crit_edge, label %msgdma_chan_desc_cleanup.exit.while.body_crit_edge

msgdma_chan_desc_cleanup.exit.while.body_crit_edge: ; preds = %msgdma_chan_desc_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

msgdma_chan_desc_cleanup.exit.while.end_crit_edge: ; preds = %msgdma_chan_desc_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %msgdma_chan_desc_cleanup.exit.while.end_crit_edge, %if.end18.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2, align 4
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue, align 4
  %in_flight_bytes = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %or.cond.i = or i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.then.i.dma_async_is_complete.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgdma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -476
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  tail call fastcc void @msgdma_start_transfer(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msgdma_prep_memcpy(ptr noundef %dchan, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -476
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %0 = icmp eq i32 %len, 1
  %div = zext i1 %0 to i32
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %desc_free_cnt = getelementptr i8, ptr %dchan, i32 -372
  %1 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %desc_free_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %div)
  %cmp6 = icmp ult i32 %2, %div
  br i1 %cmp6, label %if.then, label %do.body22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msgdma_prep_memcpy.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@msgdma_prep_memcpy, %cleanup)) #9
          to label %if.then15 [label %cleanup], !srcloc !98

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %dchan, i32 -432
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msgdma_prep_memcpy.__UNIQUE_ID_ddebug236, ptr noundef %4, ptr noundef nonnull @.str.34, ptr noundef %add.ptr) #9
  br label %cleanup

do.body22:                                        ; preds = %entry
  %sub20 = sub i32 %2, %div
  %5 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub20, ptr %desc_free_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %free_list.i = getelementptr i8, ptr %dchan, i32 -396
  %6 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body22.do.end35_crit_edge

do.body22.do.end35_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end.i.i.i:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %do.end35

do.end35:                                         ; preds = %if.end.i.i.i, %do.body22.do.end35_crit_edge
  %add.ptr.i = getelementptr i8, ptr %7, i32 -132
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call2.i) #9
  %tx_list.i = getelementptr i8, ptr %7, i32 8
  %16 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i11.i = getelementptr i8, ptr %7, i32 12
  %17 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tx_list.i, ptr %prev.i11.i, align 4
  %hw_desc = getelementptr i8, ptr %7, i32 -32
  %18 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dma_src, ptr %hw_desc, align 4
  %write_addr_lo.i = getelementptr i8, ptr %7, i32 -28
  %19 = ptrtoint ptr %write_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dma_dst, ptr %write_addr_lo.i, align 4
  %read_addr_hi.i = getelementptr i8, ptr %7, i32 -12
  %20 = ptrtoint ptr %read_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %read_addr_hi.i, align 4
  %write_addr_hi.i = getelementptr i8, ptr %7, i32 -8
  %21 = ptrtoint ptr %write_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %write_addr_hi.i, align 4
  %len5.i = getelementptr i8, ptr %7, i32 -24
  %22 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %len, ptr %len5.i, align 4
  %stride6.i = getelementptr i8, ptr %7, i32 -16
  %23 = ptrtoint ptr %stride6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65537, ptr %stride6.i, align 4
  %burst_seq_num.i = getelementptr i8, ptr %7, i32 -20
  %24 = ptrtoint ptr %burst_seq_num.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %burst_seq_num.i, align 4
  %control.i = getelementptr i8, ptr %7, i32 -4
  %25 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2130747392, ptr %control.i, align 4
  %flags.i = getelementptr i8, ptr %7, i32 -128
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %flags, ptr %flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then15, %if.then
  %retval.0 = phi ptr [ %add.ptr.i, %do.end35 ], [ null, %if.then15 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msgdma_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -476
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp114.not = icmp eq i32 %sg_len, 0
  br i1 %cmp114.not, label %do.body2.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.body2.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %desc_free_cnt120 = getelementptr i8, ptr %dchan, i32 -372
  %0 = ptrtoint ptr %desc_free_cnt120 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_free_cnt120, align 4
  br label %if.end21

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sg.0117 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %sgl, %entry.for.body_crit_edge ]
  %i.0116 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %desc_cnt.0115 = phi i32 [ %add1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0117, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %4 = icmp eq i32 %3, 1
  %div = zext i1 %4 to i32
  %add1 = add i32 %desc_cnt.0115, %div
  %inc = add nuw i32 %i.0116, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.0117) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %do.body2, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body2:                                         ; preds = %for.body
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %desc_free_cnt = getelementptr i8, ptr %dchan, i32 -372
  %5 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc_free_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add1)
  %cmp9 = icmp ult i32 %6, %add1
  br i1 %cmp9, label %if.then, label %do.body2.if.end21_crit_edge

do.body2.if.end21_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msgdma_prep_slave_sg.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@msgdma_prep_slave_sg, %cleanup)) #9
          to label %if.then18 [label %cleanup], !srcloc !98

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %dchan, i32 -432
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msgdma_prep_slave_sg.__UNIQUE_ID_ddebug239, ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %add.ptr) #9
  br label %cleanup

if.end21:                                         ; preds = %do.body2.if.end21_crit_edge, %do.body2.thread
  %9 = phi i32 [ %1, %do.body2.thread ], [ %6, %do.body2.if.end21_crit_edge ]
  %desc_free_cnt124 = phi ptr [ %desc_free_cnt120, %do.body2.thread ], [ %desc_free_cnt, %do.body2.if.end21_crit_edge ]
  %call6123 = phi i32 [ %call6119, %do.body2.thread ], [ %call6, %do.body2.if.end21_crit_edge ]
  %desc_cnt.0.lcssa122 = phi i32 [ 0, %do.body2.thread ], [ %add1, %do.body2.if.end21_crit_edge ]
  %sub23 = sub i32 %9, %desc_cnt.0.lcssa122
  %10 = ptrtoint ptr %desc_free_cnt124 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub23, ptr %desc_free_cnt124, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6123) #9
  %free_list.i = getelementptr i8, ptr %dchan, i32 -396
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp30 = icmp eq i32 %dir, 1
  %src_addr = getelementptr i8, ptr %dchan, i32 80
  %dst_addr = getelementptr i8, ptr %dchan, i32 84
  br label %while.cond

while.cond:                                       ; preds = %if.end52.while.cond_crit_edge, %if.end21
  %first.0 = phi ptr [ null, %if.end21 ], [ %first.1, %if.end52.while.cond_crit_edge ]
  %sg_len.addr.0 = phi i32 [ %sg_len, %if.end21 ], [ %dec, %if.end52.while.cond_crit_edge ]
  %sgl.addr.0 = phi ptr [ %sgl, %if.end21 ], [ %call53, %if.end52.while.cond_crit_edge ]
  %avail.0.in = getelementptr inbounds %struct.scatterlist, ptr %sgl.addr.0, i32 0, i32 4
  %11 = ptrtoint ptr %avail.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %avail.0 = load i32, ptr %avail.0.in, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %12 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.cond.msgdma_get_descriptor.exit_crit_edge

while.cond.msgdma_get_descriptor.exit_crit_edge:  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_get_descriptor.exit

if.end.i.i.i:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %msgdma_get_descriptor.exit

msgdma_get_descriptor.exit:                       ; preds = %if.end.i.i.i, %while.cond.msgdma_get_descriptor.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %13, i32 -132
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call2.i) #9
  %tx_list.i = getelementptr i8, ptr %13, i32 8
  %22 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i11.i = getelementptr i8, ptr %13, i32 12
  %23 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_list.i, ptr %prev.i11.i, align 4
  %hw_desc = getelementptr i8, ptr %13, i32 -32
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %msgdma_get_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl.addr.0, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_address, align 4
  %26 = ptrtoint ptr %avail.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avail.0.in, align 4
  %add34 = sub i32 %25, %avail.0
  %sub35 = add i32 %add34, %27
  %28 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_addr, align 4
  br label %if.end40

if.else:                                          ; preds = %msgdma_get_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_addr, align 4
  %dma_address36 = getelementptr inbounds %struct.scatterlist, ptr %sgl.addr.0, i32 0, i32 3
  %32 = ptrtoint ptr %dma_address36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_address36, align 4
  %34 = ptrtoint ptr %avail.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %avail.0.in, align 4
  %add38 = sub i32 %33, %avail.0
  %sub39 = add i32 %add38, %35
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then32
  %dma_dst.0 = phi i32 [ %29, %if.then32 ], [ %sub39, %if.else ]
  %dma_src.0 = phi i32 [ %sub35, %if.then32 ], [ %31, %if.else ]
  %stride.0 = phi i32 [ 1, %if.then32 ], [ 65536, %if.else ]
  %36 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dma_src.0, ptr %hw_desc, align 4
  %write_addr_lo.i = getelementptr i8, ptr %13, i32 -28
  %37 = ptrtoint ptr %write_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dma_dst.0, ptr %write_addr_lo.i, align 4
  %read_addr_hi.i = getelementptr i8, ptr %13, i32 -12
  %38 = ptrtoint ptr %read_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %read_addr_hi.i, align 4
  %write_addr_hi.i = getelementptr i8, ptr %13, i32 -8
  %39 = ptrtoint ptr %write_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %write_addr_hi.i, align 4
  %len5.i = getelementptr i8, ptr %13, i32 -24
  %40 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %avail.0, ptr %len5.i, align 4
  %stride6.i = getelementptr i8, ptr %13, i32 -16
  %41 = ptrtoint ptr %stride6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %stride.0, ptr %stride6.i, align 4
  %burst_seq_num.i = getelementptr i8, ptr %13, i32 -20
  %42 = ptrtoint ptr %burst_seq_num.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %burst_seq_num.i, align 4
  %control.i = getelementptr i8, ptr %13, i32 -4
  %43 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -2130763776, ptr %control.i, align 4
  %tobool42.not = icmp eq ptr %first.0, null
  br i1 %tobool42.not, label %if.end40.if.then48_crit_edge, label %if.else44

if.end40.if.then48_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.else44:                                        ; preds = %if.end40
  %tx_list = getelementptr inbounds %struct.msgdma_sw_desc, ptr %first.0, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.msgdma_sw_desc, ptr %first.0, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %45, ptr noundef %tx_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else44.if.then48_crit_edge

if.else44.if.then48_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end.i.i:                                       ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %13, ptr %prev.i, align 4
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %tx_list, ptr %13, align 4
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %13, ptr %45, align 4
  br label %if.then48

if.then48:                                        ; preds = %if.end.i.i, %if.else44.if.then48_crit_edge, %if.end40.if.then48_crit_edge
  %first.1 = phi ptr [ %add.ptr.i, %if.end40.if.then48_crit_edge ], [ %first.0, %if.else44.if.then48_crit_edge ], [ %first.0, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len.addr.0)
  %cmp49 = icmp eq i32 %sg_len.addr.0, 0
  br i1 %cmp49, label %if.then48.while.end_crit_edge, label %if.end52

if.then48.while.end_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end52:                                         ; preds = %if.then48
  %call53 = tail call ptr @sg_next(ptr noundef %sgl.addr.0) #9
  %cmp54 = icmp eq ptr %call53, null
  %dec = add i32 %sg_len.addr.0, -1
  br i1 %cmp54, label %if.end52.while.end_crit_edge, label %if.end52.while.cond_crit_edge

if.end52.while.cond_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %if.then48.while.end_crit_edge
  %control.i.le = getelementptr i8, ptr %13, i32 -4
  %50 = ptrtoint ptr %control.i.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %control.i.le, align 4
  %or.i = or i32 %51, 16384
  store i32 %or.i, ptr %control.i.le, align 4
  %flags60 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %first.1, i32 0, i32 1
  %52 = ptrtoint ptr %flags60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %flags, ptr %flags60, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then18, %if.then
  %retval.0 = phi ptr [ %first.1, %while.end ], [ null, %if.then18 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msgdma_dma_config(ptr nocapture noundef writeonly %dchan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_cfg = getelementptr i8, ptr %dchan, i32 76
  %0 = call ptr @memcpy(ptr %slave_cfg, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msgdma_alloc_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 151552, i32 noundef 2304, i32 noundef 6) #13
  %sw_desq = getelementptr i8, ptr %dchan, i32 68
  %0 = ptrtoint ptr %sw_desq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i.i.i.i, ptr %sw_desq, align 4
  %tobool.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %idle = getelementptr i8, ptr %dchan, i32 -368
  %1 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %idle, align 4
  %desc_free_cnt = getelementptr i8, ptr %dchan, i32 -372
  %2 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1024, ptr %desc_free_cnt, align 4
  %free_list = getelementptr i8, ptr %dchan, i32 -396
  %3 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr i8, ptr %dchan, i32 -392
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_list, ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %i.020 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %sw_desq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw_desq, align 4
  %add.ptr3 = getelementptr %struct.msgdma_sw_desc, ptr %6, i32 %i.020
  tail call void @dma_async_tx_descriptor_init(ptr noundef %add.ptr3, ptr noundef %dchan) #9
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %add.ptr3, i32 0, i32 4
  %7 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @msgdma_tx_submit, ptr %tx_submit, align 4
  %node = getelementptr %struct.msgdma_sw_desc, ptr %6, i32 %i.020, i32 2
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %9, ptr noundef %free_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %prev.i, align 4
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_list, ptr %node, align 4
  %prev3.i.i = getelementptr %struct.msgdma_sw_desc, ptr %6, i32 %i.020, i32 2, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 1024, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgdma_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -476
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %active_list.i = getelementptr i8, ptr %dchan, i32 -388
  %0 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_list.i, align 4
  %cmp.not17.i.i = icmp eq ptr %1, %active_list.i
  br i1 %cmp.not17.i.i, label %entry.msgdma_free_desc_list.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.msgdma_free_desc_list.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_free_desc_list.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn.in18.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %1, %entry.for.body.i.i_crit_edge ]
  %desc.0.i.i = getelementptr i8, ptr %.pn.in18.i.i, i32 -132
  %2 = ptrtoint ptr %.pn.in18.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i.i = load ptr, ptr %.pn.in18.i.i, align 4
  tail call fastcc void @msgdma_free_descriptor(ptr noundef %add.ptr, ptr noundef %desc.0.i.i) #9
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %active_list.i
  br i1 %cmp.not.i.i, label %for.body.i.i.msgdma_free_desc_list.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.msgdma_free_desc_list.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_free_desc_list.exit.i

msgdma_free_desc_list.exit.i:                     ; preds = %for.body.i.i.msgdma_free_desc_list.exit.i_crit_edge, %entry.msgdma_free_desc_list.exit.i_crit_edge
  %pending_list.i = getelementptr i8, ptr %dchan, i32 -404
  %3 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pending_list.i, align 4
  %cmp.not17.i6.i = icmp eq ptr %4, %pending_list.i
  br i1 %cmp.not17.i6.i, label %msgdma_free_desc_list.exit.i.msgdma_free_desc_list.exit12.i_crit_edge, label %msgdma_free_desc_list.exit.i.for.body.i11.i_crit_edge

msgdma_free_desc_list.exit.i.for.body.i11.i_crit_edge: ; preds = %msgdma_free_desc_list.exit.i
  br label %for.body.i11.i

msgdma_free_desc_list.exit.i.msgdma_free_desc_list.exit12.i_crit_edge: ; preds = %msgdma_free_desc_list.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_free_desc_list.exit12.i

for.body.i11.i:                                   ; preds = %for.body.i11.i.for.body.i11.i_crit_edge, %msgdma_free_desc_list.exit.i.for.body.i11.i_crit_edge
  %.pn.in18.i7.i = phi ptr [ %.pn.i9.i, %for.body.i11.i.for.body.i11.i_crit_edge ], [ %4, %msgdma_free_desc_list.exit.i.for.body.i11.i_crit_edge ]
  %desc.0.i8.i = getelementptr i8, ptr %.pn.in18.i7.i, i32 -132
  %5 = ptrtoint ptr %.pn.in18.i7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i9.i = load ptr, ptr %.pn.in18.i7.i, align 4
  tail call fastcc void @msgdma_free_descriptor(ptr noundef %add.ptr, ptr noundef %desc.0.i8.i) #9
  %cmp.not.i10.i = icmp eq ptr %.pn.i9.i, %pending_list.i
  br i1 %cmp.not.i10.i, label %for.body.i11.i.msgdma_free_desc_list.exit12.i_crit_edge, label %for.body.i11.i.for.body.i11.i_crit_edge

for.body.i11.i.for.body.i11.i_crit_edge:          ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i11.i

for.body.i11.i.msgdma_free_desc_list.exit12.i_crit_edge: ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_free_desc_list.exit12.i

msgdma_free_desc_list.exit12.i:                   ; preds = %for.body.i11.i.msgdma_free_desc_list.exit12.i_crit_edge, %msgdma_free_desc_list.exit.i.msgdma_free_desc_list.exit12.i_crit_edge
  %done_list.i = getelementptr i8, ptr %dchan, i32 -380
  %6 = ptrtoint ptr %done_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %done_list.i, align 4
  %cmp.not17.i13.i = icmp eq ptr %7, %done_list.i
  br i1 %cmp.not17.i13.i, label %msgdma_free_desc_list.exit12.i.msgdma_free_descriptors.exit_crit_edge, label %msgdma_free_desc_list.exit12.i.for.body.i18.i_crit_edge

msgdma_free_desc_list.exit12.i.for.body.i18.i_crit_edge: ; preds = %msgdma_free_desc_list.exit12.i
  br label %for.body.i18.i

msgdma_free_desc_list.exit12.i.msgdma_free_descriptors.exit_crit_edge: ; preds = %msgdma_free_desc_list.exit12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_free_descriptors.exit

for.body.i18.i:                                   ; preds = %for.body.i18.i.for.body.i18.i_crit_edge, %msgdma_free_desc_list.exit12.i.for.body.i18.i_crit_edge
  %.pn.in18.i14.i = phi ptr [ %.pn.i16.i, %for.body.i18.i.for.body.i18.i_crit_edge ], [ %7, %msgdma_free_desc_list.exit12.i.for.body.i18.i_crit_edge ]
  %desc.0.i15.i = getelementptr i8, ptr %.pn.in18.i14.i, i32 -132
  %8 = ptrtoint ptr %.pn.in18.i14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i16.i = load ptr, ptr %.pn.in18.i14.i, align 4
  tail call fastcc void @msgdma_free_descriptor(ptr noundef %add.ptr, ptr noundef %desc.0.i15.i) #9
  %cmp.not.i17.i = icmp eq ptr %.pn.i16.i, %done_list.i
  br i1 %cmp.not.i17.i, label %for.body.i18.i.msgdma_free_descriptors.exit_crit_edge, label %for.body.i18.i.for.body.i18.i_crit_edge

for.body.i18.i.for.body.i18.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i18.i

for.body.i18.i.msgdma_free_descriptors.exit_crit_edge: ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_free_descriptors.exit

msgdma_free_descriptors.exit:                     ; preds = %for.body.i18.i.msgdma_free_descriptors.exit_crit_edge, %msgdma_free_desc_list.exit12.i.msgdma_free_descriptors.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #9
  %sw_desq = getelementptr i8, ptr %dchan, i32 68
  %9 = ptrtoint ptr %sw_desq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw_desq, align 4
  tail call void @kfree(ptr noundef %10) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msgdma_reset(ptr nocapture noundef %mdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %csr = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 16
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -16580608) #9, !srcloc !97
  %2 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 33554432) #9, !srcloc !97
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 482) #9
  %4 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %7 = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1459 = icmp eq i32 %7, 0
  br i1 %cmp1459, label %entry.if.end40_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then30.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %8 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %11 = and i32 %10, 1073741824
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.then30.if.end40_crit_edge, label %if.then30.land.lhs.true_crit_edge

if.then30.land.lhs.true_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.end:                                          ; preds = %land.lhs.true
  %12 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %15 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp34 = icmp eq i32 %15, 0
  br i1 %cmp34, label %for.end.if.end40_crit_edge, label %do.end39

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.36) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %for.end.if.end40_crit_edge, %if.then30.if.end40_crit_edge, %entry.if.end40_crit_edge
  %18 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -16580608) #9, !srcloc !97
  %20 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr, align 4
  %add.ptr44 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 469762048) #9, !srcloc !97
  %idle = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 8
  %22 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %idle, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_xlate_by_chan_id(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msgdma_dev_remove(ptr noundef %mdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 15
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %mdev) #9
  %irq_tasklet = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %irq_tasklet) #9
  %device_node = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 10, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 10, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node, align 4
  %prev.i = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 10, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msgdma_start_transfer(ptr noundef %mdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %idle, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending_list = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 3
  %2 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_list, align 4
  %cmp.not = icmp eq ptr %3, %pending_list
  %add.ptr = getelementptr i8, ptr %3, i32 -132
  %tobool3.not14 = icmp eq ptr %add.ptr, null
  %tobool3.not = or i1 %cmp.not, %tobool3.not14
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %5, %pending_list
  br i1 %cmp.i.not.i, label %if.end5.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end5.list_splice_tail_init.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %active_list = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %active_list, ptr %9, align 4
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  store ptr %pending_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end5.list_splice_tail_init.exit_crit_edge
  %desc1.i.i = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 17
  %14 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc1.i.i, align 4
  %csr.i.i = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 16
  %16 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %19 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not12.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not12.i.i, label %list_splice_tail_init.exit.msgdma_copy_one.exit.i_crit_edge, label %list_splice_tail_init.exit.while.body.i.i_crit_edge

list_splice_tail_init.exit.while.body.i.i_crit_edge: ; preds = %list_splice_tail_init.exit
  br label %while.body.i.i

list_splice_tail_init.exit.msgdma_copy_one.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_copy_one.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %list_splice_tail_init.exit.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #9
  %21 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %24 = and i32 %23, 67108864
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.msgdma_copy_one.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.msgdma_copy_one.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_copy_one.exit.i

msgdma_copy_one.exit.i:                           ; preds = %while.body.i.i.msgdma_copy_one.exit.i_crit_edge, %list_splice_tail_init.exit.msgdma_copy_one.exit.i_crit_edge
  %hw_desc2.i.i = getelementptr i8, ptr %3, i32 -32
  %25 = call ptr @memcpy(ptr %15, ptr %hw_desc2.i.i, i32 28)
  %26 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %idle, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %control.i.i = getelementptr i8, ptr %3, i32 -4
  %27 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %control.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %29) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %tx_list.i = getelementptr i8, ptr %3, i32 8
  %30 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_list.i, align 4
  %cmp.not30.i = icmp eq ptr %31, %tx_list.i
  br i1 %cmp.not30.i, label %msgdma_copy_one.exit.i.cleanup_crit_edge, label %msgdma_copy_one.exit.i.for.body.i_crit_edge

msgdma_copy_one.exit.i.for.body.i_crit_edge:      ; preds = %msgdma_copy_one.exit.i
  br label %for.body.i

msgdma_copy_one.exit.i.cleanup_crit_edge:         ; preds = %msgdma_copy_one.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %msgdma_copy_one.exit29.i.for.body.i_crit_edge, %msgdma_copy_one.exit.i.for.body.i_crit_edge
  %.pn.in31.i = phi ptr [ %.pn.i, %msgdma_copy_one.exit29.i.for.body.i_crit_edge ], [ %31, %msgdma_copy_one.exit.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn.in31.i, align 4
  %33 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc1.i.i, align 4
  %35 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr.i.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %38 = and i32 %37, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not12.i22.i = icmp eq i32 %38, 0
  br i1 %tobool.not12.i22.i, label %for.body.i.msgdma_copy_one.exit29.i_crit_edge, label %for.body.i.while.body.i24.i_crit_edge

for.body.i.while.body.i24.i_crit_edge:            ; preds = %for.body.i
  br label %while.body.i24.i

for.body.i.msgdma_copy_one.exit29.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_copy_one.exit29.i

while.body.i24.i:                                 ; preds = %while.body.i24.i.while.body.i24.i_crit_edge, %for.body.i.while.body.i24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #9
  %40 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %csr.i.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %43 = and i32 %42, 67108864
  %tobool.not.i23.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i23.i, label %while.body.i24.i.msgdma_copy_one.exit29.i_crit_edge, label %while.body.i24.i.while.body.i24.i_crit_edge

while.body.i24.i.while.body.i24.i_crit_edge:      ; preds = %while.body.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i24.i

while.body.i24.i.msgdma_copy_one.exit29.i_crit_edge: ; preds = %while.body.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msgdma_copy_one.exit29.i

msgdma_copy_one.exit29.i:                         ; preds = %while.body.i24.i.msgdma_copy_one.exit29.i_crit_edge, %for.body.i.msgdma_copy_one.exit29.i_crit_edge
  %hw_desc2.i25.i = getelementptr i8, ptr %.pn.in31.i, i32 -32
  %44 = call ptr @memcpy(ptr %34, ptr %hw_desc2.i25.i, i32 28)
  %45 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %idle, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %control.i27.i = getelementptr i8, ptr %.pn.in31.i, i32 -4
  %46 = ptrtoint ptr %control.i27.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %control.i27.i, align 4
  %add.ptr4.i28.i = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i28.i, i32 %48) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list.i
  br i1 %cmp.not.i, label %msgdma_copy_one.exit29.i.cleanup_crit_edge, label %msgdma_copy_one.exit29.i.for.body.i_crit_edge

msgdma_copy_one.exit29.i.for.body.i_crit_edge:    ; preds = %msgdma_copy_one.exit29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

msgdma_copy_one.exit29.i.cleanup_crit_edge:       ; preds = %msgdma_copy_one.exit29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %msgdma_copy_one.exit29.i.cleanup_crit_edge, %msgdma_copy_one.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msgdma_free_descriptor(ptr noundef %mdev, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_free_cnt = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 7
  %0 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_free_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %desc_free_cnt, align 4
  %node = getelementptr inbounds %struct.msgdma_sw_desc, ptr %desc, i32 0, i32 2
  %free_list = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.msgdma_device, ptr %mdev, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %3, ptr noundef %free_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node, ptr %prev.i, align 4
  %5 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %free_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.msgdma_sw_desc, ptr %desc, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %node, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %tx_list = getelementptr inbounds %struct.msgdma_sw_desc, ptr %desc, i32 0, i32 3
  %8 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_list, align 4
  %cmp.not28 = icmp eq ptr %9, %tx_list
  br i1 %cmp.not28, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %list_add_tail.exit.for.body_crit_edge
  %10 = phi ptr [ %.pn, %list_move_tail.exit.for.body_crit_edge ], [ %9, %list_add_tail.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc_free_cnt, align 4
  %inc10 = add i32 %13, 1
  store i32 %inc10, ptr %desc_free_cnt, align 4
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #9
  br i1 %call.i.i26, label %if.end.i.i27, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i27:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i27, %for.body.__list_del_entry.exit.i_crit_edge
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %21, ptr noundef %free_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %10, ptr %prev.i, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free_list, ptr %10, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %10, ptr %21, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %tx_list
  br i1 %cmp.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msgdma_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -476
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #9
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %node = getelementptr inbounds %struct.msgdma_sw_desc, ptr %tx, i32 0, i32 2
  %pending_list = getelementptr i8, ptr %1, i32 -404
  %prev.i = getelementptr i8, ptr %1, i32 -400
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef %pending_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.msgdma_sw_desc, ptr %tx, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #9
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_altera_msgdma__245_960_msgdma_driver_init6, !1, !"__initcall__kmod_altera_msgdma__245_960_msgdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/altera-msgdma.c", i32 960, i32 1}
!2 = !{ptr @__exitcall_msgdma_driver_exit, !1, !"__exitcall_msgdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias246, !4, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!4 = !{!"../drivers/dma/altera-msgdma.c", i32 962, i32 1}
!5 = !{ptr @__UNIQUE_ID_description247, !6, !"__UNIQUE_ID_description247", i1 false, i1 false}
!6 = !{!"../drivers/dma/altera-msgdma.c", i32 963, i32 1}
!7 = !{ptr @__UNIQUE_ID_author248, !8, !"__UNIQUE_ID_author248", i1 false, i1 false}
!8 = !{!"../drivers/dma/altera-msgdma.c", i32 964, i32 1}
!9 = !{ptr @__UNIQUE_ID_file249, !10, !"__UNIQUE_ID_file249", i1 false, i1 false}
!10 = !{!"../drivers/dma/altera-msgdma.c", i32 965, i32 1}
!11 = !{ptr @__UNIQUE_ID_license250, !10, !"__UNIQUE_ID_license250", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/altera-msgdma.c", i32 953, i32 11}
!14 = !{ptr @msgdma_driver, !15, !"msgdma_driver", i1 false, i1 false}
!15 = !{!"../drivers/dma/altera-msgdma.c", i32 951, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/altera-msgdma.c", i32 821, i32 30}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/altera-msgdma.c", i32 826, i32 30}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/altera-msgdma.c", i32 831, i32 30}
!22 = !{ptr @msgdma_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/dma/altera-msgdma.c", i32 851, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/altera-msgdma.c", i32 893, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @msgdma_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @msgdma_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/altera-msgdma.c", i32 908, i32 3}
!35 = !{ptr @msgdma_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @msgdma_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/altera-msgdma.c", i32 912, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @msgdma_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @msgdma_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/altera-msgdma.c", i32 776, i32 4}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @request_and_map._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @request_and_map._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/altera-msgdma.c", i32 780, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @request_and_map._entry.20, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @request_and_map._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/altera-msgdma.c", i32 787, i32 3}
!55 = !{ptr @request_and_map._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @request_and_map._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/altera-msgdma.c", i32 794, i32 3}
!59 = !{ptr @request_and_map._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @request_and_map._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/altera-msgdma.c", i32 695, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @msgdma_tasklet.__UNIQUE_ID_ddebug244, !62, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/altera-msgdma.c", i32 347, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @msgdma_prep_memcpy.__UNIQUE_ID_ddebug236, !67, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/altera-msgdma.c", i32 410, i32 3}
!72 = !{ptr @msgdma_prep_slave_sg.__UNIQUE_ID_ddebug239, !71, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/altera-msgdma.c", i32 484, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @msgdma_reset._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @msgdma_reset._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/altera-msgdma.c", i32 937, i32 2}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @msgdma_remove._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @msgdma_remove._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @msgdma_match, !84, !"msgdma_match", i1 false, i1 false}
!84 = !{!"../drivers/dma/altera-msgdma.c", i32 943, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 6249238}
!95 = !{i64 2153789587}
!96 = !{i64 2153790942}
!97 = !{i64 6248820}
!98 = !{i64 2148781024, i64 2148781029, i64 2148781042, i64 2148781086, i64 2148781120, i64 2148781141}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2154329841, i64 2154330328, i64 2154329878, i64 2154329934, i64 2154329968, i64 2154329992, i64 2154330033, i64 2154330054, i64 2154330082, i64 2154330116}
!101 = !{i64 2154331341}
!102 = !{i64 2154398249}
!103 = !{i64 2154398731}
!104 = !{i8 0, i8 2}
!105 = !{i64 2154402837}
!106 = !{i64 2154403126}
