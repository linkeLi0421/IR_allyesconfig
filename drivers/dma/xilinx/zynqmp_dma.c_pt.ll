; ModuleID = '/llk/IR_all_yes/drivers/dma/xilinx/zynqmp_dma.c_pt.bc'
source_filename = "../drivers/dma/xilinx/zynqmp_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.zynqmp_dma_device = type { ptr, %struct.dma_device, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.zynqmp_dma_chan = type { ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.dma_chan, ptr, i32, i32, ptr, i32, i8, %struct.tasklet_struct, i8, i32, i8, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.zynqmp_dma_desc_ll = type { i64, i32, i32, i64, i64 }
%struct.zynqmp_dma_desc_sw = type { i64, i64, i32, %struct.list_head, %struct.list_head, %struct.dma_async_tx_descriptor, ptr, i32, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_zynqmp_dma__251_1157_zynqmp_dma_driver_init6 = internal global ptr @zynqmp_dma_driver_init, section ".initcall6.init", align 4
@zynqmp_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zynqmp_dma_probe, ptr @zynqmp_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynqmp_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_dma_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zynqmp_dma_driver_exit = internal global ptr @zynqmp_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file252 = internal constant [46 x i8] c"zynqmp_dma.file=drivers/dma/xilinx/zynqmp_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [23 x i8] c"zynqmp_dma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [31 x i8] c"zynqmp_dma.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [48 x i8] c"zynqmp_dma.description=Xilinx ZynqMP DMA driver\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xilinx-zynqmp-dma\00", [46 x i8] zeroinitializer }, align 32
@zynqmp_dma_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-dma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@zynqmp_dma_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @zynqmp_dma_suspend, ptr @zynqmp_dma_resume, ptr @zynqmp_dma_suspend, ptr @zynqmp_dma_resume, ptr @zynqmp_dma_suspend, ptr @zynqmp_dma_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_dma_runtime_suspend, ptr @zynqmp_dma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_main\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"main clock not found.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_apb\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"apb clock not found.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Probing channel failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to register DMA to DT\0A\00", [34 x i8] zeroinitializer }, align 32
@zynqmp_dma_prep_memcpy.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 -50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zynqmp_dma\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynqmp_dma_prep_memcpy\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/dma/xilinx/zynqmp_dma.c\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"chan %p descs are not available\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zynqmp_dma_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.9, i32 1014, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to enable main clock.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zynqmp_dma_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynqmp_dma_runtime_resume._entry_ptr = internal global ptr @zynqmp_dma_runtime_resume._entry, section ".printk_index", align 4
@zynqmp_dma_runtime_resume._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.9, i32 1020, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enable apb clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@zynqmp_dma_runtime_resume._entry_ptr.17 = internal global ptr @zynqmp_dma_runtime_resume._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xlnx,bus-width\00", [17 x i8] zeroinitializer }, align 32
@zynqmp_dma_chan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 901, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing xlnx,bus-width property\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zynqmp_dma_chan_probe\00", [42 x i8] zeroinitializer }, align 32
@zynqmp_dma_chan_probe._entry_ptr = internal global ptr @zynqmp_dma_chan_probe._entry, section ".printk_index", align 4
@zynqmp_dma_chan_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.9, i32 907, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid bus-width value\00", [40 x i8] zeroinitializer }, align 32
@zynqmp_dma_chan_probe._entry_ptr.23 = internal global ptr @zynqmp_dma_chan_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-coherent\00", [19 x i8] zeroinitializer }, align 32
@zynqmp_dma_chan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zynqmp-dma\00", [21 x i8] zeroinitializer }, align 32
@zynqmp_dma_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.9, i32 735, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Channel %p has errors\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynqmp_dma_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@zynqmp_dma_irq_handler._entry_ptr = internal global ptr @zynqmp_dma_irq_handler._entry, section ".printk_index", align 4
@zynqmp_dma_irq_handler.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.28, ptr @.str.9, ptr @.str.29, i8 0, i8 -71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Channel %p overflow interrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 128]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"zynqmp_dma_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1147, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1149, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"zynqmp_dma_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1141, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"zynqmp_dma_dev_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1028, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1066, i32 44 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1069, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1071, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1074, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1089, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1101, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 825, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1014, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1020, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 899, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 901, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 907, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 911, i32 54 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 914, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 929, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 735, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [35 x i8] c"../drivers/dma/xilinx/zynqmp_dma.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 741, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_zynqmp_dma_driver_exit, ptr @__initcall__kmod_zynqmp_dma__251_1157_zynqmp_dma_driver_init6, ptr @zynqmp_dma_chan_probe._entry, ptr @zynqmp_dma_chan_probe._entry.21, ptr @zynqmp_dma_chan_probe._entry_ptr, ptr @zynqmp_dma_chan_probe._entry_ptr.23, ptr @zynqmp_dma_driver_exit, ptr @zynqmp_dma_irq_handler._entry, ptr @zynqmp_dma_irq_handler._entry_ptr, ptr @zynqmp_dma_runtime_resume._entry, ptr @zynqmp_dma_runtime_resume._entry.15, ptr @zynqmp_dma_runtime_resume._entry_ptr, ptr @zynqmp_dma_runtime_resume._entry_ptr.17, ptr @zynqmp_dma_driver, ptr @.str, ptr @zynqmp_dma_of_match, ptr @zynqmp_dma_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @zynqmp_dma_chan_probe.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_runtime_resume._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_chan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_chan_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_chan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dma_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynqmp_dma_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynqmp_dma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %common = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1
  %channels = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %channels, ptr %prev.i, align 4
  %call4 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 17592186044415) #10
  %cap_mask = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  %device_prep_dma_memcpy = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 30
  %3 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @zynqmp_dma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_terminate_all = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 47
  %4 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @zynqmp_dma_device_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 50
  %5 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @zynqmp_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 27
  %6 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @zynqmp_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 29
  %7 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @zynqmp_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 49
  %8 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_config = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 44
  %9 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @zynqmp_dma_device_config, ptr %device_config, align 4
  %dev8 = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 15
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev8, align 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %clk_main = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %clk_main to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %clk_main, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call10 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %clk_apb = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %clk_apb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %clk_apb, align 4
  %cmp.i134 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call20 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %17, i32 noundef 100) #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %19, i1 noundef zeroext true) #10
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %21) #10
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %call.i135 = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #10
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 15
  %26 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end28.if.end42_crit_edge, label %if.then36

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %if.end28
  %call38 = tail call i32 @zynqmp_dma_runtime_resume(ptr noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.if.end42_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %if.then36.if.end42_crit_edge, %if.end28.if.end42_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node.i, align 8
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef 224, i32 noundef 3520) #10
  %tobool.not.i136 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i136, label %if.end42.if.then45_crit_edge, label %if.end.i

if.end42.if.then45_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.end.i:                                         ; preds = %if.end42
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %dev3.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %dev3.i, align 4
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %call.i.i, align 4
  %call5.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call7.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call5.i) #10
  %regs.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i, ptr %regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %zynqmp_dma_chan_probe.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i
  %bus_width.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 19
  %36 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 64, ptr %bus_width.i, align 4
  %dst_burst_len.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 21
  %37 = ptrtoint ptr %dst_burst_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32768, ptr %dst_burst_len.i, align 4
  %src_burst_len.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 20
  %38 = ptrtoint ptr %src_burst_len.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32768, ptr %src_burst_len.i, align 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.18, ptr noundef %bus_width.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i137 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i137, label %do.end.i, label %if.end18.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %if.then45

if.end18.i:                                       ; preds = %if.end13.i
  %39 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bus_width.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %do.end26.i [
    i32 64, label %if.end18.i.if.end28.i_crit_edge
    i32 128, label %if.end18.i.if.end28.i_crit_edge158
  ]

if.end18.i.if.end28.i_crit_edge158:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.end26.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.22) #13
  br label %if.then45

