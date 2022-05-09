; ModuleID = '/llk/IR_all_yes/drivers/dma/mxs-dma.c_pt.bc'
source_filename = "../drivers/dma/mxs-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mxs_dma_type = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mxs_dma_engine = type { i32, i32, ptr, ptr, %struct.dma_device, [16 x %struct.mxs_dma_chan], ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mxs_dma_chan = type { ptr, %struct.dma_chan, %struct.dma_async_tx_descriptor, %struct.tasklet_struct, i32, ptr, i32, i32, i32, i32, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.mxs_dma_ccw = type { i32, i16, i16, i32, [16 x i32] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mxs_dma_filter_param = type { i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_mxs_dma__237_848_mxs_dma_module_init4 = internal global ptr @mxs_dma_module_init, section ".initcall4.init", align 4
@mxs_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_dma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxs-dma\00", [24 x i8] zeroinitializer }, align 32
@mxs_dma_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-dma-apbh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mxs_dma_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-dma-apbx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxs_dma_types, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-dma-apbh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxs_dma_types, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-dma-apbx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxs_dma_types, i64 24) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@mxs_dma_types = internal global { [4 x %struct.mxs_dma_type], [32 x i8] } { [4 x %struct.mxs_dma_type] [%struct.mxs_dma_type zeroinitializer, %struct.mxs_dma_type { i32 0, i32 1 }, %struct.mxs_dma_type { i32 1, i32 0 }, %struct.mxs_dma_type { i32 1, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@mxs_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read dma-channels\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/mxs-dma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_dma_probe._entry_ptr = internal global ptr @mxs_dma_probe._entry, section ".printk_index", align 4
@mxs_dma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@mxs_dma_probe._entry_ptr.9 = internal global ptr @mxs_dma_probe._entry.7, section ".printk_index", align 4
@mxs_dma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register controller\0A\00", [33 x i8] zeroinitializer }, align 32
@mxs_dma_probe._entry_ptr.12 = internal global ptr @mxs_dma_probe._entry.10, section ".printk_index", align 4
@mxs_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 832, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initialized\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mxs_dma_probe._entry_ptr.16 = internal global ptr @mxs_dma_probe._entry.13, section ".printk_index", align 4
@mxs_dma_int_handler.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxs_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxs_dma_int_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: error in channel %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mxs_dma_reset_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"Failed waiting for the DMA channel %d to leave state READ_FLUSH, trying to reset channel in READ_FLUSH state now\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_dma_reset_chan\00", [45 x i8] zeroinitializer }, align 32
@mxs_dma_reset_chan._entry_ptr = internal global ptr @mxs_dma_reset_chan._entry, section ".printk_index", align 4
@mxs_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"maximum number of sg exceeded: %d > %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxs_dma_prep_slave_sg\00", [42 x i8] zeroinitializer }, align 32
@mxs_dma_prep_slave_sg._entry_ptr = internal global ptr @mxs_dma_prep_slave_sg._entry, section ".printk_index", align 4
@mxs_dma_prep_slave_sg._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"maximum bytes for sg entry exceeded: %d > %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mxs_dma_prep_slave_sg._entry_ptr.26 = internal global ptr @mxs_dma_prep_slave_sg._entry.24, section ".printk_index", align 4
@mxs_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.27, ptr @.str.4, i32 594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxs_dma_prep_dma_cyclic\00", [40 x i8] zeroinitializer }, align 32
@mxs_dma_prep_dma_cyclic._entry_ptr = internal global ptr @mxs_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@mxs_dma_prep_dma_cyclic._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"maximum period size exceeded: %zu > %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mxs_dma_prep_dma_cyclic._entry_ptr.30 = internal global ptr @mxs_dma_prep_dma_cyclic._entry.28, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"mxs_dma_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 837, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 839, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"mxs_dma_dt_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 170, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"mxs_dma_types\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 154, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 756, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 758, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 822, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 828, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 832, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 368, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 222, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 492, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 537, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 592, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [25 x i8] c"../drivers/dma/mxs-dma.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 599, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__initcall__kmod_mxs_dma__237_848_mxs_dma_module_init4, ptr @mxs_dma_prep_dma_cyclic._entry, ptr @mxs_dma_prep_dma_cyclic._entry.28, ptr @mxs_dma_prep_dma_cyclic._entry_ptr, ptr @mxs_dma_prep_dma_cyclic._entry_ptr.30, ptr @mxs_dma_prep_slave_sg._entry, ptr @mxs_dma_prep_slave_sg._entry.24, ptr @mxs_dma_prep_slave_sg._entry_ptr, ptr @mxs_dma_prep_slave_sg._entry_ptr.26, ptr @mxs_dma_probe._entry, ptr @mxs_dma_probe._entry.10, ptr @mxs_dma_probe._entry.13, ptr @mxs_dma_probe._entry.7, ptr @mxs_dma_probe._entry_ptr, ptr @mxs_dma_probe._entry_ptr.12, ptr @mxs_dma_probe._entry_ptr.16, ptr @mxs_dma_probe._entry_ptr.9, ptr @mxs_dma_reset_chan._entry, ptr @mxs_dma_reset_chan._entry_ptr, ptr @mxs_dma_driver, ptr @.str, ptr @mxs_dma_dt_ids, ptr @mxs_dma_types, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_reset_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_prep_slave_sg._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dma_prep_dma_cyclic._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @mxs_dma_driver, ptr noundef nonnull @mxs_dma_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3908, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_channels = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 7
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %nr_channels, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %type = getelementptr inbounds %struct.mxs_dma_type, ptr %call8, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %type9 = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %type9, align 4
  %5 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call8, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call.i, align 4
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #7
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %clk, align 4
  %cmp.i149 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %dma_device = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4
  %cap_mask = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #7
  %channels = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %channels, ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end26
  %i.0152 = phi i32 [ 0, %if.end26 ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 5, i32 %i.0152
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %arrayidx, align 4
  %chan = getelementptr %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 5, i32 %i.0152, i32 1
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dma_device, ptr %chan, align 4
  %cookie.i = getelementptr %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 5, i32 %i.0152, i32 1, i32 2
  %16 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 5, i32 %i.0152, i32 1, i32 3
  %17 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %completed_cookie.i, align 4
  %tasklet = getelementptr %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 5, i32 %i.0152, i32 3
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @mxs_dma_tasklet) #7
  %device_node = getelementptr %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 5, i32 %i.0152, i32 1, i32 8
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i151 = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %19, ptr noundef %channels) #7
  br i1 %call.i.i151, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %device_node, ptr %prev.i, align 4
  %21 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 5, i32 %i.0152, i32 1, i32 8, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %device_node, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %call36 = tail call fastcc i32 @mxs_dma_init(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %pdev40 = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %pdev40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pdev, ptr %pdev40, align 4
  %dev43 = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 15
  %25 = ptrtoint ptr %dev43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev43, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %26 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end39.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end39.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65280, ptr %27, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end39.dma_set_max_seg_size.exit_crit_edge
  %device_alloc_chan_resources = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 27
  %29 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mxs_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 29
  %30 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mxs_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 49
  %31 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mxs_dma_tx_status, ptr %device_tx_status, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 39
  %32 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mxs_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 40
  %33 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mxs_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_pause = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 45
  %34 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mxs_dma_pause_chan, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 46
  %35 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mxs_dma_resume_chan, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 47
  %36 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mxs_dma_terminate_all, ptr %device_terminate_all, align 4
  %src_addr_widths = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 19
  %37 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 20
  %38 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 21
  %39 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 26
  %40 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %residue_granularity, align 4
  %device_issue_pending = getelementptr inbounds %struct.mxs_dma_engine, ptr %call.i, i32 0, i32 4, i32 50
  %41 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mxs_dma_enable_chan, ptr %device_issue_pending, align 4
  %call61 = tail call i32 @dmaenginem_async_device_register(ptr noundef %dma_device) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end69, label %do.end66

do.end66:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end69:                                         ; preds = %dma_set_max_seg_size.exit
  %call70 = tail call i32 @of_dma_controller_register(ptr noundef %1, ptr noundef nonnull @mxs_dma_xlate, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end69.do.end81_crit_edge, label %do.end75

if.end69.do.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11) #10
  br label %do.end81

do.end81:                                         ; preds = %do.end75, %if.end69.do.end81_crit_edge
  %46 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %do.end66, %for.end.cleanup_crit_edge, %if.then23, %if.then15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %9, %if.then15 ], [ %11, %if.then23 ], [ %call61, %do.end66 ], [ 0, %do.end81 ], [ -12, %entry.cleanup_crit_edge ], [ %call36, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_dma_tasklet(ptr nocapture noundef readonly %t) #4 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %callback.i.i = getelementptr i8, ptr %t, i32 -76
  %0 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %t, i32 -72
  %2 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %t, i32 -68
  %4 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %callback_param.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  %6 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void %3(ptr noundef %5, ptr noundef nonnull %dummy_result.i.i) #7
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %entry
  %tobool4.not.i.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1(ptr noundef %5) #7
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_dma_init(ptr nocapture noundef readonly %mxs_dma) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.mxs_dma_engine, ptr %mxs_dma, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %mxs_dma, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %call1 = tail call i32 @stmp_reset_block(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.mxs_dma_engine, ptr %mxs_dma, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.body, label %if.end4.do.body15_crit_edge

if.end4.do.body15_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 32) #7, !srcloc !70
  br label %do.body15

do.body15:                                        ; preds = %do.body, %if.end4.do.body15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 65535) #7, !srcloc !70
  br label %err_out

