; ModuleID = '/llk/IR_all_yes/drivers/dma/mmp_tdma.c_pt.bc'
source_filename = "../drivers/dma/mmp_tdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mmp_tdma_device = type { ptr, ptr, %struct.dma_device, [2 x ptr] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmp_tdma_chan = type { ptr, %struct.dma_chan, %struct.dma_async_tx_descriptor, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.dma_slave_config, i32, i32, i32, ptr, i32, i32, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.mmp_tdma_desc = type { i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.mmp_tdma_filter_param = type { i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_mmp_tdma__236_764_mmp_tdma_driver_init6 = internal global ptr @mmp_tdma_driver_init, section ".initcall6.init", align 4
@mmp_tdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmp_tdma_probe, ptr @mmp_tdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmp_tdma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mmp_tdma_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmp_tdma_driver_exit = internal global ptr @mmp_tdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [35 x i8] c"mmp_tdma.file=drivers/dma/mmp_tdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [21 x i8] c"mmp_tdma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [48 x i8] c"mmp_tdma.description=MMP Two-Channel DMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias240 = internal constant [33 x i8] c"mmp_tdma.alias=platform:mmp-tdma\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [43 x i8] c"mmp_tdma.author=Leo Yan <leoy@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [56 x i8] c"mmp_tdma.author=Zhangfei Gao <zhangfei.gao@marvell.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmp-tdma\00", [23 x i8] zeroinitializer }, align 32
@mmp_tdma_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,adma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa910-squ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mmp_tdma_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mmp-adma\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"pxa910-squ\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"asram\00", [26 x i8] zeroinitializer }, align 32
@mmp_tdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 678, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"asram pool not available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmp_tdma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/mmp_tdma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmp_tdma_probe._entry_ptr = internal global ptr @mmp_tdma_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tdma\00", [27 x i8] zeroinitializer }, align 32
@mmp_tdma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 730, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@mmp_tdma_probe._entry_ptr.10 = internal global ptr @mmp_tdma_probe._entry.8, section ".printk_index", align 4
@mmp_tdma_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 739, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register controller\0A\00", [33 x i8] zeroinitializer }, align 32
@mmp_tdma_probe._entry_ptr.13 = internal global ptr @mmp_tdma_probe._entry.11, section ".printk_index", align 4
@mmp_tdma_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 744, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initialized\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mmp_tdma_probe._entry_ptr.17 = internal global ptr @mmp_tdma_probe._entry.14, section ".printk_index", align 4
@mmp_tdma_chan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"too many channels for device!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmp_tdma_chan_init\00", [45 x i8] zeroinitializer }, align 32
@mmp_tdma_chan_init._entry_ptr = internal global ptr @mmp_tdma_chan_init._entry, section ".printk_index", align 4
@mmp_tdma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported transfer direction\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mmp_tdma_prep_dma_cyclic\00", [39 x i8] zeroinitializer }, align 32
@mmp_tdma_prep_dma_cyclic._entry_ptr = internal global ptr @mmp_tdma_prep_dma_cyclic._entry, section ".printk_index", align 4
@mmp_tdma_prep_dma_cyclic._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"controller busy\00", [16 x i8] zeroinitializer }, align 32
@mmp_tdma_prep_dma_cyclic._entry_ptr.24 = internal global ptr @mmp_tdma_prep_dma_cyclic._entry.22, section ".printk_index", align 4
@mmp_tdma_prep_dma_cyclic._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"maximum period size exceeded: %zu > %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mmp_tdma_prep_dma_cyclic._entry_ptr.27 = internal global ptr @mmp_tdma_prep_dma_cyclic._entry.25, section ".printk_index", align 4
@mmp_tdma_config_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown burst size.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmp_tdma_config_chan\00", [43 x i8] zeroinitializer }, align 32
@mmp_tdma_config_chan._entry_ptr = internal global ptr @mmp_tdma_config_chan._entry, section ".printk_index", align 4
@mmp_tdma_config_chan._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown bus size.\0A\00", [45 x i8] zeroinitializer }, align 32
@mmp_tdma_config_chan._entry_ptr.32 = internal global ptr @mmp_tdma_config_chan._entry.30, section ".printk_index", align 4
@mmp_tdma_config_chan._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mmp_tdma_config_chan._entry_ptr.34 = internal global ptr @mmp_tdma_config_chan._entry.33, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"mmp_tdma_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 754, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 756, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"mmp_tdma_dt_ids\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 630, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"mmp_tdma_id_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 748, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 674, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 678, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 685, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 730, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 738, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 744, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 570, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 433, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 438, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 443, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 238, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 253, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private constant [26 x i8] c"../drivers/dma/mmp_tdma.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 279, i32 4 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_mmp_tdma_driver_exit, ptr @__initcall__kmod_mmp_tdma__236_764_mmp_tdma_driver_init6, ptr @mmp_tdma_chan_init._entry, ptr @mmp_tdma_chan_init._entry_ptr, ptr @mmp_tdma_config_chan._entry, ptr @mmp_tdma_config_chan._entry.30, ptr @mmp_tdma_config_chan._entry.33, ptr @mmp_tdma_config_chan._entry_ptr, ptr @mmp_tdma_config_chan._entry_ptr.32, ptr @mmp_tdma_config_chan._entry_ptr.34, ptr @mmp_tdma_driver_exit, ptr @mmp_tdma_prep_dma_cyclic._entry, ptr @mmp_tdma_prep_dma_cyclic._entry.22, ptr @mmp_tdma_prep_dma_cyclic._entry.25, ptr @mmp_tdma_prep_dma_cyclic._entry_ptr, ptr @mmp_tdma_prep_dma_cyclic._entry_ptr.24, ptr @mmp_tdma_prep_dma_cyclic._entry_ptr.27, ptr @mmp_tdma_probe._entry, ptr @mmp_tdma_probe._entry.11, ptr @mmp_tdma_probe._entry.14, ptr @mmp_tdma_probe._entry.8, ptr @mmp_tdma_probe._entry_ptr, ptr @mmp_tdma_probe._entry_ptr.10, ptr @mmp_tdma_probe._entry_ptr.13, ptr @mmp_tdma_probe._entry_ptr.17, ptr @mmp_tdma_driver, ptr @.str, ptr @mmp_tdma_dt_ids, ptr @mmp_tdma_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_chan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_prep_dma_cyclic._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_prep_dma_cyclic._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_config_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_config_chan._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_tdma_config_chan._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmp_tdma_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmp_tdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmp_tdma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @mmp_tdma_dt_ids, ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %type.0 = phi i32 [ %2, %if.then ], [ %6, %if.else ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call.i, align 4
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  %inc = zext i1 %cmp9 to i32
  %call8.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %cmp9.1 = icmp sgt i32 %call8.1, 0
  %inc.1 = zext i1 %cmp9.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call13) #8
  %base = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end5
  %device = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2
  %channels = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %channels, ptr %prev.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call ptr @of_gen_pool_get(ptr noundef nonnull %13, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  br label %if.end30

if.else28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call ptr @sram_get_gpool(ptr noundef nonnull @.str.1) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then24
  %pool.0 = phi ptr [ %call27, %if.then24 ], [ %call29, %if.else28 ]
  %tobool31.not = icmp eq ptr %pool.0, null
  br i1 %tobool31.not, label %do.end, label %if.end34

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.1)
  %cmp35.not = icmp eq i32 %spec.select.1, 2
  %call48 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  br i1 %cmp35.not, label %if.end34.cond.end_crit_edge, label %if.then36

