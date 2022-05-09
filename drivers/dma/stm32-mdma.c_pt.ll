; ModuleID = '/llk/IR_all_yes/drivers/dma/stm32-mdma.c_pt.bc'
source_filename = "../drivers/dma/stm32-mdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.stm32_mdma_device = type { %struct.dma_device, ptr, ptr, i32, i32, i32, i32, [63 x %struct.stm32_mdma_chan], [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.stm32_mdma_chan = type { %struct.virt_dma_chan, ptr, i32, ptr, i32, %struct.dma_slave_config, %struct.stm32_mdma_chan_config, i8, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.stm32_mdma_chan_config = type { i32, i32, i32, i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.stm32_mdma_desc = type { %struct.virt_dma_desc, i32, i8, i32, [0 x %struct.stm32_mdma_desc_node] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.stm32_mdma_desc_node = type { ptr, i32 }
%struct.stm32_mdma_hwdesc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_stm32_mdma__450_1739_stm32_mdma_init4 = internal global ptr @stm32_mdma_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description451 = internal constant [56 x i8] c"stm32_mdma.description=Driver for STM32 MDMA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author452 = internal constant [71 x i8] c"stm32_mdma.author=M'boumba Cedric Madianga <cedric.madianga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author453 = internal constant [67 x i8] c"stm32_mdma.author=Pierre-Yves Mordret <pierre-yves.mordret@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file454 = internal constant [39 x i8] c"stm32_mdma.file=drivers/dma/stm32-mdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license455 = internal constant [26 x i8] c"stm32_mdma.license=GPL v2\00", section ".modinfo", align 1
@stm32_mdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_mdma_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_mdma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_mdma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32-mdma\00", [21 x i8] zeroinitializer }, align 32
@stm32_mdma_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-mdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_mdma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_mdma_pm_suspend, ptr @stm32_mdma_pm_resume, ptr @stm32_mdma_pm_suspend, ptr @stm32_mdma_pm_resume, ptr @stm32_mdma_pm_suspend, ptr @stm32_mdma_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_mdma_runtime_suspend, ptr @stm32_mdma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MDMA defaulting on %i channels\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_mdma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/dma/stm32-mdma.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry_ptr = internal global ptr @stm32_mdma_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1534, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MDMA defaulting on %i request lines\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry_ptr.10 = internal global ptr @stm32_mdma_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st,ahb-addr-masks\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Missing clock controller\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1566, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_prep_enable error: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry_ptr.16 = internal global ptr @stm32_mdma_probe._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_mdma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1631, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry_ptr.19 = internal global ptr @stm32_mdma_probe._entry.17, section ".printk_index", align 4
@stm32_mdma_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1642, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"STM32 MDMA DMA OF registration failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry_ptr.22 = internal global ptr @stm32_mdma_probe._entry.20, section ".printk_index", align 4
@stm32_mdma_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1652, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STM32 MDMA driver registered\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_mdma_probe._entry_ptr.26 = internal global ptr @stm32_mdma_probe._entry.23, section ".printk_index", align 4
@stm32_mdma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1423, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate descriptor pool\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stm32_mdma_alloc_chan_resources\00", [32 x i8] zeroinitializer }, align 32
@stm32_mdma_alloc_chan_resources._entry_ptr = internal global ptr @stm32_mdma_alloc_chan_resources._entry, section ".printk_index", align 4
@stm32_mdma_disable_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 419, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: timeout!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_mdma_disable_chan\00", [40 x i8] zeroinitializer }, align 32
@stm32_mdma_disable_chan._entry_ptr = internal global ptr @stm32_mdma_disable_chan._entry, section ".printk_index", align 4
@stm32_mdma_free_chan_resources.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 1, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32_mdma\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stm32_mdma_free_chan_resources\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Freeing channel %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_mdma_stop.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_mdma_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): clearing interrupt: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32_mdma_issue_pending.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 1, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_mdma_issue_pending\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vchan %pK: issued\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_mdma_start_transfer.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 1, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_mdma_start_transfer\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vchan %pK: started\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 1, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_mdma_dump_reg\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CCR:     0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.42, i8 1, i8 11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CTCR:    0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.43, i8 1, i8 11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CBNDTR:  0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.44, i8 1, i8 12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CSAR:    0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.45, i8 1, i8 12, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CDAR:    0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.46, i8 1, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CBRUR:   0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.47, i8 1, i8 13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLAR:    0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.48, i8 1, i8 14, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CTBR:    0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.49, i8 1, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CMAR:    0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_reg.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.50, i8 1, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CMDR:    0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_mdma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 767, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Request not allowed when dma in cyclic mode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_mdma_prep_slave_sg\00", [39 x i8] zeroinitializer }, align 32
@stm32_mdma_prep_slave_sg._entry_ptr = internal global ptr @stm32_mdma_prep_slave_sg._entry, section ".printk_index", align 4
@stm32_mdma_alloc_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 331, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_mdma_alloc_desc\00", [42 x i8] zeroinitializer }, align 32
@stm32_mdma_alloc_desc._entry_ptr = internal global ptr @stm32_mdma_alloc_desc._entry, section ".printk_index", align 4
@stm32_mdma_setup_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 711, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid block len\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_mdma_setup_xfer\00", [42 x i8] zeroinitializer }, align 32
@stm32_mdma_setup_xfer._entry_ptr = internal global ptr @stm32_mdma_setup_xfer._entry, section ".printk_index", align 4
@stm32_mdma_set_xfer_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 512, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"burst size * bus width higher than %d bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_mdma_set_xfer_param\00", [38 x i8] zeroinitializer }, align 32
@stm32_mdma_set_xfer_param._entry_ptr = internal global ptr @stm32_mdma_set_xfer_param._entry, section ".printk_index", align 4
@stm32_mdma_set_xfer_param._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 518, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"burst size must be a power of 2\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_mdma_set_xfer_param._entry_ptr.61 = internal global ptr @stm32_mdma_set_xfer_param._entry.59, section ".printk_index", align 4
@stm32_mdma_set_xfer_param._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.4, i32 634, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dma direction is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_mdma_set_xfer_param._entry_ptr.64 = internal global ptr @stm32_mdma_set_xfer_param._entry.62, section ".printk_index", align 4
@stm32_mdma_get_width._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 362, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dma bus width %i not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_mdma_get_width\00", [43 x i8] zeroinitializer }, align 32
@stm32_mdma_get_width._entry_ptr = internal global ptr @stm32_mdma_get_width._entry, section ".printk_index", align 4
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 0, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_mdma_dump_hwdesc\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwdesc:  %pad\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.42, i8 0, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.43, i8 0, i8 -94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.44, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.45, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.46, i8 0, i8 -93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.47, i8 0, i8 -93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.48, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.49, i8 0, i8 -92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.67, ptr @.str.4, ptr @.str.69, i8 0, i8 -92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CMDR:    0x%08x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_mdma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.70, ptr @.str.4, i32 812, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_mdma_prep_dma_cyclic\00", [37 x i8] zeroinitializer }, align 32
@stm32_mdma_prep_dma_cyclic._entry_ptr = internal global ptr @stm32_mdma_prep_dma_cyclic._entry, section ".printk_index", align 4
@stm32_mdma_prep_dma_cyclic._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.4, i32 817, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid buffer/period len\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_mdma_prep_dma_cyclic._entry_ptr.73 = internal global ptr @stm32_mdma_prep_dma_cyclic._entry.71, section ".printk_index", align 4
@stm32_mdma_prep_dma_cyclic._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.4, i32 822, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"buf_len not multiple of period_len\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_mdma_prep_dma_cyclic._entry_ptr.76 = internal global ptr @stm32_mdma_prep_dma_cyclic._entry.74, section ".printk_index", align 4
@stm32_mdma_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.77, ptr @.str.4, i32 904, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_mdma_prep_dma_memcpy\00", [37 x i8] zeroinitializer }, align 32
@stm32_mdma_prep_dma_memcpy._entry_ptr = internal global ptr @stm32_mdma_prep_dma_memcpy._entry, section ".printk_index", align 4
@stm32_mdma_pause.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 1, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_mdma_pause\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %pK: pause\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_mdma_resume.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.80, ptr @.str.4, ptr @.str.81, i8 1, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_mdma_resume\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vchan %pK: resume\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_mdma_irq_handler.__UNIQUE_ID_ddebug448 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.82, ptr @.str.4, ptr @.str.83, i8 1, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_mdma_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spurious it\0A\00", [19 x i8] zeroinitializer }, align 32
@stm32_mdma_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.4, i32 1343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MDMA channel not initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_mdma_irq_handler._entry_ptr = internal global ptr @stm32_mdma_irq_handler._entry, section ".printk_index", align 4
@stm32_mdma_irq_handler._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.4, i32 1359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"spurious it (status=0x%04x, ien=0x%04x)\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_mdma_irq_handler._entry_ptr.87 = internal global ptr @stm32_mdma_irq_handler._entry.85, section ".printk_index", align 4
@stm32_mdma_irq_handler._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.82, ptr @.str.4, i32 1367, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Transfer Err: stat=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_mdma_irq_handler._entry_ptr.90 = internal global ptr @stm32_mdma_irq_handler._entry.88, section ".printk_index", align 4
@stm32_mdma_irq_handler._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.82, ptr @.str.4, i32 1401, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DMA error: status=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_mdma_irq_handler._entry_ptr.93 = internal global ptr @stm32_mdma_irq_handler._entry.91, section ".printk_index", align 4
@stm32_mdma_irq_handler._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.82, ptr @.str.4, i32 1403, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chan disabled by HW\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_mdma_irq_handler._entry_ptr.96 = internal global ptr @stm32_mdma_irq_handler._entry.94, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.97, ptr @.str.98, ptr @.str.99, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_mdma_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 1468, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad number of args\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_mdma_of_xlate\00", [44 x i8] zeroinitializer }, align 32
@stm32_mdma_of_xlate._entry_ptr = internal global ptr @stm32_mdma_of_xlate._entry, section ".printk_index", align 4
@stm32_mdma_of_xlate._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.4, i32 1479, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bad request line\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_mdma_of_xlate._entry_ptr.104 = internal global ptr @stm32_mdma_of_xlate._entry.102, section ".printk_index", align 4
@stm32_mdma_of_xlate._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.4, i32 1484, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Priority level not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_mdma_of_xlate._entry_ptr.107 = internal global ptr @stm32_mdma_of_xlate._entry.105, section ".printk_index", align 4
@stm32_mdma_of_xlate._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.4, i32 1490, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No more channels available\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_mdma_of_xlate._entry_ptr.110 = internal global ptr @stm32_mdma_of_xlate._entry.108, section ".printk_index", align 4
@stm32_mdma_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.4, i32 1701, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Suspend is prevented by Chan %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_mdma_pm_suspend\00", [42 x i8] zeroinitializer }, align 32
@stm32_mdma_pm_suspend._entry_ptr = internal global ptr @stm32_mdma_pm_suspend._entry, section ".printk_index", align 4
@stm32_mdma_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 1679, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_mdma_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@stm32_mdma_runtime_resume._entry_ptr = internal global ptr @stm32_mdma_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"stm32_mdma_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1725, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1728, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"stm32_mdma_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1500, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"stm32_mdma_pm_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1719, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1521, i32 45 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1525, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1529, i32 45 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1533, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1537, i32 48 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1562, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1566, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1631, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1641, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1652, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1423, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 419, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1444, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 441, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1149, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1136, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1065, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1067, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1069, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1071, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1073, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1075, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1077, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1079, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1081, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1083, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 766, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 331, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 711, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 510, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 518, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 634, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 361, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 648, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 657, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 811, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 817, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 822, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 903, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1169, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1206, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1330, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1343, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1357, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1366, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1401, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1403, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 101, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1468, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1479, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1484, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1490, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1701, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.463 = private constant [28 x i8] c"../drivers/dma/stm32-mdma.c\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1679, i32 3 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author452, ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_description451, ptr @__UNIQUE_ID_file454, ptr @__UNIQUE_ID_license455, ptr @__initcall__kmod_stm32_mdma__450_1739_stm32_mdma_init4, ptr @stm32_mdma_alloc_chan_resources._entry, ptr @stm32_mdma_alloc_chan_resources._entry_ptr, ptr @stm32_mdma_alloc_desc._entry, ptr @stm32_mdma_alloc_desc._entry_ptr, ptr @stm32_mdma_disable_chan._entry, ptr @stm32_mdma_disable_chan._entry_ptr, ptr @stm32_mdma_get_width._entry, ptr @stm32_mdma_get_width._entry_ptr, ptr @stm32_mdma_irq_handler._entry, ptr @stm32_mdma_irq_handler._entry.85, ptr @stm32_mdma_irq_handler._entry.88, ptr @stm32_mdma_irq_handler._entry.91, ptr @stm32_mdma_irq_handler._entry.94, ptr @stm32_mdma_irq_handler._entry_ptr, ptr @stm32_mdma_irq_handler._entry_ptr.87, ptr @stm32_mdma_irq_handler._entry_ptr.90, ptr @stm32_mdma_irq_handler._entry_ptr.93, ptr @stm32_mdma_irq_handler._entry_ptr.96, ptr @stm32_mdma_of_xlate._entry, ptr @stm32_mdma_of_xlate._entry.102, ptr @stm32_mdma_of_xlate._entry.105, ptr @stm32_mdma_of_xlate._entry.108, ptr @stm32_mdma_of_xlate._entry_ptr, ptr @stm32_mdma_of_xlate._entry_ptr.104, ptr @stm32_mdma_of_xlate._entry_ptr.107, ptr @stm32_mdma_of_xlate._entry_ptr.110, ptr @stm32_mdma_pm_suspend._entry, ptr @stm32_mdma_pm_suspend._entry_ptr, ptr @stm32_mdma_prep_dma_cyclic._entry, ptr @stm32_mdma_prep_dma_cyclic._entry.71, ptr @stm32_mdma_prep_dma_cyclic._entry.74, ptr @stm32_mdma_prep_dma_cyclic._entry_ptr, ptr @stm32_mdma_prep_dma_cyclic._entry_ptr.73, ptr @stm32_mdma_prep_dma_cyclic._entry_ptr.76, ptr @stm32_mdma_prep_dma_memcpy._entry, ptr @stm32_mdma_prep_dma_memcpy._entry_ptr, ptr @stm32_mdma_prep_slave_sg._entry, ptr @stm32_mdma_prep_slave_sg._entry_ptr, ptr @stm32_mdma_probe._entry, ptr @stm32_mdma_probe._entry.13, ptr @stm32_mdma_probe._entry.17, ptr @stm32_mdma_probe._entry.20, ptr @stm32_mdma_probe._entry.23, ptr @stm32_mdma_probe._entry.8, ptr @stm32_mdma_probe._entry_ptr, ptr @stm32_mdma_probe._entry_ptr.10, ptr @stm32_mdma_probe._entry_ptr.16, ptr @stm32_mdma_probe._entry_ptr.19, ptr @stm32_mdma_probe._entry_ptr.22, ptr @stm32_mdma_probe._entry_ptr.26, ptr @stm32_mdma_runtime_resume._entry, ptr @stm32_mdma_runtime_resume._entry_ptr, ptr @stm32_mdma_set_xfer_param._entry, ptr @stm32_mdma_set_xfer_param._entry.59, ptr @stm32_mdma_set_xfer_param._entry.62, ptr @stm32_mdma_set_xfer_param._entry_ptr, ptr @stm32_mdma_set_xfer_param._entry_ptr.61, ptr @stm32_mdma_set_xfer_param._entry_ptr.64, ptr @stm32_mdma_setup_xfer._entry, ptr @stm32_mdma_setup_xfer._entry_ptr, ptr @stm32_mdma_driver, ptr @.str, ptr @stm32_mdma_of_match, ptr @stm32_mdma_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_disable_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_alloc_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_setup_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_set_xfer_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_set_xfer_param._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_set_xfer_param._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_get_width._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_prep_dma_cyclic._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_prep_dma_cyclic._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_irq_handler._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_irq_handler._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_irq_handler._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_irq_handler._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_of_xlate._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_of_xlate._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_of_xlate._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_mdma_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_mdma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nr_channels = alloca i32, align 4
  %nr_requests = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_channels) #9
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_channels, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_requests) #9
  %1 = ptrtoint ptr %nr_requests to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr_requests, align 4, !annotation !260
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %nr_channels, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %nr_channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %nr_channels, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 63) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call.i223 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %nr_requests, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool9.not = icmp eq i32 %call.i223, 0
  br i1 %tobool9.not, label %if.end6.if.end15_crit_edge, label %if.then10

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %nr_requests to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %nr_requests, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 256) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end6.if.end15_crit_edge
  %call.i224 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0) #9
  %6 = call i32 @llvm.smax.i32(i32 %call.i224, i32 0)
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %9, i32 17776) #9
  %retval.0.i = select i1 %8, i32 -1, i32 %spec.select.i
  %call.i225 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool23.not = icmp eq ptr %call.i225, null
  br i1 %tobool23.not, label %if.end15.cleanup_crit_edge, label %if.end25

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_channels, align 4
  %nr_channels26 = getelementptr inbounds %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 4
  %12 = ptrtoint ptr %nr_channels26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nr_channels26, align 4
  %13 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_requests, align 4
  %nr_requests27 = getelementptr inbounds %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 5
  %15 = ptrtoint ptr %nr_requests27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nr_requests27, align 4
  %ahb_addr_masks = getelementptr inbounds %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 8
  %call29 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %ahb_addr_masks, i32 noundef %6) #9
  %nr_ahb_addr_masks = getelementptr inbounds %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 6
  %16 = ptrtoint ptr %nr_ahb_addr_masks to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %6, ptr %nr_ahb_addr_masks, align 4
  %call30 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call32 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call30) #9
  %base = getelementptr inbounds %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 1
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call32, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %call40 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 2
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call40, ptr %clk, align 4
  %cmp.i226 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call40 to i32
  %call47 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  %call.i227 = call i32 @clk_prepare(ptr noundef %call40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.clk_prepare_enable.exit_crit_edge

if.end48.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end48
  %call1.i = call i32 @clk_enable(ptr noundef %call40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end57_crit_edge, label %if.then3.i

if.end.i.if.end57_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %call40) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end48.clk_prepare_enable.exit_crit_edge
  %retval.0.i228 = phi i32 [ %call.i227, %if.end48.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i228)
  %cmp51 = icmp slt i32 %retval.0.i228, 0
  br i1 %cmp51, label %do.end55, label %clk_prepare_enable.exit.if.end57_crit_edge

clk_prepare_enable.exit.if.end57_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end55:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i228) #12
  br label %cleanup

if.end57:                                         ; preds = %clk_prepare_enable.exit.if.end57_crit_edge, %if.end.i.if.end57_crit_edge
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %cmp.i229 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end57
  %cmp63 = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp63, label %if.then61.err_clk_crit_edge, label %if.then61.if.end68_crit_edge