err_out:                                          ; preds = %do.body15, %if.end.err_out_crit_edge
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_out, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %err_out ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %err_out ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_alloc_chan_resources(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ccw_phys = getelementptr i8, ptr %chan, i32 196
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 16384, ptr noundef %ccw_phys, i32 noundef 3264, i32 noundef 0) #7
  %ccw = getelementptr i8, ptr %chan, i32 192
  %4 = ptrtoint ptr %ccw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %ccw, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan_irq = getelementptr i8, ptr %chan, i32 188
  %5 = ptrtoint ptr %chan_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan_irq, align 4
  %call.i40 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @mxs_dma_int_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool5.not = icmp eq i32 %call.i40, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_irq_crit_edge

if.end.err_irq_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end7:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call.i41 = tail call i32 @clk_prepare(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.err_clk_crit_edge

if.end7.err_clk_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %err_clk

if.end11:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mxs_dma_reset_chan(ptr noundef %chan)
  %desc = getelementptr i8, ptr %chan, i32 64
  tail call void @dma_async_tx_descriptor_init(ptr noundef %desc, ptr noundef %chan) #7
  %tx_submit = getelementptr i8, ptr %chan, i32 80
  %9 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mxs_dma_tx_submit, ptr %tx_submit, align 4
  %flags.i = getelementptr i8, ptr %chan, i32 68
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %11, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %cleanup

err_clk:                                          ; preds = %if.then3.i, %if.end7.err_clk_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i41, %if.end7.err_clk_crit_edge ]
  %12 = ptrtoint ptr %chan_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_irq, align 4
  %call15 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %1) #7
  br label %err_irq

