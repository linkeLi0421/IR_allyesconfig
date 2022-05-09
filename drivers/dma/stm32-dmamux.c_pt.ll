; ModuleID = '/llk/IR_all_yes/drivers/dma/stm32-dmamux.c_pt.bc'
source_filename = "../drivers/dma/stm32-dmamux.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.stm32_dmamux_data = type { %struct.dma_router, ptr, ptr, i32, i32, %struct.spinlock, ptr, [32 x i32], [0 x i32] }
%struct.dma_router = type { ptr, ptr }
%struct.stm32_dmamux = type { i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_stm32_dmamux__233_404_stm32_dmamux_init3 = internal global ptr @stm32_dmamux_init, section ".initcall3.init", align 4
@__UNIQUE_ID_description234 = internal constant [61 x i8] c"stm32_dmamux.description=DMA Router driver for STM32 DMA MUX\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [73 x i8] c"stm32_dmamux.author=M'boumba Cedric Madianga <cedric.madianga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [69 x i8] c"stm32_dmamux.author=Pierre-Yves Mordret <pierre-yves.mordret@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [43 x i8] c"stm32_dmamux.file=drivers/dma/stm32-dmamux\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"stm32_dmamux.license=GPL v2\00", section ".modinfo", align 1
@stm32_dmamux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_dmamux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dmamux_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dmamux_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32-dmamux\00", [19 x i8] zeroinitializer }, align 32
@stm32_dmamux_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-dmamux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_dmamux_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dmamux_suspend, ptr @stm32_dmamux_resume, ptr @stm32_dmamux_suspend, ptr @stm32_dmamux_resume, ptr @stm32_dmamux_suspend, ptr @stm32_dmamux_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dmamux_runtime_suspend, ptr @stm32_dmamux_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma-masters\00", [20 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't get DMA master(s) node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_dmamux_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/dma/stm32-dmamux.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry_ptr = internal global ptr @stm32_dmamux_probe._entry, section ".printk_index", align 4
@stm32_stm32dma_master_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA master is not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry_ptr.9 = internal global ptr @stm32_dmamux_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 217, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Missing MUX output information, using %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry_ptr.14 = internal global ptr @stm32_dmamux_probe._entry.11, section ".printk_index", align 4
@stm32_dmamux_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Too many DMA Master Requests to manage\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry_ptr.17 = internal global ptr @stm32_dmamux_probe._entry.15, section ".printk_index", align 4
@stm32_dmamux_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 243, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMAMUX defaulting on %u requests\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry_ptr.21 = internal global ptr @stm32_dmamux_probe._entry.18, section ".printk_index", align 4
@stm32_dmamux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&stm32_dmamux->lock\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Missing clock controller\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_prep_enable error: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_dmamux_probe._entry_ptr.26 = internal global ptr @stm32_dmamux_probe._entry.24, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_dmamux_free.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32_dmamux\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_dmamux_free\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unmapping DMAMUX(%u) to DMA%u(%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_dmamux_route_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 95, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid number of dma mux args\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_dmamux_route_allocate\00", [36 x i8] zeroinitializer }, align 32
@stm32_dmamux_route_allocate._entry_ptr = internal global ptr @stm32_dmamux_route_allocate._entry, section ".printk_index", align 4
@stm32_dmamux_route_allocate._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 101, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid mux request number: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_dmamux_route_allocate._entry_ptr.34 = internal global ptr @stm32_dmamux_route_allocate._entry.32, section ".printk_index", align 4
@stm32_dmamux_route_allocate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.4, i32 115, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Run out of free DMA requests\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_dmamux_route_allocate._entry_ptr.37 = internal global ptr @stm32_dmamux_route_allocate._entry.35, section ".printk_index", align 4
@stm32_dmamux_route_allocate._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't get dma master\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_dmamux_route_allocate._entry_ptr.40 = internal global ptr @stm32_dmamux_route_allocate._entry.38, section ".printk_index", align 4
@stm32_dmamux_route_allocate.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.31, ptr @.str.4, ptr @.str.41, i8 0, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mapping DMAMUX(%u) to DMA%u(%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stm32_dmamux_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_dmamux_runtime_resume\00", [36 x i8] zeroinitializer }, align 32
@stm32_dmamux_runtime_resume._entry_ptr = internal global ptr @stm32_dmamux_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"stm32_dmamux_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 391, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 394, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"stm32_dmamux_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 386, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"stm32_dmamux_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 380, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 191, i32 48 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 193, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"stm32_stm32dma_master_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 171, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 208, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 213, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 215, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 226, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 242, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 252, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 257, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 261, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 78, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 95, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 100, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 115, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 133, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 158, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [30 x i8] c"../drivers/dma/stm32-dmamux.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 326, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__initcall__kmod_stm32_dmamux__233_404_stm32_dmamux_init3, ptr @stm32_dmamux_probe._entry, ptr @stm32_dmamux_probe._entry.11, ptr @stm32_dmamux_probe._entry.15, ptr @stm32_dmamux_probe._entry.18, ptr @stm32_dmamux_probe._entry.24, ptr @stm32_dmamux_probe._entry.7, ptr @stm32_dmamux_probe._entry_ptr, ptr @stm32_dmamux_probe._entry_ptr.14, ptr @stm32_dmamux_probe._entry_ptr.17, ptr @stm32_dmamux_probe._entry_ptr.21, ptr @stm32_dmamux_probe._entry_ptr.26, ptr @stm32_dmamux_probe._entry_ptr.9, ptr @stm32_dmamux_route_allocate._entry, ptr @stm32_dmamux_route_allocate._entry.32, ptr @stm32_dmamux_route_allocate._entry.35, ptr @stm32_dmamux_route_allocate._entry.38, ptr @stm32_dmamux_route_allocate._entry_ptr, ptr @stm32_dmamux_route_allocate._entry_ptr.34, ptr @stm32_dmamux_route_allocate._entry_ptr.37, ptr @stm32_dmamux_route_allocate._entry_ptr.40, ptr @stm32_dmamux_runtime_resume._entry, ptr @stm32_dmamux_runtime_resume._entry_ptr, ptr @stm32_dmamux_driver, ptr @.str, ptr @stm32_dmamux_match, ptr @stm32_dmamux_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @stm32_stm32dma_master_match, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @stm32_dmamux_probe.__key, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_stm32dma_master_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_route_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_route_allocate._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_route_allocate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_route_allocate._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dmamux_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dmamux_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add = shl i32 %call.i, 2
  %add6 = add i32 %add, 204
  %call.i216 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add6, i32 noundef 3520) #8
  %tobool8.not = icmp eq ptr %call.i216, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %for.cond.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.not236 = icmp eq i32 %call.i, 0
  br i1 %cmp11.not236, label %for.cond.preheader.if.end40_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dma_req.0238 = phi i32 [ %add33, %if.end30.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0237 = phi i32 [ %inc, %if.end30.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %sub = add i32 %i.0237, -1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i217 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not.i = icmp eq i32 %call.i217, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.of_parse_phandle.exit_crit_edge

for.body.of_parse_phandle.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %for.body.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ null, %for.body.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %call13 = call ptr @of_match_node(ptr noundef nonnull @stm32_stm32dma_master_match, ptr noundef %retval.0.i) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  call void @of_node_put(ptr noundef %retval.0.i) #8
  br label %cleanup

if.end20:                                         ; preds = %of_parse_phandle.exit
  %arrayidx = getelementptr %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 8, i32 %i.0237
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i, ptr noundef nonnull @.str.10, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool22.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool22.not, label %if.end20.if.end30_crit_edge, label %do.end26

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 32) #11
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %arrayidx, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.end20.if.end30_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add33 = add i32 %7, %dma_req.0238
  call void @of_node_put(ptr noundef %retval.0.i) #8
  %inc = add i32 %i.0237, 1
  %cmp11.not = icmp sgt i32 %inc, %call.i
  br i1 %cmp11.not, label %for.end, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add33)
  %cmp34 = icmp ugt i32 %add33, 32
  br i1 %cmp34, label %do.end38, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge
  %dma_req.0.lcssa244 = phi i32 [ %add33, %for.end.if.end40_crit_edge ], [ 0, %for.cond.preheader.if.end40_crit_edge ]
  %dma_requests = getelementptr inbounds %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 3
  %8 = ptrtoint ptr %dma_requests to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dma_req.0.lcssa244, ptr %dma_requests, align 4
  %dma_reqs41 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 8
  %9 = ptrtoint ptr %dma_reqs41 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i, ptr %dma_reqs41, align 4
  %sub45 = add nuw nsw i32 %dma_req.0.lcssa244, 31
  %10 = lshr i32 %sub45, 3
  %11 = and i32 %10, 536870908
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %11, i32 noundef 3520) #8
  %dma_inuse = getelementptr inbounds %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 6
  %12 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %dma_inuse, align 4
  %tobool48.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool48.not, label %if.end40.cleanup_crit_edge, label %if.end50

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %dmamux_requests = getelementptr inbounds %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 4
  %call.i218 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %dmamux_requests, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool53.not = icmp eq i32 %call.i218, 0
  br i1 %tobool53.not, label %if.end50.if.end61_crit_edge, label %if.then54

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dmamux_requests to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 255, ptr %dmamux_requests, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef 255) #11
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.end50.if.end61_crit_edge
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !99
  %call63 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call65 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call63) #8
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %do.body70

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call65 to i32
  br label %cleanup