if.then61.if.end68_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then61.err_clk_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = call i32 @reset_control_assert(ptr noundef %call.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 429496) #9
  %call67 = call i32 @reset_control_deassert(ptr noundef %call.i.i) #9
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then61.if.end68_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 27
  %22 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @stm32_mdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 29
  %23 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @stm32_mdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 49
  %24 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @stm32_mdma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 50
  %25 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @stm32_mdma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 39
  %26 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @stm32_mdma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 40
  %27 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @stm32_mdma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 30
  %28 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @stm32_mdma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 44
  %29 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @stm32_mdma_slave_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 45
  %30 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @stm32_mdma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 46
  %31 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @stm32_mdma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 47
  %32 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @stm32_mdma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 48
  %33 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @stm32_mdma_synchronize, ptr %device_synchronize, align 4
  %descriptor_reuse = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 25
  %34 = ptrtoint ptr %descriptor_reuse to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %descriptor_reuse, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 19
  %35 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 278, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 20
  %36 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 278, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 21
  %37 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 26
  %38 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %residue_granularity, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 23
  %39 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %max_burst, align 4
  %dev73 = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 15
  %40 = ptrtoint ptr %dev73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %dev73, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 3
  %41 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i225, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %channels, ptr %prev.i, align 4
  %43 = ptrtoint ptr %nr_channels26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_channels26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp75238.not = icmp eq i32 %44, 0
  br i1 %cmp75238.not, label %if.end68.for.end_crit_edge, label %if.end68.for.body_crit_edge

if.end68.for.body_crit_edge:                      ; preds = %if.end68
  br label %for.body

if.end68.for.end_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end68.for.body_crit_edge
  %i.0239 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end68.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 7, i32 %i.0239
  %id = getelementptr %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 7, i32 %i.0239, i32 2
  %45 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.0239, ptr %id, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %46 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @stm32_mdma_desc_free, ptr %desc_free, align 4
  call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %call.i225) #9
  %inc = add nuw i32 %i.0239, 1
  %47 = ptrtoint ptr %nr_channels26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_channels26, align 4
  %cmp75 = icmp ult i32 %inc, %48
  br i1 %cmp75, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end68.for.end_crit_edge
  %call78 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.stm32_mdma_device, ptr %call.i225, i32 0, i32 3
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call78, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp80 = icmp slt i32 %call78, 0
  br i1 %cmp80, label %for.end.err_clk_crit_edge, label %if.end83

for.end.err_clk_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk

if.end83:                                         ; preds = %for.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i230 = icmp eq ptr %51, null
  br i1 %tobool.not.i230, label %if.end.i231, label %if.end83.dev_name.exit_crit_edge

if.end83.dev_name.exit_crit_edge:                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i231:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i231, %if.end83.dev_name.exit_crit_edge
  %retval.0.i232 = phi ptr [ %53, %if.end.i231 ], [ %51, %if.end83.dev_name.exit_crit_edge ]
  %call.i233 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call78, ptr noundef nonnull @stm32_mdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i232, ptr noundef %call.i225) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool89.not = icmp eq i32 %call.i233, 0
  br i1 %tobool89.not, label %if.end95, label %do.end93

do.end93:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %err_clk

if.end95:                                         ; preds = %dev_name.exit
  %call96 = call i32 @dmaenginem_async_device_register(ptr noundef nonnull %call.i225) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.err_clk_crit_edge

if.end95.err_clk_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk

if.end99:                                         ; preds = %if.end95
  %call100 = call i32 @of_dma_controller_register(ptr noundef nonnull %3, ptr noundef nonnull @stm32_mdma_of_xlate, ptr noundef nonnull %call.i225) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end105, label %if.end107

do.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call100) #12
  br label %err_clk

if.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i225, ptr %driver_data.i.i, align 4
  %call.i234 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !261
  %call.i235 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  br label %cleanup

err_clk:                                          ; preds = %do.end105, %if.end95.err_clk_crit_edge, %do.end93, %for.end.err_clk_crit_edge, %if.then61.err_clk_crit_edge
  %ret.0 = phi i32 [ -517, %if.then61.err_clk_crit_edge ], [ %call.i233, %do.end93 ], [ %call96, %if.end95.err_clk_crit_edge ], [ %call100, %do.end105 ], [ %call78, %for.end.err_clk_crit_edge ]
  %56 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %57) #9
  call void @clk_unprepare(ptr noundef %57) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end107, %do.end55, %if.then43, %if.then35, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then35 ], [ %call47, %if.then43 ], [ %retval.0.i228, %do.end55 ], [ %ret.0, %err_clk ], [ 0, %if.end107 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_requests) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_channels) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_alloc_chan_resources(ptr nocapture noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %dev = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %dev4 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %call5 = tail call ptr @dmam_pool_create(ptr noundef %retval.0.i, ptr noundef %9, i32 noundef 64, i32 noundef 64, i32 noundef 0) #9
  %desc_pool = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 1
  %10 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end11

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !264
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 4
  %call.i32 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call12, %if.then14 ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_mdma_free_chan_resources(ptr noundef %c) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_free_chan_resources.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_free_chan_resources, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %id = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_free_chan_resources.__UNIQUE_ID_ddebug449, ptr noundef %device.i, ptr noundef nonnull @.str.33, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %busy = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 7
  %6 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %busy, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %do.end.if.end20_crit_edge, label %do.body10

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body10:                                        ; preds = %do.end
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %8 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c, align 4
  %call1.i = tail call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.body10.stm32_mdma_stop.exit_crit_edge, label %if.end.i

do.body10.stm32_mdma_stop.exit_crit_edge:         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_stop.exit

if.end.i:                                         ; preds = %do.body10
  %id.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 2
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %11, 6
  %add.i = add i32 %mul.i, 64
  %base.i.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !267
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i.if.end15.i_crit_edge, label %do.body.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_stop.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_free_chan_resources, %do.end.i)) #9
          to label %if.then9.i [label %do.end.i], !srcloc !265

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_stop.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %15) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %do.body.i
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %mul13.i = shl i32 %19, 6
  %add14.i = add i32 %mul13.i, 68
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %21, i32 %add14.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #9, !srcloc !267
  %23 = or i32 %22, %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %23) #9, !srcloc !268
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.end.i.if.end15.i_crit_edge
  %24 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %busy, align 4
  br label %stm32_mdma_stop.exit

stm32_mdma_stop.exit:                             ; preds = %if.end15.i, %do.body10.stm32_mdma_stop.exit_crit_edge
  %desc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %desc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  br label %if.end20

if.end20:                                         ; preds = %stm32_mdma_stop.exit, %do.end.if.end20_crit_edge
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %28 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %head.i, ptr %head.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %head.i, ptr %28, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %31 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %32, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end20.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end20.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %34, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %head.i, ptr %36, align 4
  store ptr %36, ptr %28, align 4
  %40 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end20.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %41 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %42, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %28, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i12.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %42, ptr %44, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %head.i, ptr %46, align 4
  store ptr %46, ptr %28, align 4
  %50 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %51 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %52, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %28, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i18.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %52, ptr %54, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %head.i, ptr %56, align 4
  store ptr %56, ptr %28, align 4
  %60 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %61 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %62, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %28, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
  %65 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i24.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %62, ptr %64, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %head.i, ptr %66, align 4
  store ptr %66, ptr %28, align 4
  %70 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %71 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %72, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %28, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i30.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %72, ptr %74, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %head.i, ptr %76, align 4
  store ptr %76, ptr %28, align 4
  %80 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %81 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %81)
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
  %82 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %83, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %84 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %84)
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %desc_pool = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 1
  %85 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %desc_pool, align 4
  call void @dmam_pool_destroy(ptr noundef %86) #9
  %87 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %desc_pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_tx_status(ptr noundef %c, i32 noundef %cookie, ptr noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !269
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge92 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge92, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %c, i32 noundef %cookie) #9
  %desc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.body2.if.else_crit_edge, label %land.lhs.true

do.body2.if.else_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.body2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp14 = icmp eq i32 %11, %cookie
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  %curr_hwdesc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 4
  %12 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %curr_hwdesc, align 4
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 4
  %count.i = getelementptr inbounds %struct.stm32_mdma_desc, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  %i.055.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.055.i, i32 %17)
  %cmp56.i = icmp ult i32 %i.055.i, %17
  br i1 %cmp56.i, label %if.then16.do.end15.i_crit_edge, label %if.then16.for.end.i_crit_edge

if.then16.for.end.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then16.do.end15.i_crit_edge:                   ; preds = %if.then16
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end15.i.do.end15.i_crit_edge, %if.then16.do.end15.i_crit_edge
  %i.058.i = phi i32 [ %i.0.i, %do.end15.i.do.end15.i_crit_edge ], [ %i.055.i, %if.then16.do.end15.i_crit_edge ]
  %residue.057.i = phi i32 [ %add18.i, %do.end15.i.do.end15.i_crit_edge ], [ 0, %if.then16.do.end15.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stm32_mdma_desc, ptr %9, i32 0, i32 4, i32 %i.058.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %cbndtr6.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cbndtr6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cbndtr6.i, align 4
  %and17.i = and i32 %21, 131071
  %add18.i = add i32 %and17.i, %residue.057.i
  %i.0.i = add i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %i.0.i, %17
  br i1 %exitcond.not.i, label %do.end15.i.for.end.i_crit_edge, label %do.end15.i.do.end15.i_crit_edge

do.end15.i.do.end15.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i

do.end15.i.for.end.i_crit_edge:                   ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %do.end15.i.for.end.i_crit_edge, %if.then16.for.end.i_crit_edge
  %residue.0.lcssa.i = phi i32 [ 0, %if.then16.for.end.i_crit_edge ], [ %add18.i, %do.end15.i.for.end.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 2
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %23, 6
  %add19.i = add i32 %mul.i, 84
  %base.i.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %add19.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !267
  %27 = and i32 %26, -65280
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %add22.i = add i32 %28, %residue.0.lcssa.i
  %mem_burst.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 8
  %29 = ptrtoint ptr %mem_burst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mem_burst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool23.not.i = icmp eq i32 %30, 0
  br i1 %tobool23.not.i, label %for.end.i.dma_set_residue.exit_crit_edge, label %if.end25.i

for.end.i.dma_set_residue.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.end25.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mem_width.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 9
  %31 = ptrtoint ptr %mem_width.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mem_width.i, align 4
  %mul27.i = mul i32 %32, %30
  %rem.i = urem i32 %add22.i, %mul27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool28.not.i = icmp eq i32 %rem.i, 0
  %sub.i = sub i32 %add22.i, %rem.i
  %add30.i = add i32 %sub.i, %mul27.i
  %residue.1.i = select i1 %tobool28.not.i, i32 %add22.i, i32 %add30.i
  br label %dma_set_residue.exit

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body2.if.else_crit_edge
  %tobool19.not = icmp eq ptr %call9, null
  br i1 %tobool19.not, label %if.else.dma_set_residue.exit_crit_edge, label %if.then20

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.then20:                                        ; preds = %if.else
  %33 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %c, align 4
  %count.i49 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call9, i32 0, i32 3
  %35 = ptrtoint ptr %count.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp56.i50 = icmp ugt i32 %36, 1
  br i1 %cmp56.i50, label %if.then20.do.end15.i64_crit_edge, label %if.then20.for.end.i74_crit_edge

if.then20.for.end.i74_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i74

if.then20.do.end15.i64_crit_edge:                 ; preds = %if.then20
  br label %do.end15.i64

do.end15.i64:                                     ; preds = %do.end15.i64.do.end15.i64_crit_edge, %if.then20.do.end15.i64_crit_edge
  %i.058.i51 = phi i32 [ %i.0.i62, %do.end15.i64.do.end15.i64_crit_edge ], [ 1, %if.then20.do.end15.i64_crit_edge ]
  %residue.057.i52 = phi i32 [ %add18.i61, %do.end15.i64.do.end15.i64_crit_edge ], [ 0, %if.then20.do.end15.i64_crit_edge ]
  %arrayidx.i53 = getelementptr %struct.stm32_mdma_desc, ptr %call9, i32 0, i32 4, i32 %i.058.i51
  %37 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i53, align 4
  %cbndtr6.i54 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %cbndtr6.i54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cbndtr6.i54, align 4
  %and17.i60 = and i32 %40, 131071
  %add18.i61 = add i32 %and17.i60, %residue.057.i52
  %i.0.i62 = add nuw i32 %i.058.i51, 1
  %exitcond.not.i63 = icmp eq i32 %i.0.i62, %36
  br i1 %exitcond.not.i63, label %do.end15.i64.for.end.i74_crit_edge, label %do.end15.i64.do.end15.i64_crit_edge

do.end15.i64.do.end15.i64_crit_edge:              ; preds = %do.end15.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i64

do.end15.i64.for.end.i74_crit_edge:               ; preds = %do.end15.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i74

for.end.i74:                                      ; preds = %do.end15.i64.for.end.i74_crit_edge, %if.then20.for.end.i74_crit_edge
  %residue.0.lcssa.i65 = phi i32 [ 0, %if.then20.for.end.i74_crit_edge ], [ %add18.i61, %do.end15.i64.for.end.i74_crit_edge ]
  %id.i66 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 2
  %41 = ptrtoint ptr %id.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i66, align 4
  %mul.i67 = shl i32 %42, 6
  %add19.i68 = add i32 %mul.i67, 84
  %base.i.i69 = getelementptr inbounds %struct.stm32_mdma_device, ptr %34, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.i69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i69, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %44, i32 %add19.i68
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i70) #9, !srcloc !267
  %46 = and i32 %45, -65280
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %add22.i71 = add i32 %47, %residue.0.lcssa.i65
  %mem_burst.i72 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 8
  %48 = ptrtoint ptr %mem_burst.i72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mem_burst.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool23.not.i73 = icmp eq i32 %49, 0
  br i1 %tobool23.not.i73, label %for.end.i74.dma_set_residue.exit_crit_edge, label %if.end25.i82

for.end.i74.dma_set_residue.exit_crit_edge:       ; preds = %for.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.end25.i82:                                     ; preds = %for.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  %mem_width.i75 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 9
  %50 = ptrtoint ptr %mem_width.i75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mem_width.i75, align 4
  %mul27.i76 = mul i32 %51, %49
  %rem.i77 = urem i32 %add22.i71, %mul27.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i77)
  %tobool28.not.i78 = icmp eq i32 %rem.i77, 0
  %sub.i79 = sub i32 %add22.i71, %rem.i77
  %add30.i80 = add i32 %sub.i79, %mul27.i76
  %residue.1.i81 = select i1 %tobool28.not.i78, i32 %add22.i71, i32 %add30.i80
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.end25.i82, %for.end.i74.dma_set_residue.exit_crit_edge, %if.else.dma_set_residue.exit_crit_edge, %if.end25.i, %for.end.i.dma_set_residue.exit_crit_edge
  %residue.0 = phi i32 [ 0, %if.else.dma_set_residue.exit_crit_edge ], [ %residue.1.i, %if.end25.i ], [ %add22.i, %for.end.i.dma_set_residue.exit_crit_edge ], [ %residue.1.i81, %if.end25.i82 ], [ %add22.i71, %for.end.i74.dma_set_residue.exit_crit_edge ]
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %52 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %residue.0, ptr %residue1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i91.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i91 = zext i1 %retval.0.i.i91.shrunk to i32
  ret i32 %retval.0.i.i91
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_mdma_issue_pending(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.end_crit_edge, label %do.body8

vchan_issue_pending.exit.end_crit_edge:           ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

do.body8:                                         ; preds = %vchan_issue_pending.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_issue_pending.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_issue_pending, %do.end19)) #9
          to label %if.then14 [label %do.end19], !srcloc !265

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_issue_pending.__UNIQUE_ID_ddebug440, ptr noundef %device.i, ptr noundef nonnull @.str.37, ptr noundef %c) #9
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %do.body8
  %desc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %land.lhs.true, label %do.end19.end_crit_edge

do.end19.end_crit_edge:                           ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

land.lhs.true:                                    ; preds = %do.end19
  %busy = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 7
  %16 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %busy, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true.end_crit_edge

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @stm32_mdma_start_transfer(ptr noundef %c)
  br label %end

end:                                              ; preds = %if.then22, %land.lhs.true.end_crit_edge, %do.end19.end_crit_edge, %vchan_issue_pending.exit.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_mdma_prep_slave_sg(ptr noundef %c, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %ccr.i = alloca i32, align 4
  %ctcr.i = alloca i32, align 4
  %ctbr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cyclic = getelementptr inbounds %struct.stm32_mdma_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cyclic, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call fastcc ptr @stm32_mdma_alloc_desc(ptr noundef %c, i32 noundef %sg_len)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccr.i) #9
  %8 = ptrtoint ptr %ccr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ccr.i, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctcr.i) #9
  %9 = ptrtoint ptr %ctcr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ctcr.i, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctbr.i) #9
  %10 = ptrtoint ptr %ctbr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ctbr.i, align 4, !annotation !260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp83.not.i = icmp eq i32 %sg_len, 0
  br i1 %cmp83.not.i, label %if.end8.if.end11_crit_edge, label %for.body.lr.ph.i

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp4.i = icmp eq i32 %direction, 1
  %src_addr9.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 5, i32 1
  %nr_ahb_addr_masks.i65.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %7, i32 0, i32 6
  %dst_addr6.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 5, i32 2
  %sub.i = add i32 %sg_len, -1
  %mask_addr.i.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 6, i32 3
  %mask_data.i.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 6, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %stm32_mdma_setup_hwdesc.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.086.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i.i, %stm32_mdma_setup_hwdesc.exit.i.for.body.i_crit_edge ]
  %sg.084.i = phi ptr [ %sgl, %for.body.lr.ph.i ], [ %call20.i, %stm32_mdma_setup_hwdesc.exit.i.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.084.i, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %12)
  %cmp2.i = icmp ugt i32 %12, 65536
  br i1 %cmp2.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.55) #12
  br label %stm32_mdma_setup_xfer.exit

if.end.i:                                         ; preds = %for.body.i
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.084.i, i32 0, i32 3
  %15 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address.i, align 4
  %17 = ptrtoint ptr %dst_addr6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_addr6.i, align 4
  %call8.i = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %ccr.i, ptr noundef nonnull %ctcr.i, ptr noundef nonnull %ctbr.i, i32 noundef %16, i32 noundef %12) #9
  %19 = ptrtoint ptr %ctbr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctbr.i, align 4
  %and.i.i = and i32 %20, -65537
  store i32 %and.i.i, ptr %ctbr.i, align 4
  %and1.i.i = and i32 %16, -268435456
  %21 = ptrtoint ptr %nr_ahb_addr_masks.i65.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_ahb_addr_masks.i65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp8.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp8.not.i.i, label %if.then5.i.if.end13.i_crit_edge, label %if.then5.i.for.body.i.i_crit_edge

if.then5.i.for.body.i.i_crit_edge:                ; preds = %if.then5.i
  br label %for.body.i.i