err_irq:                                          ; preds = %err_clk, %if.end.err_irq_crit_edge
  %ret.0 = phi i32 [ %call.i40, %if.end.err_irq_crit_edge ], [ %retval.0.i.ph, %err_clk ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %ccw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ccw, align 4
  %18 = ptrtoint ptr %ccw_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ccw_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef 16384, ptr noundef %17, i32 noundef %19, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %ret.0, %err_irq ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_dma_free_chan_resources(ptr nocapture noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %status.i = getelementptr i8, ptr %chan, i32 204
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status.i, align 4
  %chan_irq = getelementptr i8, ptr %chan, i32 188
  %3 = ptrtoint ptr %chan_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan_irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 4, i32 15
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %ccw = getelementptr i8, ptr %chan, i32 192
  %7 = ptrtoint ptr %ccw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ccw, align 4
  %ccw_phys = getelementptr i8, ptr %chan, i32 196
  %9 = ptrtoint ptr %ccw_phys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ccw_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef 16384, ptr noundef %8, i32 noundef %10, i32 noundef 0) #7
  %clk = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %status = getelementptr i8, ptr %chan, i32 204
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr i8, ptr %chan, i32 208
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %ccw = getelementptr i8, ptr %chan, i32 192
  %6 = ptrtoint ptr %ccw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ccw, align 4
  %desc_count = getelementptr i8, ptr %chan, i32 200
  %8 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_count, align 4
  %sub = add i32 %9, -1
  %xfer_bytes = getelementptr %struct.mxs_dma_ccw, ptr %7, i32 %sub, i32 2
  %10 = ptrtoint ptr %xfer_bytes to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %xfer_bytes, align 2
  %conv = zext i16 %11 to i32
  %bufaddr = getelementptr %struct.mxs_dma_ccw, ptr %7, i32 %sub, i32 3
  %12 = ptrtoint ptr %bufaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bufaddr, align 4
  %add = add i32 %13, %conv
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %land.rhs, label %if.then.land.end_crit_edge

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4 = icmp eq i32 %19, 0
  %phi.sel = select i1 %cmp4, i32 112, i32 304
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.land.end_crit_edge
  %20 = phi i32 [ 304, %if.then.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %21 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_id, align 4
  %mul = mul i32 %22, 112
  %add6 = add i32 %mul, %20
  %add.ptr = getelementptr i8, ptr %15, i32 %add6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !73
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %sub9 = sub i32 %add, %24
  br label %if.end

if.end:                                           ; preds = %land.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %residue.0 = phi i32 [ %sub9, %land.end ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %if.end.dma_set_tx_state.exit_crit_edge, label %if.end.i

if.end.dma_set_tx_state.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_tx_state.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cookie10 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %25 = ptrtoint ptr %cookie10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cookie10, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %27 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %completed_cookie, align 4
  %29 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %30 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %used2.i, align 4
  %residue3.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %31 = ptrtoint ptr %residue3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %residue.0, ptr %residue3.i, align 4
  br label %dma_set_tx_state.exit

dma_set_tx_state.exit:                            ; preds = %if.end.i, %if.end.dma_set_tx_state.exit_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mxs_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %status = getelementptr i8, ptr %chan, i32 204
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %desc_count = getelementptr i8, ptr %chan, i32 200
  %4 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc_count, align 4
  %add = add i32 %5, %sg_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %add)
  %cmp2 = icmp ugt i32 %add, 215
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %if.end4

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %sg_len)
  %cmp2231 = icmp ugt i32 %sg_len, 215
  br i1 %cmp2231, label %if.end.thread.do.end_crit_edge, label %if.end4.thread

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.thread:                                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %status, align 4
  %flags6234 = getelementptr i8, ptr %chan, i32 208
  %7 = ptrtoint ptr %flags6234 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags6234, align 4
  br label %if.end32

do.end:                                           ; preds = %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 4, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %sg_len, i32 noundef 215) #10
  br label %err_out

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %status, align 4
  %flags6 = getelementptr i8, ptr %chan, i32 208
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end4.if.end32_crit_edge, label %do.body8

if.end4.if.end32_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp9 = icmp slt i32 %5, 1
  br i1 %cmp9, label %do.body13, label %do.end21, !prof !75

do.body13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mxs-dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !76
  unreachable