if.end34.cond.end_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then36:                                        ; preds = %if.end34
  %call.i203 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call48, ptr noundef nonnull @mmp_tdma_int_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool40.not = icmp eq i32 %call.i203, 0
  br i1 %tobool40.not, label %if.then36.cond.end_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36.cond.end_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end:                                         ; preds = %if.then36.cond.end_crit_edge, %if.end34.cond.end_crit_edge
  %cond = phi i32 [ 0, %if.then36.cond.end_crit_edge ], [ %call48, %if.end34.cond.end_crit_edge ]
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 304, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %cond.end.cleanup_crit_edge, label %if.end3.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool4.not.i = icmp eq i32 %cond, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq6.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %irq6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %irq6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %call.i.i, align 4
  %chan.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %device, ptr %chan.i, align 4
  %idx11.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %idx11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idx11.i, align 4
  %type12.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 14
  %22 = ptrtoint ptr %type12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %type.0, ptr %type12.i, align 4
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %reg_base.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %reg_base.i, align 4
  %pool13.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 20
  %26 = ptrtoint ptr %pool13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pool.0, ptr %pool13.i, align 4
  %status.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 11
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %status.i, align 4
  %arrayidx.i = getelementptr %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 3, i32 0
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tasklet.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 3
  tail call void @tasklet_setup(ptr noundef %tasklet.i, ptr noundef nonnull @dma_do_tasklet) #8
  %device_node.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 1, i32 8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node.i, ptr noundef %30, ptr noundef %channels) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.for.inc53_crit_edge

if.end7.i.for.inc53_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %device_node.i, ptr %prev.i, align 4
  %32 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %channels, ptr %device_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i, i32 0, i32 1, i32 8, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %device_node.i, ptr %30, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %if.end.i.i.i, %if.end7.i.for.inc53_crit_edge
  br i1 %cmp35.not, label %cond.false.1, label %for.inc53.cond.end.1_crit_edge

for.inc53.cond.end.1_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.1

cond.false.1:                                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  %call48.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.false.1, %for.inc53.cond.end.1_crit_edge
  %cond.1 = phi i32 [ %call48.1, %cond.false.1 ], [ 0, %for.inc53.cond.end.1_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %call.i.i.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef 304, i32 noundef 3520) #8
  %tobool.not.i.1 = icmp eq ptr %call.i.i.1, null
  br i1 %tobool.not.i.1, label %cond.end.1.cleanup_crit_edge, label %if.end3.i.1

cond.end.1.cleanup_crit_edge:                     ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i.1:                                      ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.1)
  %tobool4.not.i.1 = icmp eq i32 %cond.1, 0
  br i1 %tobool4.not.i.1, label %if.end3.i.1.if.end7.i.1_crit_edge, label %if.then5.i.1