if.then5.i.if.end13.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %22
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end13.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.if.end13.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then5.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.stm32_mdma_device, ptr %7, i32 0, i32 8, i32 %i.09.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i, i32 %24)
  %cmp2.i.i = icmp eq i32 %and1.i.i, %24
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %20, 65536
  %25 = ptrtoint ptr %ctbr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i, ptr %ctbr.i, align 4
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %src_addr9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_addr9.i, align 4
  %dma_address10.i = getelementptr inbounds %struct.scatterlist, ptr %sg.084.i, i32 0, i32 3
  %28 = ptrtoint ptr %dma_address10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_address10.i, align 4
  %call12.i = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %c, i32 noundef %direction, ptr noundef nonnull %ccr.i, ptr noundef nonnull %ctcr.i, ptr noundef nonnull %ctbr.i, i32 noundef %29, i32 noundef %12) #9
  %30 = ptrtoint ptr %ctbr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctbr.i, align 4
  %and.i63.i = and i32 %31, -131073
  store i32 %and.i63.i, ptr %ctbr.i, align 4
  %and1.i64.i = and i32 %29, -268435456
  %32 = ptrtoint ptr %nr_ahb_addr_masks.i65.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_ahb_addr_masks.i65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp8.not.i66.i = icmp eq i32 %33, 0
  br i1 %cmp8.not.i66.i, label %if.else.i.if.end13.i_crit_edge, label %if.else.i.for.body.i73.i_crit_edge

if.else.i.for.body.i73.i_crit_edge:               ; preds = %if.else.i
  br label %for.body.i73.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.cond.i69.i:                                   ; preds = %for.body.i73.i
  %inc.i67.i = add nuw i32 %i.09.i70.i, 1
  %exitcond.not.i68.i = icmp eq i32 %inc.i67.i, %33
  br i1 %exitcond.not.i68.i, label %for.cond.i69.i.if.end13.i_crit_edge, label %for.cond.i69.i.for.body.i73.i_crit_edge

for.cond.i69.i.for.body.i73.i_crit_edge:          ; preds = %for.cond.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i73.i

for.cond.i69.i.if.end13.i_crit_edge:              ; preds = %for.cond.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body.i73.i:                                   ; preds = %for.cond.i69.i.for.body.i73.i_crit_edge, %if.else.i.for.body.i73.i_crit_edge
  %i.09.i70.i = phi i32 [ %inc.i67.i, %for.cond.i69.i.for.body.i73.i_crit_edge ], [ 0, %if.else.i.for.body.i73.i_crit_edge ]
  %arrayidx.i71.i = getelementptr %struct.stm32_mdma_device, ptr %7, i32 0, i32 8, i32 %i.09.i70.i
  %34 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i71.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i64.i, i32 %35)
  %cmp2.i72.i = icmp eq i32 %and1.i64.i, %35
  br i1 %cmp2.i72.i, label %if.then.i75.i, label %for.cond.i69.i

if.then.i75.i:                                    ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i74.i = or i32 %31, 131072
  %36 = ptrtoint ptr %ctbr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i74.i, ptr %ctbr.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i75.i, %for.cond.i69.i.if.end13.i_crit_edge, %if.else.i.if.end13.i_crit_edge, %if.then.i.i, %for.cond.i.i.if.end13.i_crit_edge, %if.then5.i.if.end13.i_crit_edge
  %src_addr.0.i = phi i32 [ %16, %if.then5.i.if.end13.i_crit_edge ], [ %16, %if.then.i.i ], [ %27, %if.else.i.if.end13.i_crit_edge ], [ %27, %if.then.i75.i ], [ %16, %for.cond.i.i.if.end13.i_crit_edge ], [ %27, %for.cond.i69.i.if.end13.i_crit_edge ]
  %dst_addr.0.i = phi i32 [ %18, %if.then5.i.if.end13.i_crit_edge ], [ %18, %if.then.i.i ], [ %29, %if.else.i.if.end13.i_crit_edge ], [ %29, %if.then.i75.i ], [ %18, %for.cond.i.i.if.end13.i_crit_edge ], [ %29, %for.cond.i69.i.if.end13.i_crit_edge ]
  %ret.0.i = phi i32 [ %call8.i, %if.then5.i.if.end13.i_crit_edge ], [ %call8.i, %if.then.i.i ], [ %call12.i, %if.else.i.if.end13.i_crit_edge ], [ %call12.i, %if.then.i75.i ], [ %call8.i, %for.cond.i.i.if.end13.i_crit_edge ], [ %call12.i, %for.cond.i69.i.if.end13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp14.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp14.i, label %if.end13.i.stm32_mdma_setup_xfer.exit_crit_edge, label %if.end16.i

if.end13.i.stm32_mdma_setup_xfer.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_setup_xfer.exit

if.end16.i:                                       ; preds = %if.end13.i
  %37 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length.i, align 4
  %39 = ptrtoint ptr %ctcr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctcr.i, align 4
  %41 = ptrtoint ptr %ctbr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctbr.i, align 4
  %add.i.i = add nuw i32 %i.086.i, 1
  %arrayidx.i77.i = getelementptr %struct.stm32_mdma_desc, ptr %call5, i32 0, i32 4, i32 %i.086.i
  %43 = ptrtoint ptr %arrayidx.i77.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i77.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %44, align 64
  %cbndtr.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %cbndtr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cbndtr.i.i, align 4
  %and.i78.i = and i32 %47, 131072
  call void @__sanitizer_cov_trace_cmp4(i32 %i.086.i, i32 %sub.i)
  %cmp18.i = icmp eq i32 %i.086.i, %sub.i
  %and18.i.i = and i32 %38, 131071
  %or.i80.i = or i32 %and.i78.i, %and18.i.i
  %48 = ptrtoint ptr %cbndtr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i80.i, ptr %cbndtr.i.i, align 4
  %csar.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 2
  %49 = ptrtoint ptr %csar.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %src_addr.0.i, ptr %csar.i.i, align 8
  %cdar.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 3
  %50 = ptrtoint ptr %cdar.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %dst_addr.0.i, ptr %cdar.i.i, align 4
  %cbrur.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 4
  %51 = ptrtoint ptr %cbrur.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %cbrur.i.i, align 16
  %ctbr20.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 6
  %52 = ptrtoint ptr %ctbr20.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %42, ptr %ctbr20.i.i, align 8
  %53 = ptrtoint ptr %mask_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask_addr.i.i, align 4
  %cmar.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 8
  %55 = ptrtoint ptr %cmar.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %cmar.i.i, align 32
  %56 = ptrtoint ptr %mask_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mask_data.i.i, align 4
  %cmdr.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 9
  %58 = ptrtoint ptr %cmdr.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %cmdr.i.i, align 4
  br i1 %cmp18.i, label %if.end16.i.stm32_mdma_setup_hwdesc.exit.i_crit_edge, label %if.else29.i.i

if.end16.i.stm32_mdma_setup_hwdesc.exit.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_setup_hwdesc.exit.i

if.else29.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwdesc_phys32.i.i = getelementptr %struct.stm32_mdma_desc, ptr %call5, i32 0, i32 4, i32 %add.i.i, i32 1
  %59 = ptrtoint ptr %hwdesc_phys32.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hwdesc_phys32.i.i, align 4
  br label %stm32_mdma_setup_hwdesc.exit.i

stm32_mdma_setup_hwdesc.exit.i:                   ; preds = %if.else29.i.i, %if.end16.i.stm32_mdma_setup_hwdesc.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %60, %if.else29.i.i ], [ 0, %if.end16.i.stm32_mdma_setup_hwdesc.exit.i_crit_edge ]
  %clar.i.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %44, i32 0, i32 5
  %61 = ptrtoint ptr %clar.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink.i.i, ptr %clar.i.i, align 4
  tail call fastcc void @stm32_mdma_dump_hwdesc(ptr noundef %c, ptr noundef %arrayidx.i77.i) #9
  %call20.i = tail call ptr @sg_next(ptr noundef %sg.084.i) #9
  %exitcond.not.i = icmp eq i32 %add.i.i, %sg_len
  br i1 %exitcond.not.i, label %stm32_mdma_setup_hwdesc.exit.i.if.end11_crit_edge, label %stm32_mdma_setup_hwdesc.exit.i.for.body.i_crit_edge

stm32_mdma_setup_hwdesc.exit.i.for.body.i_crit_edge: ; preds = %stm32_mdma_setup_hwdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

stm32_mdma_setup_hwdesc.exit.i.if.end11_crit_edge: ; preds = %stm32_mdma_setup_hwdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

stm32_mdma_setup_xfer.exit:                       ; preds = %if.end13.i.stm32_mdma_setup_xfer.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctbr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctcr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccr.i) #9
  %count = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call5, i32 0, i32 3
  %62 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp1440.not = icmp eq i32 %63, 0
  br i1 %cmp1440.not, label %stm32_mdma_setup_xfer.exit.for.end_crit_edge, label %for.body.lr.ph

stm32_mdma_setup_xfer.exit.for.end_crit_edge:     ; preds = %stm32_mdma_setup_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %stm32_mdma_setup_xfer.exit
  %desc_pool = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 1
  br label %for.body

if.end11:                                         ; preds = %stm32_mdma_setup_hwdesc.exit.i.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %64 = ptrtoint ptr %ccr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ccr.i, align 4
  %and.i = and i32 %65, -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sg_len)
  %cmp21.i = icmp ugt i32 %sg_len, 1
  %spec.select.v.i = select i1 %cmp21.i, i32 22, i32 6
  %spec.select.i = or i32 %and.i, %spec.select.v.i
  %ccr25.i = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call5, i32 0, i32 1
  %66 = ptrtoint ptr %ccr25.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select.i, ptr %ccr25.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctbr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctcr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccr.i) #9
  %cyclic12 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call5, i32 0, i32 2
  %67 = ptrtoint ptr %cyclic12 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %cyclic12, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call5, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call5, i32 0, i32 1
  %68 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call5, i32 0, i32 4
  %69 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call5, i32 0, i32 5
  %70 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call5, i32 0, i32 1
  %71 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call5, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call5, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %74, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.vchan_tx_prep.exit_crit_edge

if.end11.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %node.i, ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call5, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %node.i, ptr %74, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end11.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %79 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %desc_pool, align 4
  %arrayidx = getelementptr %struct.stm32_mdma_desc, ptr %call5, i32 0, i32 4, i32 %i.041
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %hwdesc_phys = getelementptr %struct.stm32_mdma_desc, ptr %call5, i32 0, i32 4, i32 %i.041, i32 1
  %83 = ptrtoint ptr %hwdesc_phys to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hwdesc_phys, align 4
  tail call void @dma_pool_free(ptr noundef %80, ptr noundef %82, i32 noundef %84) #9
  %inc = add nuw i32 %i.041, 1
  %85 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count, align 4
  %cmp14 = icmp ult i32 %inc, %86
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %stm32_mdma_setup_xfer.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %vchan_tx_prep.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %for.end ], [ %call5, %vchan_tx_prep.exit ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_mdma_prep_dma_cyclic(ptr noundef %c, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  %ccr = alloca i32, align 4
  %ctcr = alloca i32, align 4
  %ctbr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccr) #9
  %2 = ptrtoint ptr %ccr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ccr, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctcr) #9
  %3 = ptrtoint ptr %ctcr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ctcr, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctbr) #9
  %4 = ptrtoint ptr %ctbr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ctbr, align 4, !annotation !260
  %desc3 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %5 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cyclic = getelementptr inbounds %struct.stm32_mdma_desc, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cyclic, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool7.not = icmp eq i32 %buf_len, 0
  %11 = add i32 %period_len, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %11)
  %12 = icmp ult i32 %11, -65536
  %13 = or i1 %tobool7.not, %12
  br i1 %13, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i125 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i125 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i125, align 4
  %device.i126 = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i126, ptr noundef nonnull @.str.72) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %div = udiv i32 %buf_len, %period_len
  %16 = mul i32 %div, %period_len
  %rem.decomposed = sub i32 %buf_len, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool16.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i127 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i127 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i127, align 4
  %device.i128 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i128, ptr noundef nonnull @.str.75) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = tail call fastcc ptr @stm32_mdma_alloc_desc(ptr noundef %c, i32 noundef %div)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp27 = icmp eq i32 %direction, 1
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %call29 = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %ccr, ptr noundef nonnull %ctcr, ptr noundef nonnull %ctbr, i32 noundef %buf_addr, i32 noundef %period_len)
  %19 = ptrtoint ptr %ctbr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctbr, align 4
  %and.i = and i32 %20, -65537
  store i32 %and.i, ptr %ctbr, align 4
  %and1.i = and i32 %buf_addr, -268435456
  %nr_ahb_addr_masks.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %nr_ahb_addr_masks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_ahb_addr_masks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp8.not.i = icmp eq i32 %22, 0
  br i1 %cmp8.not.i, label %if.then28.if.end31_crit_edge, label %if.then28.for.body.i_crit_edge

if.then28.for.body.i_crit_edge:                   ; preds = %if.then28
  br label %for.body.i

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %for.cond.i.if.end31_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end31_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then28.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then28.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 8, i32 %i.09.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %24)
  %cmp2.i = icmp eq i32 %and1.i, %24
  br i1 %cmp2.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %20, 65536
  %25 = ptrtoint ptr %ctbr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %ctbr, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end26
  %call30 = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %c, i32 noundef %direction, ptr noundef nonnull %ccr, ptr noundef nonnull %ctcr, ptr noundef nonnull %ctbr, i32 noundef %buf_addr, i32 noundef %period_len)
  %26 = ptrtoint ptr %ctbr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctbr, align 4
  %and.i129 = and i32 %27, -131073
  store i32 %and.i129, ptr %ctbr, align 4
  %and1.i130 = and i32 %buf_addr, -268435456
  %nr_ahb_addr_masks.i131 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %nr_ahb_addr_masks.i131 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_ahb_addr_masks.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.not.i132 = icmp eq i32 %29, 0
  br i1 %cmp8.not.i132, label %if.else.if.end31_crit_edge, label %if.else.for.body.i139_crit_edge

if.else.for.body.i139_crit_edge:                  ; preds = %if.else
  br label %for.body.i139

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.cond.i135:                                    ; preds = %for.body.i139
  %inc.i133 = add nuw i32 %i.09.i136, 1
  %exitcond.not.i134 = icmp eq i32 %inc.i133, %29
  br i1 %exitcond.not.i134, label %for.cond.i135.if.end31_crit_edge, label %for.cond.i135.for.body.i139_crit_edge

for.cond.i135.for.body.i139_crit_edge:            ; preds = %for.cond.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i139

for.cond.i135.if.end31_crit_edge:                 ; preds = %for.cond.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.i139:                                    ; preds = %for.cond.i135.for.body.i139_crit_edge, %if.else.for.body.i139_crit_edge
  %i.09.i136 = phi i32 [ %inc.i133, %for.cond.i135.for.body.i139_crit_edge ], [ 0, %if.else.for.body.i139_crit_edge ]
  %arrayidx.i137 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 8, i32 %i.09.i136
  %30 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i130, i32 %31)
  %cmp2.i138 = icmp eq i32 %and1.i130, %31
  br i1 %cmp2.i138, label %if.then.i141, label %for.cond.i135

if.then.i141:                                     ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #11
  %or.i140 = or i32 %27, 131072
  %32 = ptrtoint ptr %ctbr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i140, ptr %ctbr, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then.i141, %for.cond.i135.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then.i, %for.cond.i.if.end31_crit_edge, %if.then28.if.end31_crit_edge
  %ret.0 = phi i32 [ %call29, %if.then28.if.end31_crit_edge ], [ %call29, %if.then.i ], [ %call30, %if.else.if.end31_crit_edge ], [ %call30, %if.then.i141 ], [ %call29, %for.cond.i.if.end31_crit_edge ], [ %call30, %for.cond.i135.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp32 = icmp slt i32 %ret.0, 0
  br i1 %cmp32, label %for.cond49.preheader, label %if.end34

for.cond49.preheader:                             ; preds = %if.end31
  %count50 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call23, i32 0, i32 3
  %33 = ptrtoint ptr %count50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp51150.not = icmp eq i32 %34, 0
  br i1 %cmp51150.not, label %for.cond49.preheader.for.end57_crit_edge, label %for.body52.lr.ph

for.cond49.preheader.for.end57_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57

for.body52.lr.ph:                                 ; preds = %for.cond49.preheader
  %desc_pool = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 1
  br label %for.body52

if.end34:                                         ; preds = %if.end31
  %35 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ccr, align 4
  %and = and i32 %36, -63
  %or = or i32 %and, 22
  store i32 %or, ptr %ccr, align 4
  %ccr35 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call23, i32 0, i32 1
  %37 = ptrtoint ptr %ccr35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %ccr35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp36148.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp36148.not, label %if.end34.for.end_crit_edge, label %for.body.lr.ph

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end34
  %src_addr41 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 5, i32 1
  %dst_addr39 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %ctcr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctcr, align 4
  %40 = ptrtoint ptr %ctbr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctbr, align 4
  %sub = add i32 %div, -1
  %and18.i = and i32 %period_len, 131071
  %mask_addr.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 6, i32 3
  %mask_data.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 6, i32 4
  %hwdesc_phys.i = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call23, i32 1, i32 0, i32 0, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %i.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %add.i, %if.end44.for.body_crit_edge ]
  br i1 %cmp27, label %if.then38, label %if.else40

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %i.0149, %period_len
  %add = add i32 %mul, %buf_addr
  %42 = ptrtoint ptr %dst_addr39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dst_addr39, align 4
  br label %if.end44