do.end21:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %ccw22 = getelementptr i8, ptr %chan, i32 192
  %12 = ptrtoint ptr %ccw22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccw22, align 4
  %sub = add nsw i32 %5, -1
  %arrayidx = getelementptr %struct.mxs_dma_ccw, ptr %13, i32 %sub
  %ccw_phys = getelementptr i8, ptr %chan, i32 196
  %14 = ptrtoint ptr %ccw_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ccw_phys, align 4
  %mul = mul i32 %5, 76
  %add23 = add i32 %15, %mul
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add23, ptr %arrayidx, align 4
  %bits = getelementptr %struct.mxs_dma_ccw, ptr %13, i32 %sub, i32 1
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bits, align 4
  %19 = and i16 %18, -77
  %20 = or i16 %19, 4
  store i16 %20, ptr %bits, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end21, %if.end4.if.end32_crit_edge, %if.end4.thread
  %idx.1 = phi i32 [ %5, %do.end21 ], [ 0, %if.end4.if.end32_crit_edge ], [ 0, %if.end4.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %direction)
  %cmp33 = icmp eq i32 %direction, 4
  br i1 %cmp33, label %if.then35, label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp86237.not = icmp eq i32 %sg_len, 0
  br i1 %cmp86237.not, label %for.cond85.preheader.if.end157_crit_edge, label %for.body88.lr.ph

for.cond85.preheader.if.end157_crit_edge:         ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

for.body88.lr.ph:                                 ; preds = %for.cond85.preheader
  %ccw99 = getelementptr i8, ptr %chan, i32 192
  %ccw_phys102 = getelementptr i8, ptr %chan, i32 196
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp121 = icmp eq i32 %direction, 2
  %conv128 = select i1 %cmp121, i16 773, i16 774
  %21 = and i16 %conv128, 771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool146.not244 = icmp slt i32 %flags, 0
  %spec.store.select.v = select i1 %tobool146.not244, i16 200, i16 72
  %spec.store.select = or i16 %21, %spec.store.select.v
  br label %for.body88

if.then35:                                        ; preds = %if.end32
  %ccw36 = getelementptr i8, ptr %chan, i32 192
  %22 = ptrtoint ptr %ccw36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ccw36, align 4
  %inc = add nuw i32 %idx.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp38241.not = icmp eq i32 %sg_len, 0
  br i1 %cmp38241.not, label %if.then35.for.end_crit_edge, label %if.then35.for.body_crit_edge

if.then35.for.body_crit_edge:                     ; preds = %if.then35
  br label %for.body

if.then35.for.end_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then35.for.body_crit_edge
  %pio.0243 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %sgl, %if.then35.for.body_crit_edge ]
  %j.0242 = phi i32 [ %inc40, %for.body.for.body_crit_edge ], [ 0, %if.then35.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %pio.0243, i32 1
  %24 = ptrtoint ptr %pio.0243 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pio.0243, align 4
  %inc40 = add nuw i32 %j.0242, 1
  %arrayidx41 = getelementptr %struct.mxs_dma_ccw, ptr %23, i32 %idx.1, i32 4, i32 %j.0242
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx41, align 4
  %exitcond246.not = icmp eq i32 %inc40, %sg_len
  br i1 %exitcond246.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then35.for.end_crit_edge
  %bits42 = getelementptr %struct.mxs_dma_ccw, ptr %23, i32 %idx.1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flags)
  %tobool52.not = icmp sgt i32 %flags, -1
  %spec.select = select i1 %tobool52.not, i16 840, i16 968
  %sg_len.tr = trunc i32 %sg_len to i16
  %27 = shl i16 %sg_len.tr, 12
  %conv71 = or i16 %spec.select, %27
  %28 = ptrtoint ptr %bits42 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv71, ptr %bits42, align 4
  %and76 = and i32 %flags, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %for.end.if.end157_crit_edge, label %if.then78

for.end.if.end157_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = or i16 %conv71, 32
  %30 = ptrtoint ptr %bits42 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %bits42, align 4
  br label %if.end157

for.body88:                                       ; preds = %if.end98.for.body88_crit_edge, %for.body88.lr.ph
  %idx.2240 = phi i32 [ %idx.1, %for.body88.lr.ph ], [ %inc100, %if.end98.for.body88_crit_edge ]
  %i.0239 = phi i32 [ 0, %for.body88.lr.ph ], [ %add129, %if.end98.for.body88_crit_edge ]
  %sg.0238 = phi ptr [ %sgl, %for.body88.lr.ph ], [ %call155, %if.end98.for.body88_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0238, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %32)
  %cmp89 = icmp ugt i32 %32, 65280
  br i1 %cmp89, label %do.end94, label %if.end98

do.end94:                                         ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #9
  %dev96 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 4, i32 15
  %33 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.25, i32 noundef %32, i32 noundef 65280) #10
  br label %err_out