if.end3.i.1.if.end7.i.1_crit_edge:                ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.1

if.then5.i.1:                                     ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %irq6.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 15
  %37 = ptrtoint ptr %irq6.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond.1, ptr %irq6.i.1, align 4
  br label %if.end7.i.1

if.end7.i.1:                                      ; preds = %if.then5.i.1, %if.end3.i.1.if.end7.i.1_crit_edge
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %40 = ptrtoint ptr %call.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %call.i.i.1, align 4
  %chan.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 1
  %41 = ptrtoint ptr %chan.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %device, ptr %chan.i.1, align 4
  %idx11.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 13
  %42 = ptrtoint ptr %idx11.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %idx11.i.1, align 4
  %type12.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 14
  %43 = ptrtoint ptr %type12.i.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %type.0, ptr %type12.i.1, align 4
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %45, i32 4
  %reg_base.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 16
  %46 = ptrtoint ptr %reg_base.i.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i.1, ptr %reg_base.i.1, align 4
  %pool13.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 20
  %47 = ptrtoint ptr %pool13.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pool.0, ptr %pool13.i.1, align 4
  %status.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 11
  %48 = ptrtoint ptr %status.i.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %status.i.1, align 4
  %arrayidx.i.1 = getelementptr %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i.1, ptr %arrayidx.i.1, align 4
  %tasklet.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 3
  tail call void @tasklet_setup(ptr noundef %tasklet.i.1, ptr noundef nonnull @dma_do_tasklet) #8
  %device_node.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 1, i32 8
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node.i.1, ptr noundef %51, ptr noundef %channels) #8
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %if.end7.i.1.for.inc53.1_crit_edge

if.end7.i.1.for.inc53.1_crit_edge:                ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53.1

if.end.i.i.i.1:                                   ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %device_node.i.1, ptr %prev.i, align 4
  %53 = ptrtoint ptr %device_node.i.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %channels, ptr %device_node.i.1, align 4
  %prev3.i.i.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %call.i.i.1, i32 0, i32 1, i32 8, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i.1, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %device_node.i.1, ptr %51, align 4
  br label %for.inc53.1

for.inc53.1:                                      ; preds = %if.end.i.i.i.1, %if.end7.i.1.for.inc53.1_crit_edge
  %cap_mask = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #8
  %dev61 = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 15
  %56 = ptrtoint ptr %dev61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev, ptr %dev61, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 27
  %57 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @mmp_tdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 29
  %58 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @mmp_tdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 40
  %59 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mmp_tdma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_tx_status = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 49
  %60 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @mmp_tdma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 50
  %61 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @mmp_tdma_issue_pending, ptr %device_issue_pending, align 4
  %device_config = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 44
  %62 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mmp_tdma_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 45
  %63 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mmp_tdma_pause_chan, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 46
  %64 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @mmp_tdma_resume_chan, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 47
  %65 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mmp_tdma_terminate_all, ptr %device_terminate_all, align 4
  %copy_align = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 10
  %66 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %copy_align, align 4
  %directions = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 21
  %67 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 6, ptr %directions, align 4
  %68 = zext i32 %type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type.0, label %for.inc53.1.if.end84_crit_edge [
    i32 0, label %if.then74
    i32 1, label %if.then80
  ]

for.inc53.1.if.end84_crit_edge:                   ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then74:                                        ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #10
  %max_burst = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 23
  %69 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 128, ptr %max_burst, align 4
  %src_addr_widths = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 19
  %70 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 20
  %71 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 16, ptr %dst_addr_widths, align 4
  br label %if.end84

if.then80:                                        ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #10
  %max_burst82 = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 23
  %72 = ptrtoint ptr %max_burst82 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 32, ptr %max_burst82, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.then74, %for.inc53.1.if.end84_crit_edge
  %residue_granularity = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 26
  %73 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %residue_granularity, align 4
  %descriptor_reuse = getelementptr inbounds %struct.mmp_tdma_device, ptr %call.i, i32 0, i32 2, i32 25
  %74 = ptrtoint ptr %descriptor_reuse to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %descriptor_reuse, align 4
  %call88 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call90 = tail call i32 @dmaenginem_async_device_register(ptr noundef %device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end98, label %do.end95

do.end95:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end98:                                         ; preds = %if.end84
  %78 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node, align 8
  %tobool101.not = icmp eq ptr %79, null
  br i1 %tobool101.not, label %if.end98.do.end117_crit_edge, label %if.then102

if.end98.do.end117_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end117

if.then102:                                       ; preds = %if.end98
  %call105 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %79, ptr noundef nonnull @mmp_tdma_xlate, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then102.do.end117_crit_edge, label %do.end110

if.then102.do.end117_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end117

do.end110:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.12) #11
  br label %cleanup