do.body70:                                        ; preds = %if.end61
  %lock = getelementptr inbounds %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @stm32_dmamux_probe.__key, i16 noundef signext 3) #8
  %call75 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call75, ptr %clk, align 4
  %cmp.i219 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then78, label %if.end83

if.then78:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call75 to i32
  %call82 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end83:                                         ; preds = %do.body70
  %call.i220 = call i32 @clk_prepare(ptr noundef %call75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool.not.i221 = icmp eq i32 %call.i220, 0
  br i1 %tobool.not.i221, label %if.end.i222, label %if.end83.clk_prepare_enable.exit_crit_edge

if.end83.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i222:                                      ; preds = %if.end83
  %call1.i = call i32 @clk_enable(ptr noundef %call75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i222.if.end92_crit_edge, label %if.then3.i

if.end.i222.if.end92_crit_edge:                   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then3.i:                                       ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call75) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end83.clk_prepare_enable.exit_crit_edge
  %retval.0.i223 = phi i32 [ %call.i220, %if.end83.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i223)
  %cmp86 = icmp slt i32 %retval.0.i223, 0
  br i1 %cmp86, label %do.end90, label %clk_prepare_enable.exit.if.end92_crit_edge

clk_prepare_enable.exit.if.end92_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.end90:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i223) #11
  br label %cleanup