if.end28.i:                                       ; preds = %if.end18.i.if.end28.i_crit_edge, %if.end18.i.if.end28.i_crit_edge158
  %call.i97.i = tail call ptr @of_find_property(ptr noundef %28, ptr noundef nonnull @.str.24, ptr noundef null) #10
  %tobool.i.i = icmp ne ptr %call.i97.i, null
  %is_dmacoherent.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 14
  %frombool.i = zext i1 %tobool.i.i to i8
  %44 = ptrtoint ptr %is_dmacoherent.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool.i, ptr %is_dmacoherent.i, align 4
  %chan30.i = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %chan30.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %chan30.i, align 4
  %tasklet.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 15
  tail call void @tasklet_setup(ptr noundef %tasklet.i, ptr noundef nonnull @zynqmp_dma_do_tasklet) #10
  %lock.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @zynqmp_dma_chan_probe.__key, i16 noundef signext 3) #10
  %active_list.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %active_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %active_list.i, ptr %active_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %active_list.i, ptr %prev.i.i, align 4
  %pending_list.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %pending_list.i, ptr %pending_list.i, align 4
  %prev.i98.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i98.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pending_list.i, ptr %prev.i98.i, align 4
  %done_list.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %done_list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %done_list.i, ptr %done_list.i, align 4
  %prev.i99.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %prev.i99.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %done_list.i, ptr %prev.i99.i, align 4
  %free_list.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %free_list.i, ptr %free_list.i, align 4
  %prev.i100.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %prev.i100.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %free_list.i, ptr %prev.i100.i, align 4
  %common.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 8
  %cookie.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 8, i32 2
  %54 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %cookie.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 8, i32 3
  %55 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %completed_cookie.i.i, align 4
  %56 = ptrtoint ptr %common.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %common, ptr %common.i, align 4
  %device_node.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 8, i32 8
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %call.i.i102.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node.i, ptr noundef %58, ptr noundef %channels) #10
  br i1 %call.i.i102.i, label %if.end.i.i.i, label %if.end28.i.list_add_tail.exit.i_crit_edge

if.end28.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %device_node.i, ptr %prev.i, align 4
  %60 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %channels, ptr %device_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 8, i32 8, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %device_node.i, ptr %58, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end28.i.list_add_tail.exit.i_crit_edge
  tail call fastcc void @zynqmp_dma_init(ptr noundef nonnull %call.i.i) #10
  %call39.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 13
  %63 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call39.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp41.i = icmp slt i32 %call39.i, 0
  br i1 %cmp41.i, label %list_add_tail.exit.i.if.then45_crit_edge, label %if.end43.i

list_add_tail.exit.i.if.then45_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.end43.i:                                       ; preds = %list_add_tail.exit.i
  %call.i103.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call39.i, ptr noundef nonnull @zynqmp_dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool47.not.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool47.not.i, label %zynqmp_dma_chan_probe.exit.thread155, label %if.end43.i.if.then45_crit_edge

if.end43.i.if.then45_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

zynqmp_dma_chan_probe.exit.thread155:             ; preds = %if.end43.i
  %desc_size.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 17
  %64 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %desc_size.i, align 4
  %idle.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %call.i.i, i32 0, i32 16
  %65 = ptrtoint ptr %idle.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %idle.i, align 4
  %66 = ptrtoint ptr %chan30.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chan30.i, align 4
  %bus_width = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %67, i32 0, i32 19
  %68 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bus_width, align 4
  %div132 = lshr i32 %69, 3
  %shl = shl nuw i32 1, %div132
  %dst_addr_widths = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 20
  %70 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shl, ptr %dst_addr_widths, align 4
  %71 = load i32, ptr %bus_width, align 4
  %div51133 = lshr i32 %71, 3
  %shl52 = shl nuw i32 1, %div51133
  %src_addr_widths = getelementptr inbounds %struct.zynqmp_dma_device, ptr %call.i, i32 0, i32 1, i32 19
  %72 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shl52, ptr %src_addr_widths, align 4
  %call54 = tail call i32 @dma_async_device_register(ptr noundef %common) #10
  %73 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node.i, align 8
  %call56 = tail call i32 @of_dma_controller_register(ptr noundef %74, ptr noundef nonnull @of_zynqmp_dma_xlate, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end62, label %if.then58

zynqmp_dma_chan_probe.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %call7.i to i32
  br label %if.then45

if.then45:                                        ; preds = %zynqmp_dma_chan_probe.exit, %if.end43.i.if.then45_crit_edge, %list_add_tail.exit.i.if.then45_crit_edge, %do.end26.i, %do.end.i, %if.end42.if.then45_crit_edge
  %retval.0.i154 = phi i32 [ %75, %zynqmp_dma_chan_probe.exit ], [ %call.i103.i, %if.end43.i.if.then45_crit_edge ], [ -6, %list_add_tail.exit.i.if.then45_crit_edge ], [ -12, %if.end42.if.then45_crit_edge ], [ -22, %do.end26.i ], [ %call.i.i.i, %do.end.i ]
  %call47 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i154, ptr noundef nonnull @.str.5) #10
  br label %err_disable_pm

if.then58:                                        ; preds = %zynqmp_dma_chan_probe.exit.thread155
  %call60 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call56, ptr noundef nonnull @.str.6) #10
  tail call void @dma_async_device_unregister(ptr noundef %common) #10
  %76 = ptrtoint ptr %chan30.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chan30.i, align 4
  %tobool.not.i138 = icmp eq ptr %77, null
  br i1 %tobool.not.i138, label %if.then58.err_disable_pm_crit_edge, label %if.end.i140

if.then58.err_disable_pm_crit_edge:               ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_pm

if.end.i140:                                      ; preds = %if.then58
  %irq.i139 = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %irq.i139 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool1.not.i = icmp eq i32 %79, 0
  br i1 %tobool1.not.i, label %if.end.i140.if.end4.i_crit_edge, label %if.then2.i

if.end.i140.if.end4.i_crit_edge:                  ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  tail call void @devm_free_irq(ptr noundef %83, i32 noundef %79, ptr noundef nonnull %77) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i140.if.end4.i_crit_edge
  %tasklet.i141 = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %77, i32 0, i32 15
  tail call void @tasklet_kill(ptr noundef %tasklet.i141) #10
  %device_node.i142 = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %77, i32 0, i32 8, i32 8
  %call.i.i.i143 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i142) #10
  br i1 %call.i.i.i143, label %if.end.i.i.i144, label %if.end4.i.list_del.exit.i_crit_edge

if.end4.i.list_del.exit.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i144:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %77, i32 0, i32 8, i32 8, i32 1
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i, align 4
  %86 = ptrtoint ptr %device_node.i142 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_node.i142, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i144, %if.end4.i.list_del.exit.i_crit_edge
  %90 = ptrtoint ptr %device_node.i142 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i142, align 4
  %prev.i.i145 = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %77, i32 0, i32 8, i32 8, i32 1
  %91 = ptrtoint ptr %prev.i.i145 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i145, align 4
  br label %err_disable_pm

if.end62:                                         ; preds = %zynqmp_dma_chan_probe.exit.thread155
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  %call.i146 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 12, i32 22
  %94 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store volatile i64 %call.i146, ptr %last_busy.i, align 8
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  %call.i147 = tail call i32 @__pm_runtime_suspend(ptr noundef %96, i32 noundef 12) #10
  br label %cleanup

err_disable_pm:                                   ; preds = %list_del.exit.i, %if.then58.err_disable_pm_crit_edge, %if.then45
  %ret.0 = phi i32 [ %retval.0.i154, %if.then45 ], [ %call56, %if.then58.err_disable_pm_crit_edge ], [ %call56, %list_del.exit.i ]
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  %disable_depth.i148 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 12, i32 15
  %99 = ptrtoint ptr %disable_depth.i148 to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load.i149 = load i16, ptr %disable_depth.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i149)
  %tobool.not.i150 = icmp ult i16 %bf.load.i149, 8192
  br i1 %tobool.not.i150, label %err_disable_pm.if.end72_crit_edge, label %if.then69