if.else40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %src_addr41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_addr41, align 4
  %mul42 = mul i32 %i.0149, %period_len
  %add43 = add i32 %mul42, %buf_addr
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then38
  %src_addr.0 = phi i32 [ %add, %if.then38 ], [ %45, %if.else40 ]
  %dst_addr.0 = phi i32 [ %43, %if.then38 ], [ %add43, %if.else40 ]
  %arrayidx.i143 = getelementptr %struct.stm32_mdma_desc, ptr %call23, i32 0, i32 4, i32 %i.0149
  %46 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i143, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %39, ptr %47, align 64
  %cbndtr.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %cbndtr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cbndtr.i, align 4
  %and.i144 = and i32 %50, 131072
  %add.i = add nuw i32 %i.0149, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0149, i32 %sub)
  %cmp45 = icmp eq i32 %i.0149, %sub
  %or.i146 = or i32 %and.i144, %and18.i
  %51 = ptrtoint ptr %cbndtr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i146, ptr %cbndtr.i, align 4
  %csar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %csar.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %src_addr.0, ptr %csar.i, align 8
  %cdar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 3
  %53 = ptrtoint ptr %cdar.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %dst_addr.0, ptr %cdar.i, align 4
  %cbrur.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 4
  %54 = ptrtoint ptr %cbrur.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %cbrur.i, align 16
  %ctbr20.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 6
  %55 = ptrtoint ptr %ctbr20.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %41, ptr %ctbr20.i, align 8
  %56 = ptrtoint ptr %mask_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mask_addr.i, align 4
  %cmar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 8
  %58 = ptrtoint ptr %cmar.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %cmar.i, align 32
  %59 = ptrtoint ptr %mask_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask_data.i, align 4
  %cmdr.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 9
  %61 = ptrtoint ptr %cmdr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %cmdr.i, align 4
  %hwdesc_phys32.i = getelementptr %struct.stm32_mdma_desc, ptr %call23, i32 0, i32 4, i32 %add.i, i32 1
  %hwdesc_phys.sink.i = select i1 %cmp45, ptr %hwdesc_phys.i, ptr %hwdesc_phys32.i
  %62 = ptrtoint ptr %hwdesc_phys.sink.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hwdesc_phys.sink.i, align 4
  %clar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 5
  %64 = ptrtoint ptr %clar.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %clar.i, align 4
  tail call fastcc void @stm32_mdma_dump_hwdesc(ptr noundef %c, ptr noundef %arrayidx.i143) #9
  %exitcond.not = icmp eq i32 %add.i, %umax
  br i1 %exitcond.not, label %if.end44.for.end_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %if.end34.for.end_crit_edge
  %cyclic47 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call23, i32 0, i32 2
  %65 = ptrtoint ptr %cyclic47 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %cyclic47, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call23, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call23, i32 0, i32 1
  %66 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call23, i32 0, i32 4
  %67 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call23, i32 0, i32 5
  %68 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call23, i32 0, i32 1
  %69 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call23, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call23, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %72, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %node.i, ptr %prev.i.i, align 4
  %74 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call23, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %node.i, ptr %72, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.lr.ph
  %i.1151 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc56, %for.body52.for.body52_crit_edge ]
  %77 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %desc_pool, align 4
  %arrayidx = getelementptr %struct.stm32_mdma_desc, ptr %call23, i32 0, i32 4, i32 %i.1151
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx, align 4
  %hwdesc_phys = getelementptr %struct.stm32_mdma_desc, ptr %call23, i32 0, i32 4, i32 %i.1151, i32 1
  %81 = ptrtoint ptr %hwdesc_phys to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hwdesc_phys, align 4
  tail call void @dma_pool_free(ptr noundef %78, ptr noundef %80, i32 noundef %82) #9
  %inc56 = add nuw i32 %i.1151, 1
  %83 = ptrtoint ptr %count50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count50, align 4
  %cmp51 = icmp ult i32 %inc56, %84
  br i1 %cmp51, label %for.body52.for.body52_crit_edge, label %for.body52.for.end57_crit_edge

for.body52.for.end57_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52

for.end57:                                        ; preds = %for.body52.for.end57_crit_edge, %for.cond49.preheader.for.end57_crit_edge
  tail call void @kfree(ptr noundef nonnull %call23) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end57, %vchan_tx_prep.exit, %if.end22.cleanup_crit_edge, %do.end20, %do.end13, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end13 ], [ null, %do.end20 ], [ null, %for.end57 ], [ %call23, %vchan_tx_prep.exit ], [ null, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctbr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctcr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccr) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_mdma_prep_dma_memcpy(ptr noundef %c, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %desc2 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cyclic = getelementptr inbounds %struct.stm32_mdma_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cyclic, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sub = add i32 %len, 65535
  %div778 = lshr i32 %sub, 16
  %call6 = tail call fastcc ptr @stm32_mdma_alloc_desc(ptr noundef %c, i32 noundef %div778)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %mul = shl i32 %9, 6
  %add10 = add i32 %mul, 76
  %base.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !267
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %mul13 = shl i32 %14, 6
  %add14 = add i32 %mul13, 80
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i805 = getelementptr i8, ptr %16, i32 %add14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i805) #9, !srcloc !267
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %mul17 = shl i32 %19, 6
  %add18 = add i32 %mul17, 104
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i807 = getelementptr i8, ptr %21, i32 %add18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i807) #9, !srcloc !267
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %mul21 = shl i32 %24, 6
  %add22 = add i32 %mul21, 84
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i809 = getelementptr i8, ptr %26, i32 %add22
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i809) #9, !srcloc !267
  %28 = shl i32 %27, 8
  %29 = and i32 %12, 26214399
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = and i32 %22, -1056964609
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %and.i = and i32 %32, -65600
  %and1.i = and i32 %src, -268435456
  %nr_ahb_addr_masks.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %nr_ahb_addr_masks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_ahb_addr_masks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp8.not.i = icmp eq i32 %34, 0
  br i1 %cmp8.not.i, label %stm32_mdma_set_bus.exit.thread, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

stm32_mdma_set_bus.exit.thread:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %and.i810916 = and i32 %32, -196672
  br label %stm32_mdma_set_bus.exit823

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.cond.i.for.body.i820.preheader_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.for.body.i820.preheader_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i820.preheader

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 8, i32 %i.09.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %36)
  %cmp2.i = icmp eq i32 %and1.i, %36
  br i1 %cmp2.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %32, 65536
  br label %for.body.i820.preheader

for.body.i820.preheader:                          ; preds = %if.then.i, %for.cond.i.for.body.i820.preheader_crit_edge
  %ctbr.0 = phi i32 [ %or.i, %if.then.i ], [ %and.i, %for.cond.i.for.body.i820.preheader_crit_edge ]
  %and.i810 = and i32 %ctbr.0, -131073
  %and1.i811 = and i32 %dest, -268435456
  br label %for.body.i820

for.cond.i816:                                    ; preds = %for.body.i820
  %inc.i814 = add nuw i32 %i.09.i817, 1
  %exitcond.not.i815 = icmp eq i32 %inc.i814, %34
  br i1 %exitcond.not.i815, label %for.cond.i816.stm32_mdma_set_bus.exit823_crit_edge, label %for.cond.i816.for.body.i820_crit_edge

for.cond.i816.for.body.i820_crit_edge:            ; preds = %for.cond.i816
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i820

for.cond.i816.stm32_mdma_set_bus.exit823_crit_edge: ; preds = %for.cond.i816
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_set_bus.exit823

for.body.i820:                                    ; preds = %for.cond.i816.for.body.i820_crit_edge, %for.body.i820.preheader
  %i.09.i817 = phi i32 [ %inc.i814, %for.cond.i816.for.body.i820_crit_edge ], [ 0, %for.body.i820.preheader ]
  %arrayidx.i818 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 8, i32 %i.09.i817
  %37 = ptrtoint ptr %arrayidx.i818 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i818, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i811, i32 %38)
  %cmp2.i819 = icmp eq i32 %and1.i811, %38
  br i1 %cmp2.i819, label %if.then.i822, label %for.cond.i816

if.then.i822:                                     ; preds = %for.body.i820
  call void @__sanitizer_cov_trace_pc() #11
  %or.i821 = or i32 %ctbr.0, 131072
  br label %stm32_mdma_set_bus.exit823

stm32_mdma_set_bus.exit823:                       ; preds = %if.then.i822, %for.cond.i816.stm32_mdma_set_bus.exit823_crit_edge, %stm32_mdma_set_bus.exit.thread
  %ctbr.1 = phi i32 [ %or.i821, %if.then.i822 ], [ %and.i810916, %stm32_mdma_set_bus.exit.thread ], [ %and.i810, %for.cond.i816.stm32_mdma_set_bus.exit823_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %len)
  %cmp = icmp ult i32 %len, 65537
  br i1 %cmp, label %do.end80, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %stm32_mdma_set_bus.exit823
  %or.i854 = or i32 %len, %src
  %and.i855 = and i32 %or.i854, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i855)
  %cmp1.i856.not = icmp eq i32 %and.i855, 0
  %or.i872 = or i32 %len, 128
  %39 = tail call i32 @llvm.cttz.i32(i32 %or.i872, i1 true) #9, !range !270
  %shl.i873 = shl nuw i32 1, %39
  %and.1.i857 = and i32 %or.i854, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i857)
  %cmp1.1.i858.not = icmp eq i32 %and.1.i857, 0
  %and.2.i860 = and i32 %or.i854, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i860)
  %cmp1.2.i861.not = icmp eq i32 %and.2.i860, 0
  %spec.select931 = select i1 %cmp1.2.i861.not, i32 2, i32 1
  %or.i881 = or i32 %len, %dest
  %and.i882 = and i32 %or.i881, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i882)
  %cmp1.i883.not = icmp eq i32 %and.i882, 0
  %and.1.i884 = and i32 %or.i881, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i884)
  %cmp1.1.i885.not = icmp eq i32 %and.1.i884, 0
  %and.2.i887 = and i32 %or.i881, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i887)
  %cmp1.2.i888.not = icmp eq i32 %and.2.i887, 0
  %spec.select932 = select i1 %cmp1.2.i888.not, i32 2, i32 1
  %sub582 = add nsw i32 %div778, -1
  %mask_addr.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 6, i32 3
  %mask_data.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 6, i32 4
  %spec.select937 = select i1 %cmp1.1.i858.not, i32 4, i32 %spec.select931
  %max_width.0.lcssa.i864 = select i1 %cmp1.i856.not, i32 8, i32 %spec.select937
  %40 = tail call i32 @llvm.cttz.i32(i32 %max_width.0.lcssa.i864, i1 true) #9, !range !270
  %div391.rhs.trunc = trunc i32 %max_width.0.lcssa.i864 to i8
  %div391925 = udiv i8 -128, %div391.rhs.trunc
  %div391.zext = zext i8 %div391925 to i32
  %mul.i874 = mul nuw nsw i32 %max_width.0.lcssa.i864, %div391.zext
  %41 = tail call i32 @llvm.umin.i32(i32 %shl.i873, i32 %mul.i874) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %max_width.0.lcssa.i864)
  %cmp1.not.i875 = icmp ult i32 %41, %max_width.0.lcssa.i864
  %div.i876.lhs.trunc = trunc i32 %41 to i16
  %div.i876.rhs.trunc = trunc i32 %max_width.0.lcssa.i864 to i16
  %shl453 = shl nuw nsw i32 %40, 4
  %and454 = and i32 %shl453, 48
  %shl478 = shl nuw nsw i32 %40, 8
  %and479 = and i32 %shl478, 768
  %spec.select938 = select i1 %cmp1.1.i885.not, i32 4, i32 %spec.select932
  %max_width.0.lcssa.i891 = select i1 %cmp1.i883.not, i32 8, i32 %spec.select938
  %42 = tail call i32 @llvm.cttz.i32(i32 %max_width.0.lcssa.i891, i1 true) #9, !range !270
  %div484.rhs.trunc = trunc i32 %max_width.0.lcssa.i891 to i8
  %div.i903.rhs.trunc = trunc i32 %max_width.0.lcssa.i891 to i16
  %shl546 = shl nuw nsw i32 %42, 6
  %and547 = and i32 %shl546, 192
  %shl571 = shl nuw nsw i32 %42, 10
  %and572 = and i32 %shl571, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp575.not = icmp eq i32 %42, %40
  %div484926 = udiv i8 -128, %div484.rhs.trunc
  %div484.zext = zext i8 %div484926 to i32
  %mul.i901 = mul nuw nsw i32 %max_width.0.lcssa.i891, %div484.zext
  %43 = tail call i32 @llvm.umin.i32(i32 %shl.i873, i32 %mul.i901) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %max_width.0.lcssa.i891)
  %cmp1.not.i902 = icmp ult i32 %43, %max_width.0.lcssa.i891
  %div.i903.lhs.trunc = trunc i32 %43 to i16
  br label %for.body

do.end80:                                         ; preds = %stm32_mdma_set_bus.exit823
  %and60 = and i32 %28, 131072
  %or83 = or i32 %and60, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %len)
  %cmp84 = icmp ult i32 %len, 129
  %ctcr.0 = select i1 %cmp84, i32 1107034122, i32 1375469578
  %ccr.0.v = select i1 %cmp84, i32 38, i32 22
  %or.i824 = or i32 %len, %src
  %and.i825 = and i32 %or.i824, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i825)
  %cmp1.i.not = icmp eq i32 %and.i825, 0
  br i1 %cmp1.i.not, label %do.end80.stm32_mdma_get_width.exit_crit_edge, label %for.inc.i

do.end80.stm32_mdma_get_width.exit_crit_edge:     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_get_width.exit

for.inc.i:                                        ; preds = %do.end80
  %and.1.i = and i32 %or.i824, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp1.1.i.not = icmp eq i32 %and.1.i, 0
  br i1 %cmp1.1.i.not, label %for.inc.i.stm32_mdma_get_width.exit_crit_edge, label %for.inc.1.i

for.inc.i.stm32_mdma_get_width.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_get_width.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.2.i = and i32 %or.i824, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %cmp1.2.i.not = icmp eq i32 %and.2.i, 0
  %spec.select929 = select i1 %cmp1.2.i.not, i32 2, i32 1
  br label %stm32_mdma_get_width.exit

stm32_mdma_get_width.exit:                        ; preds = %for.inc.1.i, %for.inc.i.stm32_mdma_get_width.exit_crit_edge, %do.end80.stm32_mdma_get_width.exit_crit_edge
  %max_width.0.lcssa.i = phi i32 [ 8, %do.end80.stm32_mdma_get_width.exit_crit_edge ], [ 4, %for.inc.i.stm32_mdma_get_width.exit_crit_edge ], [ %spec.select929, %for.inc.1.i ]
  %44 = tail call i32 @llvm.cttz.i32(i32 %max_width.0.lcssa.i, i1 true) #9, !range !270
  %div153.rhs.trunc = trunc i32 %max_width.0.lcssa.i to i8
  %div153921 = udiv i8 -128, %div153.rhs.trunc
  %div153.zext = zext i8 %div153921 to i32
  %or.i826 = or i32 %len, 128
  %45 = tail call i32 @llvm.cttz.i32(i32 %or.i826, i1 true) #9, !range !270
  %shl.i = shl nuw i32 1, %45
  %mul.i = mul nuw nsw i32 %max_width.0.lcssa.i, %div153.zext
  %46 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %mul.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %max_width.0.lcssa.i)
  %cmp1.not.i = icmp ult i32 %46, %max_width.0.lcssa.i
  br i1 %cmp1.not.i, label %stm32_mdma_get_width.exit.cond.false160_crit_edge, label %cond.true2.i

stm32_mdma_get_width.exit.cond.false160_crit_edge: ; preds = %stm32_mdma_get_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false160

cond.true2.i:                                     ; preds = %stm32_mdma_get_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div.i.lhs.trunc = trunc i32 %46 to i16
  %div.i.rhs.trunc = trunc i32 %max_width.0.lcssa.i to i16
  %div.i924 = udiv i16 %div.i.lhs.trunc, %div.i.rhs.trunc
  %div.i.zext = zext i16 %div.i924 to i32
  br label %cond.false160

cond.false160:                                    ; preds = %cond.true2.i, %stm32_mdma_get_width.exit.cond.false160_crit_edge
  %cond5.i = phi i32 [ %div.i.zext, %cond.true2.i ], [ 1, %stm32_mdma_get_width.exit.cond.false160_crit_edge ]
  %47 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i, i1 false) #9, !range !270
  %.neg940 = mul nuw nsw i32 %47, 28672
  %shl186 = add nuw nsw i32 %.neg940, 28672
  %and187 = and i32 %shl186, 28672
  %shl210 = shl nuw nsw i32 %44, 4
  %and211 = and i32 %shl210, 48
  %shl235 = shl nuw nsw i32 %44, 8
  %and236 = and i32 %shl235, 768
  %or.i827 = or i32 %len, %dest
  %and.i828 = and i32 %or.i827, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i828)
  %cmp1.i829.not = icmp eq i32 %and.i828, 0
  br i1 %cmp1.i829.not, label %cond.false160.stm32_mdma_get_width.exit844_crit_edge, label %for.inc.i832

cond.false160.stm32_mdma_get_width.exit844_crit_edge: ; preds = %cond.false160
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_get_width.exit844

for.inc.i832:                                     ; preds = %cond.false160
  %and.1.i830 = and i32 %or.i827, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i830)
  %cmp1.1.i831.not = icmp eq i32 %and.1.i830, 0
  br i1 %cmp1.1.i831.not, label %for.inc.i832.stm32_mdma_get_width.exit844_crit_edge, label %for.inc.1.i836

for.inc.i832.stm32_mdma_get_width.exit844_crit_edge: ; preds = %for.inc.i832
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_get_width.exit844

for.inc.1.i836:                                   ; preds = %for.inc.i832
  call void @__sanitizer_cov_trace_pc() #11
  %and.2.i833 = and i32 %or.i827, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i833)
  %cmp1.2.i834.not = icmp eq i32 %and.2.i833, 0
  %spec.select930 = select i1 %cmp1.2.i834.not, i32 2, i32 1
  br label %stm32_mdma_get_width.exit844

stm32_mdma_get_width.exit844:                     ; preds = %for.inc.1.i836, %for.inc.i832.stm32_mdma_get_width.exit844_crit_edge, %cond.false160.stm32_mdma_get_width.exit844_crit_edge
  %max_width.0.lcssa.i837 = phi i32 [ 8, %cond.false160.stm32_mdma_get_width.exit844_crit_edge ], [ 4, %for.inc.i832.stm32_mdma_get_width.exit844_crit_edge ], [ %spec.select930, %for.inc.1.i836 ]
  %48 = tail call i32 @llvm.cttz.i32(i32 %max_width.0.lcssa.i837, i1 true) #9, !range !270
  %div241.rhs.trunc = trunc i32 %max_width.0.lcssa.i837 to i8
  %div241922 = udiv i8 -128, %div241.rhs.trunc
  %div241.zext = zext i8 %div241922 to i32
  %mul.i847 = mul nuw nsw i32 %max_width.0.lcssa.i837, %div241.zext
  %49 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %mul.i847) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %max_width.0.lcssa.i837)
  %cmp1.not.i848 = icmp ult i32 %49, %max_width.0.lcssa.i837
  br i1 %cmp1.not.i848, label %stm32_mdma_get_width.exit844.cond.false253_crit_edge, label %cond.true2.i850

stm32_mdma_get_width.exit844.cond.false253_crit_edge: ; preds = %stm32_mdma_get_width.exit844
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false253

cond.true2.i850:                                  ; preds = %stm32_mdma_get_width.exit844
  call void @__sanitizer_cov_trace_pc() #11
  %div.i849.lhs.trunc = trunc i32 %49 to i16
  %div.i849.rhs.trunc = trunc i32 %max_width.0.lcssa.i837 to i16
  %div.i849923 = udiv i16 %div.i849.lhs.trunc, %div.i849.rhs.trunc
  %div.i849.zext = zext i16 %div.i849923 to i32
  br label %cond.false253