if.end98:                                         ; preds = %for.body88
  %35 = ptrtoint ptr %ccw99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ccw99, align 4
  %inc100 = add i32 %idx.2240, 1
  %arrayidx101 = getelementptr %struct.mxs_dma_ccw, ptr %36, i32 %idx.2240
  %37 = ptrtoint ptr %ccw_phys102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ccw_phys102, align 4
  %mul103 = mul i32 %inc100, 76
  %add104 = add i32 %38, %mul103
  %39 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add104, ptr %arrayidx101, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0238, i32 0, i32 3
  %40 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_address, align 4
  %bufaddr = getelementptr %struct.mxs_dma_ccw, ptr %36, i32 %idx.2240, i32 3
  %42 = ptrtoint ptr %bufaddr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %bufaddr, align 4
  %43 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_length, align 4
  %conv107 = trunc i32 %44 to i16
  %xfer_bytes = getelementptr %struct.mxs_dma_ccw, ptr %36, i32 %idx.2240, i32 2
  %45 = ptrtoint ptr %xfer_bytes to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv107, ptr %xfer_bytes, align 2
  %bits108 = getelementptr %struct.mxs_dma_ccw, ptr %36, i32 %idx.2240, i32 1
  %add129 = add nuw i32 %i.0239, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129, i32 %sg_len)
  %cmp130 = icmp eq i32 %add129, %sg_len
  %spec.select248 = select i1 %cmp130, i16 %spec.store.select, i16 %conv128
  %46 = ptrtoint ptr %bits108 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %spec.select248, ptr %bits108, align 4
  %call155 = tail call ptr @sg_next(ptr noundef %sg.0238) #7
  %exitcond.not = icmp eq i32 %add129, %sg_len
  br i1 %exitcond.not, label %if.end98.if.end157_crit_edge, label %if.end98.for.body88_crit_edge

if.end98.for.body88_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body88

if.end98.if.end157_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.end157:                                        ; preds = %if.end98.if.end157_crit_edge, %if.then78, %for.end.if.end157_crit_edge, %for.cond85.preheader.if.end157_crit_edge
  %idx.3 = phi i32 [ %inc, %if.then78 ], [ %inc, %for.end.if.end157_crit_edge ], [ %idx.1, %for.cond85.preheader.if.end157_crit_edge ], [ %inc100, %if.end98.if.end157_crit_edge ]
  %desc_count158 = getelementptr i8, ptr %chan, i32 200
  %47 = ptrtoint ptr %desc_count158 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %idx.3, ptr %desc_count158, align 4
  %desc = getelementptr i8, ptr %chan, i32 64
  br label %cleanup

err_out:                                          ; preds = %do.end94, %do.end
  %48 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end157
  %retval.0 = phi ptr [ null, %err_out ], [ %desc, %if.end157 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mxs_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %dma_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %div = udiv i32 %buf_len, %period_len
  %status = getelementptr i8, ptr %chan, i32 204
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %status, align 4
  %flags3 = getelementptr i8, ptr %chan, i32 208
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags3, align 4
  %or5 = or i32 %6, 3
  store i32 %or5, ptr %flags3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %div)
  %cmp6 = icmp ugt i32 %div, 215
  br i1 %cmp6, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 4, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef %div, i32 noundef 215) #10
  br label %err_out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %period_len)
  %cmp9 = icmp ugt i32 %period_len, 65280
  br i1 %cmp9, label %do.end13, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp1794.not = icmp eq i32 %buf_len, 0
  br i1 %cmp1794.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ccw18 = getelementptr i8, ptr %chan, i32 192
  %ccw_phys21 = getelementptr i8, ptr %chan, i32 196
  %conv = trunc i32 %period_len to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp46 = icmp eq i32 %direction, 2
  %conv51 = select i1 %cmp46, i16 845, i16 846
  br label %while.body

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 4, i32 15
  %9 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29, i32 noundef %period_len, i32 noundef 65280) #10
  br label %err_out

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %buf.097 = phi i32 [ 0, %while.body.lr.ph ], [ %add53, %while.body.while.body_crit_edge ]
  %i.096 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %dma_addr.addr.095 = phi i32 [ %dma_addr, %while.body.lr.ph ], [ %add52, %while.body.while.body_crit_edge ]
  %11 = ptrtoint ptr %ccw18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ccw18, align 4
  %arrayidx = getelementptr %struct.mxs_dma_ccw, ptr %12, i32 %i.096
  %add = add i32 %i.096, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp19 = icmp eq i32 %add, %div
  %13 = ptrtoint ptr %ccw_phys21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ccw_phys21, align 4
  %mul = mul i32 %add, 76
  %add23 = select i1 %cmp19, i32 0, i32 %mul
  %storemerge = add i32 %14, %add23
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %arrayidx, align 4
  %bufaddr = getelementptr %struct.mxs_dma_ccw, ptr %12, i32 %i.096, i32 3
  %16 = ptrtoint ptr %bufaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dma_addr.addr.095, ptr %bufaddr, align 4
  %xfer_bytes = getelementptr %struct.mxs_dma_ccw, ptr %12, i32 %i.096, i32 2
  %17 = ptrtoint ptr %xfer_bytes to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %xfer_bytes, align 2
  %bits = getelementptr %struct.mxs_dma_ccw, ptr %12, i32 %i.096, i32 1
  %18 = ptrtoint ptr %bits to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv51, ptr %bits, align 4
  %add52 = add i32 %dma_addr.addr.095, %period_len
  %add53 = add i32 %buf.097, %period_len
  %cmp17 = icmp ult i32 %add53, %buf_len
  br i1 %cmp17, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %desc_count = getelementptr i8, ptr %chan, i32 200
  %19 = ptrtoint ptr %desc_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0.lcssa, ptr %desc_count, align 4
  %desc = getelementptr i8, ptr %chan, i32 64
  br label %cleanup