err_disable_pm.if.end72_crit_edge:                ; preds = %err_disable_pm
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then69:                                        ; preds = %err_disable_pm
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i151 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 8
  %100 = ptrtoint ptr %driver_data.i.i151 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %driver_data.i.i151, align 4
  %clk_main.i = getelementptr inbounds %struct.zynqmp_dma_device, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %clk_main.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk_main.i, align 4
  tail call void @clk_disable(ptr noundef %103) #10
  tail call void @clk_unprepare(ptr noundef %103) #10
  %clk_apb.i = getelementptr inbounds %struct.zynqmp_dma_device, ptr %101, i32 0, i32 4
  %104 = ptrtoint ptr %clk_apb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %clk_apb.i, align 4
  tail call void @clk_disable(ptr noundef %105) #10
  tail call void @clk_unprepare(ptr noundef %105) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %err_disable_pm.if.end72_crit_edge
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %107, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end62, %if.then36.cleanup_crit_edge, %if.then23, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then13 ], [ %call27, %if.then23 ], [ %ret.0, %if.end72 ], [ 0, %if.end62 ], [ -12, %entry.cleanup_crit_edge ], [ %call38, %if.then36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #10
  %common = getelementptr inbounds %struct.zynqmp_dma_device, ptr %1, i32 0, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %common) #10
  %chan = getelementptr inbounds %struct.zynqmp_dma_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.zynqmp_dma_chan_remove.exit_crit_edge, label %if.end.i

entry.zynqmp_dma_chan_remove.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_chan_remove.exit

if.end.i:                                         ; preds = %entry
  %irq.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @devm_free_irq(ptr noundef %11, i32 noundef %7, ptr noundef nonnull %5) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %tasklet.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %5, i32 0, i32 15
  tail call void @tasklet_kill(ptr noundef %tasklet.i) #10
  %device_node.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %5, i32 0, i32 8, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_del.exit.i_crit_edge

if.end4.i.list_del.exit.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %5, i32 0, i32 8, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %device_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end4.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %5, i32 0, i32 8, i32 8, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %zynqmp_dma_chan_remove.exit

zynqmp_dma_chan_remove.exit:                      ; preds = %list_del.exit.i, %entry.zynqmp_dma_chan_remove.exit_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %21, i1 noundef zeroext true) #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 15
  %24 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i11 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i11, label %zynqmp_dma_chan_remove.exit.if.end_crit_edge, label %if.then

zynqmp_dma_chan_remove.exit.if.end_crit_edge:     ; preds = %zynqmp_dma_chan_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %zynqmp_dma_chan_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i12 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i12, align 4
  %clk_main.i = getelementptr inbounds %struct.zynqmp_dma_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %clk_main.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_main.i, align 4
  tail call void @clk_disable(ptr noundef %28) #10
  tail call void @clk_unprepare(ptr noundef %28) #10
  %clk_apb.i = getelementptr inbounds %struct.zynqmp_dma_device, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %clk_apb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk_apb.i, align 4
  tail call void @clk_disable(ptr noundef %30) #10
  tail call void @clk_unprepare(ptr noundef %30) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %zynqmp_dma_chan_remove.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zynqmp_dma_prep_memcpy(ptr noundef %dchan, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %sub = add i32 %len, 1073741823
  %div77 = lshr i32 %sub, 30
  %lock = getelementptr i8, ptr %dchan, i32 -80
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_free_cnt = getelementptr i8, ptr %dchan, i32 72
  %0 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_free_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div77)
  %cmp6 = icmp ult i32 %1, %div77
  br i1 %cmp6, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dma_prep_memcpy.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zynqmp_dma_prep_memcpy, %cleanup)) #10
          to label %if.then15 [label %cleanup], !srcloc !82

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %dchan, i32 76
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dma_prep_memcpy.__UNIQUE_ID_ddebug248, ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %add.ptr) #10
  br label %cleanup

if.end18:                                         ; preds = %entry
  %sub20 = sub i32 %1, %div77
  %4 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub20, ptr %desc_free_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %free_list.i = getelementptr i8, ptr %dchan, i32 -28
  %desc_size.i = getelementptr i8, ptr %dchan, i32 116
  %is_dmacoherent.i = getelementptr i8, ptr %dchan, i32 84
  %desc_pool_p.i = getelementptr i8, ptr %dchan, i32 68
  %desc_pool_v.i = getelementptr i8, ptr %dchan, i32 64
  br label %do.body23

do.body23:                                        ; preds = %do.cond34.do.body23_crit_edge, %if.end18
  %first.0 = phi ptr [ null, %if.end18 ], [ %first.1, %do.cond34.do.body23_crit_edge ]
  %prev.0 = phi ptr [ null, %if.end18 ], [ %28, %do.cond34.do.body23_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %if.end18 ], [ %sub28, %do.cond34.do.body23_crit_edge ]
  %dma_src.addr.0 = phi i32 [ %dma_src, %if.end18 ], [ %add29, %do.cond34.do.body23_crit_edge ]
  %dma_dst.addr.0 = phi i32 [ %dma_dst, %if.end18 ], [ %add30, %do.cond34.do.body23_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %5 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body23.zynqmp_dma_get_descriptor.exit_crit_edge

do.body23.zynqmp_dma_get_descriptor.exit_crit_edge: ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_get_descriptor.exit

if.end.i.i.i:                                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
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
  br label %zynqmp_dma_get_descriptor.exit

zynqmp_dma_get_descriptor.exit:                   ; preds = %if.end.i.i.i, %do.body23.zynqmp_dma_get_descriptor.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %6, i32 -20
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  %tx_list.i = getelementptr i8, ptr %6, i32 8
  %15 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i16.i = getelementptr i8, ptr %6, i32 12
  %16 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_list.i, ptr %prev.i16.i, align 4
  %src_v.i = getelementptr i8, ptr %6, i32 116
  %17 = ptrtoint ptr %src_v.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_v.i, align 8
  %19 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_size.i, align 4
  %21 = call ptr @memset(ptr %18, i32 0, i32 %20)
  %dst_v.i = getelementptr i8, ptr %6, i32 124
  %22 = ptrtoint ptr %dst_v.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst_v.i, align 8
  %24 = load i32, ptr %desc_size.i, align 4
  %25 = call ptr @memset(ptr %23, i32 0, i32 %24)
  %26 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 1073741824)
  %27 = ptrtoint ptr %src_v.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src_v.i, align 8
  %add.ptr.i78 = getelementptr %struct.zynqmp_dma_desc_ll, ptr %28, i32 1
  %size.i = getelementptr %struct.zynqmp_dma_desc_ll, ptr %28, i32 1, i32 1
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %size.i, align 8
  %size1.i = getelementptr inbounds %struct.zynqmp_dma_desc_ll, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %size1.i, align 8
  %conv.i = zext i32 %dma_src.addr.0 to i64
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv.i, ptr %28, align 8
  %conv2.i = zext i32 %dma_dst.addr.0 to i64
  %32 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv2.i, ptr %add.ptr.i78, align 8
  %ctrl.i = getelementptr %struct.zynqmp_dma_desc_ll, ptr %28, i32 1, i32 2
  %33 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %ctrl.i, align 4
  %ctrl4.i = getelementptr inbounds %struct.zynqmp_dma_desc_ll, ptr %28, i32 0, i32 2
  %34 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %ctrl4.i, align 4
  %35 = ptrtoint ptr %is_dmacoherent.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_dmacoherent.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %zynqmp_dma_get_descriptor.exit.if.end.i_crit_edge, label %if.then.i

zynqmp_dma_get_descriptor.exit.if.end.i_crit_edge: ; preds = %zynqmp_dma_get_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %zynqmp_dma_get_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %ctrl4.i, align 4
  %38 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %ctrl.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %zynqmp_dma_get_descriptor.exit.if.end.i_crit_edge
  %tobool8.not.i = icmp eq ptr %prev.0, null
  br i1 %tobool8.not.i, label %if.end.i.zynqmp_dma_config_sg_ll_desc.exit_crit_edge, label %if.then9.i