do.end117:                                        ; preds = %if.then102.do.end117_crit_edge, %if.end98.do.end117_crit_edge
  %82 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %do.end110, %do.end95, %cond.end.1.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %do.end, %if.then18, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then18 ], [ %call90, %do.end95 ], [ %call105, %do.end110 ], [ 0, %do.end117 ], [ -12, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i203, %if.then36.cleanup_crit_edge ], [ -12, %cond.end.1.cleanup_crit_edge ], [ -12, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_dma_controller_free(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sram_get_gpool(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_int_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mmp_tdma_device, ptr %dev_id, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %reg_base.i.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 160
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mmp_tdma_chan_handler.exit_crit_edge, label %if.then.i

entry.mmp_tdma_chan_handler.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_chan_handler.exit

if.then.i:                                        ; preds = %entry
  %and2.i.i = and i32 %5, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i) #8
  %7 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %8, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %6) #8, !srcloc !89
  %state.i.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %1, i32 0, i32 3, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i2.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i2.i, label %if.then.i3.i, label %if.then.i.mmp_tdma_chan_handler.exit_crit_edge

if.then.i.mmp_tdma_chan_handler.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_chan_handler.exit

if.then.i3.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %1, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i) #8
  br label %mmp_tdma_chan_handler.exit

mmp_tdma_chan_handler.exit:                       ; preds = %if.then.i3.i, %if.then.i.mmp_tdma_chan_handler.exit_crit_edge, %entry.mmp_tdma_chan_handler.exit_crit_edge
  %9 = phi i32 [ 0, %entry.mmp_tdma_chan_handler.exit_crit_edge ], [ 1, %if.then.i.mmp_tdma_chan_handler.exit_crit_edge ], [ 1, %if.then.i3.i ]
  %arrayidx.1 = getelementptr %struct.mmp_tdma_device, ptr %dev_id, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %reg_base.i.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %reg_base.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i.i.1, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %13, i32 160
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #8, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and.i.i.1 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %and.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %mmp_tdma_chan_handler.exit.mmp_tdma_chan_handler.exit.1_crit_edge, label %if.then.i.1

mmp_tdma_chan_handler.exit.mmp_tdma_chan_handler.exit.1_crit_edge: ; preds = %mmp_tdma_chan_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_chan_handler.exit.1

if.then.i.1:                                      ; preds = %mmp_tdma_chan_handler.exit
  %and2.i.i.1 = and i32 %15, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i.1) #8
  %17 = ptrtoint ptr %reg_base.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i.i.1, align 4
  %add.ptr4.i.i.1 = getelementptr i8, ptr %18, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.1, i32 %16) #8, !srcloc !89
  %state.i.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %11, i32 0, i32 3, i32 1
  %call.i.i.1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i2.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i2.i.1, label %if.then.i3.i.1, label %if.then.i.1.mmp_tdma_chan_handler.exit.1_crit_edge

if.then.i.1.mmp_tdma_chan_handler.exit.1_crit_edge: ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_chan_handler.exit.1

if.then.i3.i.1:                                   ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet.i.1 = getelementptr inbounds %struct.mmp_tdma_chan, ptr %11, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i.1) #8
  br label %mmp_tdma_chan_handler.exit.1

mmp_tdma_chan_handler.exit.1:                     ; preds = %if.then.i3.i.1, %if.then.i.1.mmp_tdma_chan_handler.exit.1_crit_edge, %mmp_tdma_chan_handler.exit.mmp_tdma_chan_handler.exit.1_crit_edge
  %19 = phi i32 [ %9, %mmp_tdma_chan_handler.exit.mmp_tdma_chan_handler.exit.1_crit_edge ], [ 1, %if.then.i3.i.1 ], [ 1, %if.then.i.1.mmp_tdma_chan_handler.exit.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp ne i32 %19, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr i8, ptr %chan, i32 64
  tail call void @dma_async_tx_descriptor_init(ptr noundef %desc, ptr noundef %chan) #8
  %tx_submit = getelementptr i8, ptr %chan, i32 80
  %0 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mmp_tdma_tx_submit, ptr %tx_submit, align 4
  %irq = getelementptr i8, ptr %chan, i32 276
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %chan, i32 -4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %2, ptr noundef nonnull @mmp_tdma_chan_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp_tdma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %chan, i32 276
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %chan, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @devm_free_irq(ptr noundef %3, i32 noundef %1, ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %desc_num.i = getelementptr i8, ptr %chan, i32 196
  %4 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc_num.i, align 4
  %mul.i = shl i32 %5, 4
  %pool.i = getelementptr i8, ptr %chan, i32 296
  %6 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %desc_arr.i = getelementptr i8, ptr %chan, i32 188
  %8 = ptrtoint ptr %desc_arr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_arr.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %9 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %7, i32 noundef %10, i32 noundef %mul.i, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %desc_arr3.i = getelementptr i8, ptr %chan, i32 188
  %11 = ptrtoint ptr %desc_arr3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %desc_arr3.i, align 4
  %status.i = getelementptr i8, ptr %chan, i32 216
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.mmp_tdma_free_descriptor.exit_crit_edge

if.end.i.mmp_tdma_free_descriptor.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_free_descriptor.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %status.i, align 4
  br label %mmp_tdma_free_descriptor.exit

mmp_tdma_free_descriptor.exit:                    ; preds = %if.then4.i, %if.end.i.mmp_tdma_free_descriptor.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mmp_tdma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %dma_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -4
  %div = udiv i32 %buf_len, %period_len
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr i8, ptr %chan, i32 216
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %period_len)
  %cmp7 = icmp ugt i32 %period_len, 65536
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %period_len, i32 noundef 65536) #11
  br label %err_out