err_out:                                          ; preds = %do.end13, %do.end
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_out ], [ %desc, %while.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_pause_chan(ptr nocapture noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chan_id3 = getelementptr i8, ptr %chan, i32 16
  %2 = ptrtoint ptr %chan_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id3, align 4
  %type = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %do.body, label %land.lhs.true.do.body6_crit_edge

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #7, !srcloc !70
  br label %if.end

do.body6:                                         ; preds = %land.lhs.true.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %shl9 = shl nuw i32 1, %3
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl9)
  %base10 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base10, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #7, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %do.body6, %do.body
  %status = getelementptr i8, ptr %chan, i32 204
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_resume_chan(ptr nocapture noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chan_id3 = getelementptr i8, ptr %chan, i32 16
  %2 = ptrtoint ptr %chan_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id3, align 4
  %type = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %do.body, label %land.lhs.true.do.body6_crit_edge

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #7, !srcloc !70
  br label %if.end

do.body6:                                         ; preds = %land.lhs.true.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %shl9 = shl nuw i32 1, %3
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl9)
  %base10 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base10, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #7, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %do.body6, %do.body
  %status = getelementptr i8, ptr %chan, i32 204
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_terminate_all(ptr nocapture noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mxs_dma_reset_chan(ptr noundef %chan)
  %status.i = getelementptr i8, ptr %chan, i32 204
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_dma_enable_chan(ptr nocapture noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chan_id3 = getelementptr i8, ptr %chan, i32 16
  %2 = ptrtoint ptr %chan_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %ccw_phys = getelementptr i8, ptr %chan, i32 196
  %4 = ptrtoint ptr %ccw_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ccw_phys, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  %phi.sel = select i1 %cmp4, i32 80, i32 272
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %13 = phi i32 [ 272, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %mul = mul i32 %3, 112
  %add = add i32 %13, %mul
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !70
  %flags = getelementptr i8, ptr %chan, i32 208
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %.not = icmp eq i32 %16, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp13 = icmp eq i32 %20, 0
  br i1 %.not, label %do.body8, label %do.body22

do.body8:                                         ; preds = %land.end
  br i1 %cmp13, label %land.rhs14, label %do.body8.land.end17_crit_edge

do.body8.land.end17_crit_edge:                    ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end17

land.rhs14:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16 = icmp eq i32 %22, 0
  %phi.sel52 = select i1 %cmp16, i32 128, i32 320
  br label %land.end17

land.end17:                                       ; preds = %land.rhs14, %do.body8.land.end17_crit_edge
  %23 = phi i32 [ 320, %do.body8.land.end17_crit_edge ], [ %phi.sel52, %land.rhs14 ]
  %add20 = add i32 %23, %mul
  %add.ptr21 = getelementptr i8, ptr %18, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 33554432) #7, !srcloc !70
  br label %if.end

do.body22:                                        ; preds = %land.end
  br i1 %cmp13, label %land.rhs28, label %do.body22.land.end31_crit_edge

do.body22.land.end31_crit_edge:                   ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end31

land.rhs28:                                       ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30 = icmp eq i32 %25, 0
  %phi.sel51 = select i1 %cmp30, i32 128, i32 320
  br label %land.end31

land.end31:                                       ; preds = %land.rhs28, %do.body22.land.end31_crit_edge
  %26 = phi i32 [ 320, %do.body22.land.end31_crit_edge ], [ %phi.sel51, %land.rhs28 ]
  %add34 = add i32 %26, %mul
  %add.ptr35 = getelementptr i8, ptr %18, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 16777216) #7, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %land.end31, %land.end17
  %reset = getelementptr i8, ptr %chan, i32 212
  %27 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %reset, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mxs_dma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #4 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %param = alloca %struct.mxs_dma_filter_param, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %cap_mask = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap_mask, align 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #7
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %5 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 4
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %param, align 4
  %nr_channels = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp2.not = icmp ult i32 %8, %11
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 4
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @mxs_dma_filter_fn, ptr noundef nonnull %param, ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_dma_int_handler(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_channels.i = getelementptr inbounds %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not6.i = icmp eq i32 %1, 0
  br i1 %cmp.not6.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %chan_irq.i = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 4
  %2 = ptrtoint ptr %chan_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_irq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp1.i = icmp eq i32 %3, %irq
  br i1 %cmp1.i, label %mxs_dma_irq_to_chan.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %cmp.not.i = icmp eq i32 %inc.i, %1
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mxs_dma_irq_to_chan.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.07.i)
  %cmp = icmp slt i32 %i.07.i, 0
  br i1 %cmp, label %mxs_dma_irq_to_chan.exit.cleanup_crit_edge, label %if.end

mxs_dma_irq_to_chan.exit.cleanup_crit_edge:       ; preds = %mxs_dma_irq_to_chan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mxs_dma_irq_to_chan.exit
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !73
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shr = lshr i32 %7, %i.07.i
  %and = and i32 %shr, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %i.07.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #7, !srcloc !70
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !73
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %add = add nuw i32 %i.07.i, 16
  %or = shl i32 65537, %i.07.i
  %and15 = and i32 %14, %or
  %shr17 = lshr i32 %and15, %add
  %shr18 = lshr i32 %and15, %i.07.i
  %add19 = add i32 %shr17, %shr18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %8) #7, !srcloc !70
  %and.not = xor i32 %and, -1
  %sub = and i32 %add19, %and.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.else, label %do.body29

do.body29:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_dma_int_handler.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_dma_int_handler, %do.end39)) #7
          to label %if.then36 [label %do.end39], !srcloc !86