if.end.i.zynqmp_dma_config_sg_ll_desc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_config_sg_ll_desc.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %desc_pool_p.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %desc_pool_p.i, align 4
  %41 = ptrtoint ptr %28 to i32
  %42 = ptrtoint ptr %desc_pool_v.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc_pool_v.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %sub.i = sub i32 %41, %44
  %add.i = add i32 %sub.i, %40
  %conv12.i = zext i32 %add.i to i64
  %nxtdscraddr.i = getelementptr inbounds %struct.zynqmp_dma_desc_ll, ptr %prev.0, i32 0, i32 3
  %45 = ptrtoint ptr %nxtdscraddr.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv12.i, ptr %nxtdscraddr.i, align 8
  %46 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %desc_size.i, align 4
  %add13.i = add i32 %add.i, %47
  %conv14.i = zext i32 %add13.i to i64
  %nxtdscraddr15.i = getelementptr %struct.zynqmp_dma_desc_ll, ptr %prev.0, i32 1, i32 3
  %48 = ptrtoint ptr %nxtdscraddr15.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv14.i, ptr %nxtdscraddr15.i, align 8
  br label %zynqmp_dma_config_sg_ll_desc.exit

zynqmp_dma_config_sg_ll_desc.exit:                ; preds = %if.then9.i, %if.end.i.zynqmp_dma_config_sg_ll_desc.exit_crit_edge
  %sub28 = sub i32 %len.addr.0, %26
  %add29 = add i32 %dma_src.addr.0, %26
  %add30 = add i32 %dma_dst.addr.0, %26
  %tobool31.not = icmp eq ptr %first.0, null
  br i1 %tobool31.not, label %zynqmp_dma_config_sg_ll_desc.exit.do.cond34_crit_edge, label %if.else

zynqmp_dma_config_sg_ll_desc.exit.do.cond34_crit_edge: ; preds = %zynqmp_dma_config_sg_ll_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34

if.else:                                          ; preds = %zynqmp_dma_config_sg_ll_desc.exit
  %tx_list = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %first.0, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %first.0, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %50, ptr noundef %tx_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.do.cond34_crit_edge

if.else.do.cond34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %6, ptr %prev.i, align 4
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %tx_list, ptr %6, align 4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %6, ptr %50, align 4
  br label %do.cond34

do.cond34:                                        ; preds = %if.end.i.i, %if.else.do.cond34_crit_edge, %zynqmp_dma_config_sg_ll_desc.exit.do.cond34_crit_edge
  %first.1 = phi ptr [ %add.ptr.i, %zynqmp_dma_config_sg_ll_desc.exit.do.cond34_crit_edge ], [ %first.0, %if.else.do.cond34_crit_edge ], [ %first.0, %if.end.i.i ]
  %tobool35.not = icmp eq i32 %sub28, 0
  br i1 %tobool35.not, label %do.end36, label %do.cond34.do.body23_crit_edge

do.cond34.do.body23_crit_edge:                    ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23