if.end13:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %status, align 4
  %desc_num = getelementptr i8, ptr %chan, i32 196
  %11 = ptrtoint ptr %desc_num to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %desc_num, align 4
  %pool.i = getelementptr i8, ptr %chan, i32 296
  %12 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end13.err_out_crit_edge, label %mmp_tdma_alloc_descriptor.exit

if.end13.err_out_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

mmp_tdma_alloc_descriptor.exit:                   ; preds = %if.end13
  %14 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_num, align 4
  %mul.i = shl i32 %15, 4
  %desc_arr_phys.i = getelementptr i8, ptr %chan, i32 192
  %call.i = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %13, i32 noundef %mul.i, ptr noundef %desc_arr_phys.i) #8
  %desc_arr.i = getelementptr i8, ptr %chan, i32 188
  %16 = ptrtoint ptr %desc_arr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %desc_arr.i, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %mmp_tdma_alloc_descriptor.exit.err_out_crit_edge, label %if.end17

mmp_tdma_alloc_descriptor.exit.err_out_crit_edge: ; preds = %mmp_tdma_alloc_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end17:                                         ; preds = %mmp_tdma_alloc_descriptor.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 2
  %. = select i1 %cmp.i, i32 224, i32 228
  %.109 = select i1 %cmp.i, i32 240, i32 244
  %.110 = select i1 %cmp.i, i32 232, i32 236
  %dst_addr.i = getelementptr i8, ptr %chan, i32 %.
  %dst_maxburst.i = getelementptr i8, ptr %chan, i32 %.109
  %dst_addr_width.i = getelementptr i8, ptr %chan, i32 %.110
  %17 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.sink = load i32, ptr %dst_maxburst.i, align 4
  %18 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.sink105 = load i32, ptr %dst_addr.i, align 4
  %19 = getelementptr i8, ptr %chan, i32 204
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink105, ptr %19, align 4
  %21 = getelementptr i8, ptr %chan, i32 208
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %21, align 4
  %23 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.sink.i = load i32, ptr %dst_addr_width.i, align 4
  %24 = getelementptr i8, ptr %chan, i32 212
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %24, align 4
  %dir4.i = getelementptr i8, ptr %chan, i32 200
  %26 = ptrtoint ptr %dir4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %direction, ptr %dir4.i, align 4
  %reg_base.i.i.i = getelementptr i8, ptr %chan, i32 280
  %27 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %28, i32 64
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %30 = and i32 %29, -1052673
  %31 = or i32 %30, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %31) #8, !srcloc !89
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %status, align 4
  %35 = ptrtoint ptr %dir4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dir4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %switch.selectcmp.i.i = icmp eq i32 %36, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %switch.selectcmp90.i.i = icmp eq i32 %36, 1
  %switch.select91.i.i = select i1 %switch.selectcmp90.i.i, i32 32, i32 %switch.select.i.i
  %type.i.i = getelementptr i8, ptr %chan, i32 272
  %37 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %38, label %if.end17.mmp_tdma_config_write.exit_crit_edge [
    i32 0, label %if.then6.i.i
    i32 1, label %if.then33.i.i
  ]

if.end17.mmp_tdma_config_write.exit_crit_edge:    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_config_write.exit

if.then6.i.i:                                     ; preds = %if.end17
  %40 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %21, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %41, label %do.end.i.i [
    i32 4, label %if.then6.i.i.sw.epilog.i.i_crit_edge
    i32 8, label %sw.bb8.i.i
    i32 16, label %sw.bb10.i.i
    i32 32, label %sw.bb12.i.i
    i32 64, label %sw.bb14.i.i
    i32 128, label %sw.bb16.i.i
  ]

if.then6.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb12.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb14.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb16.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.28) #11
  br label %err_out

sw.epilog.i.i:                                    ; preds = %sw.bb16.i.i, %sw.bb14.i.i, %sw.bb12.i.i, %sw.bb10.i.i, %sw.bb8.i.i, %if.then6.i.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i32 [ 65856, %sw.bb16.i.i ], [ 65984, %sw.bb14.i.i ], [ 65920, %sw.bb12.i.i ], [ 65728, %sw.bb10.i.i ], [ 65600, %sw.bb8.i.i ], [ 65536, %if.then6.i.i.sw.epilog.i.i_crit_edge ]
  %or17.i.i = or i32 %.sink.i.i, %switch.select91.i.i
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %24, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %46, label %do.end27.i.i [
    i32 1, label %sw.epilog.i.i.mmp_tdma_config_write.exit_crit_edge
    i32 2, label %sw.bb20.i.i
    i32 4, label %sw.bb22.i.i
  ]

sw.epilog.i.i.mmp_tdma_config_write.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_config_write.exit

sw.bb20.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or21.i.i = or i32 %or17.i.i, 8388608
  br label %mmp_tdma_config_write.exit

sw.bb22.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or23.i.i = or i32 %or17.i.i, 20971520
  br label %mmp_tdma_config_write.exit