if.end92:                                         ; preds = %clk_prepare_enable.exit.if.end92_crit_edge, %if.end.i222.if.end92_crit_edge
  %call.i.i224 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %cmp.i225 = icmp ugt ptr %call.i.i224, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.end92
  %cmp98 = icmp eq ptr %call.i.i224, inttoptr (i32 -517 to ptr)
  br i1 %cmp98, label %if.then96.err_clk_crit_edge, label %if.then96.if.end103_crit_edge

if.then96.if.end103_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then96.err_clk_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk

if.else:                                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %call101 = call i32 @reset_control_assert(ptr noundef %call.i.i224) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 429496) #8
  %call102 = call i32 @reset_control_deassert(ptr noundef %call.i.i224) #8
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then96.if.end103_crit_edge
  %iomem104 = getelementptr inbounds %struct.stm32_dmamux_data, ptr %call.i216, i32 0, i32 2
  %19 = ptrtoint ptr %iomem104 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call65, ptr %iomem104, align 4
  %20 = ptrtoint ptr %call.i216 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %call.i216, align 4
  %route_free = getelementptr inbounds %struct.dma_router, ptr %call.i216, i32 0, i32 1
  %21 = ptrtoint ptr %route_free to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @stm32_dmamux_free, ptr %route_free, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i216, ptr %driver_data.i.i, align 4
  %call.i226 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i.i.i228 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !99
  %24 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp114239.not = icmp eq i32 %25, 0
  br i1 %cmp114239.not, label %if.end103.for.end120_crit_edge, label %if.end103.for.body115_crit_edge

if.end103.for.body115_crit_edge:                  ; preds = %if.end103
  br label %for.body115

if.end103.for.end120_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.body115:                                      ; preds = %for.body115.for.body115_crit_edge, %if.end103.for.body115_crit_edge
  %i.1240 = phi i32 [ %inc119, %for.body115.for.body115_crit_edge ], [ 0, %if.end103.for.body115_crit_edge ]
  %26 = ptrtoint ptr %iomem104 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iomem104, align 4
  %mul117 = shl i32 %i.1240, 2
  %add.ptr.i = getelementptr i8, ptr %27, i32 %mul117
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !100
  %inc119 = add nuw i32 %i.1240, 1
  %28 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_requests, align 4
  %cmp114 = icmp ult i32 %inc119, %29
  br i1 %cmp114, label %for.body115.for.body115_crit_edge, label %for.body115.for.end120_crit_edge

for.body115.for.end120_crit_edge:                 ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.body115.for.body115_crit_edge:                ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body115