do.end36:                                         ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ctrl4.i, align 4
  %or.i = or i32 %56, 16
  store i32 %or.i, ptr %ctrl4.i, align 4
  %57 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctrl.i, align 4
  %or2.i = or i32 %58, 20
  store i32 %or2.i, ptr %ctrl.i, align 4
  %async_tx = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %first.1, i32 0, i32 5
  %flags38 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %first.1, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %flags38 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %flags, ptr %flags38, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.then15, %if.then
  %retval.0 = phi ptr [ %async_tx, %do.end36 ], [ null, %if.then15 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_device_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr i8, ptr %dchan, i32 -84
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -15794176) #10, !srcloc !85
  tail call fastcc void @zynqmp_dma_free_descriptors(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dma_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  %lock = getelementptr i8, ptr %dchan, i32 -80
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @zynqmp_dma_start_transfer(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_alloc_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %dchan, i32 76
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4864) #14
  %sw_desc_pool = getelementptr i8, ptr %dchan, i32 -12
  %4 = ptrtoint ptr %sw_desc_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %sw_desc_pool, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %idle = getelementptr i8, ptr %dchan, i32 112
  %5 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %idle, align 4
  %desc_free_cnt = getelementptr i8, ptr %dchan, i32 72
  %6 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %desc_free_cnt, align 4
  %free_list = getelementptr i8, ptr %dchan, i32 -28
  %7 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr i8, ptr %dchan, i32 -24
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %free_list, ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end4
  %i.081 = phi i32 [ 0, %if.end4 ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %sw_desc_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw_desc_pool, align 4
  %async_tx = getelementptr %struct.zynqmp_dma_desc_sw, ptr %10, i32 %i.081, i32 5
  tail call void @dma_async_tx_descriptor_init(ptr noundef %async_tx, ptr noundef %dchan) #10
  %tx_submit = getelementptr %struct.zynqmp_dma_desc_sw, ptr %10, i32 %i.081, i32 5, i32 4
  %11 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @zynqmp_dma_tx_submit, ptr %tx_submit, align 4
  %node = getelementptr %struct.zynqmp_dma_desc_sw, ptr %10, i32 %i.081, i32 3
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %13, ptr noundef %free_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node, ptr %prev.i, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %free_list, ptr %node, align 4
  %prev3.i.i = getelementptr %struct.zynqmp_dma_desc_sw, ptr %10, i32 %i.081, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %desc_size = getelementptr i8, ptr %dchan, i32 116
  %20 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc_size, align 4
  %mul11 = shl i32 %21, 6
  %desc_pool_p = getelementptr i8, ptr %dchan, i32 68
  %call.i78 = tail call ptr @dma_alloc_attrs(ptr noundef %19, i32 noundef %mul11, ptr noundef %desc_pool_p, i32 noundef 3264, i32 noundef 0) #10
  %desc_pool_v = getelementptr i8, ptr %dchan, i32 64
  %22 = ptrtoint ptr %desc_pool_v to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i78, ptr %desc_pool_v, align 4
  %tobool14.not = icmp eq ptr %call.i78, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %i.183 = phi i32 [ %inc37, %for.body19.for.body19_crit_edge ], [ 0, %for.end.for.body19_crit_edge ]
  %23 = ptrtoint ptr %sw_desc_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sw_desc_pool, align 4
  %25 = ptrtoint ptr %desc_pool_v to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc_pool_v, align 4
  %27 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %desc_size, align 4
  %mul24 = shl nuw i32 %i.183, 1
  %mul25 = mul i32 %mul24, %28
  %add.ptr26 = getelementptr i8, ptr %26, i32 %mul25
  %src_v = getelementptr %struct.zynqmp_dma_desc_sw, ptr %24, i32 %i.183, i32 6
  %29 = ptrtoint ptr %src_v to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr26, ptr %src_v, align 8
  %add.ptr28 = getelementptr %struct.zynqmp_dma_desc_ll, ptr %add.ptr26, i32 1
  %dst_v = getelementptr %struct.zynqmp_dma_desc_sw, ptr %24, i32 %i.183, i32 8
  %30 = ptrtoint ptr %dst_v to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr28, ptr %dst_v, align 8
  %31 = ptrtoint ptr %desc_pool_p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_pool_p, align 4
  %33 = load i32, ptr %desc_size, align 4
  %mul32 = mul i32 %mul24, %33
  %add = add i32 %mul32, %32
  %src_p = getelementptr %struct.zynqmp_dma_desc_sw, ptr %24, i32 %i.183, i32 7
  %34 = ptrtoint ptr %src_p to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %src_p, align 4
  %35 = load i32, ptr %desc_size, align 4
  %add35 = add i32 %add, %35
  %dst_p = getelementptr %struct.zynqmp_dma_desc_sw, ptr %24, i32 %i.183, i32 9
  %36 = ptrtoint ptr %dst_p to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add35, ptr %dst_p, align 4
  %inc37 = add nuw nsw i32 %i.183, 1
  %exitcond84.not = icmp eq i32 %inc37, 32
  br i1 %exitcond84.not, label %for.body19.cleanup_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ], [ 32, %for.body19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dma_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -88
  tail call fastcc void @zynqmp_dma_free_descriptors(ptr noundef %add.ptr)
  %dev = getelementptr i8, ptr %dchan, i32 76
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %desc_size = getelementptr i8, ptr %dchan, i32 116
  %2 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc_size, align 4
  %mul1 = shl i32 %3, 6
  %desc_pool_v = getelementptr i8, ptr %dchan, i32 64
  %4 = ptrtoint ptr %desc_pool_v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_pool_v, align 4
  %desc_pool_p = getelementptr i8, ptr %dchan, i32 68
  %6 = ptrtoint ptr %desc_pool_p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_pool_p, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %mul1, ptr noundef %5, i32 noundef %7, i32 noundef 0) #10
  %sw_desc_pool = getelementptr i8, ptr %dchan, i32 -12
  %8 = ptrtoint ptr %sw_desc_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_desc_pool, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zynqmp_dma_device_config(ptr nocapture noundef writeonly %dchan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %0 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_maxburst, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 32768)
  %src_burst_len = getelementptr i8, ptr %dchan, i32 128
  %4 = ptrtoint ptr %src_burst_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %src_burst_len, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 6
  %5 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_maxburst, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 32768)
  %dst_burst_len = getelementptr i8, ptr %dchan, i32 132
  %9 = ptrtoint ptr %dst_burst_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dst_burst_len, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_main = getelementptr inbounds %struct.zynqmp_dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_main, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_apb = getelementptr inbounds %struct.zynqmp_dma_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_apb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_apb, align 4
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end.i22:                                       ; preds = %if.end
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.cleanup_crit_edge, label %if.then3.i23

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i23, %if.end.do.end7_crit_edge
  %retval.0.i24.ph = phi i32 [ %call1.i20, %if.then3.i23 ], [ %call.i18, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  %6 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.i22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i24.ph, %do.end7 ], [ 0, %if.end.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_zynqmp_dma_xlate(ptr nocapture noundef readnone %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %chan = getelementptr inbounds %struct.zynqmp_dma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %common = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %3, i32 0, i32 8
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %common) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_main = getelementptr inbounds %struct.zynqmp_dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %clk_apb = getelementptr inbounds %struct.zynqmp_dma_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_apb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_apb, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dma_free_descriptors(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %active_list = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_list, align 4
  %cmp.not17.i = icmp eq ptr %1, %active_list
  br i1 %cmp.not17.i, label %entry.zynqmp_dma_free_desc_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.zynqmp_dma_free_desc_list.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_free_desc_list.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in18.i, i32 -20
  %2 = ptrtoint ptr %.pn.in18.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in18.i, align 4
  tail call fastcc void @zynqmp_dma_free_descriptor(ptr noundef %chan, ptr noundef %desc.0.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %active_list
  br i1 %cmp.not.i, label %for.body.i.zynqmp_dma_free_desc_list.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.zynqmp_dma_free_desc_list.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_free_desc_list.exit

zynqmp_dma_free_desc_list.exit:                   ; preds = %for.body.i.zynqmp_dma_free_desc_list.exit_crit_edge, %entry.zynqmp_dma_free_desc_list.exit_crit_edge
  %pending_list = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pending_list, align 4
  %cmp.not17.i13 = icmp eq ptr %4, %pending_list
  br i1 %cmp.not17.i13, label %zynqmp_dma_free_desc_list.exit.zynqmp_dma_free_desc_list.exit19_crit_edge, label %zynqmp_dma_free_desc_list.exit.for.body.i18_crit_edge

zynqmp_dma_free_desc_list.exit.for.body.i18_crit_edge: ; preds = %zynqmp_dma_free_desc_list.exit
  br label %for.body.i18

zynqmp_dma_free_desc_list.exit.zynqmp_dma_free_desc_list.exit19_crit_edge: ; preds = %zynqmp_dma_free_desc_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_free_desc_list.exit19

for.body.i18:                                     ; preds = %for.body.i18.for.body.i18_crit_edge, %zynqmp_dma_free_desc_list.exit.for.body.i18_crit_edge
  %.pn.in18.i14 = phi ptr [ %.pn.i16, %for.body.i18.for.body.i18_crit_edge ], [ %4, %zynqmp_dma_free_desc_list.exit.for.body.i18_crit_edge ]
  %desc.0.i15 = getelementptr i8, ptr %.pn.in18.i14, i32 -20
  %5 = ptrtoint ptr %.pn.in18.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i16 = load ptr, ptr %.pn.in18.i14, align 4
  tail call fastcc void @zynqmp_dma_free_descriptor(ptr noundef %chan, ptr noundef %desc.0.i15) #10
  %cmp.not.i17 = icmp eq ptr %.pn.i16, %pending_list
  br i1 %cmp.not.i17, label %for.body.i18.zynqmp_dma_free_desc_list.exit19_crit_edge, label %for.body.i18.for.body.i18_crit_edge

for.body.i18.for.body.i18_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i18

for.body.i18.zynqmp_dma_free_desc_list.exit19_crit_edge: ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_free_desc_list.exit19

zynqmp_dma_free_desc_list.exit19:                 ; preds = %for.body.i18.zynqmp_dma_free_desc_list.exit19_crit_edge, %zynqmp_dma_free_desc_list.exit.zynqmp_dma_free_desc_list.exit19_crit_edge
  %done_list = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 7
  %6 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %done_list, align 4
  %cmp.not17.i20 = icmp eq ptr %7, %done_list
  br i1 %cmp.not17.i20, label %zynqmp_dma_free_desc_list.exit19.zynqmp_dma_free_desc_list.exit26_crit_edge, label %zynqmp_dma_free_desc_list.exit19.for.body.i25_crit_edge

zynqmp_dma_free_desc_list.exit19.for.body.i25_crit_edge: ; preds = %zynqmp_dma_free_desc_list.exit19
  br label %for.body.i25

zynqmp_dma_free_desc_list.exit19.zynqmp_dma_free_desc_list.exit26_crit_edge: ; preds = %zynqmp_dma_free_desc_list.exit19
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_free_desc_list.exit26

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %zynqmp_dma_free_desc_list.exit19.for.body.i25_crit_edge
  %.pn.in18.i21 = phi ptr [ %.pn.i23, %for.body.i25.for.body.i25_crit_edge ], [ %7, %zynqmp_dma_free_desc_list.exit19.for.body.i25_crit_edge ]
  %desc.0.i22 = getelementptr i8, ptr %.pn.in18.i21, i32 -20
  %8 = ptrtoint ptr %.pn.in18.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i23 = load ptr, ptr %.pn.in18.i21, align 4
  tail call fastcc void @zynqmp_dma_free_descriptor(ptr noundef %chan, ptr noundef %desc.0.i22) #10
  %cmp.not.i24 = icmp eq ptr %.pn.i23, %done_list
  br i1 %cmp.not.i24, label %for.body.i25.zynqmp_dma_free_desc_list.exit26_crit_edge, label %for.body.i25.for.body.i25_crit_edge

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i25

for.body.i25.zynqmp_dma_free_desc_list.exit26_crit_edge: ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_free_desc_list.exit26

zynqmp_dma_free_desc_list.exit26:                 ; preds = %for.body.i25.zynqmp_dma_free_desc_list.exit26_crit_edge, %zynqmp_dma_free_desc_list.exit19.zynqmp_dma_free_desc_list.exit26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dma_free_descriptor(ptr noundef %chan, ptr noundef %sdesc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_free_cnt = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 11
  %0 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_free_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %desc_free_cnt, align 4
  %node = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %sdesc, i32 0, i32 3
  %free_list = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %sdesc, i32 0, i32 3, i32 1
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
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %9, ptr noundef %free_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %prev.i2.i, align 4
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_list, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %sdesc, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node, ptr %9, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tx_list = getelementptr inbounds %struct.zynqmp_dma_desc_sw, ptr %sdesc, i32 0, i32 4
  %14 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_list, align 4
  %cmp.not36 = icmp eq ptr %15, %tx_list
  br i1 %cmp.not36, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_move_tail.exit35.for.body_crit_edge, %list_move_tail.exit.for.body_crit_edge
  %16 = phi ptr [ %.pn, %list_move_tail.exit35.for.body_crit_edge ], [ %15, %list_move_tail.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %desc_free_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %desc_free_cnt, align 4
  %inc10 = add i32 %19, 1
  store i32 %inc10, ptr %desc_free_cnt, align 4
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #10
  br i1 %call.i.i26, label %if.end.i.i29, label %for.body.__list_del_entry.exit.i32_crit_edge

for.body.__list_del_entry.exit.i32_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i32

if.end.i.i29:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i27 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i27, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 4
  %prev1.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i28, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__list_del_entry.exit.i32

__list_del_entry.exit.i32:                        ; preds = %if.end.i.i29, %for.body.__list_del_entry.exit.i32_crit_edge
  %26 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i31 = tail call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %27, ptr noundef %free_list) #10
  br i1 %call.i.i.i31, label %if.end.i.i.i34, label %__list_del_entry.exit.i32.list_move_tail.exit35_crit_edge

__list_del_entry.exit.i32.list_move_tail.exit35_crit_edge: ; preds = %__list_del_entry.exit.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit35

if.end.i.i.i34:                                   ; preds = %__list_del_entry.exit.i32
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %16, ptr %prev.i2.i, align 4
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_list, ptr %16, align 4
  %prev3.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i33, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %16, ptr %27, align 4
  br label %list_move_tail.exit35

list_move_tail.exit35:                            ; preds = %if.end.i.i.i34, %__list_del_entry.exit.i32.list_move_tail.exit35_crit_edge
  %cmp.not = icmp eq ptr %.pn, %tx_list
  br i1 %cmp.not, label %list_move_tail.exit35.for.end_crit_edge, label %list_move_tail.exit35.for.body_crit_edge

list_move_tail.exit35.for.body_crit_edge:         ; preds = %list_move_tail.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_move_tail.exit35.for.end_crit_edge:          ; preds = %list_move_tail.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit35.for.end_crit_edge, %list_move_tail.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dma_start_transfer(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 16
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %idle, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 272
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  %5 = or i32 %4, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %5) #10, !srcloc !85
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 288
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  %src_burst_len.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 20
  %11 = ptrtoint ptr %src_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_burst_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #10, !range !94
  %sub.i.op.i.i = shl nuw nsw i32 %13, 14
  %sub.i.op.i.op.i = and i32 %sub.i.op.i.i, 245760
  %sub.i.op.i.op.op.i = xor i32 %sub.i.op.i.op.i, 245760
  %and12.i = select i1 %tobool.not.i.i.i, i32 245760, i32 %sub.i.op.i.op.op.i
  %dst_burst_len.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 21
  %14 = ptrtoint ptr %dst_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_burst_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i34.i = icmp eq i32 %15, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #10, !range !94
  %17 = and i32 %10, -264241921
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %and15.i = or i32 %and12.i, %18
  %sub.i.op.i35.i = and i32 %16, 15
  %sub.i.op.i35.op.i = xor i32 %sub.i.op.i35.i, 15
  %and17.i = select i1 %tobool.not.i.i34.i, i32 15, i32 %sub.i.op.i35.op.i
  %or18.i = or i32 %and15.i, %and17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #10
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %21, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %19) #10, !srcloc !85
  %pending_list = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pending_list, align 4
  %cmp.not = icmp eq ptr %23, %pending_list
  %add.ptr = getelementptr i8, ptr %23, i32 -20
  %tobool3.not18 = icmp eq ptr %add.ptr, null
  %tobool3.not = or i1 %cmp.not, %tobool3.not18
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %24 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %25, %pending_list
  br i1 %cmp.i.not.i, label %if.end5.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end5.list_splice_tail_init.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %active_list = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %27, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %active_list, ptr %29, align 4
  store ptr %29, ptr %prev.i, align 4
  %33 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  store ptr %pending_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end5.list_splice_tail_init.exit_crit_edge
  %src_p.i = getelementptr i8, ptr %23, i32 120
  %34 = ptrtoint ptr %src_p.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %src_p.i, align 4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @arm_heavy_mb() #10
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %38) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !85
  %dst_p.i = getelementptr i8, ptr %23, i32 128
  %39 = ptrtoint ptr %dst_p.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst_p.i, align 4
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %42, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %43) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i7.i = getelementptr i8, ptr %42, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 0) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %45, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 -49872896) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %47, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !85
  %48 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %idle, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %50, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #10, !srcloc !85
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail_init.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %lock = getelementptr i8, ptr %1, i32 -80
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #10
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %pending_list = getelementptr i8, ptr %1, i32 -36
  %9 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %10, %pending_list
  br i1 %cmp.i.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then:                                          ; preds = %entry
  %prev = getelementptr i8, ptr %1, i32 -32
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev, align 4
  %tx_list = getelementptr i8, ptr %12, i32 8
  %13 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i47.not = icmp eq ptr %14, %tx_list
  br i1 %cmp.i47.not, label %if.then.if.end_crit_edge, label %if.then18

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev21 = getelementptr i8, ptr %12, i32 12
  %15 = ptrtoint ptr %prev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then.if.end_crit_edge
  %.pn = phi ptr [ %12, %if.then.if.end_crit_edge ], [ %16, %if.then18 ]
  %src_p = getelementptr i8, ptr %tx, i32 104
  %17 = ptrtoint ptr %src_p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_p, align 4
  %conv24 = zext i32 %18 to i64
  %src_v = getelementptr i8, ptr %.pn, i32 116
  %19 = ptrtoint ptr %src_v to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src_v, align 8
  %nxtdscraddr = getelementptr inbounds %struct.zynqmp_dma_desc_ll, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %nxtdscraddr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv24, ptr %nxtdscraddr, align 8
  %22 = load ptr, ptr %src_v, align 8
  %ctrl = getelementptr inbounds %struct.zynqmp_dma_desc_ll, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl, align 4
  %and = and i32 %24, -17
  store i32 %and, ptr %ctrl, align 4
  %dst_p = getelementptr i8, ptr %tx, i32 112
  %25 = ptrtoint ptr %dst_p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_p, align 4
  %conv26 = zext i32 %26 to i64
  %dst_v = getelementptr i8, ptr %.pn, i32 124
  %27 = ptrtoint ptr %dst_v to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst_v, align 8
  %nxtdscraddr27 = getelementptr inbounds %struct.zynqmp_dma_desc_ll, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %nxtdscraddr27 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv26, ptr %nxtdscraddr27, align 8
  %30 = load ptr, ptr %dst_v, align 8
  %ctrl29 = getelementptr inbounds %struct.zynqmp_dma_desc_ll, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ctrl29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctrl29, align 4
  %and30 = and i32 %32, -17
  store i32 %and30, ptr %ctrl29, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end, %entry.if.end31_crit_edge
  %node = getelementptr i8, ptr %tx, i32 -16
  %prev.i = getelementptr i8, ptr %1, i32 -32
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %34, ptr noundef %pending_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end31.list_add_tail.exit_crit_edge