cond.false253:                                    ; preds = %cond.true2.i850, %stm32_mdma_get_width.exit844.cond.false253_crit_edge
  %cond5.i851 = phi i32 [ %div.i849.zext, %cond.true2.i850 ], [ 1, %stm32_mdma_get_width.exit844.cond.false253_crit_edge ]
  %50 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i851, i1 false) #9, !range !270
  %.neg941 = mul nuw nsw i32 %50, 229376
  %shl279 = add nuw nsw i32 %.neg941, 229376
  %and280 = and i32 %shl279, 229376
  %shl303 = shl nuw nsw i32 %48, 6
  %and304 = and i32 %shl303, 192
  %shl328 = shl nuw nsw i32 %48, 10
  %and329 = and i32 %shl328, 3072
  %or305 = or i32 %and211, %ctcr.0
  %or330 = or i32 %or305, %and236
  %or212 = or i32 %or330, %and187
  %or237 = or i32 %or212, %and304
  %or238 = or i32 %or237, %and329
  %or331 = or i32 %or238, %and280
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %44)
  %cmp332.not = icmp eq i32 %48, %44
  %or335 = or i32 %or331, 33554432
  %spec.select = select i1 %cmp332.not, i32 %or331, i32 %or335
  %node = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call6, i32 0, i32 4
  %51 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %node, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.select, ptr %52, align 64
  %cbndtr339 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %cbndtr339 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or83, ptr %cbndtr339, align 4
  %csar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %csar to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %src, ptr %csar, align 8
  %cdar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 3
  %56 = ptrtoint ptr %cdar to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %dest, ptr %cdar, align 4
  %cbrur = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 4
  %57 = ptrtoint ptr %cbrur to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cbrur, align 16
  %clar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 5
  %58 = ptrtoint ptr %clar to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %clar, align 4
  %ctbr340 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 6
  %59 = ptrtoint ptr %ctbr340 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %ctbr.1, ptr %ctbr340, align 8
  %cmar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 8
  %60 = ptrtoint ptr %cmar to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cmar, align 32
  %cmdr = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %52, i32 0, i32 9
  %61 = ptrtoint ptr %cmdr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %cmdr, align 4
  tail call fastcc void @stm32_mdma_dump_hwdesc(ptr noundef %c, ptr noundef %node)
  br label %if.end588

for.body:                                         ; preds = %stm32_mdma_setup_hwdesc.exit.for.body_crit_edge, %for.body.lr.ph
  %ctcr.2936 = phi i32 [ 1912340490, %for.body.lr.ph ], [ %spec.select803, %stm32_mdma_setup_hwdesc.exit.for.body_crit_edge ]
  %offset.0935 = phi i32 [ 0, %for.body.lr.ph ], [ %add587, %stm32_mdma_setup_hwdesc.exit.for.body_crit_edge ]
  %i.0934 = phi i32 [ 0, %for.body.lr.ph ], [ %add.i, %stm32_mdma_setup_hwdesc.exit.for.body_crit_edge ]
  %sub381 = sub i32 %len, %offset.0935
  %62 = tail call i32 @llvm.umin.i32(i32 %sub381, i32 65536)
  br i1 %cmp1.not.i875, label %for.body.cond.false403_crit_edge, label %cond.true2.i877

for.body.cond.false403_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false403

cond.true2.i877:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %div.i876928 = udiv i16 %div.i876.lhs.trunc, %div.i876.rhs.trunc
  %div.i876.zext = zext i16 %div.i876928 to i32
  br label %cond.false403

cond.false403:                                    ; preds = %cond.true2.i877, %for.body.cond.false403_crit_edge
  %cond5.i878 = phi i32 [ %div.i876.zext, %cond.true2.i877 ], [ 1, %for.body.cond.false403_crit_edge ]
  %63 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i878, i1 false) #9, !range !270
  %.neg = mul nuw nsw i32 %63, 28672
  %shl429 = add nuw nsw i32 %.neg, 28672
  %and430 = and i32 %shl429, 28672
  br i1 %cmp1.not.i902, label %cond.false403.cond.false496_crit_edge, label %cond.true2.i904

cond.false403.cond.false496_crit_edge:            ; preds = %cond.false403
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false496

cond.true2.i904:                                  ; preds = %cond.false403
  call void @__sanitizer_cov_trace_pc() #11
  %div.i903927 = udiv i16 %div.i903.lhs.trunc, %div.i903.rhs.trunc
  %div.i903.zext = zext i16 %div.i903927 to i32
  br label %cond.false496

cond.false496:                                    ; preds = %cond.true2.i904, %cond.false403.cond.false496_crit_edge
  %cond5.i905 = phi i32 [ %div.i903.zext, %cond.true2.i904 ], [ 1, %cond.false403.cond.false496_crit_edge ]
  %64 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i905, i1 false) #9, !range !270
  %.neg939 = mul nuw nsw i32 %64, 229376
  %shl522 = add nuw nsw i32 %.neg939, 229376
  %and523 = and i32 %shl522, 229376
  %or548 = or i32 %and454, %ctcr.2936
  %or573 = or i32 %or548, %and479
  %or455 = or i32 %or573, %and430
  %or480 = or i32 %or455, %and547
  %or481 = or i32 %or480, %and572
  %or574 = or i32 %or481, %and523
  %or578 = or i32 %or574, 33554432
  %spec.select803 = select i1 %cmp575.not, i32 %or574, i32 %or578
  %add580 = add i32 %offset.0935, %src
  %add581 = add i32 %offset.0935, %dest
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0934, i32 %sub582)
  %cmp583 = icmp eq i32 %i.0934, %sub582
  %add.i = add i32 %i.0934, 1
  %arrayidx.i908 = getelementptr %struct.stm32_mdma_desc, ptr %call6, i32 0, i32 4, i32 %i.0934
  %65 = ptrtoint ptr %arrayidx.i908 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i908, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.select803, ptr %66, align 64
  %cbndtr.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %cbndtr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cbndtr.i, align 4
  %and.i909 = and i32 %69, 131072
  %or.i910 = or i32 %and.i909, %62
  store i32 %or.i910, ptr %cbndtr.i, align 4
  %csar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 2
  %70 = ptrtoint ptr %csar.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add580, ptr %csar.i, align 8
  %cdar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 3
  %71 = ptrtoint ptr %cdar.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add581, ptr %cdar.i, align 4
  %cbrur.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 4
  %72 = ptrtoint ptr %cbrur.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %cbrur.i, align 16
  %ctbr20.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 6
  %73 = ptrtoint ptr %ctbr20.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %ctbr.1, ptr %ctbr20.i, align 8
  %74 = ptrtoint ptr %mask_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mask_addr.i, align 4
  %cmar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 8
  %76 = ptrtoint ptr %cmar.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %cmar.i, align 32
  %77 = ptrtoint ptr %mask_data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mask_data.i, align 4
  %cmdr.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 9
  %79 = ptrtoint ptr %cmdr.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %cmdr.i, align 4
  br i1 %cmp583, label %cond.false496.stm32_mdma_setup_hwdesc.exit_crit_edge, label %if.else29.i

cond.false496.stm32_mdma_setup_hwdesc.exit_crit_edge: ; preds = %cond.false496
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_setup_hwdesc.exit

if.else29.i:                                      ; preds = %cond.false496
  call void @__sanitizer_cov_trace_pc() #11
  %hwdesc_phys32.i = getelementptr %struct.stm32_mdma_desc, ptr %call6, i32 0, i32 4, i32 %add.i, i32 1
  %80 = ptrtoint ptr %hwdesc_phys32.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hwdesc_phys32.i, align 4
  br label %stm32_mdma_setup_hwdesc.exit

stm32_mdma_setup_hwdesc.exit:                     ; preds = %if.else29.i, %cond.false496.stm32_mdma_setup_hwdesc.exit_crit_edge
  %.sink.i = phi i32 [ %81, %if.else29.i ], [ 0, %cond.false496.stm32_mdma_setup_hwdesc.exit_crit_edge ]
  %clar.i = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %66, i32 0, i32 5
  %82 = ptrtoint ptr %clar.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink.i, ptr %clar.i, align 4
  tail call fastcc void @stm32_mdma_dump_hwdesc(ptr noundef %c, ptr noundef %arrayidx.i908) #9
  %add587 = add i32 %62, %offset.0935
  %cmp379 = icmp ult i32 %add587, %len
  br i1 %cmp379, label %stm32_mdma_setup_hwdesc.exit.for.body_crit_edge, label %stm32_mdma_setup_hwdesc.exit.if.end588_crit_edge

stm32_mdma_setup_hwdesc.exit.if.end588_crit_edge: ; preds = %stm32_mdma_setup_hwdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end588

stm32_mdma_setup_hwdesc.exit.for.body_crit_edge:  ; preds = %stm32_mdma_setup_hwdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end588:                                        ; preds = %stm32_mdma_setup_hwdesc.exit.if.end588_crit_edge, %cond.false253
  %ccr.0.v.pn = phi i32 [ %ccr.0.v, %cond.false253 ], [ 22, %stm32_mdma_setup_hwdesc.exit.if.end588_crit_edge ]
  %ccr.1 = or i32 %ccr.0.v.pn, %30
  %ccr589 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call6, i32 0, i32 1
  %83 = ptrtoint ptr %ccr589 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %ccr.1, ptr %ccr589, align 4
  %cyclic590 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call6, i32 0, i32 2
  %84 = ptrtoint ptr %cyclic590 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %cyclic590, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call6, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 1
  %85 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 4
  %86 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 5
  %87 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 1
  %88 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %91, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end588.vchan_tx_prep.exit_crit_edge

if.end588.vchan_tx_prep.exit_crit_edge:           ; preds = %if.end588
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end588
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %node.i, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev3.i.i.i, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %node.i, ptr %91, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end588.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call6, %vchan_tx_prep.exit ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_mdma_slave_config(ptr nocapture noundef writeonly %c, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_config = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %dma_config, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_pause(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call6 = tail call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %c)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.body9, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_pause.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_pause, %if.end21)) #9
          to label %if.then16 [label %if.end21], !srcloc !265

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_pause.__UNIQUE_ID_ddebug441, ptr noundef %device.i, ptr noundef nonnull @.str.79, ptr noundef %c) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %do.body9, %entry.if.end21_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_resume(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %desc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %curr_hwdesc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 4
  %4 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_hwdesc, align 4
  %arrayidx = getelementptr %struct.stm32_mdma_desc, ptr %3, i32 0, i32 4, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %id = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %mul = shl i32 %9, 6
  %add = add i32 %mul, 76
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %ccr = getelementptr inbounds %struct.stm32_mdma_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ccr, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %base.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #9, !srcloc !268
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %mul10 = shl i32 %18, 6
  %add11 = add i32 %mul10, 64
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %20, i32 %add11
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #9, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %mul14 = shl i32 %23, 6
  %add15 = add i32 %mul14, 68
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %25, i32 %add15
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #9, !srcloc !267
  %27 = or i32 %26, %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %27) #9, !srcloc !268
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @stm32_mdma_dump_reg(ptr noundef %c)
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %mul17 = shl i32 %29, 6
  %add18 = add i32 %mul17, 76
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %31, i32 %add18
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #9, !srcloc !267
  %33 = or i32 %32, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %33) #9, !srcloc !268
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %7, align 64
  %and = and i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end.if.end21_crit_edge, label %if.then20

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %37, i32 %add18
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #9, !srcloc !267
  %39 = or i32 %38, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %39) #9, !srcloc !268
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_resume.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_resume, %do.end36)) #9
          to label %if.then31 [label %do.end36], !srcloc !265

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_resume.__UNIQUE_ID_ddebug442, ptr noundef %device.i, ptr noundef nonnull @.str.81, ptr noundef %c) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %if.end21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_terminate_all(ptr noundef %c) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 3
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %8, ptr noundef %desc_terminated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node.i, ptr %8, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 9
  %13 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %14, %4
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %busy = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 7
  %16 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %busy, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %vchan_terminate_vdesc.exit.if.end_crit_edge, label %if.then8

vchan_terminate_vdesc.exit.if.end_crit_edge:      ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8:                                         ; preds = %vchan_terminate_vdesc.exit
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c, align 4
  %call1.i = call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i23 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i23, label %if.then8.if.end_crit_edge, label %if.end.i

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then8
  %id.i = getelementptr inbounds %struct.stm32_mdma_chan, ptr %c, i32 0, i32 2
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %21, 6
  %add.i = add i32 %mul.i, 64
  %base.i.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %add.i
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !267
  %25 = call i32 @llvm.bswap.i32(i32 %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end.i.if.end15.i_crit_edge, label %do.body.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_stop.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_terminate_all, %do.end.i)) #9
          to label %if.then9.i [label %do.end.i], !srcloc !265

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_stop.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %25) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %do.body.i
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  %mul13.i = shl i32 %29, 6
  %add14.i = add i32 %mul13.i, 68
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %31, i32 %add14.i
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #9, !srcloc !267
  %33 = or i32 %32, %24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %33) #9, !srcloc !268
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.end.i.if.end15.i_crit_edge
  %34 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %busy, align 4
  br label %if.end

if.end:                                           ; preds = %if.end15.i, %if.then8.if.end_crit_edge, %vchan_terminate_vdesc.exit.if.end_crit_edge
  %35 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %desc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %36 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %37, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end10.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end10.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i25, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %39, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head, ptr %41, align 4
  store ptr %41, ptr %0, align 4
  %45 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end10.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %46 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %47, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i12.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %47, ptr %49, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %head, ptr %51, align 4
  store ptr %51, ptr %0, align 4
  %55 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %56 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %57, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %60 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i18.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %57, ptr %59, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %head, ptr %61, align 4
  store ptr %61, ptr %0, align 4
  %65 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %66 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %67, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i24.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %67, ptr %69, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %head, ptr %71, align 4
  store ptr %71, ptr %0, align 4
  %75 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i26 = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %76 = ptrtoint ptr %desc_terminated.i26 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %desc_terminated.i26, align 4
  %cmp.i.not.i27.i = icmp eq ptr %77, %desc_terminated.i26
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i30.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %77, ptr %79, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %head, ptr %81, align 4
  store ptr %81, ptr %0, align 4
  %85 = ptrtoint ptr %desc_terminated.i26 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %desc_terminated.i26, ptr %desc_terminated.i26, align 4
  store ptr %desc_terminated.i26, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_mdma_synchronize(ptr noundef %c) #2 align 64 {
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
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
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
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
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
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_mdma_desc_free(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.stm32_mdma_desc, ptr %vdesc, i32 0, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chan1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vdesc, i32 0, i32 3
  %2 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1, align 4
  %desc_pool = getelementptr inbounds %struct.stm32_mdma_chan, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_pool, align 4
  %arrayidx = getelementptr %struct.stm32_mdma_desc, ptr %vdesc, i32 0, i32 4, i32 %i.013
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %hwdesc_phys = getelementptr %struct.stm32_mdma_desc, ptr %vdesc, i32 0, i32 4, i32 %i.013, i32 1
  %8 = ptrtoint ptr %hwdesc_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwdesc_phys, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef %7, i32 noundef %9) #9
  %inc = add nuw i32 %i.013, 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %vdesc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_irq_handler(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm32_mdma_device, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #9, !range !270
  br label %if.end19

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %do.body, label %if.end17

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_irq_handler.__UNIQUE_ID_ddebug448, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_irq_handler, %cleanup)) #9
          to label %if.then15 [label %cleanup], !srcloc !265

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %devid, i32 0, i32 15
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_irq_handler.__UNIQUE_ID_ddebug448, ptr noundef %9, ptr noundef nonnull @.str.83) #9
  br label %cleanup

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %7)
  %11 = tail call i32 @llvm.cttz.i32(i32 %10, i1 false) #9, !range !270
  %add = add nuw nsw i32 %11, 32
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then
  %id.0 = phi i32 [ %4, %if.then ], [ %add, %if.end17 ]
  %arrayidx = getelementptr %struct.stm32_mdma_device, ptr %devid, i32 0, i32 7, i32 %id.0
  %tobool21.not = icmp eq ptr %arrayidx, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i178 = getelementptr inbounds %struct.dma_device, ptr %devid, i32 0, i32 15
  %12 = ptrtoint ptr %dev.i178 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i178, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.84) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %mul = shl nuw nsw i32 %id.0, 6
  %add28 = add nuw nsw i32 %mul, 64
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !267
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %and = and i32 %17, -65537
  %add31 = add nuw nsw i32 %mul, 76
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr.i180 = getelementptr i8, ptr %19, i32 %add31
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #9, !srcloc !267
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %and33 = lshr i32 %21, 1
  %shr = and i32 %and33, 31
  %and34 = and i32 %shr, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %dev.i181 = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i181 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i181, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.86, i32 noundef %and, i32 noundef %shr) #12
  br label %cleanup

if.end43:                                         ; preds = %if.end27
  %add45 = add nuw nsw i32 %mul, 68
  %and46 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.if.end61_crit_edge, label %do.end51

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i182 = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 5
  %24 = ptrtoint ptr %dev.i182 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i182, align 4
  %device.i183 = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add56 = add nuw nsw i32 %mul, 72
  %add.ptr57 = getelementptr i8, ptr %27, i32 %add56
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #9, !srcloc !267
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i183, ptr noundef nonnull @.str.89, i32 noundef %29) #12
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr.i185 = getelementptr i8, ptr %31, i32 %add45
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #9, !srcloc !267
  %33 = or i32 %32, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %33) #9, !srcloc !268
  %and60 = and i32 %17, -65538
  br label %if.end61

if.end61:                                         ; preds = %do.end51, %if.end43.if.end61_crit_edge
  %status.0 = phi i32 [ %and60, %do.end51 ], [ %and, %if.end43.if.end61_crit_edge ]
  %and62 = and i32 %status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end66_crit_edge, label %if.then64

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr.i187 = getelementptr i8, ptr %35, i32 %add45
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #9, !srcloc !267
  %37 = or i32 %36, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %37) #9, !srcloc !268
  %and65 = and i32 %status.0, -65539
  tail call fastcc void @stm32_mdma_xfer_end(ptr noundef nonnull %arrayidx)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end61.if.end66_crit_edge
  %status.1 = phi i32 [ %and65, %if.then64 ], [ %status.0, %if.end61.if.end66_crit_edge ]
  %and67 = and i32 %status.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end71_crit_edge, label %if.then69

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr.i190 = getelementptr i8, ptr %39, i32 %add45
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #9, !srcloc !267
  %41 = or i32 %40, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %41) #9, !srcloc !268
  %and70 = and i32 %status.1, -5
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66.if.end71_crit_edge
  %status.2 = phi i32 [ %and70, %if.then69 ], [ %status.1, %if.end66.if.end71_crit_edge ]
  %and72 = and i32 %status.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end87_crit_edge, label %if.then74

if.end71.if.end87_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then74:                                        ; preds = %if.end71
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i193 = getelementptr i8, ptr %43, i32 %add45
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #9, !srcloc !267
  %45 = or i32 %44, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 %45) #9, !srcloc !268
  %and75 = and i32 %status.2, -9
  %curr_hwdesc = getelementptr %struct.stm32_mdma_device, ptr %devid, i32 0, i32 7, i32 %id.0, i32 4
  %46 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %curr_hwdesc, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %curr_hwdesc, align 4
  %desc = getelementptr %struct.stm32_mdma_device, ptr %devid, i32 0, i32 7, i32 %id.0, i32 3
  %48 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc, align 4
  %tobool76.not = icmp eq ptr %49, null
  br i1 %tobool76.not, label %if.then74.if.end87_crit_edge, label %land.lhs.true

if.then74.if.end87_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %if.then74
  %cyclic = getelementptr inbounds %struct.stm32_mdma_desc, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cyclic, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool78.not = icmp eq i8 %51, 0
  br i1 %tobool78.not, label %land.lhs.true.if.end87_crit_edge, label %if.then79

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then79:                                        ; preds = %land.lhs.true
  %count = getelementptr inbounds %struct.stm32_mdma_desc, ptr %49, i32 0, i32 3
  %52 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %53)
  %cmp = icmp eq i32 %inc, %53
  br i1 %cmp, label %if.then82, label %if.then79.if.end84_crit_edge