for.end120:                                       ; preds = %for.body115.for.end120_crit_edge, %if.end103.for.end120_crit_edge
  %call.i229 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  %call124 = call i32 @of_dma_router_register(ptr noundef nonnull %1, ptr noundef nonnull @stm32_dmamux_route_allocate, ptr noundef nonnull %call.i216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %for.end120.cleanup_crit_edge, label %pm_disable

for.end120.cleanup_crit_edge:                     ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pm_disable:                                       ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %err_clk

err_clk:                                          ; preds = %pm_disable, %if.then96.err_clk_crit_edge
  %ret.0 = phi i32 [ -517, %if.then96.err_clk_crit_edge ], [ %call124, %pm_disable ]
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %31) #8
  call void @clk_unprepare(ptr noundef %31) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %for.end120.cleanup_crit_edge, %do.end90, %if.then78, %if.then67, %if.end40.cleanup_crit_edge, %do.end38, %do.end18, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end18 ], [ -19, %do.end38 ], [ %15, %if.then67 ], [ %call82, %if.then78 ], [ %retval.0.i223, %do.end90 ], [ %ret.0, %err_clk ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ], [ 0, %for.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dmamux_free(ptr noundef %dev, ptr noundef %route_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %iomem = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %chan_id = getelementptr inbounds %struct.stm32_dmamux, ptr %route_data, i32 0, i32 2
  %4 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_id, align 4
  %mul = shl i32 %5, 2
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !100
  %6 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan_id, align 4
  %dma_inuse = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_inuse, align 4
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %9) #8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dmamux_free.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dmamux_free, %do.end17)) #8
          to label %if.then [label %do.end17], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %request = getelementptr inbounds %struct.stm32_dmamux, ptr %route_data, i32 0, i32 1
  %10 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %request, align 4
  %12 = ptrtoint ptr %route_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_data, align 4
  %14 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dmamux_free.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %route_data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_router_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_dmamux_route_allocate(ptr nocapture noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %1) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %dmamux_requests = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dmamux_requests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmamux_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3 = icmp ugt i32 %7, %9
  br i1 %cmp3, label %do.end7, label %if.end12

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.33, i32 noundef %7) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %do.body18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body18:                                        ; preds = %if.end12
  %lock = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 5
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %dma_inuse = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_inuse, align 4
  %dma_requests = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_requests, align 4
  %call26 = tail call i32 @_find_first_zero_bit_be(ptr noundef %12, i32 noundef %14) #8
  %chan_id = getelementptr inbounds %struct.stm32_dmamux, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %chan_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call26, ptr %chan_id, align 8
  %16 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %17)
  %cmp29 = icmp eq i32 %call26, %17
  br i1 %cmp29, label %if.then31, label %if.end37

if.then31:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #8
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.36) #11
  br label %error_chan_id