if.end31.list_add_tail.exit_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %node, ptr %prev.i, align 4
  %36 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pending_list, ptr %node, align 4
  %prev3.i.i = getelementptr i8, ptr %tx, i32 -12
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %node, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end31.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dma_do_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -176
  %err = getelementptr i8, ptr %t, i32 32
  %0 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %err, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr i8, ptr %t, i32 -172
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -15794176) #10, !srcloc !85
  %lock.i = getelementptr i8, ptr %t, i32 -168
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %active_list.i.i = getelementptr i8, ptr %t, i32 -108
  %4 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %active_list.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, %active_list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -20
  %tobool.not13.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i.i = or i1 %cmp.not.i.i, %tobool.not13.i.i
  br i1 %tobool.not.i.i, label %if.then.zynqmp_dma_reset.exit_crit_edge, label %if.end.i.i

if.then.zynqmp_dma_reset.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_reset.exit

if.end.i.i:                                       ; preds = %if.then
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %async_tx.i.i = getelementptr i8, ptr %5, i32 16
  %14 = ptrtoint ptr %async_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %async_tx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.i.i = icmp slt i32 %15, 1
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dma_cookie_complete.exit.i.i, !prof !102

do.body2.i.i.i:                                   ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/xilinx/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

dma_cookie_complete.exit.i.i:                     ; preds = %list_del.exit.i.i
  %chan.i.i.i = getelementptr i8, ptr %5, i32 28
  %16 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan.i.i.i, align 4
  %completed_cookie.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %completed_cookie.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %completed_cookie.i.i.i, align 4
  %19 = ptrtoint ptr %async_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %async_tx.i.i, align 4
  %done_list.i.i = getelementptr i8, ptr %t, i32 -96
  %prev.i10.i.i = getelementptr i8, ptr %t, i32 -92
  %20 = ptrtoint ptr %prev.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i10.i.i, align 4
  %call.i.i11.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %21, ptr noundef %done_list.i.i) #10
  br i1 %call.i.i11.i.i, label %if.end.i.i12.i.i, label %dma_cookie_complete.exit.i.i.zynqmp_dma_reset.exit_crit_edge