if.then79.if.end84_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then82:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %curr_hwdesc, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.then79.if.end84_crit_edge
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %desc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %58, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end84.if.end87_crit_edge

if.end84.if.end87_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then.i.i:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %58, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then.i.i, %if.end84.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %if.then74.if.end87_crit_edge, %if.end71.if.end87_crit_edge
  %status.3 = phi i32 [ %and75, %land.lhs.true.if.end87_crit_edge ], [ %and75, %if.then74.if.end87_crit_edge ], [ %status.2, %if.end71.if.end87_crit_edge ], [ %and75, %if.end84.if.end87_crit_edge ], [ %and75, %if.then.i.i ]
  %and88 = and i32 %status.3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end92_crit_edge, label %if.then90

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr.i196 = getelementptr i8, ptr %61, i32 %add45
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #9, !srcloc !267
  %63 = or i32 %62, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %63) #9, !srcloc !268
  %and91 = and i32 %status.3, -17
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end87.if.end92_crit_edge
  %status.4 = phi i32 [ %and91, %if.then90 ], [ %status.3, %if.end87.if.end92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.4)
  %tobool93.not = icmp eq i32 %status.4, 0
  br i1 %tobool93.not, label %if.end92.if.end107_crit_edge, label %if.then94

if.end92.if.end107_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then94:                                        ; preds = %if.end92
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr.i199 = getelementptr i8, ptr %65, i32 %add45
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #9, !srcloc !267
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #9
  %or.i200 = or i32 %67, %status.4
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i200) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %68) #9, !srcloc !268
  %dev.i201 = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 5
  %69 = ptrtoint ptr %dev.i201 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i201, align 4
  %device.i202 = getelementptr inbounds %struct.dma_chan_dev, ptr %70, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i202, ptr noundef nonnull @.str.92, i32 noundef %status.4) #12
  %and99 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.end104, label %if.then94.if.end107_crit_edge

if.then94.if.end107_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.end104:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dev.i201 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i201, align 4
  %device.i204 = getelementptr inbounds %struct.dma_chan_dev, ptr %72, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i204, ptr noundef nonnull @.str.95) #12
  br label %if.end107

if.end107:                                        ; preds = %do.end104, %if.then94.if.end107_crit_edge, %if.end92.if.end107_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.then36, %do.end25, %if.then15, %do.body
  %retval.0 = phi i32 [ 1, %if.end107 ], [ 0, %if.then36 ], [ 0, %do.end25 ], [ 0, %if.then15 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_mdma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp slt i32 %3, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.100) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %nr_requests = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %17)
  %cmp10.not = icmp ult i32 %7, %17
  br i1 %cmp10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i49 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.103) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp18 = icmp ugt i32 %9, 3
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i50 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.106) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call25 = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i51 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.109) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %chan_config = getelementptr inbounds %struct.stm32_mdma_chan, ptr %call25, i32 0, i32 6
  %24 = ptrtoint ptr %chan_config to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %7, ptr %chan_config, align 4
  %config.sroa.6.0.chan_config.sroa_idx = getelementptr inbounds %struct.stm32_mdma_chan, ptr %call25, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %config.sroa.6.0.chan_config.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %9, ptr %config.sroa.6.0.chan_config.sroa_idx, align 4
  %config.sroa.9.0.chan_config.sroa_idx = getelementptr inbounds %struct.stm32_mdma_chan, ptr %call25, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %config.sroa.9.0.chan_config.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %11, ptr %config.sroa.9.0.chan_config.sroa_idx, align 4
  %config.sroa.11.0.chan_config.sroa_idx = getelementptr inbounds %struct.stm32_mdma_chan, ptr %call25, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %config.sroa.11.0.chan_config.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %13, ptr %config.sroa.11.0.chan_config.sroa_idx, align 4
  %config.sroa.13.0.chan_config.sroa_idx = getelementptr inbounds %struct.stm32_mdma_chan, ptr %call25, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %config.sroa.13.0.chan_config.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %15, ptr %config.sroa.13.0.chan_config.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end29, %do.end22, %do.end14, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end14 ], [ null, %do.end22 ], [ %call25, %if.end31 ], [ null, %do.end29 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_mdma_disable_chan(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %id1 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %mul = shl i32 %3, 6
  %add = add i32 %mul, 76
  %base.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !267
  %7 = and i32 %6, -1040187393
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !268
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #9, !srcloc !267
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #9, !srcloc !267
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %15) #9, !srcloc !268
  %call3 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call3, 1000000
  %add6 = add i32 %mul, 64
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr67 = getelementptr i8, ptr %17, i32 %add6
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #9, !srcloc !267
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and868 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and868)
  %tobool9.not69 = icmp eq i32 %and868, 0
  br i1 %tobool9.not69, label %if.then.land.lhs.true_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then14, label %cond.false

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr19 = getelementptr i8, ptr %21, i32 %add6
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !267
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #9
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %add6
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !267
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and8 = and i32 %28, 2
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then14, %if.then.for.end_crit_edge
  %cisr.0 = phi i32 [ %23, %if.then14 ], [ %19, %if.then.for.end_crit_edge ], [ %28, %cond.false.for.end_crit_edge ]
  %and32 = and i32 %cisr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_mdma_start_transfer(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %id1 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %5, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -108
  %tobool.not136 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not136
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %desc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %desc, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %desc4 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %desc4, align 4
  %node6 = getelementptr i8, ptr %5, i32 20
  %16 = ptrtoint ptr %node6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node6, align 4
  %curr_hwdesc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 4
  %18 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %curr_hwdesc, align 4
  %mul = shl i32 %3, 6
  %add = add i32 %mul, 76
  %ccr = getelementptr i8, ptr %5, i32 8
  %19 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ccr, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %base.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %21) #9, !srcloc !268
  %add10 = add i32 %mul, 80
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 64
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %28, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %26) #9, !srcloc !268
  %add12 = add i32 %mul, 84
  %cbndtr = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 1
  %29 = ptrtoint ptr %cbndtr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cbndtr, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %33, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %31) #9, !srcloc !268
  %add14 = add i32 %mul, 88
  %csar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 2
  %34 = ptrtoint ptr %csar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %csar, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %38, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %36) #9, !srcloc !268
  %add16 = add i32 %mul, 92
  %cdar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 3
  %39 = ptrtoint ptr %cdar to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cdar, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %43, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %41) #9, !srcloc !268
  %add18 = add i32 %mul, 96
  %cbrur = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 4
  %44 = ptrtoint ptr %cbrur to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cbrur, align 16
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %48, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %46) #9, !srcloc !268
  %add20 = add i32 %mul, 100
  %clar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 5
  %49 = ptrtoint ptr %clar to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clar, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %53, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %51) #9, !srcloc !268
  %add22 = add i32 %mul, 104
  %ctbr = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 6
  %54 = ptrtoint ptr %ctbr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ctbr, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %58, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %56) #9, !srcloc !268
  %add24 = add i32 %mul, 112
  %cmar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 8
  %59 = ptrtoint ptr %cmar to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmar, align 32
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %63, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %61) #9, !srcloc !268
  %add26 = add i32 %mul, 116
  %cmdr = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 9
  %64 = ptrtoint ptr %cmdr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cmdr, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %68, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %66) #9, !srcloc !268
  %add28 = add i32 %mul, 64
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %70, i32 %add28
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #9, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool30.not = icmp eq i32 %71, 0
  br i1 %tobool30.not, label %list_del.exit.if.end34_crit_edge, label %if.then31

list_del.exit.if.end34_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add33 = add i32 %mul, 68
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %73, i32 %add33
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #9, !srcloc !267
  %75 = or i32 %74, %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %75) #9, !srcloc !268
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %list_del.exit.if.end34_crit_edge
  tail call fastcc void @stm32_mdma_dump_reg(ptr noundef %chan)
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %77, i32 %add
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #9, !srcloc !267
  %79 = or i32 %78, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %79) #9, !srcloc !268
  %80 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %17, align 64
  %and = and i32 %81, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end34.if.end42_crit_edge, label %if.then39

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %83, i32 %add
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #9, !srcloc !267
  %85 = or i32 %84, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %85) #9, !srcloc !268
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end34.if.end42_crit_edge
  %busy = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 7
  %86 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %busy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_start_transfer.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_start_transfer, %cleanup)) #9
          to label %if.then48 [label %cleanup], !srcloc !265

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %88, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_start_transfer.__UNIQUE_ID_ddebug439, ptr noundef %device.i, ptr noundef nonnull @.str.39, ptr noundef %chan) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end42, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_mdma_dump_reg(ptr noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body7)) #9
          to label %if.then [label %do.body7], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %id = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 6
  %add = add i32 %mul, 76
  %base.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !267
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug429, ptr noundef %device.i, ptr noundef nonnull @.str.41, i32 noundef %9) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body30)) #9
          to label %if.then21 [label %do.body30], !srcloc !265

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i270 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i270 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i270, align 4
  %device.i271 = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  %id23 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %12 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id23, align 4
  %mul24 = shl i32 %13, 6
  %add25 = add i32 %mul24, 80
  %base.i272 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base.i272 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i272, align 4
  %add.ptr.i273 = getelementptr i8, ptr %15, i32 %add25
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #9, !srcloc !267
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug430, ptr noundef %device.i271, ptr noundef nonnull @.str.42, i32 noundef %17) #9
  br label %do.body30

do.body30:                                        ; preds = %if.then21, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body53)) #9
          to label %if.then44 [label %do.body53], !srcloc !265

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i274 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %18 = ptrtoint ptr %dev.i274 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i274, align 4
  %device.i275 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  %id46 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %20 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id46, align 4
  %mul47 = shl i32 %21, 6
  %add48 = add i32 %mul47, 84
  %base.i276 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base.i276 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i276, align 4
  %add.ptr.i277 = getelementptr i8, ptr %23, i32 %add48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #9, !srcloc !267
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug431, ptr noundef %device.i275, ptr noundef nonnull @.str.43, i32 noundef %25) #9
  br label %do.body53

do.body53:                                        ; preds = %if.then44, %do.body30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body76)) #9
          to label %if.then67 [label %do.body76], !srcloc !265

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i278 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i278 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i278, align 4
  %device.i279 = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  %id69 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %28 = ptrtoint ptr %id69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id69, align 4
  %mul70 = shl i32 %29, 6
  %add71 = add i32 %mul70, 88
  %base.i280 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %base.i280 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i280, align 4
  %add.ptr.i281 = getelementptr i8, ptr %31, i32 %add71
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #9, !srcloc !267
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug432, ptr noundef %device.i279, ptr noundef nonnull @.str.44, i32 noundef %33) #9
  br label %do.body76

do.body76:                                        ; preds = %if.then67, %do.body53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body99)) #9
          to label %if.then90 [label %do.body99], !srcloc !265

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i282 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %34 = ptrtoint ptr %dev.i282 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i282, align 4
  %device.i283 = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  %id92 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %36 = ptrtoint ptr %id92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id92, align 4
  %mul93 = shl i32 %37, 6
  %add94 = add i32 %mul93, 92
  %base.i284 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %base.i284 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i284, align 4
  %add.ptr.i285 = getelementptr i8, ptr %39, i32 %add94
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #9, !srcloc !267
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug433, ptr noundef %device.i283, ptr noundef nonnull @.str.45, i32 noundef %41) #9
  br label %do.body99

do.body99:                                        ; preds = %if.then90, %do.body76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body122)) #9
          to label %if.then113 [label %do.body122], !srcloc !265

if.then113:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i286 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %42 = ptrtoint ptr %dev.i286 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i286, align 4
  %device.i287 = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  %id115 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %44 = ptrtoint ptr %id115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id115, align 4
  %mul116 = shl i32 %45, 6
  %add117 = add i32 %mul116, 96
  %base.i288 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %base.i288 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i288, align 4
  %add.ptr.i289 = getelementptr i8, ptr %47, i32 %add117
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #9, !srcloc !267
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug434, ptr noundef %device.i287, ptr noundef nonnull @.str.46, i32 noundef %49) #9
  br label %do.body122

do.body122:                                       ; preds = %if.then113, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body145)) #9
          to label %if.then136 [label %do.body145], !srcloc !265

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i290 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %50 = ptrtoint ptr %dev.i290 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i290, align 4
  %device.i291 = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  %id138 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %52 = ptrtoint ptr %id138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id138, align 4
  %mul139 = shl i32 %53, 6
  %add140 = add i32 %mul139, 100
  %base.i292 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %base.i292 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i292, align 4
  %add.ptr.i293 = getelementptr i8, ptr %55, i32 %add140
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #9, !srcloc !267
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug435, ptr noundef %device.i291, ptr noundef nonnull @.str.47, i32 noundef %57) #9
  br label %do.body145

do.body145:                                       ; preds = %if.then136, %do.body122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body168)) #9
          to label %if.then159 [label %do.body168], !srcloc !265

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i294 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %58 = ptrtoint ptr %dev.i294 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i294, align 4
  %device.i295 = getelementptr inbounds %struct.dma_chan_dev, ptr %59, i32 0, i32 1
  %id161 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %60 = ptrtoint ptr %id161 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id161, align 4
  %mul162 = shl i32 %61, 6
  %add163 = add i32 %mul162, 104
  %base.i296 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %base.i296 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i296, align 4
  %add.ptr.i297 = getelementptr i8, ptr %63, i32 %add163
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297) #9, !srcloc !267
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug436, ptr noundef %device.i295, ptr noundef nonnull @.str.48, i32 noundef %65) #9
  br label %do.body168

do.body168:                                       ; preds = %if.then159, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.body191)) #9
          to label %if.then182 [label %do.body191], !srcloc !265

if.then182:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i298 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %66 = ptrtoint ptr %dev.i298 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i298, align 4
  %device.i299 = getelementptr inbounds %struct.dma_chan_dev, ptr %67, i32 0, i32 1
  %id184 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %68 = ptrtoint ptr %id184 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id184, align 4
  %mul185 = shl i32 %69, 6
  %add186 = add i32 %mul185, 112
  %base.i300 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %base.i300 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i300, align 4
  %add.ptr.i301 = getelementptr i8, ptr %71, i32 %add186
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #9, !srcloc !267
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug437, ptr noundef %device.i299, ptr noundef nonnull @.str.49, i32 noundef %73) #9
  br label %do.body191

do.body191:                                       ; preds = %if.then182, %do.body168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_reg, %do.end213)) #9
          to label %if.then205 [label %do.end213], !srcloc !265

if.then205:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i302 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %74 = ptrtoint ptr %dev.i302 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i302, align 4
  %device.i303 = getelementptr inbounds %struct.dma_chan_dev, ptr %75, i32 0, i32 1
  %id207 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %76 = ptrtoint ptr %id207 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id207, align 4
  %mul208 = shl i32 %77, 6
  %add209 = add i32 %mul208, 116
  %base.i304 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %base.i304 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i304, align 4
  %add.ptr.i305 = getelementptr i8, ptr %79, i32 %add209
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #9, !srcloc !267
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug438, ptr noundef %device.i303, ptr noundef nonnull @.str.50, i32 noundef %81) #9
  br label %do.end213

do.end213:                                        ; preds = %if.then205, %do.body191
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stm32_mdma_alloc_desc(ptr nocapture noundef readonly %chan, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 8) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 128) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp42.not = icmp eq i32 %count, 0
  br i1 %cmp42.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %desc_pool = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_pool, align 4
  %arrayidx = getelementptr %struct.stm32_mdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.043
  %hwdesc_phys = getelementptr %struct.stm32_mdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.043, i32 1
  %call2 = tail call ptr @dma_pool_alloc(ptr noundef %4, i32 noundef 2048, ptr noundef %hwdesc_phys) #9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %arrayidx, align 8
  %tobool8.not = icmp eq ptr %call2, null
  br i1 %tobool8.not, label %do.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count11 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %count11, align 4
  br label %cleanup

do.end:                                           ; preds = %for.body
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.53) #12
  %dec44 = add i32 %i.043, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec44)
  %cmp1345 = icmp sgt i32 %dec44, -1
  br i1 %cmp1345, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %dec46 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec44, %do.end.while.body_crit_edge ]
  %9 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_pool, align 4
  %arrayidx16 = getelementptr %struct.stm32_mdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %dec46
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx16, align 8
  %hwdesc_phys20 = getelementptr %struct.stm32_mdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %dec46, i32 1
  %13 = ptrtoint ptr %hwdesc_phys20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwdesc_phys20, align 4
  tail call void @dma_pool_free(ptr noundef %10, ptr noundef %12, i32 noundef %14) #9
  %dec = add nsw i32 %dec46, -1
  %cmp13 = icmp sgt i32 %dec46, 0
  br i1 %cmp13, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ %call9.i.i, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %chan, i32 noundef %direction, ptr nocapture noundef writeonly %mdma_ccr, ptr nocapture noundef writeonly %mdma_ctcr, ptr nocapture noundef writeonly %mdma_ctbr, i32 noundef %addr, i32 noundef %buf_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_config1 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 6
  %src_addr_width2 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %src_addr_width2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_addr_width2, align 4
  %dst_addr_width4 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %dst_addr_width4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_addr_width4, align 4
  %src_maxburst6 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %src_maxburst6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_maxburst6, align 4
  %dst_maxburst8 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 5, i32 6
  %8 = ptrtoint ptr %dst_maxburst8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_maxburst8, align 4
  %id = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %mul = shl i32 %11, 6
  %add = add i32 %mul, 76
  %base.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !267
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %mul11 = shl i32 %16, 6
  %add12 = add i32 %mul11, 80
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i817 = getelementptr i8, ptr %18, i32 %add12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i817) #9, !srcloc !267
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %mul15 = shl i32 %21, 6
  %add16 = add i32 %mul15, 104
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i819 = getelementptr i8, ptr %23, i32 %add16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i819) #9, !srcloc !267
  %transfer_config = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %transfer_config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_config, align 4
  %and32 = lshr i32 %26, 18
  %shr = and i32 %and32, 255
  %27 = and i32 %19, -252705908
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and19 = and i32 %26, 805310223
  %or = or i32 %and19, %28
  %sub = shl nuw nsw i32 %shr, 18
  %shl = add nuw nsw i32 %sub, 33292288
  %and53 = and i32 %shl, 33292288
  %or54 = or i32 %or, %and53
  %mul56 = mul i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul56)
  %cmp = icmp ugt i32 %mul56, 128
  %mul57 = mul i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul57)
  %cmp58 = icmp ugt i32 %mul57, 128
  %or.cond796 = select i1 %cmp, i1 true, i1 %cmp58
  br i1 %or.cond796, label %do.end62, label %if.end64

do.end62:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.57, i32 noundef 128) #12
  br label %cleanup

if.end64:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  %31 = tail call i32 @llvm.ctpop.i32(i32 %7) #9, !range !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp1.i = icmp ult i32 %31, 2
  %or.cond952 = or i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond952, label %lor.lhs.false67, label %if.end64.do.end74_crit_edge

if.end64.do.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