if.then36:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 4, i32 15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_dma_int_handler.__UNIQUE_ID_ddebug236, ptr noundef %18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %i.07.i) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body29
  %status = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 8
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %status, align 4
  %chan40 = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 1
  tail call fastcc void @mxs_dma_reset_chan(ptr noundef %chan40)
  br label %if.end66

if.else:                                          ; preds = %if.end
  %status41 = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 8
  %20 = ptrtoint ptr %status41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp42.not = icmp eq i32 %21, 0
  br i1 %cmp42.not, label %if.else.if.end66_crit_edge, label %if.then43

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then43:                                        ; preds = %if.else
  %flags = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 9
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and44 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else62, label %if.then46

if.then46:                                        ; preds = %if.then43
  %24 = ptrtoint ptr %status41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %status41, align 4
  %and49 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then46.if.end66_crit_edge, label %do.body52

if.then46.if.end66_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.body52:                                        ; preds = %if.then46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp56 = icmp eq i32 %28, 0
  br i1 %cmp56, label %land.rhs, label %do.body52.land.end_crit_edge

do.body52.land.end_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp58 = icmp eq i32 %30, 0
  %phi.sel = select i1 %cmp58, i32 128, i32 320
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body52.land.end_crit_edge
  %31 = phi i32 [ 320, %do.body52.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %mul = mul i32 %i.07.i, 112
  %add59 = add i32 %31, %mul
  %add.ptr60 = getelementptr i8, ptr %26, i32 %add59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 16777216) #7, !srcloc !70
  br label %if.end66

if.else62:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %status41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %status41, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %land.end, %if.then46.if.end66_crit_edge, %if.else.if.end66_crit_edge, %do.end39
  %status67 = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 8
  %33 = ptrtoint ptr %status67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp68 = icmp eq i32 %34, 0
  br i1 %cmp68, label %if.then69, label %if.end66.if.end73_crit_edge

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then69:                                        ; preds = %if.end66
  %reset = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 10
  %35 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reset, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool70.not = icmp eq i8 %36, 0
  br i1 %tobool70.not, label %if.end72, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %if.then69
  %desc = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 2
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i = icmp slt i32 %38, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !75

do.body2.i:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !89
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %chan.i = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 2, i32 3
  %39 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %completed_cookie.i, align 4
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %desc, align 4
  br label %if.end73

if.end73:                                         ; preds = %dma_cookie_complete.exit, %if.end66.if.end73_crit_edge
  %state.i = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet = getelementptr %struct.mxs_dma_engine, ptr %dev_id, i32 0, i32 5, i32 %i.07.i, i32 3
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end73.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %mxs_dma_irq_to_chan.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mxs_dma_irq_to_chan.exit.cleanup_crit_edge ], [ 1, %if.then69.cleanup_crit_edge ], [ 1, %if.end73.cleanup_crit_edge ], [ 1, %if.then.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_dma_reset_chan(ptr nocapture noundef %chan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chan_id3 = getelementptr i8, ptr %chan, i32 16
  %2 = ptrtoint ptr %chan_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id3, align 4
  %flags = getelementptr i8, ptr %chan, i32 208
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %6 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %.not = icmp eq i32 %6, 3
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reset = getelementptr i8, ptr %chan, i32 212
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %reset, align 4
  br label %if.end36

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true7, label %if.else.if.else11_crit_edge

if.else.if.else11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

land.lhs.true7:                                   ; preds = %if.else
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %do.body, label %land.lhs.true7.if.else11_crit_edge

land.lhs.true7.if.else11_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

do.body:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %add = add i32 %3, 16
  %shl = shl nuw i32 1, %add
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %12) #7, !srcloc !70
  br label %if.end36

if.else11:                                        ; preds = %land.lhs.true7.if.else11_crit_edge, %if.else.if.else11_crit_edge
  %base12 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base12, align 4
  %mul = mul i32 %3, 112
  %add13 = add i32 %mul, 336
  %add.ptr14 = getelementptr i8, ptr %16, i32 %add13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %18 = and i32 %17, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %18)
  %cmp1853 = icmp eq i32 %18, 134217728
  br i1 %cmp1853, label %if.else11.while.body_crit_edge, label %if.else11.do.body27_crit_edge

if.else11.do.body27_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