dma_cookie_complete.exit.i.i.zynqmp_dma_reset.exit_crit_edge: ; preds = %dma_cookie_complete.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_reset.exit

if.end.i.i12.i.i:                                 ; preds = %dma_cookie_complete.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %prev.i10.i.i, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %done_list.i.i, ptr %5, align 4
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %5, ptr %21, align 4
  br label %zynqmp_dma_reset.exit

zynqmp_dma_reset.exit:                            ; preds = %if.end.i.i12.i.i, %dma_cookie_complete.exit.i.i.zynqmp_dma_reset.exit_crit_edge, %if.then.zynqmp_dma_reset.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  tail call fastcc void @zynqmp_dma_chan_desc_cleanup(ptr noundef %add.ptr) #10
  tail call fastcc void @zynqmp_dma_free_descriptors(ptr noundef %add.ptr) #10
  tail call fastcc void @zynqmp_dma_init(ptr noundef %add.ptr) #10
  %26 = ptrtoint ptr %err to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %err, align 4
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %t, i32 -168
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %regs = getelementptr i8, ptr %t, i32 -172
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %28, i32 404
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not48 = icmp eq i32 %29, 0
  br i1 %tobool11.not48, label %do.body2.while.end_crit_edge, label %while.body.lr.ph

do.body2.while.end_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body2
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %active_list.i = getelementptr i8, ptr %t, i32 -108
  %done_list.i = getelementptr i8, ptr %t, i32 -96
  %prev.i10.i = getelementptr i8, ptr %t, i32 -92
  br label %while.body

while.body:                                       ; preds = %zynqmp_dma_complete_descriptor.exit.while.body_crit_edge, %while.body.lr.ph
  %count.049 = phi i32 [ %30, %while.body.lr.ph ], [ %dec, %zynqmp_dma_complete_descriptor.exit.while.body_crit_edge ]
  %31 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %active_list.i, align 4
  %cmp.not.i = icmp eq ptr %32, %active_list.i
  %add.ptr.i46 = getelementptr i8, ptr %32, i32 -20
  %tobool.not13.i = icmp eq ptr %add.ptr.i46, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not13.i
  br i1 %tobool.not.i, label %while.body.zynqmp_dma_complete_descriptor.exit_crit_edge, label %if.end.i

while.body.zynqmp_dma_complete_descriptor.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_complete_descriptor.exit

if.end.i:                                         ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i47 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i47, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %async_tx.i = getelementptr i8, ptr %32, i32 16
  %41 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %async_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i.i = icmp slt i32 %42, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !102

do.body2.i.i:                                     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/xilinx/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit.i
  %chan.i.i = getelementptr i8, ptr %32, i32 28
  %43 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %completed_cookie.i.i, align 4
  %46 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %async_tx.i, align 4
  %47 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i10.i, align 4
  %call.i.i11.i = tail call zeroext i1 @__list_add_valid(ptr noundef %32, ptr noundef %48, ptr noundef %done_list.i) #10
  br i1 %call.i.i11.i, label %if.end.i.i12.i, label %dma_cookie_complete.exit.i.zynqmp_dma_complete_descriptor.exit_crit_edge

dma_cookie_complete.exit.i.zynqmp_dma_complete_descriptor.exit_crit_edge: ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_complete_descriptor.exit

if.end.i.i12.i:                                   ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %32, ptr %prev.i10.i, align 4
  %50 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %done_list.i, ptr %32, align 4
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %32, ptr %48, align 4
  br label %zynqmp_dma_complete_descriptor.exit

zynqmp_dma_complete_descriptor.exit:              ; preds = %if.end.i.i12.i, %dma_cookie_complete.exit.i.zynqmp_dma_complete_descriptor.exit_crit_edge, %while.body.zynqmp_dma_complete_descriptor.exit_crit_edge
  %dec = add i32 %count.049, -1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %zynqmp_dma_complete_descriptor.exit.while.end_crit_edge, label %zynqmp_dma_complete_descriptor.exit.while.body_crit_edge

zynqmp_dma_complete_descriptor.exit.while.body_crit_edge: ; preds = %zynqmp_dma_complete_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

zynqmp_dma_complete_descriptor.exit.while.end_crit_edge: ; preds = %zynqmp_dma_complete_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %zynqmp_dma_complete_descriptor.exit.while.end_crit_edge, %do.body2.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  tail call fastcc void @zynqmp_dma_chan_desc_cleanup(ptr noundef %add.ptr)
  %idle = getelementptr i8, ptr %t, i32 24
  %53 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %idle, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool13.not = icmp eq i8 %54, 0
  br i1 %tobool13.not, label %while.end.cleanup_crit_edge, label %do.body16

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body16:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @zynqmp_dma_start_transfer(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %while.end.cleanup_crit_edge, %zynqmp_dma_reset.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dma_init(ptr nocapture noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -15794176) #10, !srcloc !85
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %4) #10, !srcloc !85
  %is_dmacoherent = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 14
  %7 = ptrtoint ptr %is_dmacoherent to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_dmacoherent, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -268369920) #10, !srcloc !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 288
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !90
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  %15 = ptrtoint ptr %is_dmacoherent to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_dmacoherent, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  %or27 = or i32 %14, 62918400
  %spec.select = select i1 %tobool22.not, i32 %14, i32 %or27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !110
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %17) #10, !srcloc !85
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr37 = getelementptr i8, ptr %21, i32 400
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr44 = getelementptr i8, ptr %24, i32 404
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  %idle = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 16
  %26 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %idle, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 260
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %6 = xor i32 %5, -1
  %7 = and i32 %2, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %2) #10, !srcloc !85
  %and11 = and i32 %8, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 15, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 15
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.i ]
  %and12 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %idle = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 16
  %11 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %idle, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %and16 = and i32 %8, 961
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  %err = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 18
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %err, align 4
  %state.i56 = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 15, i32 1
  %call.i57 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.then.i59, label %if.then18.tasklet_schedule.exit60_crit_edge

if.then18.tasklet_schedule.exit60_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit60

if.then.i59:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet19 = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 15
  tail call void @__tasklet_schedule(ptr noundef %tasklet19) #10
  br label %tasklet_schedule.exit60

tasklet_schedule.exit60:                          ; preds = %if.then.i59, %if.then18.tasklet_schedule.exit60_crit_edge
  %dev = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.27, ptr noundef %data) #13
  br label %if.end23

if.end23:                                         ; preds = %tasklet_schedule.exit60, %if.end15.if.end23_crit_edge
  %ret.1 = phi i32 [ 1, %tasklet_schedule.exit60 ], [ %ret.0, %if.end15.if.end23_crit_edge ]
  %and24 = and i32 %8, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end39_crit_edge, label %if.then26

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then26:                                        ; preds = %if.end23
  %and.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i61 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i61, label %if.then26.if.end.i_crit_edge, label %do.body.i