do.end27.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.31) #11
  br label %err_out

if.then33.i.i:                                    ; preds = %if.end17
  %50 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %21, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %51, label %do.end51.i.i [
    i32 1, label %sw.bb36.i.i
    i32 2, label %sw.bb38.i.i
    i32 4, label %sw.bb40.i.i
    i32 8, label %sw.bb42.i.i
    i32 16, label %sw.bb44.i.i
    i32 32, label %sw.bb46.i.i
  ]

sw.bb36.i.i:                                      ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or37.i.i = or i32 %switch.select91.i.i, 2097472
  br label %mmp_tdma_config_write.exit

sw.bb38.i.i:                                      ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or39.i.i = or i32 %switch.select91.i.i, 2097536
  br label %mmp_tdma_config_write.exit

sw.bb40.i.i:                                      ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or34.i.i = or i32 %switch.select91.i.i, 2097152
  br label %mmp_tdma_config_write.exit

sw.bb42.i.i:                                      ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or43.i.i = or i32 %switch.select91.i.i, 2097216
  br label %mmp_tdma_config_write.exit

sw.bb44.i.i:                                      ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or45.i.i = or i32 %switch.select91.i.i, 2097344
  br label %mmp_tdma_config_write.exit

sw.bb46.i.i:                                      ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or47.i.i = or i32 %switch.select91.i.i, 2097600
  br label %mmp_tdma_config_write.exit

do.end51.i.i:                                     ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.28) #11
  br label %err_out

mmp_tdma_config_write.exit:                       ; preds = %sw.bb46.i.i, %sw.bb44.i.i, %sw.bb42.i.i, %sw.bb40.i.i, %sw.bb38.i.i, %sw.bb36.i.i, %sw.bb22.i.i, %sw.bb20.i.i, %sw.epilog.i.i.mmp_tdma_config_write.exit_crit_edge, %if.end17.mmp_tdma_config_write.exit_crit_edge
  %tdcr.2.i.i = phi i32 [ %or23.i.i, %sw.bb22.i.i ], [ %or21.i.i, %sw.bb20.i.i ], [ %or47.i.i, %sw.bb46.i.i ], [ %or45.i.i, %sw.bb44.i.i ], [ %or43.i.i, %sw.bb42.i.i ], [ %or34.i.i, %sw.bb40.i.i ], [ %or39.i.i, %sw.bb38.i.i ], [ %or37.i.i, %sw.bb36.i.i ], [ %or17.i.i, %sw.epilog.i.i.mmp_tdma_config_write.exit_crit_edge ], [ %switch.select91.i.i, %if.end17.mmp_tdma_config_write.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %tdcr.2.i.i) #8
  %56 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr59.i.i = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 %55) #8, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp2299.not = icmp eq i32 %buf_len, 0
  br i1 %cmp2299.not, label %mmp_tdma_config_write.exit.while.end_crit_edge, label %while.body.lr.ph

mmp_tdma_config_write.exit.while.end_crit_edge:   ; preds = %mmp_tdma_config_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %mmp_tdma_config_write.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp30 = icmp eq i32 %direction, 1
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.body.lr.ph
  %buf.0104 = phi i32 [ 0, %while.body.lr.ph ], [ %add38, %if.end36.while.body_crit_edge ]
  %i.0102 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end36.while.body_crit_edge ]
  %dma_addr.addr.0100 = phi i32 [ %dma_addr, %while.body.lr.ph ], [ %add37, %if.end36.while.body_crit_edge ]
  %58 = ptrtoint ptr %desc_arr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc_arr.i, align 4
  %arrayidx = getelementptr %struct.mmp_tdma_desc, ptr %59, i32 %i.0102
  %add = add i32 %i.0102, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp23 = icmp eq i32 %add, %div
  %60 = ptrtoint ptr %desc_arr_phys.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %desc_arr_phys.i, align 4
  %mul = shl i32 %add, 4
  %add27 = select i1 %cmp23, i32 0, i32 %mul
  %add27.sink = add i32 %61, %add27
  %62 = getelementptr %struct.mmp_tdma_desc, ptr %59, i32 %i.0102, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add27.sink, ptr %62, align 4
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr = getelementptr %struct.mmp_tdma_desc, ptr %59, i32 %i.0102, i32 1
  %64 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %dma_addr.addr.0100, ptr %src_addr, align 4
  %65 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %19, align 4
  br label %if.end36