if.else11.while.body_crit_edge:                   ; preds = %if.else11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else11.while.body_crit_edge
  %elapsed.054 = phi i32 [ %add20, %while.body.while.body_crit_edge ], [ 0, %if.else11.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #7
  %add20 = add nuw nsw i32 %elapsed.054, 100
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %21 = and i32 %20, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %21)
  %cmp18 = icmp eq i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 49900, i32 %elapsed.054)
  %cmp19 = icmp ult i32 %elapsed.054, 49900
  %or.cond52 = select i1 %cmp18, i1 %cmp19, i1 false
  br i1 %or.cond52, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 49899, i32 %elapsed.054)
  %phi.cmp = icmp ugt i32 %elapsed.054, 49899
  br i1 %phi.cmp, label %do.end25, label %while.end.do.body27_crit_edge

while.end.do.body27_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

do.end25:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %pdev = getelementptr inbounds %struct.mxs_dma_engine, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %3) #10
  br label %do.body27

do.body27:                                        ; preds = %do.end25, %while.end.do.body27_crit_edge, %if.else11.do.body27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %add30 = add i32 %3, 16
  %shl31 = shl nuw i32 1, %add30
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl31)
  %27 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base12, align 4
  %add.ptr34 = getelementptr i8, ptr %28, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %26) #7, !srcloc !70
  br label %if.end36

if.end36:                                         ; preds = %do.body27, %do.body, %if.then
  %status = getelementptr i8, ptr %chan, i32 204
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %status, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxs_dma_tx_submit(ptr nocapture noundef %tx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1.i, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %3, 1
  %4 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #7
  %5 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cookie2.i, align 4
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %tx, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mxs_dma_filter_fn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %fn_param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %2 = ptrtoint ptr %fn_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fn_param, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %pdev = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call4 = tail call i32 @platform_get_irq(ptr noundef %7, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %chan_irq8 = getelementptr i8, ptr %chan, i32 188
  %8 = ptrtoint ptr %chan_irq8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %chan_irq8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end7 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_mxs_dma__237_848_mxs_dma_module_init4, !1, !"__initcall__kmod_mxs_dma__237_848_mxs_dma_module_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/mxs-dma.c", i32 848, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/mxs-dma.c", i32 839, i32 11}
!4 = !{ptr @mxs_dma_driver, !5, !"mxs_dma_driver", i1 false, i1 false}
!5 = !{!"../drivers/dma/mxs-dma.c", i32 837, i32 31}
!6 = !{ptr @mxs_dma_dt_ids, !7, !"mxs_dma_dt_ids", i1 false, i1 false}
!7 = !{!"../drivers/dma/mxs-dma.c", i32 170, i32 34}
!8 = !{ptr @mxs_dma_types, !9, !"mxs_dma_types", i1 false, i1 false}
!9 = !{!"../drivers/dma/mxs-dma.c", i32 154, i32 28}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/mxs-dma.c", i32 756, i32 33}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/mxs-dma.c", i32 758, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mxs_dma_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @mxs_dma_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/mxs-dma.c", i32 822, i32 3}
!22 = !{ptr @mxs_dma_probe._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mxs_dma_probe._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/mxs-dma.c", i32 828, i32 3}
!26 = !{ptr @mxs_dma_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mxs_dma_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/mxs-dma.c", i32 832, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mxs_dma_probe._entry.13, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mxs_dma_probe._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/mxs-dma.c", i32 368, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mxs_dma_int_handler.__UNIQUE_ID_ddebug236, !34, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/mxs-dma.c", i32 222, i32 4}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mxs_dma_reset_chan._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mxs_dma_reset_chan._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/mxs-dma.c", i32 492, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mxs_dma_prep_slave_sg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mxs_dma_prep_slave_sg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/mxs-dma.c", i32 537, i32 5}
!50 = !{ptr @mxs_dma_prep_slave_sg._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mxs_dma_prep_slave_sg._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/mxs-dma.c", i32 592, i32 3}
!54 = !{ptr @mxs_dma_prep_dma_cyclic._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mxs_dma_prep_dma_cyclic._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/mxs-dma.c", i32 599, i32 3}
!58 = !{ptr @mxs_dma_prep_dma_cyclic._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mxs_dma_prep_dma_cyclic._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2154462025}
!70 = !{i64 5880414}
!71 = !{i64 2154462478}
!72 = !{i64 2154462934}
!73 = !{i64 5880832}
!74 = !{i64 2154461541}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2154452192, i64 2154452678, i64 2154452229, i64 2154452285, i64 2154452319, i64 2154452343, i64 2154452384, i64 2154452405, i64 2154452433, i64 2154452467}
!77 = !{i64 2154441362}
!78 = !{i64 2154441817}
!79 = !{i64 2154442355}
!80 = !{i64 2154442810}
!81 = !{i64 2154439101}
!82 = !{i64 2154444792}
!83 = !{i64 2154445034}
!84 = !{i64 2154445751}
!85 = !{i64 2154445999}
!86 = !{i64 2148287034, i64 2148287039, i64 2148287052, i64 2148287096, i64 2148287130, i64 2148287151}
!87 = !{i64 2154449122}
!88 = !{i8 0, i8 2}
!89 = !{i64 2154395776, i64 2154396263, i64 2154395813, i64 2154395869, i64 2154395903, i64 2154395927, i64 2154395968, i64 2154395989, i64 2154396017, i64 2154396051}
!90 = !{i64 2154434374}
!91 = !{i64 2154435089}
!92 = !{i64 2154438344}