if.end37:                                         ; preds = %do.body18
  %18 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_inuse, align 4
  tail call void @_set_bit(i32 noundef %call26, ptr noundef %19) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #8
  %dma_reqs = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %dma_reqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_reqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44.not203 = icmp eq i32 %21, 0
  br i1 %cmp44.not203, label %if.end37.for.end_crit_edge, label %for.body.lr.ph

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end37
  %arrayidx41 = getelementptr %struct.stm32_dmamux_data, ptr %3, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx41, align 4
  %24 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan_id, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %max.0206 = phi i32 [ %23, %for.body.lr.ph ], [ %add55, %for.inc.for.body_crit_edge ]
  %min.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %i.0204 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %max.0206)
  %cmp47 = icmp ult i32 %25, %max.0206
  br i1 %cmp47, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %arrayidx52 = getelementptr %struct.stm32_dmamux_data, ptr %3, i32 0, i32 8, i32 %i.0204
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx52, align 4
  %add = add i32 %27, %min.0205
  %inc = add i32 %i.0204, 1
  %arrayidx54 = getelementptr %struct.stm32_dmamux_data, ptr %3, i32 0, i32 8, i32 %inc
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %29, %max.0206
  %cmp44.not = icmp ugt i32 %inc, %21
  br i1 %cmp44.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end37.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %if.end37.for.end_crit_edge ], [ %i.0204, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %min.0.lcssa = phi i32 [ 0, %if.end37.for.end_crit_edge ], [ %min.0205, %for.body.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %sub = add i32 %i.0.lcssa, -1
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %33 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %34 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %dma_spec, align 4
  br label %do.end64

of_parse_phandle.exit:                            ; preds = %for.end
  %35 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %37 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %dma_spec, align 4
  %tobool60.not = icmp eq ptr %36, null
  br i1 %tobool60.not, label %of_parse_phandle.exit.do.end64_crit_edge, label %do.body68

of_parse_phandle.exit.do.end64_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

do.end64:                                         ; preds = %of_parse_phandle.exit.do.end64_crit_edge, %of_parse_phandle.exit.thread
  %dev65 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.39) #11
  br label %error

do.body68:                                        ; preds = %of_parse_phandle.exit
  %call76 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %dev81 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %call.i195 = call i32 @__pm_runtime_resume(ptr noundef %dev81, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %cmp.i = icmp slt i32 %call.i195, 0
  br i1 %cmp.i, label %if.then.i, label %if.end87

if.then.i:                                        ; preds = %do.body68
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then85_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then85_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !104
  br label %if.then85

if.then85:                                        ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then85_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call76) #8
  br label %error

if.end87:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call76) #8
  %39 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %args, align 4
  %request = getelementptr inbounds %struct.stm32_dmamux, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %request, align 4
  %arrayidx92 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx92, align 4
  %arrayidx94 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx94, align 4
  %arrayidx96 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx96, align 4
  store i32 %46, ptr %arrayidx92, align 4
  store i32 0, ptr %arrayidx96, align 4
  %47 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan_id, align 8
  %sub102 = sub i32 %48, %min.0.lcssa
  store i32 %sub102, ptr %args, align 4
  %49 = ptrtoint ptr %args_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %args_count, align 4
  %iomem = getelementptr inbounds %struct.stm32_dmamux_data, ptr %3, i32 0, i32 2
  %50 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem, align 4
  %mul = shl i32 %48, 2
  %52 = call i32 @llvm.bswap.i32(i32 %40) #8
  %add.ptr.i = getelementptr i8, ptr %51, i32 %mul
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %52) #8, !srcloc !100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dmamux_route_allocate.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dmamux_route_allocate, %cleanup)) #8
          to label %if.then115 [label %cleanup], !srcloc !101

if.then115:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %request, align 4
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call7.i.i, align 8
  %57 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chan_id, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dmamux_route_allocate.__UNIQUE_ID_ddebug232, ptr noundef %dev81, ptr noundef nonnull @.str.41, i32 noundef %54, i32 noundef %56, i32 noundef %58) #8
  br label %cleanup

error:                                            ; preds = %if.then85, %do.end64
  %ret.0 = phi i32 [ %call.i195, %if.then85 ], [ -22, %do.end64 ]
  %59 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan_id, align 8
  %61 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_inuse, align 4
  call void @_clear_bit(i32 noundef %60, ptr noundef %62) #8
  br label %error_chan_id