lor.lhs.false67:                                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i820 = icmp eq i32 %9, 0
  %32 = tail call i32 @llvm.ctpop.i32(i32 %9) #9, !range !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp1.i821 = icmp ult i32 %32, 2
  %or.cond953 = or i1 %cmp.not.i820, %cmp1.i821
  br i1 %or.cond953, label %do.end99, label %lor.lhs.false67.do.end74_crit_edge

lor.lhs.false67.do.end74_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

do.end74:                                         ; preds = %lor.lhs.false67.do.end74_crit_edge, %if.end64.do.end74_crit_edge
  %dev.i824 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i824 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i824, align 4
  %device.i825 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i825, ptr noundef nonnull @.str.60) #12
  br label %cleanup

do.end99:                                         ; preds = %lor.lhs.false67
  %priority_level = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %priority_level to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %priority_level, align 4
  %37 = and i32 %14, 1066401535
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %shl102 = shl i32 %36, 6
  %and103 = and i32 %shl102, 192
  %or104 = or i32 %and103, %38
  %39 = ptrtoint ptr %chan_config1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chan_config1, align 4
  %41 = and i32 %24, -1056964609
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %and131 = and i32 %40, 63
  %or132 = or i32 %and131, %42
  %43 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %do.end605 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb364
  ]

sw.bb:                                            ; preds = %do.end99
  %dst_addr134 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %dst_addr134 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dst_addr134, align 4
  %46 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %5, label %stm32_mdma_get_width.exit.thread [
    i32 1, label %sw.bb.if.end138_crit_edge
    i32 2, label %sw.bb.if.end138_crit_edge957
    i32 4, label %sw.bb.if.end138_crit_edge958
    i32 8, label %sw.bb.if.end138_crit_edge959
  ]

sw.bb.if.end138_crit_edge959:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

sw.bb.if.end138_crit_edge958:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

sw.bb.if.end138_crit_edge957:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

sw.bb.if.end138_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

stm32_mdma_get_width.exit.thread:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %47 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %48, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.65, i32 noundef %5) #12
  br label %cleanup

if.end138:                                        ; preds = %sw.bb.if.end138_crit_edge, %sw.bb.if.end138_crit_edge957, %sw.bb.if.end138_crit_edge958, %sw.bb.if.end138_crit_edge959
  %49 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #9, !range !270
  %and139 = and i32 %or54, -1107554545
  %shl162 = shl nuw nsw i32 %49, 6
  %and163 = and i32 %shl162, 192
  %or.i = or i32 %shr, %buf_len
  %50 = tail call i32 @llvm.cttz.i32(i32 %or.i, i1 false) #9, !range !270
  %shl.i = shl nuw i32 1, %50
  %51 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %mul57) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %5)
  %cmp1.not.i = icmp ult i32 %51, %5
  br i1 %cmp1.not.i, label %if.end138.stm32_mdma_get_best_burst.exit_crit_edge, label %cond.true2.i

if.end138.stm32_mdma_get_best_burst.exit_crit_edge: ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_get_best_burst.exit

cond.true2.i:                                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %div.i.lhs.trunc = trunc i32 %51 to i8
  %div.i.rhs.trunc = trunc i32 %5 to i8
  %div.i946 = udiv i8 %div.i.lhs.trunc, %div.i.rhs.trunc
  %div.i.zext = zext i8 %div.i946 to i32
  br label %stm32_mdma_get_best_burst.exit

stm32_mdma_get_best_burst.exit:                   ; preds = %cond.true2.i, %if.end138.stm32_mdma_get_best_burst.exit_crit_edge
  %cond5.i = phi i32 [ %div.i.zext, %cond.true2.i ], [ 1, %if.end138.stm32_mdma_get_best_burst.exit_crit_edge ]
  %mem_burst = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 8
  %52 = ptrtoint ptr %mem_burst to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond5.i, ptr %mem_burst, align 4
  %53 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i, i1 false) #9, !range !270
  %or.i828 = or i32 %buf_len, %addr
  %and.i = and i32 %or.i828, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i829 = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp2.not.i = icmp ult i32 %shr, 8
  %or.cond.i = or i1 %cmp1.i829, %cmp2.not.i
  br i1 %or.cond.i, label %for.inc.i, label %stm32_mdma_get_best_burst.exit.if.end234_crit_edge

stm32_mdma_get_best_burst.exit.if.end234_crit_edge: ; preds = %stm32_mdma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

for.inc.i:                                        ; preds = %stm32_mdma_get_best_burst.exit
  %and.1.i = and i32 %or.i828, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp1.1.i = icmp ne i32 %and.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp2.not.1.i = icmp ult i32 %shr, 4
  %or.cond.1.i = or i1 %cmp1.1.i, %cmp2.not.1.i
  br i1 %or.cond.1.i, label %for.inc.1.i, label %for.inc.i.if.end234_crit_edge

for.inc.i.if.end234_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.2.i = and i32 %or.i828, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %cmp1.2.i = icmp ne i32 %and.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp2.not.2.i = icmp ult i32 %shr, 2
  %or.cond.2.i = or i1 %cmp1.2.i, %cmp2.not.2.i
  %spec.select950 = select i1 %or.cond.2.i, i32 1, i32 2
  br label %if.end234

if.end234:                                        ; preds = %for.inc.1.i, %for.inc.i.if.end234_crit_edge, %stm32_mdma_get_best_burst.exit.if.end234_crit_edge
  %max_width.0.lcssa.i = phi i32 [ 8, %stm32_mdma_get_best_burst.exit.if.end234_crit_edge ], [ 4, %for.inc.i.if.end234_crit_edge ], [ %spec.select950, %for.inc.1.i ]
  %mem_width = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 9
  %54 = ptrtoint ptr %mem_width to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %max_width.0.lcssa.i, ptr %mem_width, align 4
  %55 = tail call i32 @llvm.cttz.i32(i32 %max_width.0.lcssa.i, i1 true) #9, !range !270
  %.neg955 = mul nuw nsw i32 %53, 229376
  %shl226 = add nuw nsw i32 %.neg955, 229376
  %and227 = and i32 %shl226, 229376
  %shl258 = shl nuw nsw i32 %55, 4
  %and259 = and i32 %shl258, 48
  %shl282 = shl nuw nsw i32 %55, 8
  %and283 = and i32 %shl282, 768
  %div.rhs.trunc = trunc i32 %max_width.0.lcssa.i to i8
  %div944 = udiv i8 -128, %div.rhs.trunc
  %div.zext = zext i8 %div944 to i32
  %mul.i838 = mul nuw nsw i32 %max_width.0.lcssa.i, %div.zext
  %56 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %mul.i838) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %max_width.0.lcssa.i)
  %cmp1.not.i839 = icmp ult i32 %56, %max_width.0.lcssa.i
  br i1 %cmp1.not.i839, label %if.end234.stm32_mdma_get_best_burst.exit843_crit_edge, label %cond.true2.i841

if.end234.stm32_mdma_get_best_burst.exit843_crit_edge: ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_get_best_burst.exit843

cond.true2.i841:                                  ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  %div.i840.lhs.trunc = trunc i32 %56 to i16
  %div.i840.rhs.trunc = trunc i32 %max_width.0.lcssa.i to i16
  %div.i840945 = udiv i16 %div.i840.lhs.trunc, %div.i840.rhs.trunc
  %div.i840.zext = zext i16 %div.i840945 to i32
  br label %stm32_mdma_get_best_burst.exit843

stm32_mdma_get_best_burst.exit843:                ; preds = %cond.true2.i841, %if.end234.stm32_mdma_get_best_burst.exit843_crit_edge
  %cond5.i842 = phi i32 [ %div.i840.zext, %cond.true2.i841 ], [ 1, %if.end234.stm32_mdma_get_best_burst.exit843_crit_edge ]
  %57 = ptrtoint ptr %mem_burst to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond5.i842, ptr %mem_burst, align 4
  %58 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i842, i1 false) #9, !range !270
  %.neg956 = mul nuw nsw i32 %58, 28672
  %shl353 = add nuw nsw i32 %.neg956, 28672
  %and354 = and i32 %shl353, 28672
  %or284 = or i32 %and139, %and163
  %or164 = or i32 %or284, %and227
  %or228 = or i32 %or164, %and283
  %or285 = or i32 %or228, %and259
  %or355 = or i32 %or285, %and354
  %and.i847 = and i32 %or132, -131073
  %and1.i = and i32 %45, -268435456
  %nr_ahb_addr_masks.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %nr_ahb_addr_masks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_ahb_addr_masks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp8.not.i = icmp eq i32 %60, 0
  br i1 %cmp8.not.i, label %stm32_mdma_get_best_burst.exit843.stm32_mdma_set_bus.exit_crit_edge, label %stm32_mdma_get_best_burst.exit843.for.body.i_crit_edge

stm32_mdma_get_best_burst.exit843.for.body.i_crit_edge: ; preds = %stm32_mdma_get_best_burst.exit843
  br label %for.body.i

stm32_mdma_get_best_burst.exit843.stm32_mdma_set_bus.exit_crit_edge: ; preds = %stm32_mdma_get_best_burst.exit843
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_set_bus.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %60
  br i1 %exitcond.not.i, label %for.cond.i.stm32_mdma_set_bus.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.stm32_mdma_set_bus.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_set_bus.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %stm32_mdma_get_best_burst.exit843.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %stm32_mdma_get_best_burst.exit843.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 8, i32 %i.09.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %62)
  %cmp2.i = icmp eq i32 %and1.i, %62
  br i1 %cmp2.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i848 = or i32 %or132, 131072
  br label %stm32_mdma_set_bus.exit

stm32_mdma_set_bus.exit:                          ; preds = %if.then.i, %for.cond.i.stm32_mdma_set_bus.exit_crit_edge, %stm32_mdma_get_best_burst.exit843.stm32_mdma_set_bus.exit_crit_edge
  %ctbr.0 = phi i32 [ %and.i847, %stm32_mdma_get_best_burst.exit843.stm32_mdma_set_bus.exit_crit_edge ], [ %or.i848, %if.then.i ], [ %and.i847, %for.cond.i.stm32_mdma_set_bus.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %55)
  %cmp356.not = icmp eq i32 %49, %55
  %or359 = or i32 %or355, 33554432
  %spec.select = select i1 %cmp356.not, i32 %or355, i32 %or359
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id, align 4
  %mul362 = shl i32 %64, 6
  %add363 = add i32 %mul362, 92
  %65 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i850 = getelementptr i8, ptr %67, i32 %add363
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i850, i32 %65) #9, !srcloc !268
  br label %sw.epilog

sw.bb364:                                         ; preds = %do.end99
  %src_addr366 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %src_addr366 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src_addr366, align 4
  %70 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %3, label %stm32_mdma_get_width.exit856.thread [
    i32 1, label %sw.bb364.if.end371_crit_edge
    i32 2, label %sw.bb364.if.end371_crit_edge960
    i32 4, label %sw.bb364.if.end371_crit_edge961
    i32 8, label %sw.bb364.if.end371_crit_edge962
  ]

sw.bb364.if.end371_crit_edge962:                  ; preds = %sw.bb364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end371

sw.bb364.if.end371_crit_edge961:                  ; preds = %sw.bb364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end371

sw.bb364.if.end371_crit_edge960:                  ; preds = %sw.bb364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end371

sw.bb364.if.end371_crit_edge:                     ; preds = %sw.bb364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end371

stm32_mdma_get_width.exit856.thread:              ; preds = %sw.bb364
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i852 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %71 = ptrtoint ptr %dev.i.i852 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i852, align 4
  %device.i.i853 = getelementptr inbounds %struct.dma_chan_dev, ptr %72, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i853, ptr noundef nonnull @.str.65, i32 noundef %3) #12
  br label %cleanup

if.end371:                                        ; preds = %sw.bb364.if.end371_crit_edge, %sw.bb364.if.end371_crit_edge960, %sw.bb364.if.end371_crit_edge961, %sw.bb364.if.end371_crit_edge962
  %73 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #9, !range !270
  %and372 = and i32 %or54, -1107557617
  %shl395 = shl nuw nsw i32 %73, 4
  %and396 = and i32 %shl395, 48
  %or.i857 = or i32 %shr, %buf_len
  %74 = tail call i32 @llvm.cttz.i32(i32 %or.i857, i1 false) #9, !range !270
  %shl.i858 = shl nuw i32 1, %74
  %75 = tail call i32 @llvm.umin.i32(i32 %shl.i858, i32 %mul56) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %3)
  %cmp1.not.i860 = icmp ult i32 %75, %3
  br i1 %cmp1.not.i860, label %if.end371.cond.false460_crit_edge, label %cond.true2.i862

if.end371.cond.false460_crit_edge:                ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false460

cond.true2.i862:                                  ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  %div.i861.lhs.trunc = trunc i32 %75 to i8
  %div.i861.rhs.trunc = trunc i32 %3 to i8
  %div.i861949 = udiv i8 %div.i861.lhs.trunc, %div.i861.rhs.trunc
  %div.i861.zext = zext i8 %div.i861949 to i32
  br label %cond.false460

cond.false460:                                    ; preds = %cond.true2.i862, %if.end371.cond.false460_crit_edge
  %cond5.i863 = phi i32 [ %div.i861.zext, %cond.true2.i862 ], [ 1, %if.end371.cond.false460_crit_edge ]
  %76 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i863, i1 false) #9, !range !270
  %or.i868 = or i32 %buf_len, %addr
  %and.i869 = and i32 %or.i868, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i869)
  %cmp1.i870 = icmp ne i32 %and.i869, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp2.not.i871 = icmp ult i32 %shr, 8
  %or.cond.i872 = or i1 %cmp1.i870, %cmp2.not.i871
  br i1 %or.cond.i872, label %for.inc.i877, label %cond.false460.if.end473_crit_edge

cond.false460.if.end473_crit_edge:                ; preds = %cond.false460
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end473

for.inc.i877:                                     ; preds = %cond.false460
  %and.1.i873 = and i32 %or.i868, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i873)
  %cmp1.1.i874 = icmp ne i32 %and.1.i873, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp2.not.1.i875 = icmp ult i32 %shr, 4
  %or.cond.1.i876 = or i1 %cmp1.1.i874, %cmp2.not.1.i875
  br i1 %or.cond.1.i876, label %for.inc.1.i883, label %for.inc.i877.if.end473_crit_edge

for.inc.i877.if.end473_crit_edge:                 ; preds = %for.inc.i877
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end473

for.inc.1.i883:                                   ; preds = %for.inc.i877
  call void @__sanitizer_cov_trace_pc() #11
  %and.2.i878 = and i32 %or.i868, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i878)
  %cmp1.2.i879 = icmp ne i32 %and.2.i878, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp2.not.2.i880 = icmp ult i32 %shr, 2
  %or.cond.2.i881 = or i1 %cmp1.2.i879, %cmp2.not.2.i880
  %spec.select951 = select i1 %or.cond.2.i881, i32 1, i32 2
  br label %if.end473

if.end473:                                        ; preds = %for.inc.1.i883, %for.inc.i877.if.end473_crit_edge, %cond.false460.if.end473_crit_edge
  %max_width.0.lcssa.i884 = phi i32 [ 8, %cond.false460.if.end473_crit_edge ], [ 4, %for.inc.i877.if.end473_crit_edge ], [ %spec.select951, %for.inc.1.i883 ]
  %mem_width468 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 9
  %77 = ptrtoint ptr %mem_width468 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %max_width.0.lcssa.i884, ptr %mem_width468, align 4
  %78 = tail call i32 @llvm.cttz.i32(i32 %max_width.0.lcssa.i884, i1 true) #9, !range !270
  %.neg = mul nuw nsw i32 %76, 28672
  %shl464 = add nuw nsw i32 %.neg, 28672
  %and465 = and i32 %shl464, 28672
  %shl497 = shl nuw nsw i32 %78, 6
  %and498 = and i32 %shl497, 192
  %shl521 = shl nuw nsw i32 %78, 10
  %and522 = and i32 %shl521, 3072
  %div525.rhs.trunc = trunc i32 %max_width.0.lcssa.i884 to i8
  %div525947 = udiv i8 -128, %div525.rhs.trunc
  %div525.zext = zext i8 %div525947 to i32
  %mul.i894 = mul nuw nsw i32 %max_width.0.lcssa.i884, %div525.zext
  %79 = tail call i32 @llvm.umin.i32(i32 %shl.i858, i32 %mul.i894) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %max_width.0.lcssa.i884)
  %cmp1.not.i895 = icmp ult i32 %79, %max_width.0.lcssa.i884
  br i1 %cmp1.not.i895, label %if.end473.cond.end590_crit_edge, label %cond.true2.i897

if.end473.cond.end590_crit_edge:                  ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end590

cond.true2.i897:                                  ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #11
  %div.i896.lhs.trunc = trunc i32 %79 to i16
  %div.i896.rhs.trunc = trunc i32 %max_width.0.lcssa.i884 to i16
  %div.i896948 = udiv i16 %div.i896.lhs.trunc, %div.i896.rhs.trunc
  %div.i896.zext = zext i16 %div.i896948 to i32
  br label %cond.end590

cond.end590:                                      ; preds = %cond.true2.i897, %if.end473.cond.end590_crit_edge
  %cond5.i898 = phi i32 [ %div.i896.zext, %cond.true2.i897 ], [ 1, %if.end473.cond.end590_crit_edge ]
  %80 = tail call i32 @llvm.ctlz.i32(i32 %cond5.i898, i1 false) #9, !range !270
  %.neg954 = mul nuw nsw i32 %80, 229376
  %shl592 = add nuw nsw i32 %.neg954, 229376
  %and593 = and i32 %shl592, 229376
  %or523 = or i32 %and372, %and396
  %or397 = or i32 %or523, %and465
  %or466 = or i32 %or397, %and522
  %or524 = or i32 %or466, %and498
  %or594 = or i32 %or524, %and593
  %and.i903 = and i32 %or132, -65537
  %and1.i904 = and i32 %69, -268435456
  %nr_ahb_addr_masks.i905 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %nr_ahb_addr_masks.i905 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_ahb_addr_masks.i905, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp8.not.i906 = icmp eq i32 %82, 0
  br i1 %cmp8.not.i906, label %cond.end590.stm32_mdma_set_bus.exit916_crit_edge, label %cond.end590.for.body.i913_crit_edge

cond.end590.for.body.i913_crit_edge:              ; preds = %cond.end590
  br label %for.body.i913

cond.end590.stm32_mdma_set_bus.exit916_crit_edge: ; preds = %cond.end590
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_set_bus.exit916

for.cond.i909:                                    ; preds = %for.body.i913
  %inc.i907 = add nuw i32 %i.09.i910, 1
  %exitcond.not.i908 = icmp eq i32 %inc.i907, %82
  br i1 %exitcond.not.i908, label %for.cond.i909.stm32_mdma_set_bus.exit916_crit_edge, label %for.cond.i909.for.body.i913_crit_edge

for.cond.i909.for.body.i913_crit_edge:            ; preds = %for.cond.i909
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i913

for.cond.i909.stm32_mdma_set_bus.exit916_crit_edge: ; preds = %for.cond.i909
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_mdma_set_bus.exit916