if.then26.if.end.i_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !85
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.then26.if.end.i_crit_edge
  %and1.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %18, i32 404
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %and8.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.zynqmp_dma_handle_ovfl_int.exit_crit_edge, label %if.then10.i

if.end7.i.zynqmp_dma_handle_ovfl_int.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %zynqmp_dma_handle_ovfl_int.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr14.i = getelementptr i8, ptr %21, i32 400
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  br label %zynqmp_dma_handle_ovfl_int.exit

zynqmp_dma_handle_ovfl_int.exit:                  ; preds = %if.then10.i, %if.end7.i.zynqmp_dma_handle_ovfl_int.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dma_irq_handler.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zynqmp_dma_irq_handler, %if.end39)) #10
          to label %if.then34 [label %if.end39], !srcloc !82

if.then34:                                        ; preds = %zynqmp_dma_handle_ovfl_int.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev35 = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %data, i32 0, i32 12
  %23 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dma_irq_handler.__UNIQUE_ID_ddebug247, ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef %data) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %zynqmp_dma_handle_ovfl_int.exit, %if.end23.if.end39_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end23.if.end39_crit_edge ], [ 1, %if.then34 ], [ 1, %zynqmp_dma_handle_ovfl_int.exit ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dma_chan_desc_cleanup(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %done_list = getelementptr inbounds %struct.zynqmp_dma_chan, ptr %chan, i32 0, i32 7
  %0 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %done_list, align 4
  %cmp13.not59 = icmp eq ptr %1, %done_list
  br i1 %cmp13.not59, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in61 = phi ptr [ %.pn63, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %irqflags.060 = phi i32 [ %irqflags.1, %if.end.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %desc.062 = getelementptr i8, ptr %.pn.in61, i32 -20
  %2 = ptrtoint ptr %.pn.in61 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn63 = load ptr, ptr %.pn.in61, align 4
  %callback.i = getelementptr i8, ptr %.pn.in61, i32 40
  %3 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr i8, ptr %.pn.in61, i32 44
  %5 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr i8, ptr %.pn.in61, i32 48
  %7 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %callback_param.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %dmaengine_desc_callback_valid.exit, label %if.then

dmaengine_desc_callback_valid.exit:               ; preds = %for.body
  %tobool1.i.not = icmp eq ptr %6, null
  br i1 %tobool1.i.not, label %dmaengine_desc_callback_valid.exit.if.end_crit_edge, label %if.then.thread

dmaengine_desc_callback_valid.exit.if.end_crit_edge: ; preds = %dmaengine_desc_callback_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.thread:                                   ; preds = %dmaengine_desc_callback_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %irqflags.060) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %9 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %dummy_result.i, align 8
  br label %if.then.i

if.then:                                          ; preds = %for.body
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %irqflags.060) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %10 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i51 = icmp eq ptr %6, null
  br i1 %tobool.not.i51, label %if.then5.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.thread
  call void %6(ptr noundef %8, ptr noundef nonnull %dummy_result.i) #10
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void %4(ptr noundef %8) #10
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %if.end

if.end:                                           ; preds = %dmaengine_desc_callback_invoke.exit, %dmaengine_desc_callback_valid.exit.if.end_crit_edge
  %irqflags.1 = phi i32 [ %call26, %dmaengine_desc_callback_invoke.exit ], [ %irqflags.060, %dmaengine_desc_callback_valid.exit.if.end_crit_edge ]
  call fastcc void @zynqmp_dma_free_descriptor(ptr noundef %chan, ptr noundef %desc.062)
  %cmp13.not = icmp eq ptr %.pn63, %done_list
  br i1 %cmp13.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %irqflags.0.lcssa = phi i32 [ %call2, %entry.for.end_crit_edge ], [ %irqflags.1, %if.end.for.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %irqflags.0.lcssa) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.return_crit_edge

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #10
  br label %return

return:                                           ; preds = %if.then, %device_may_wakeup.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %device_may_wakeup.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dma_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.return_crit_edge

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #10
  br label %return

return:                                           ; preds = %if.then, %device_may_wakeup.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %device_may_wakeup.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_zynqmp_dma__251_1157_zynqmp_dma_driver_init6, !1, !"__initcall__kmod_zynqmp_dma__251_1157_zynqmp_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1157, i32 1}
!2 = !{ptr @__exitcall_zynqmp_dma_driver_exit, !1, !"__exitcall_zynqmp_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file252, !4, !"__UNIQUE_ID_file252", i1 false, i1 false}
!4 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1159, i32 1}
!5 = !{ptr @__UNIQUE_ID_license253, !4, !"__UNIQUE_ID_license253", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author254, !7, !"__UNIQUE_ID_author254", i1 false, i1 false}
!7 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1160, i32 1}
!8 = !{ptr @__UNIQUE_ID_description255, !9, !"__UNIQUE_ID_description255", i1 false, i1 false}
!9 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1161, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1149, i32 11}
!12 = !{ptr @zynqmp_dma_driver, !13, !"zynqmp_dma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1147, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1066, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1069, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1071, i32 43}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1074, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1089, i32 34}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1101, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 825, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @zynqmp_dma_prep_memcpy.__UNIQUE_ID_ddebug248, !27, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1014, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @zynqmp_dma_runtime_resume._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @zynqmp_dma_runtime_resume._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1020, i32 3}
!41 = !{ptr @zynqmp_dma_runtime_resume._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @zynqmp_dma_runtime_resume._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 899, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 901, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @zynqmp_dma_chan_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @zynqmp_dma_chan_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 907, i32 3}
!52 = !{ptr @zynqmp_dma_chan_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @zynqmp_dma_chan_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 911, i32 54}
!56 = !{ptr @zynqmp_dma_chan_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 914, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 929, i32 11}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 735, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @zynqmp_dma_irq_handler._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @zynqmp_dma_irq_handler._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 741, i32 3}
!68 = !{ptr @zynqmp_dma_irq_handler.__UNIQUE_ID_ddebug247, !67, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!69 = !{ptr @zynqmp_dma_of_match, !70, !"zynqmp_dma_of_match", i1 false, i1 false}
!70 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1141, i32 34}
!71 = !{ptr @zynqmp_dma_dev_pm_ops, !72, !"zynqmp_dma_dev_pm_ops", i1 false, i1 false}
!72 = !{!"../drivers/dma/xilinx/zynqmp_dma.c", i32 1028, i32 32}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148847326, i64 2148847331, i64 2148847344, i64 2148847388, i64 2148847422, i64 2148847443}
!83 = !{i8 0, i8 2}
!84 = !{i64 2154561519}
!85 = !{i64 6247100}
!86 = !{i64 2148192360}
!87 = !{i64 677183, i64 677208, i64 677230, i64 677246, i64 677258, i64 677278, i64 677302, i64 677318, i64 677330}
!88 = !{i64 2148192548}
!89 = !{i64 2154434042}
!90 = !{i64 6247518}
!91 = !{i64 2154501394}
!92 = !{i64 2154501697}
!93 = !{i64 2154502369}
!94 = !{i32 0, i32 33}
!95 = !{i64 2154505327}
!96 = !{i64 2154394585}
!97 = !{i64 2154394958}
!98 = !{i64 2154497108}
!99 = !{i64 2154498526}
!100 = !{i64 2154499023}
!101 = !{i64 2154550461}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2154432532, i64 2154433029, i64 2154432569, i64 2154432625, i64 2154432659, i64 2154432683, i64 2154432724, i64 2154432745, i64 2154432773, i64 2154432807}
!104 = !{i64 2154559626}
!105 = !{i64 2154470063}
!106 = !{i64 2154470741}
!107 = !{i64 2154470962}
!108 = !{i64 2154472121}
!109 = !{i64 2154472793}
!110 = !{i64 2154474402}
!111 = !{i64 2154475074}
!112 = !{i64 2154475570}
!113 = !{i64 2154551505}
!114 = !{i64 2154552001}
!115 = !{i64 2154552222}
!116 = !{i64 2154499572}
!117 = !{i64 2154500320}
!118 = !{i64 2154500898}