if.else32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %19, align 4
  %src_addr34 = getelementptr %struct.mmp_tdma_desc, ptr %59, i32 %i.0102, i32 1
  %69 = ptrtoint ptr %src_addr34 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %src_addr34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then31
  %dma_addr.addr.0100.sink = phi i32 [ %66, %if.then31 ], [ %dma_addr.addr.0100, %if.else32 ]
  %70 = getelementptr %struct.mmp_tdma_desc, ptr %59, i32 %i.0102, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %dma_addr.addr.0100.sink, ptr %70, align 4
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %period_len, ptr %arrayidx, align 4
  %add37 = add i32 %dma_addr.addr.0100, %period_len
  %add38 = add i32 %buf.0104, %period_len
  %cmp22 = icmp ult i32 %add38, %buf_len
  br i1 %cmp22, label %if.end36.while.body_crit_edge, label %if.end36.while.end_crit_edge

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %mmp_tdma_config_write.exit.while.end_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %while.end.if.end41_crit_edge, label %if.then40

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %74, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !89
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %while.end.if.end41_crit_edge
  %buf_len42 = getelementptr i8, ptr %chan, i32 284
  %75 = ptrtoint ptr %buf_len42 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %buf_len, ptr %buf_len42, align 4
  %period_len43 = getelementptr i8, ptr %chan, i32 288
  %76 = ptrtoint ptr %period_len43 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %period_len, ptr %period_len43, align 4
  %pos = getelementptr i8, ptr %chan, i32 292
  %77 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %pos, align 4
  %desc44 = getelementptr i8, ptr %chan, i32 64
  br label %cleanup

err_out:                                          ; preds = %do.end51.i.i, %do.end27.i.i, %do.end.i.i, %mmp_tdma_alloc_descriptor.exit.err_out_crit_edge, %if.end13.err_out_crit_edge, %do.end11
  %78 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end41, %do.end4, %do.end
  %retval.0 = phi ptr [ null, %do.end4 ], [ null, %err_out ], [ %desc44, %if.end41 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_tx_status(ptr nocapture noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idx.i = getelementptr i8, ptr %chan, i32 268
  %0 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %entry.mmp_tdma_get_pos.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
  ]

entry.mmp_tdma_get_pos.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmp_tdma_get_pos.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg_base.i = getelementptr i8, ptr %chan, i32 280
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %desc_arr.i = getelementptr i8, ptr %chan, i32 188
  %6 = ptrtoint ptr %desc_arr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_arr.i, align 4
  %src_addr.i = getelementptr inbounds %struct.mmp_tdma_desc, ptr %7, i32 0, i32 1
  br label %cleanup.sink.split.i

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg_base4.i = getelementptr i8, ptr %chan, i32 280
  %8 = ptrtoint ptr %reg_base4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !86
  %desc_arr7.i = getelementptr i8, ptr %chan, i32 188
  %11 = ptrtoint ptr %desc_arr7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_arr7.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.mmp_tdma_desc, ptr %12, i32 0, i32 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then3.i, %if.then.i
  %src_addr.sink.i = phi ptr [ %src_addr.i, %if.then.i ], [ %dst_addr.i, %if.then3.i ]
  %.sink.i = phi i32 [ %5, %if.then.i ], [ %10, %if.then3.i ]
  %13 = ptrtoint ptr %src_addr.sink.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_addr.sink.i, align 4
  %sub.i = sub i32 %.sink.i, %14
  br label %mmp_tdma_get_pos.exit

mmp_tdma_get_pos.exit:                            ; preds = %cleanup.sink.split.i, %entry.mmp_tdma_get_pos.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.mmp_tdma_get_pos.exit_crit_edge ], [ %sub.i, %cleanup.sink.split.i ]
  %pos = getelementptr i8, ptr %chan, i32 292
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %pos, align 4
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %mmp_tdma_get_pos.exit.dma_set_tx_state.exit_crit_edge, label %if.end.i

mmp_tdma_get_pos.exit.dma_set_tx_state.exit_crit_edge: ; preds = %mmp_tdma_get_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_tx_state.exit

if.end.i:                                         ; preds = %mmp_tdma_get_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  %buf_len = getelementptr i8, ptr %chan, i32 284
  %16 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_len, align 4
  %sub = sub i32 %17, %retval.0.i
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %18 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %20 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %completed_cookie, align 4
  %22 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %23 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %used2.i, align 4
  %residue3.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %24 = ptrtoint ptr %residue3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %residue3.i, align 4
  br label %dma_set_tx_state.exit