for.body.i913:                                    ; preds = %for.cond.i909.for.body.i913_crit_edge, %cond.end590.for.body.i913_crit_edge
  %i.09.i910 = phi i32 [ %inc.i907, %for.cond.i909.for.body.i913_crit_edge ], [ 0, %cond.end590.for.body.i913_crit_edge ]
  %arrayidx.i911 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 8, i32 %i.09.i910
  %83 = ptrtoint ptr %arrayidx.i911 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i911, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i904, i32 %84)
  %cmp2.i912 = icmp eq i32 %and1.i904, %84
  br i1 %cmp2.i912, label %if.then.i915, label %for.cond.i909

if.then.i915:                                     ; preds = %for.body.i913
  call void @__sanitizer_cov_trace_pc() #11
  %or.i914 = or i32 %or132, 65536
  br label %stm32_mdma_set_bus.exit916

stm32_mdma_set_bus.exit916:                       ; preds = %if.then.i915, %for.cond.i909.stm32_mdma_set_bus.exit916_crit_edge, %cond.end590.stm32_mdma_set_bus.exit916_crit_edge
  %ctbr.1 = phi i32 [ %and.i903, %cond.end590.stm32_mdma_set_bus.exit916_crit_edge ], [ %or.i914, %if.then.i915 ], [ %and.i903, %for.cond.i909.stm32_mdma_set_bus.exit916_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %73)
  %cmp595.not = icmp eq i32 %78, %73
  %or598 = or i32 %or594, 33554432
  %spec.select815 = select i1 %cmp595.not, i32 %or594, i32 %or598
  %85 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id, align 4
  %mul601 = shl i32 %86, 6
  %add602 = add i32 %mul601, 88
  %87 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %add.ptr.i918 = getelementptr i8, ptr %89, i32 %add602
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i918, i32 %87) #9, !srcloc !268
  br label %sw.epilog

do.end605:                                        ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i919 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %90 = ptrtoint ptr %dev.i919 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i919, align 4
  %device.i920 = getelementptr inbounds %struct.dma_chan_dev, ptr %91, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i920, ptr noundef nonnull @.str.63) #12
  br label %cleanup

sw.epilog:                                        ; preds = %stm32_mdma_set_bus.exit916, %stm32_mdma_set_bus.exit
  %ctbr.2 = phi i32 [ %ctbr.1, %stm32_mdma_set_bus.exit916 ], [ %ctbr.0, %stm32_mdma_set_bus.exit ]
  %ctcr.2 = phi i32 [ %spec.select815, %stm32_mdma_set_bus.exit916 ], [ %spec.select, %stm32_mdma_set_bus.exit ]
  %92 = ptrtoint ptr %mdma_ccr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or104, ptr %mdma_ccr, align 4
  %93 = ptrtoint ptr %mdma_ctcr to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %ctcr.2, ptr %mdma_ctcr, align 4
  %94 = ptrtoint ptr %mdma_ctbr to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %ctbr.2, ptr %mdma_ctbr, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end605, %stm32_mdma_get_width.exit856.thread, %stm32_mdma_get_width.exit.thread, %do.end74, %do.end62
  %retval.0 = phi i32 [ -22, %do.end62 ], [ -22, %do.end605 ], [ 0, %sw.epilog ], [ -22, %do.end74 ], [ -22, %stm32_mdma_get_width.exit.thread ], [ -22, %stm32_mdma_get_width.exit856.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_mdma_dump_hwdesc(ptr nocapture noundef readonly %chan, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body5)) #9
          to label %if.then [label %do.body5], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  %hwdesc_phys = getelementptr inbounds %struct.stm32_mdma_desc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug312, ptr noundef %device.i, ptr noundef nonnull @.str.68, ptr noundef %hwdesc_phys) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body23)) #9
          to label %if.then19 [label %do.body23], !srcloc !265

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i220 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i220 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i220, align 4
  %device.i221 = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug313, ptr noundef %device.i221, ptr noundef nonnull @.str.42, i32 noundef %7) #9
  br label %do.body23

do.body23:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body42)) #9
          to label %if.then37 [label %do.body42], !srcloc !265

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i222 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i222 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i222, align 4
  %device.i223 = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %cbndtr = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cbndtr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cbndtr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug314, ptr noundef %device.i223, ptr noundef nonnull @.str.43, i32 noundef %13) #9
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body61)) #9
          to label %if.then56 [label %do.body61], !srcloc !265

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i224 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i224 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i224, align 4
  %device.i225 = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node, align 4
  %csar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %csar to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csar, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug315, ptr noundef %device.i225, ptr noundef nonnull @.str.44, i32 noundef %19) #9
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body80)) #9
          to label %if.then75 [label %do.body80], !srcloc !265

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i226 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %20 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i226, align 4
  %device.i227 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node, align 4
  %cdar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cdar to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cdar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug316, ptr noundef %device.i227, ptr noundef nonnull @.str.45, i32 noundef %25) #9
  br label %do.body80

do.body80:                                        ; preds = %if.then75, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body99)) #9
          to label %if.then94 [label %do.body99], !srcloc !265

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i228 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i228 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i228, align 4
  %device.i229 = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node, align 4
  %cbrur = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %cbrur to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cbrur, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug317, ptr noundef %device.i229, ptr noundef nonnull @.str.46, i32 noundef %31) #9
  br label %do.body99

do.body99:                                        ; preds = %if.then94, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body118)) #9
          to label %if.then113 [label %do.body118], !srcloc !265

if.then113:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i230 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %32 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i230, align 4
  %device.i231 = getelementptr inbounds %struct.dma_chan_dev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node, align 4
  %clar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %clar to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug318, ptr noundef %device.i231, ptr noundef nonnull @.str.47, i32 noundef %37) #9
  br label %do.body118

do.body118:                                       ; preds = %if.then113, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body137)) #9
          to label %if.then132 [label %do.body137], !srcloc !265

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i232 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %38 = ptrtoint ptr %dev.i232 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i232, align 4
  %device.i233 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %node, align 4
  %ctbr = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %ctbr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctbr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug319, ptr noundef %device.i233, ptr noundef nonnull @.str.48, i32 noundef %43) #9
  br label %do.body137

do.body137:                                       ; preds = %if.then132, %do.body118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.body156)) #9
          to label %if.then151 [label %do.body156], !srcloc !265

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i234 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %44 = ptrtoint ptr %dev.i234 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i234, align 4
  %device.i235 = getelementptr inbounds %struct.dma_chan_dev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node, align 4
  %cmar = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %cmar to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmar, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug320, ptr noundef %device.i235, ptr noundef nonnull @.str.49, i32 noundef %49) #9
  br label %do.body156

do.body156:                                       ; preds = %if.then151, %do.body137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_dump_hwdesc, %do.end174)) #9
          to label %if.then170 [label %do.end174], !srcloc !265

if.then170:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i236 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %50 = ptrtoint ptr %dev.i236 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i236, align 4
  %device.i237 = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %node, align 4
  %cmdr = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %cmdr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmdr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug321, ptr noundef %device.i237, ptr noundef nonnull @.str.69, i32 noundef %55) #9
  br label %do.end174

do.end174:                                        ; preds = %if.then170, %do.body156
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_mdma_xfer_end(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !271

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !272
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %entry
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %completed_cookie.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_mdma_xfer_end, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !265

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %11, ptr noundef nonnull @.str.99, ptr noundef %1, i32 noundef %5) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %13, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node.i, ptr %13, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %desc, align 4
  %busy = getelementptr inbounds %struct.stm32_mdma_chan, ptr %chan, i32 0, i32 7
  %19 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %busy, align 4
  tail call fastcc void @stm32_mdma_start_transfer(ptr noundef %chan)
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
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_pm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nr_channels = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp224.not = icmp eq i32 %3, 0
  br i1 %cmp224.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %base.i = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  br label %for.body

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !264
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %id.025, 6
  %add = add i32 %mul, 76
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !267
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.111, i32 noundef %id.025) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %id.025, 1
  %9 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_channels, align 4
  %cmp2 = icmp ult i32 %inc, %10
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i20 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  %call7 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_pm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_mdma_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.113) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !241, !243, !244, !245, !246, !248, !249, !250}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @__initcall__kmod_stm32_mdma__450_1739_stm32_mdma_init4, !1, !"__initcall__kmod_stm32_mdma__450_1739_stm32_mdma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/stm32-mdma.c", i32 1739, i32 1}
!2 = !{ptr @__UNIQUE_ID_description451, !3, !"__UNIQUE_ID_description451", i1 false, i1 false}
!3 = !{!"../drivers/dma/stm32-mdma.c", i32 1741, i32 1}
!4 = !{ptr @__UNIQUE_ID_author452, !5, !"__UNIQUE_ID_author452", i1 false, i1 false}
!5 = !{!"../drivers/dma/stm32-mdma.c", i32 1742, i32 1}
!6 = !{ptr @__UNIQUE_ID_author453, !7, !"__UNIQUE_ID_author453", i1 false, i1 false}
!7 = !{!"../drivers/dma/stm32-mdma.c", i32 1743, i32 1}
!8 = !{ptr @__UNIQUE_ID_file454, !9, !"__UNIQUE_ID_file454", i1 false, i1 false}
!9 = !{!"../drivers/dma/stm32-mdma.c", i32 1744, i32 1}
!10 = !{ptr @__UNIQUE_ID_license455, !9, !"__UNIQUE_ID_license455", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/stm32-mdma.c", i32 1728, i32 11}
!13 = !{ptr @stm32_mdma_driver, !14, !"stm32_mdma_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/stm32-mdma.c", i32 1725, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/stm32-mdma.c", i32 1521, i32 45}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/stm32-mdma.c", i32 1525, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stm32_mdma_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @stm32_mdma_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/stm32-mdma.c", i32 1529, i32 45}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/stm32-mdma.c", i32 1533, i32 3}
!29 = !{ptr @stm32_mdma_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @stm32_mdma_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/stm32-mdma.c", i32 1537, i32 48}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/stm32-mdma.c", i32 1562, i32 10}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/stm32-mdma.c", i32 1566, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @stm32_mdma_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @stm32_mdma_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/stm32-mdma.c", i32 1631, i32 3}
!42 = !{ptr @stm32_mdma_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @stm32_mdma_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/stm32-mdma.c", i32 1641, i32 3}
!46 = !{ptr @stm32_mdma_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @stm32_mdma_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/stm32-mdma.c", i32 1652, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @stm32_mdma_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @stm32_mdma_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/stm32-mdma.c", i32 1423, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @stm32_mdma_alloc_chan_resources._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @stm32_mdma_alloc_chan_resources._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/stm32-mdma.c", i32 419, i32 4}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @stm32_mdma_disable_chan._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @stm32_mdma_disable_chan._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/stm32-mdma.c", i32 1444, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @stm32_mdma_free_chan_resources.__UNIQUE_ID_ddebug449, !64, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/stm32-mdma.c", i32 441, i32 3}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stm32_mdma_stop.__UNIQUE_ID_ddebug241, !69, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/stm32-mdma.c", i32 1149, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @stm32_mdma_issue_pending.__UNIQUE_ID_ddebug440, !73, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/stm32-mdma.c", i32 1136, i32 2}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @stm32_mdma_start_transfer.__UNIQUE_ID_ddebug439, !77, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/stm32-mdma.c", i32 1065, i32 2}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug429, !81, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/stm32-mdma.c", i32 1067, i32 2}
!86 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug430, !85, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/stm32-mdma.c", i32 1069, i32 2}
!89 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug431, !88, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/stm32-mdma.c", i32 1071, i32 2}
!92 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug432, !91, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/stm32-mdma.c", i32 1073, i32 2}
!95 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug433, !94, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/stm32-mdma.c", i32 1075, i32 2}
!98 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug434, !97, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/stm32-mdma.c", i32 1077, i32 2}
!101 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug435, !100, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/stm32-mdma.c", i32 1079, i32 2}
!104 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug436, !103, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/stm32-mdma.c", i32 1081, i32 2}
!107 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug437, !106, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma/stm32-mdma.c", i32 1083, i32 2}
!110 = !{ptr @stm32_mdma_dump_reg.__UNIQUE_ID_ddebug438, !109, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/stm32-mdma.c", i32 766, i32 3}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @stm32_mdma_prep_slave_sg._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @stm32_mdma_prep_slave_sg._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/dma/stm32-mdma.c", i32 331, i32 2}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @stm32_mdma_alloc_desc._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @stm32_mdma_alloc_desc._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/stm32-mdma.c", i32 711, i32 4}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @stm32_mdma_setup_xfer._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @stm32_mdma_setup_xfer._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/stm32-mdma.c", i32 510, i32 3}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @stm32_mdma_set_xfer_param._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @stm32_mdma_set_xfer_param._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/dma/stm32-mdma.c", i32 518, i32 3}
!133 = !{ptr @stm32_mdma_set_xfer_param._entry.59, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @stm32_mdma_set_xfer_param._entry_ptr.61, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/dma/stm32-mdma.c", i32 634, i32 3}
!137 = !{ptr @stm32_mdma_set_xfer_param._entry.62, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @stm32_mdma_set_xfer_param._entry_ptr.64, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/dma/stm32-mdma.c", i32 361, i32 3}
!141 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @stm32_mdma_get_width._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @stm32_mdma_get_width._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/dma/stm32-mdma.c", i32 648, i32 2}
!146 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug312, !145, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!148 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug313, !149, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!149 = !{!"../drivers/dma/stm32-mdma.c", i32 649, i32 2}
!150 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug314, !151, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!151 = !{!"../drivers/dma/stm32-mdma.c", i32 650, i32 2}
!152 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug315, !153, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!153 = !{!"../drivers/dma/stm32-mdma.c", i32 651, i32 2}
!154 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug316, !155, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!155 = !{!"../drivers/dma/stm32-mdma.c", i32 652, i32 2}
!156 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug317, !157, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!157 = !{!"../drivers/dma/stm32-mdma.c", i32 653, i32 2}
!158 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug318, !159, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!159 = !{!"../drivers/dma/stm32-mdma.c", i32 654, i32 2}
!160 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug319, !161, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!161 = !{!"../drivers/dma/stm32-mdma.c", i32 655, i32 2}
!162 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug320, !163, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!163 = !{!"../drivers/dma/stm32-mdma.c", i32 656, i32 2}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/dma/stm32-mdma.c", i32 657, i32 2}
!166 = !{ptr @stm32_mdma_dump_hwdesc.__UNIQUE_ID_ddebug321, !165, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/dma/stm32-mdma.c", i32 811, i32 3}
!169 = !{ptr @stm32_mdma_prep_dma_cyclic._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @stm32_mdma_prep_dma_cyclic._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/dma/stm32-mdma.c", i32 817, i32 3}
!173 = !{ptr @stm32_mdma_prep_dma_cyclic._entry.71, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @stm32_mdma_prep_dma_cyclic._entry_ptr.73, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/dma/stm32-mdma.c", i32 822, i32 3}
!177 = !{ptr @stm32_mdma_prep_dma_cyclic._entry.74, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @stm32_mdma_prep_dma_cyclic._entry_ptr.76, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/dma/stm32-mdma.c", i32 903, i32 3}
!181 = !{ptr @stm32_mdma_prep_dma_memcpy._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @stm32_mdma_prep_dma_memcpy._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/dma/stm32-mdma.c", i32 1169, i32 3}
!185 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @stm32_mdma_pause.__UNIQUE_ID_ddebug441, !184, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/dma/stm32-mdma.c", i32 1206, i32 2}
!189 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @stm32_mdma_resume.__UNIQUE_ID_ddebug442, !188, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/dma/stm32-mdma.c", i32 1330, i32 4}
!193 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @stm32_mdma_irq_handler.__UNIQUE_ID_ddebug448, !192, !"__UNIQUE_ID_ddebug448", i1 false, i1 false}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/dma/stm32-mdma.c", i32 1343, i32 3}
!197 = !{ptr @stm32_mdma_irq_handler._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @stm32_mdma_irq_handler._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/dma/stm32-mdma.c", i32 1357, i32 3}
!201 = !{ptr @stm32_mdma_irq_handler._entry.85, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @stm32_mdma_irq_handler._entry_ptr.87, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/dma/stm32-mdma.c", i32 1366, i32 3}
!205 = !{ptr @stm32_mdma_irq_handler._entry.88, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @stm32_mdma_irq_handler._entry_ptr.90, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/dma/stm32-mdma.c", i32 1401, i32 3}
!209 = !{ptr @stm32_mdma_irq_handler._entry.91, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @stm32_mdma_irq_handler._entry_ptr.93, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/dma/stm32-mdma.c", i32 1403, i32 4}
!213 = !{ptr @stm32_mdma_irq_handler._entry.94, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @stm32_mdma_irq_handler._entry_ptr.96, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!217 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !216, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/dma/stm32-mdma.c", i32 1468, i32 3}
!222 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @stm32_mdma_of_xlate._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @stm32_mdma_of_xlate._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/dma/stm32-mdma.c", i32 1479, i32 3}
!227 = !{ptr @stm32_mdma_of_xlate._entry.102, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @stm32_mdma_of_xlate._entry_ptr.104, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/dma/stm32-mdma.c", i32 1484, i32 3}
!231 = !{ptr @stm32_mdma_of_xlate._entry.105, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @stm32_mdma_of_xlate._entry_ptr.107, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/dma/stm32-mdma.c", i32 1490, i32 3}
!235 = !{ptr @stm32_mdma_of_xlate._entry.108, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @stm32_mdma_of_xlate._entry_ptr.110, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @stm32_mdma_of_match, !238, !"stm32_mdma_of_match", i1 false, i1 false}
!238 = !{!"../drivers/dma/stm32-mdma.c", i32 1500, i32 34}
!239 = !{ptr @stm32_mdma_pm_ops, !240, !"stm32_mdma_pm_ops", i1 false, i1 false}
!240 = !{!"../drivers/dma/stm32-mdma.c", i32 1719, i32 32}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/dma/stm32-mdma.c", i32 1701, i32 4}
!243 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @stm32_mdma_pm_suspend._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @stm32_mdma_pm_suspend._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.113, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/stm32-mdma.c", i32 1679, i32 3}
!248 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @stm32_mdma_runtime_resume._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @stm32_mdma_runtime_resume._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{!"auto-init"}
!261 = !{i64 2148347306, i64 2148347332, i64 2148347361, i64 2148347395, i64 2148347426, i64 2148347449}
!262 = !{i64 2148346725}
!263 = !{i64 831548, i64 831573, i64 831595, i64 831611, i64 831623, i64 831643, i64 831667, i64 831683, i64 831695}
!264 = !{i64 2148346913}
!265 = !{i64 2148801791, i64 2148801796, i64 2148801809, i64 2148801853, i64 2148801887, i64 2148801908}
!266 = !{i8 0, i8 2}
!267 = !{i64 6382738}
!268 = !{i64 6382320}
!269 = !{i64 2154534750}
!270 = !{i32 0, i32 33}
!271 = !{!"branch_weights", i32 1, i32 2000}
!272 = !{i64 2154533250, i64 2154533737, i64 2154533287, i64 2154533343, i64 2154533377, i64 2154533401, i64 2154533442, i64 2154533463, i64 2154533491, i64 2154533525}