error_chan_id:                                    ; preds = %error, %if.then31
  %ret.1 = phi i32 [ -12, %if.then31 ], [ %ret.0, %error ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %63 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error_chan_id, %if.then115, %if.end87, %if.end12.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end7 ], [ %63, %error_chan_id ], [ %call7.i.i, %if.then115 ], [ inttoptr (i32 -12 to ptr), %if.end12.cleanup_crit_edge ], [ %call7.i.i, %if.end87 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %dma_requests = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp221.not = icmp eq i32 %3, 0
  br i1 %cmp221.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iomem = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 2
  br label %for.body

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !104
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem, align 4
  %mul = shl i32 %i.022, 2
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !105
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %arrayidx = getelementptr %struct.stm32_dmamux_data, ptr %1, i32 0, i32 7, i32 %i.022
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.022, 1
  %10 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_requests, align 4
  %cmp2 = icmp ult i32 %inc, %11
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  %call5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %dma_requests = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp625.not = icmp eq i32 %3, 0
  br i1 %cmp625.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iomem = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 2
  br label %for.body

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !104
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem, align 4
  %mul = shl i32 %i.026, 2
  %arrayidx = getelementptr %struct.stm32_dmamux_data, ptr %1, i32 0, i32 7, i32 %i.026
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !100
  %inc = add nuw i32 %i.026, 1
  %10 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_requests, align 4
  %cmp6 = icmp ult i32 %inc, %11
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i22 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dmamux_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.stm32_dmamux_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !85, !87, !88, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_stm32_dmamux__233_404_stm32_dmamux_init3, !1, !"__initcall__kmod_stm32_dmamux__233_404_stm32_dmamux_init3", i1 false, i1 false}
!1 = !{!"../drivers/dma/stm32-dmamux.c", i32 404, i32 1}
!2 = !{ptr @__UNIQUE_ID_description234, !3, !"__UNIQUE_ID_description234", i1 false, i1 false}
!3 = !{!"../drivers/dma/stm32-dmamux.c", i32 406, i32 1}
!4 = !{ptr @__UNIQUE_ID_author235, !5, !"__UNIQUE_ID_author235", i1 false, i1 false}
!5 = !{!"../drivers/dma/stm32-dmamux.c", i32 407, i32 1}
!6 = !{ptr @__UNIQUE_ID_author236, !7, !"__UNIQUE_ID_author236", i1 false, i1 false}
!7 = !{!"../drivers/dma/stm32-dmamux.c", i32 408, i32 1}
!8 = !{ptr @__UNIQUE_ID_file237, !9, !"__UNIQUE_ID_file237", i1 false, i1 false}
!9 = !{!"../drivers/dma/stm32-dmamux.c", i32 409, i32 1}
!10 = !{ptr @__UNIQUE_ID_license238, !9, !"__UNIQUE_ID_license238", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/stm32-dmamux.c", i32 394, i32 11}
!13 = !{ptr @stm32_dmamux_driver, !14, !"stm32_dmamux_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/stm32-dmamux.c", i32 391, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/stm32-dmamux.c", i32 191, i32 48}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/stm32-dmamux.c", i32 193, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stm32_dmamux_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @stm32_dmamux_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/stm32-dmamux.c", i32 208, i32 4}
!27 = !{ptr @stm32_dmamux_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @stm32_dmamux_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/stm32-dmamux.c", i32 213, i32 38}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/stm32-dmamux.c", i32 215, i32 4}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @stm32_dmamux_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @stm32_dmamux_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/stm32-dmamux.c", i32 226, i32 3}
!38 = !{ptr @stm32_dmamux_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @stm32_dmamux_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/stm32-dmamux.c", i32 242, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @stm32_dmamux_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @stm32_dmamux_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @stm32_dmamux_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/dma/stm32-dmamux.c", i32 252, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/stm32-dmamux.c", i32 257, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/stm32-dmamux.c", i32 261, i32 3}
!52 = !{ptr @stm32_dmamux_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @stm32_dmamux_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @stm32_stm32dma_master_match, !55, !"stm32_stm32dma_master_match", i1 false, i1 false}
!55 = !{!"../drivers/dma/stm32-dmamux.c", i32 171, i32 34}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/stm32-dmamux.c", i32 78, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stm32_dmamux_free.__UNIQUE_ID_ddebug231, !57, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/stm32-dmamux.c", i32 95, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @stm32_dmamux_route_allocate._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @stm32_dmamux_route_allocate._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/stm32-dmamux.c", i32 100, i32 3}
!68 = !{ptr @stm32_dmamux_route_allocate._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @stm32_dmamux_route_allocate._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/stm32-dmamux.c", i32 115, i32 3}
!72 = !{ptr @stm32_dmamux_route_allocate._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @stm32_dmamux_route_allocate._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/stm32-dmamux.c", i32 133, i32 3}
!76 = !{ptr @stm32_dmamux_route_allocate._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @stm32_dmamux_route_allocate._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/stm32-dmamux.c", i32 158, i32 2}
!80 = !{ptr @stm32_dmamux_route_allocate.__UNIQUE_ID_ddebug232, !79, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!81 = !{ptr @stm32_dmamux_match, !82, !"stm32_dmamux_match", i1 false, i1 false}
!82 = !{!"../drivers/dma/stm32-dmamux.c", i32 386, i32 34}
!83 = !{ptr @stm32_dmamux_pm_ops, !84, !"stm32_dmamux_pm_ops", i1 false, i1 false}
!84 = !{!"../drivers/dma/stm32-dmamux.c", i32 380, i32 32}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/stm32-dmamux.c", i32 326, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @stm32_dmamux_runtime_resume._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @stm32_dmamux_runtime_resume._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2148248780, i64 2148248806, i64 2148248835, i64 2148248869, i64 2148248900, i64 2148248923}
!100 = !{i64 6486169}
!101 = !{i64 2148730595, i64 2148730600, i64 2148730613, i64 2148730657, i64 2148730691, i64 2148730712}
!102 = !{i64 2148248199}
!103 = !{i64 733022, i64 733047, i64 733069, i64 733085, i64 733097, i64 733117, i64 733141, i64 733157, i64 733169}
!104 = !{i64 2148248387}
!105 = !{i64 6486587}