dma_set_tx_state.exit:                            ; preds = %if.end.i, %mmp_tdma_get_pos.exit.dma_set_tx_state.exit_crit_edge
  %status = getelementptr i8, ptr %chan, i32 216
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp_tdma_issue_pending(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %reg_base.i = getelementptr i8, ptr %chan, i32 280
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %3 = or i32 %2, 1048576
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #8, !srcloc !89
  %status.i = getelementptr i8, ptr %chan, i32 216
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %status.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmp_tdma_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %dmaengine_cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_config = getelementptr i8, ptr %chan, i32 220
  %0 = call ptr @memcpy(ptr %slave_config, ptr %dmaengine_cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_pause_chan(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr i8, ptr %chan, i32 280
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %3 = and i32 %2, -1048577
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #8, !srcloc !89
  %status = getelementptr i8, ptr %chan, i32 216
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_resume_chan(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr i8, ptr %chan, i32 280
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %3 = or i32 %2, 1048576
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #8, !srcloc !89
  %status = getelementptr i8, ptr %chan, i32 216
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_terminate_all(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr i8, ptr %chan, i32 280
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %3 = and i32 %2, -1052673
  %4 = or i32 %3, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %4) #8, !srcloc !89
  %status.i = getelementptr i8, ptr %chan, i32 216
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !89
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mmp_tdma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %param = alloca %struct.mmp_tdma_filter_param, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %cap_mask = getelementptr inbounds %struct.mmp_tdma_device, ptr %1, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap_mask, align 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #8
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %5 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 4
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2 = icmp ugt i32 %8, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 4
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @mmp_tdma_filter_fn, ptr noundef nonnull %param, ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_chan_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %dev_id, i32 0, i32 16
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %and2.i = and i32 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #8
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %4) #8, !srcloc !89
  %state.i = getelementptr inbounds %struct.mmp_tdma_chan, ptr %dev_id, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i2 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i2, label %if.then.i3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i3:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr inbounds %struct.mmp_tdma_chan, ptr %dev_id, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i3, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.then.i3 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_do_tasklet(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #8
  %6 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void %3(ptr noundef %5, ptr noundef nonnull %dummy_result.i.i) #8
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %entry
  %tobool4.not.i.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef %5) #8
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_tdma_tx_submit(ptr nocapture noundef readonly %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %desc_arr_phys = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %desc_arr_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc_arr_phys, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %reg_base.i = getelementptr i8, ptr %1, i32 280
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %10 = or i32 %9, 2097152
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %10) #8, !srcloc !89
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mmp_tdma_filter_fn(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %fn_param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_mmp_tdma__236_764_mmp_tdma_driver_init6, !1, !"__initcall__kmod_mmp_tdma__236_764_mmp_tdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/mmp_tdma.c", i32 764, i32 1}
!2 = !{ptr @__exitcall_mmp_tdma_driver_exit, !1, !"__exitcall_mmp_tdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/dma/mmp_tdma.c", i32 766, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description239, !7, !"__UNIQUE_ID_description239", i1 false, i1 false}
!7 = !{!"../drivers/dma/mmp_tdma.c", i32 767, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias240, !9, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!9 = !{!"../drivers/dma/mmp_tdma.c", i32 768, i32 1}
!10 = !{ptr @__UNIQUE_ID_author241, !11, !"__UNIQUE_ID_author241", i1 false, i1 false}
!11 = !{!"../drivers/dma/mmp_tdma.c", i32 769, i32 1}
!12 = !{ptr @__UNIQUE_ID_author242, !13, !"__UNIQUE_ID_author242", i1 false, i1 false}
!13 = !{!"../drivers/dma/mmp_tdma.c", i32 770, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/mmp_tdma.c", i32 756, i32 11}
!16 = !{ptr @mmp_tdma_driver, !17, !"mmp_tdma_driver", i1 false, i1 false}
!17 = !{!"../drivers/dma/mmp_tdma.c", i32 754, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/mmp_tdma.c", i32 674, i32 45}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/mmp_tdma.c", i32 678, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mmp_tdma_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mmp_tdma_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/mmp_tdma.c", i32 685, i32 39}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/mmp_tdma.c", i32 730, i32 3}
!32 = !{ptr @mmp_tdma_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mmp_tdma_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/mmp_tdma.c", i32 738, i32 4}
!36 = !{ptr @mmp_tdma_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mmp_tdma_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/mmp_tdma.c", i32 744, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mmp_tdma_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mmp_tdma_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/mmp_tdma.c", i32 570, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mmp_tdma_chan_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mmp_tdma_chan_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/mmp_tdma.c", i32 433, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mmp_tdma_prep_dma_cyclic._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mmp_tdma_prep_dma_cyclic._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/mmp_tdma.c", i32 438, i32 3}
!55 = !{ptr @mmp_tdma_prep_dma_cyclic._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mmp_tdma_prep_dma_cyclic._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/mmp_tdma.c", i32 443, i32 3}
!59 = !{ptr @mmp_tdma_prep_dma_cyclic._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mmp_tdma_prep_dma_cyclic._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/mmp_tdma.c", i32 238, i32 4}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mmp_tdma_config_chan._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mmp_tdma_config_chan._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/mmp_tdma.c", i32 253, i32 4}
!68 = !{ptr @mmp_tdma_config_chan._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mmp_tdma_config_chan._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @mmp_tdma_config_chan._entry.33, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/dma/mmp_tdma.c", i32 279, i32 4}
!72 = !{ptr @mmp_tdma_config_chan._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mmp_tdma_dt_ids, !74, !"mmp_tdma_dt_ids", i1 false, i1 false}
!74 = !{!"../drivers/dma/mmp_tdma.c", i32 630, i32 34}
!75 = !{ptr @mmp_tdma_id_table, !76, !"mmp_tdma_id_table", i1 false, i1 false}
!76 = !{!"../drivers/dma/mmp_tdma.c", i32 748, i32 40}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 4633474}
!87 = !{i64 2154418680}
!88 = !{i64 2154418926}
!89 = !{i64 4633056}
!90 = !{i64 2154404736}
!91 = !{i64 2154404985}
!92 = !{i64 2154417986}
!93 = !{i64 2154402019}
!94 = !{i64 2154402962}
!95 = !{i64 2154410633}
!96 = !{i64 2154411580}
!97 = !{i64 2154407415}
!98 = !{i64 2154408358}
!99 = !{i64 2154398008}
!100 = !{i64 2154399201}
!101 = !{i64 2154400144}
