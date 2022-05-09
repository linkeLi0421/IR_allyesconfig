; ModuleID = '/llk/IR_all_yes/drivers/dma/stm32-dma.c_pt.bc'
source_filename = "../drivers/dma/stm32-dma.c"
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
%struct.stm32_dma_device = type { %struct.dma_device, ptr, ptr, i8, [8 x %struct.stm32_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.stm32_dma_chan = type { %struct.virt_dma_chan, i8, i8, i32, i32, ptr, i32, %struct.dma_slave_config, %struct.stm32_dma_chan_reg, i32, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.stm32_dma_chan_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.stm32_dma_desc = type { %struct.virt_dma_desc, i8, i32, [0 x %struct.stm32_dma_sg_req] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.stm32_dma_sg_req = type { i32, %struct.stm32_dma_chan_reg }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_stm32_dma__255_1533_stm32_dma_init4 = internal global ptr @stm32_dma_init, section ".initcall4.init", align 4
@stm32_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_dma_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-dma\00", [22 x i8] zeroinitializer }, align 32
@stm32_dma_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_dma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dma_suspend, ptr @stm32_dma_resume, ptr @stm32_dma_suspend, ptr @stm32_dma_resume, ptr @stm32_dma_suspend, ptr @stm32_dma_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dma_runtime_suspend, ptr @stm32_dma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_dma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/dma/stm32-dma.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_dma_probe._entry_ptr = internal global ptr @stm32_dma_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Can't get clock\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_dma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_prep_enable error: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_dma_probe._entry_ptr.9 = internal global ptr @stm32_dma_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,mem2mem\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_dma_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"request_irq failed with err %d channel %d\0A\00", [53 x i8] zeroinitializer }, align 32
@stm32_dma_probe._entry_ptr.13 = internal global ptr @stm32_dma_probe._entry.11, section ".printk_index", align 4
@stm32_dma_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"STM32 DMA DMA OF registration failed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@stm32_dma_probe._entry_ptr.16 = internal global ptr @stm32_dma_probe._entry.14, section ".printk_index", align 4
@stm32_dma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1446, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"STM32 DMA driver registered\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_dma_probe._entry_ptr.20 = internal global ptr @stm32_dma_probe._entry.17, section ".printk_index", align 4
@stm32_dma_free_chan_resources.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 1, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32_dma\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stm32_dma_free_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Freeing channel %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_dma_stop.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32_dma_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): clearing interrupt: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32_dma_issue_pending.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_dma_issue_pending\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vchan %pK: issued\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_dma_start_transfer.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_dma_start_transfer\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vchan %pK: started\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 -102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_dma_configure_next_sg\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CT=1 <=> SM0AR: 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 0, i8 -101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CT=0 <=> SM1AR: 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_dma_dump_reg.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_dma_dump_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SCR:   0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_dma_dump_reg.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 0, i8 -124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NDTR:  0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_dma_dump_reg.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.33, ptr @.str.3, ptr @.str.36, i8 0, i8 -123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPAR:  0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_dma_dump_reg.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.33, ptr @.str.3, ptr @.str.37, i8 0, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SM0AR: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_dma_dump_reg.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.33, ptr @.str.3, ptr @.str.38, i8 0, i8 -123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SM1AR: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_dma_dump_reg.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.33, ptr @.str.3, ptr @.str.39, i8 0, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SFCR:  0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 879, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dma channel is not configured\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_dma_prep_slave_sg\00", [40 x i8] zeroinitializer }, align 32
@stm32_dma_prep_slave_sg._entry_ptr = internal global ptr @stm32_dma_prep_slave_sg._entry, section ".printk_index", align 4
@stm32_dma_prep_slave_sg._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 884, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid segment length %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_dma_prep_slave_sg._entry_ptr.44 = internal global ptr @stm32_dma_prep_slave_sg._entry.42, section ".printk_index", align 4
@stm32_dma_prep_slave_sg._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nb items not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_dma_prep_slave_sg._entry_ptr.47 = internal global ptr @stm32_dma_prep_slave_sg._entry.45, section ".printk_index", align 4
@stm32_dma_set_xfer_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dma direction is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_dma_set_xfer_param\00", [39 x i8] zeroinitializer }, align 32
@stm32_dma_set_xfer_param._entry_ptr = internal global ptr @stm32_dma_set_xfer_param._entry, section ".printk_index", align 4
@stm32_dma_get_width._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dma bus width not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_dma_get_width\00", [44 x i8] zeroinitializer }, align 32
@stm32_dma_get_width._entry_ptr = internal global ptr @stm32_dma_get_width._entry, section ".printk_index", align 4
@stm32_dma_get_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dma burst size not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_dma_get_burst\00", [44 x i8] zeroinitializer }, align 32
@stm32_dma_get_burst._entry_ptr = internal global ptr @stm32_dma_get_burst._entry, section ".printk_index", align 4
@stm32_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 944, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid buffer/period len\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_dma_prep_dma_cyclic\00", [38 x i8] zeroinitializer }, align 32
@stm32_dma_prep_dma_cyclic._entry_ptr = internal global ptr @stm32_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@stm32_dma_prep_dma_cyclic._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.55, ptr @.str.3, i32 949, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stm32_dma_prep_dma_cyclic._entry_ptr.57 = internal global ptr @stm32_dma_prep_dma_cyclic._entry.56, section ".printk_index", align 4
@stm32_dma_prep_dma_cyclic._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"buf_len not multiple of period_len\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_dma_prep_dma_cyclic._entry_ptr.60 = internal global ptr @stm32_dma_prep_dma_cyclic._entry.58, section ".printk_index", align 4
@stm32_dma_prep_dma_cyclic._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.3, i32 965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Request not allowed when dma busy\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_dma_prep_dma_cyclic._entry_ptr.63 = internal global ptr @stm32_dma_prep_dma_cyclic._entry.61, section ".printk_index", align 4
@stm32_dma_prep_dma_cyclic._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.55, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"number of items not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_dma_prep_dma_cyclic._entry_ptr.66 = internal global ptr @stm32_dma_prep_dma_cyclic._entry.64, section ".printk_index", align 4
@stm32_dma_chan_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 664, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FIFO Error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_dma_chan_irq\00", [45 x i8] zeroinitializer }, align 32
@stm32_dma_chan_irq._entry_ptr = internal global ptr @stm32_dma_chan_irq._entry, section ".printk_index", align 4
@stm32_dma_chan_irq.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FIFO over/underrun\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_dma_chan_irq.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.68, ptr @.str.3, ptr @.str.70, i8 0, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Direct mode overrun\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_dma_chan_irq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.68, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DMA error: status=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_dma_chan_irq._entry_ptr.73 = internal global ptr @stm32_dma_chan_irq._entry.71, section ".printk_index", align 4
@stm32_dma_chan_irq._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.68, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chan disabled by HW\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_dma_chan_irq._entry_ptr.76 = internal global ptr @stm32_dma_chan_irq._entry.74, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.77, ptr @.str.78, ptr @.str.79, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_dma_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad number of cells\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_dma_of_xlate\00", [45 x i8] zeroinitializer }, align 32
@stm32_dma_of_xlate._entry_ptr = internal global ptr @stm32_dma_of_xlate._entry, section ".printk_index", align 4
@stm32_dma_of_xlate._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 1294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bad channel and/or request id\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_dma_of_xlate._entry_ptr.84 = internal global ptr @stm32_dma_of_xlate._entry.82, section ".printk_index", align 4
@stm32_dma_of_xlate._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.3, i32 1302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No more channels available\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_dma_of_xlate._entry_ptr.87 = internal global ptr @stm32_dma_of_xlate._entry.85, section ".printk_index", align 4
@stm32_dma_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 1496, ptr @.str.90, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Suspend is prevented by Chan %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_dma_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_dma_suspend._entry_ptr = internal global ptr @stm32_dma_suspend._entry, section ".printk_index", align 4
@stm32_dma_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_dma_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@stm32_dma_runtime_resume._entry_ptr = internal global ptr @stm32_dma_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 16]
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"stm32_dma_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1520, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1522, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"stm32_dma_of_match\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1311, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"stm32_dma_pm_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1514, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1329, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1346, i32 58 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1350, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1355, i32 7 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1424, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1434, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1446, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1234, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 482, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 707, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 596, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 617, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 622, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 530, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 531, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 532, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 533, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 534, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 535, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 879, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 884, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 909, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 846, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 263, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 363, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 944, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 949, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 954, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 965, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 976, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 664, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 666, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 673, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 690, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 692, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 101, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1283, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1294, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1302, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1496, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.376 = private constant [27 x i8] c"../drivers/dma/stm32-dma.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1475, i32 3 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__initcall__kmod_stm32_dma__255_1533_stm32_dma_init4, ptr @stm32_dma_chan_irq._entry, ptr @stm32_dma_chan_irq._entry.71, ptr @stm32_dma_chan_irq._entry.74, ptr @stm32_dma_chan_irq._entry_ptr, ptr @stm32_dma_chan_irq._entry_ptr.73, ptr @stm32_dma_chan_irq._entry_ptr.76, ptr @stm32_dma_get_burst._entry, ptr @stm32_dma_get_burst._entry_ptr, ptr @stm32_dma_get_width._entry, ptr @stm32_dma_get_width._entry_ptr, ptr @stm32_dma_of_xlate._entry, ptr @stm32_dma_of_xlate._entry.82, ptr @stm32_dma_of_xlate._entry.85, ptr @stm32_dma_of_xlate._entry_ptr, ptr @stm32_dma_of_xlate._entry_ptr.84, ptr @stm32_dma_of_xlate._entry_ptr.87, ptr @stm32_dma_prep_dma_cyclic._entry, ptr @stm32_dma_prep_dma_cyclic._entry.56, ptr @stm32_dma_prep_dma_cyclic._entry.58, ptr @stm32_dma_prep_dma_cyclic._entry.61, ptr @stm32_dma_prep_dma_cyclic._entry.64, ptr @stm32_dma_prep_dma_cyclic._entry_ptr, ptr @stm32_dma_prep_dma_cyclic._entry_ptr.57, ptr @stm32_dma_prep_dma_cyclic._entry_ptr.60, ptr @stm32_dma_prep_dma_cyclic._entry_ptr.63, ptr @stm32_dma_prep_dma_cyclic._entry_ptr.66, ptr @stm32_dma_prep_slave_sg._entry, ptr @stm32_dma_prep_slave_sg._entry.42, ptr @stm32_dma_prep_slave_sg._entry.45, ptr @stm32_dma_prep_slave_sg._entry_ptr, ptr @stm32_dma_prep_slave_sg._entry_ptr.44, ptr @stm32_dma_prep_slave_sg._entry_ptr.47, ptr @stm32_dma_probe._entry, ptr @stm32_dma_probe._entry.11, ptr @stm32_dma_probe._entry.14, ptr @stm32_dma_probe._entry.17, ptr @stm32_dma_probe._entry.7, ptr @stm32_dma_probe._entry_ptr, ptr @stm32_dma_probe._entry_ptr.13, ptr @stm32_dma_probe._entry_ptr.16, ptr @stm32_dma_probe._entry_ptr.20, ptr @stm32_dma_probe._entry_ptr.9, ptr @stm32_dma_runtime_resume._entry, ptr @stm32_dma_runtime_resume._entry_ptr, ptr @stm32_dma_set_xfer_param._entry, ptr @stm32_dma_set_xfer_param._entry_ptr, ptr @stm32_dma_suspend._entry, ptr @stm32_dma_suspend._entry_ptr, ptr @stm32_dma_driver, ptr @.str, ptr @stm32_dma_of_match, ptr @stm32_dma_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_slave_sg._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_slave_sg._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_set_xfer_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_get_width._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_get_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_dma_cyclic._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_dma_cyclic._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_dma_cyclic._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_prep_dma_cyclic._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_chan_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_chan_irq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_chan_irq._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_of_xlate._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_of_xlate._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @stm32_dma_of_match, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2776, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call7) #9
  %base = getelementptr inbounds %struct.stm32_dma_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.stm32_dma_device, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call17, ptr %clk, align 4
  %cmp.i209 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call17 to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call.i210 = tail call i32 @clk_prepare(ptr noundef %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool.not.i = icmp eq i32 %call.i210, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.clk_prepare_enable.exit_crit_edge

if.end25.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end33_crit_edge, label %if.then3.i

if.end.i.if.end33_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call17) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end25.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i210, %if.end25.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end31, label %clk_prepare_enable.exit.if.end33_crit_edge

clk_prepare_enable.exit.if.end33_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end31:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i) #12
  br label %cleanup

if.end33:                                         ; preds = %clk_prepare_enable.exit.if.end33_crit_edge, %if.end.i.if.end33_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i211 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i211, null
  %mem2mem = getelementptr inbounds %struct.stm32_dma_device, ptr %call.i, i32 0, i32 3
  %frombool = zext i1 %tobool.i to i8
  %6 = ptrtoint ptr %mem2mem to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %mem2mem, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %cmp.i212 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end33
  %cmp41 = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp41, label %if.then39.clk_free_crit_edge, label %if.then39.if.end46_crit_edge

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then39.clk_free_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_free

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496) #9
  %call45 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #9
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then39.if.end46_crit_edge
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %8 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i213 = icmp eq ptr %9, null
  br i1 %tobool.not.i213, label %if.end46.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end46.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65520, ptr %9, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end46.dma_set_max_seg_size.exit_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %11 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @stm32_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %12 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @stm32_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %13 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @stm32_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %14 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @stm32_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %15 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @stm32_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %16 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @stm32_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %17 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @stm32_dma_slave_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @stm32_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %19 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @stm32_dma_synchronize, ptr %device_synchronize, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 22, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %21 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 22, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %22 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %23 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %residue_granularity, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %copy_align, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 23
  %25 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %max_burst, align 4
  %descriptor_reuse = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 25
  %26 = ptrtoint ptr %descriptor_reuse to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %descriptor_reuse, align 4
  %dev52 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %27 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dev52, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %channels, ptr %prev.i, align 4
  %30 = ptrtoint ptr %mem2mem to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mem2mem, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool54.not = icmp eq i8 %31, 0
  br i1 %tobool54.not, label %dma_set_max_seg_size.exit.if.end58_crit_edge, label %if.then55

dma_set_max_seg_size.exit.if.end58_crit_edge:     ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then55:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %32 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @stm32_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %33 = ptrtoint ptr %directions to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %directions, align 4
  %or = or i32 %34, 1
  store i32 %or, ptr %directions, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %dma_set_max_seg_size.exit.if.end58_crit_edge
  %arrayidx = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 0
  %id = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %35 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %id, align 4
  %desc_free = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @stm32_dma_desc_free, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %call.i) #9
  %arrayidx.1 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 1
  %id.1 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 1, i32 3
  %37 = ptrtoint ptr %id.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %id.1, align 4
  %desc_free.1 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %desc_free.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @stm32_dma_desc_free, ptr %desc_free.1, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.1, ptr noundef nonnull %call.i) #9
  %arrayidx.2 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 2
  %id.2 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 2, i32 3
  %39 = ptrtoint ptr %id.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %id.2, align 4
  %desc_free.2 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 2, i32 0, i32 2
  %40 = ptrtoint ptr %desc_free.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @stm32_dma_desc_free, ptr %desc_free.2, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.2, ptr noundef nonnull %call.i) #9
  %arrayidx.3 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 3
  %id.3 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 3, i32 3
  %41 = ptrtoint ptr %id.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %id.3, align 4
  %desc_free.3 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 3, i32 0, i32 2
  %42 = ptrtoint ptr %desc_free.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @stm32_dma_desc_free, ptr %desc_free.3, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.3, ptr noundef nonnull %call.i) #9
  %arrayidx.4 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 4
  %id.4 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 4, i32 3
  %43 = ptrtoint ptr %id.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %id.4, align 4
  %desc_free.4 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 4, i32 0, i32 2
  %44 = ptrtoint ptr %desc_free.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @stm32_dma_desc_free, ptr %desc_free.4, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.4, ptr noundef nonnull %call.i) #9
  %arrayidx.5 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 5
  %id.5 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 5, i32 3
  %45 = ptrtoint ptr %id.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 5, ptr %id.5, align 4
  %desc_free.5 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 5, i32 0, i32 2
  %46 = ptrtoint ptr %desc_free.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @stm32_dma_desc_free, ptr %desc_free.5, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.5, ptr noundef nonnull %call.i) #9
  %arrayidx.6 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 6
  %id.6 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 6, i32 3
  %47 = ptrtoint ptr %id.6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 6, ptr %id.6, align 4
  %desc_free.6 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 6, i32 0, i32 2
  %48 = ptrtoint ptr %desc_free.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @stm32_dma_desc_free, ptr %desc_free.6, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.6, ptr noundef nonnull %call.i) #9
  %arrayidx.7 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 7
  %id.7 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 7, i32 3
  %49 = ptrtoint ptr %id.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %id.7, align 4
  %desc_free.7 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 7, i32 0, i32 2
  %50 = ptrtoint ptr %desc_free.7 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @stm32_dma_desc_free, ptr %desc_free.7, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.7, ptr noundef nonnull %call.i) #9
  %call62 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end58.for.body68_crit_edge, label %if.end58.clk_free_crit_edge

if.end58.clk_free_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_free

if.end58.for.body68_crit_edge:                    ; preds = %if.end58
  br label %for.body68

for.body68:                                       ; preds = %for.inc87.for.body68_crit_edge, %if.end58.for.body68_crit_edge
  %i.1226 = phi i32 [ %inc88, %for.inc87.for.body68_crit_edge ], [ 0, %if.end58.for.body68_crit_edge ]
  %call71 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.1226) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %for.body68.err_unregister_crit_edge, label %if.end74

for.body68.err_unregister_crit_edge:              ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister

if.end74:                                         ; preds = %for.body68
  %arrayidx70 = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 %i.1226
  %irq = getelementptr %struct.stm32_dma_device, ptr %call.i, i32 0, i32 4, i32 %i.1226, i32 4
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call71, ptr %irq, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx70, i32 0, i32 5
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i214 = icmp eq ptr %55, null
  br i1 %tobool.not.i214, label %if.end.i215, label %if.end74.dev_name.exit_crit_edge

if.end74.dev_name.exit_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i215:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device.i, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i215, %if.end74.dev_name.exit_crit_edge
  %retval.0.i216 = phi ptr [ %57, %if.end.i215 ], [ %55, %if.end74.dev_name.exit_crit_edge ]
  %call.i217 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call71, ptr noundef nonnull @stm32_dma_chan_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i216, ptr noundef %arrayidx70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool80.not = icmp eq i32 %call.i217, 0
  br i1 %tobool80.not, label %for.inc87, label %do.end84

do.end84:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i217, i32 noundef %i.1226) #12
  br label %err_unregister

for.inc87:                                        ; preds = %dev_name.exit
  %inc88 = add nuw nsw i32 %i.1226, 1
  %exitcond.not = icmp eq i32 %inc88, 8
  br i1 %exitcond.not, label %for.end89, label %for.inc87.for.body68_crit_edge

for.inc87.for.body68_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

for.end89:                                        ; preds = %for.inc87
  %58 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node, align 8
  %call92 = tail call i32 @of_dma_controller_register(ptr noundef %59, ptr noundef nonnull @stm32_dma_of_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end97, label %if.end99

do.end97:                                         ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call92) #12
  br label %err_unregister

if.end99:                                         ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i218 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !188
  %call.i219 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %cleanup

err_unregister:                                   ; preds = %do.end97, %do.end84, %for.body68.err_unregister_crit_edge
  %ret.0 = phi i32 [ %call.i217, %do.end84 ], [ %call92, %do.end97 ], [ %call71, %for.body68.err_unregister_crit_edge ]
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #9
  br label %clk_free

clk_free:                                         ; preds = %err_unregister, %if.end58.clk_free_crit_edge, %if.then39.clk_free_crit_edge
  %ret.1 = phi i32 [ -517, %if.then39.clk_free_crit_edge ], [ %call62, %if.end58.clk_free_crit_edge ], [ %ret.0, %err_unregister ]
  %62 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %63) #9
  tail call void @clk_unprepare(ptr noundef %63) #9
  br label %cleanup

cleanup:                                          ; preds = %clk_free, %if.end99, %do.end31, %if.then20, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %if.then12 ], [ %call24, %if.then20 ], [ %retval.0.i, %do.end31 ], [ %ret.1, %clk_free ], [ 0, %if.end99 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_alloc_chan_resources(ptr nocapture noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %config_init = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %config_init to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %config_init, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !190
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !191
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @stm32_dma_disable_chan(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dma_free_chan_resources(ptr noundef %c) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_free_chan_resources.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_free_chan_resources, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %id = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_free_chan_resources.__UNIQUE_ID_ddebug254, ptr noundef %device.i, ptr noundef nonnull @.str.23, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %busy = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 2
  %6 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %busy, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %do.end.if.end20_crit_edge, label %do.body10

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @stm32_dma_stop(ptr noundef %c)
  %desc = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 5
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  br label %if.end20

if.end20:                                         ; preds = %do.body10, %do.end.if.end20_crit_edge
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %11 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %head.i, ptr %head.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head.i, ptr %11, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %14 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %15, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end20.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end20.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %15, ptr %17, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %head.i, ptr %19, align 4
  store ptr %19, ptr %11, align 4
  %23 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end20.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %24 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %25, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i12.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %27, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %head.i, ptr %29, align 4
  store ptr %29, ptr %11, align 4
  %33 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %34 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %35, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %11, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i18.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %35, ptr %37, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %head.i, ptr %39, align 4
  store ptr %39, ptr %11, align 4
  %43 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %44 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %45, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %11, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i24.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %47, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %head.i, ptr %49, align 4
  store ptr %49, ptr %11, align 4
  %53 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %54 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %55, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %11, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i30.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %55, ptr %57, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %head.i, ptr %59, align 4
  store ptr %59, ptr %11, align 4
  %63 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %64 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %64)
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
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %66, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %67 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %67)
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
  %chan_reg = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8
  %68 = call ptr @memset(ptr %chan_reg, i32 0, i32 44)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_tx_status(ptr noundef %c, i32 noundef %cookie, ptr noundef writeonly %state) #2 align 64 {
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !193
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
  %brmerge54 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge54, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

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
  %desc = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #11
  %next_sg = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 6
  %12 = ptrtoint ptr %next_sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_sg, align 4
  %call18 = tail call fastcc i32 @stm32_dma_desc_residue(ptr noundef %c, ptr noundef nonnull %9, i32 noundef %13)
  br label %dma_set_residue.exit

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body2.if.else_crit_edge
  %tobool19.not = icmp eq ptr %call9, null
  br i1 %tobool19.not, label %if.else.dma_set_residue.exit_crit_edge, label %if.then20

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call fastcc i32 @stm32_dma_desc_residue(ptr noundef %c, ptr noundef nonnull %call9, i32 noundef 0)
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then20, %if.else.dma_set_residue.exit_crit_edge, %if.then16
  %residue.0 = phi i32 [ %call18, %if.then16 ], [ %call22, %if.then20 ], [ 0, %if.else.dma_set_residue.exit_crit_edge ]
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %residue.0, ptr %residue1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i53.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i53 = zext i1 %retval.0.i.i53.shrunk to i32
  ret i32 %retval.0.i.i53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dma_issue_pending(ptr noundef %c) #2 align 64 {
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end23_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end23_crit_edge:      ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 5
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true9, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true9:                                   ; preds = %land.lhs.true
  %busy = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 2
  %14 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %busy, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %do.body11, label %land.lhs.true9.if.end23_crit_edge

land.lhs.true9.if.end23_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body11:                                        ; preds = %land.lhs.true9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_issue_pending.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_issue_pending, %do.end22)) #9
          to label %if.then18 [label %do.end22], !srcloc !192

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_issue_pending.__UNIQUE_ID_ddebug251, ptr noundef %device.i, ptr noundef nonnull @.str.27, ptr noundef %c) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body11
  tail call fastcc void @stm32_dma_start_transfer(ptr noundef %c)
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %land.lhs.true9.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %vchan_issue_pending.exit.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_dma_prep_slave_sg(ptr noundef %c, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %buswidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buswidth) #9
  %0 = ptrtoint ptr %buswidth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buswidth, align 4, !annotation !194
  %config_init = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 1
  %1 = ptrtoint ptr %config_init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %config_init, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp = icmp eq i32 %sg_len, 0
  br i1 %cmp, label %do.end5, label %if.end8.i.i

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i116 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i116 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i116, align 4
  %device.i117 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i117, ptr noundef nonnull @.str.43, i32 noundef 0) #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sg_len, i32 44) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 124) #9
  %retval.0.i = select i1 %8, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #13
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end12

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i.i
  %device_fc = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 7, i32 9
  %10 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %device_fc, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  %dma_scr16 = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %dma_scr16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_scr16, align 4
  %and = and i32 %13, -33
  %masksel = select i1 %tobool13.not, i32 0, i32 32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %dma_scr16, align 4
  %dma_scr38 = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 4
  %dma_sfcr = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 9
  %dma_spar = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %if.end12
  %i.0122 = phi i32 [ 0, %if.end12 ], [ %inc, %if.end33.for.body_crit_edge ]
  %sg.0121 = phi ptr [ %sgl, %if.end12 ], [ %call64, %if.end33.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0121, i32 0, i32 4
  %14 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0121, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  %call19 = call fastcc i32 @stm32_dma_set_xfer_param(ptr noundef %c, i32 noundef %direction, ptr noundef nonnull %buswidth, i32 noundef %15, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %for.body.err_crit_edge, label %if.end22

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end22:                                         ; preds = %for.body
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  %arrayidx = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %buswidth to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buswidth, align 4
  %div = udiv i32 %19, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 65520, i32 %div)
  %cmp27 = icmp ugt i32 %div, 65520
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i118 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %23 = ptrtoint ptr %dev.i118 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i118, align 4
  %device.i119 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i119, ptr noundef nonnull @.str.46) #12
  br label %err

if.end33:                                         ; preds = %if.end22
  %chan_reg36 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122, i32 1
  %25 = call ptr @memset(ptr %chan_reg36, i32 0, i32 40)
  %26 = ptrtoint ptr %dma_scr38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_scr38, align 4
  %dma_scr42 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122, i32 1, i32 4
  %28 = ptrtoint ptr %dma_scr42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dma_scr42, align 4
  %29 = ptrtoint ptr %dma_sfcr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_sfcr, align 4
  %dma_sfcr47 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122, i32 1, i32 9
  %31 = ptrtoint ptr %dma_sfcr47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dma_sfcr47, align 4
  %32 = ptrtoint ptr %dma_spar to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_spar, align 4
  %dma_spar52 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122, i32 1, i32 6
  %34 = ptrtoint ptr %dma_spar52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dma_spar52, align 4
  %35 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_address, align 4
  %dma_sm0ar = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122, i32 1, i32 7
  %37 = ptrtoint ptr %dma_sm0ar to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %dma_sm0ar, align 4
  %38 = load i32, ptr %dma_address, align 4
  %dma_sm1ar = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122, i32 1, i32 8
  %39 = ptrtoint ptr %dma_sm1ar to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dma_sm1ar, align 4
  %dma_sndtr = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0122, i32 1, i32 5
  %40 = ptrtoint ptr %dma_sndtr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div, ptr %dma_sndtr, align 4
  %inc = add nuw i32 %i.0122, 1
  %call64 = tail call ptr @sg_next(ptr noundef %sg.0121) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end33
  %num_sgs = getelementptr inbounds %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %num_sgs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sg_len, ptr %num_sgs, align 8
  %cyclic = getelementptr inbounds %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cyclic, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %49, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %node.i, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i, align 16
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %node.i, ptr %49, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

err:                                              ; preds = %do.end31, %for.body.err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %vchan_tx_prep.exit, %if.end8.i.i.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi ptr [ null, %do.end5 ], [ null, %err ], [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buswidth) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_dma_prep_dma_cyclic(ptr noundef %c, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  %buswidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buswidth) #9
  %0 = ptrtoint ptr %buswidth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buswidth, align 4, !annotation !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool.not = icmp eq i32 %buf_len, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool1.not = icmp eq i32 %period_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %config_init = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %config_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config_init, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i134 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i134, align 4
  %device.i135 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i135, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %div42 = udiv i32 %buf_len, %period_len
  %7 = mul i32 %div42, %period_len
  %rem.decomposed = sub i32 %buf_len, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool10.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i136 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i136, align 4
  %device.i137 = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i137, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %busy = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 2
  %10 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %busy, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i138 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i138 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i138, align 4
  %device.i139 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i139, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = call fastcc i32 @stm32_dma_set_xfer_param(ptr noundef %c, i32 noundef %direction, ptr noundef nonnull %buswidth, i32 noundef %period_len, i32 noundef %buf_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %buswidth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buswidth, align 4
  %div = udiv i32 %period_len, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65520, i32 %div)
  %cmp27 = icmp ugt i32 %div, 65520
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i140 = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i140 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i140, align 4
  %device.i141 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i141, ptr noundef nonnull @.str.65) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_len, i32 %period_len)
  %cmp34 = icmp eq i32 %buf_len, %period_len
  %dma_scr = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %dma_scr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_scr, align 4
  %. = select i1 %cmp34, i32 256, i32 262144
  %dma_scr41 = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 4
  %.masked = and i32 %19, -33
  %and = or i32 %.masked, %.
  %20 = ptrtoint ptr %dma_scr41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %dma_scr41, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div42, i32 44) #9
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %23, i32 124) #9
  %retval.0.i = select i1 %22, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #13
  %tobool45.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool45.not, label %if.end33.cleanup_crit_edge, label %for.cond.preheader

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp48142.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp48142.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %24 = ptrtoint ptr %dma_scr41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_scr41, align 4
  %dma_sfcr = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 9
  %26 = ptrtoint ptr %dma_sfcr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_sfcr, align 4
  %dma_spar = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %dma_spar to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_spar, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div42, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %buf_addr.addr.0143 = phi i32 [ %buf_addr, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %period_len, ptr %arrayidx, align 4
  %chan_reg51 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144, i32 1
  %31 = call ptr @memset(ptr %chan_reg51, i32 0, i32 40)
  %dma_scr57 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144, i32 1, i32 4
  %32 = ptrtoint ptr %dma_scr57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %dma_scr57, align 4
  %dma_sfcr62 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144, i32 1, i32 9
  %33 = ptrtoint ptr %dma_sfcr62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %27, ptr %dma_sfcr62, align 4
  %dma_spar67 = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144, i32 1, i32 6
  %34 = ptrtoint ptr %dma_spar67 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %dma_spar67, align 4
  %dma_sm0ar = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144, i32 1, i32 7
  %35 = ptrtoint ptr %dma_sm0ar to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %buf_addr.addr.0143, ptr %dma_sm0ar, align 4
  %dma_sm1ar = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144, i32 1, i32 8
  %36 = ptrtoint ptr %dma_sm1ar to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %buf_addr.addr.0143, ptr %dma_sm1ar, align 4
  %dma_sndtr = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.0144, i32 1, i32 5
  %37 = ptrtoint ptr %dma_sndtr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %dma_sndtr, align 4
  %add = add i32 %buf_addr.addr.0143, %period_len
  %inc = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_sgs = getelementptr inbounds %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %num_sgs to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div42, ptr %num_sgs, align 8
  %cyclic = getelementptr inbounds %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %cyclic, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %46, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %node.i, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 16
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %node.i, ptr %46, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end33.cleanup_crit_edge, %do.end31, %if.end23.cleanup_crit_edge, %do.end21, %do.end14, %do.end7, %do.end
  %retval.0 = phi ptr [ null, %do.end14 ], [ null, %do.end21 ], [ null, %do.end31 ], [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %do.end7 ], [ null, %do.end ], [ null, %if.end23.cleanup_crit_edge ], [ null, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buswidth) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dma_slave_config(ptr nocapture noundef writeonly %c, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sconfig = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 7
  %0 = call ptr @memcpy(ptr %dma_sconfig, ptr %config, i32 48)
  %config_init = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 1
  %1 = ptrtoint ptr %config_init to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %config_init, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_terminate_all(ptr noundef %c) #2 align 64 {
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
  %desc = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 5
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !195

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %completed_cookie.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %chan.i26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %chan.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan.i26, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %16, ptr noundef %desc_terminated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %dma_cookie_complete.exit.list_add_tail.exit.i_crit_edge

dma_cookie_complete.exit.list_add_tail.exit.i_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node.i, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %dma_cookie_complete.exit.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 9
  %21 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cyclic.i, align 4
  %cmp.i27 = icmp eq ptr %22, %12
  br i1 %cmp.i27, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %busy = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 2
  %24 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %busy, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool9.not = icmp eq i8 %25, 0
  br i1 %tobool9.not, label %vchan_terminate_vdesc.exit.if.end_crit_edge, label %if.then10

vchan_terminate_vdesc.exit.if.end_crit_edge:      ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10:                                        ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @stm32_dma_stop(ptr noundef %c)
  br label %if.end

if.end:                                           ; preds = %if.then10, %vchan_terminate_vdesc.exit.if.end_crit_edge
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %desc, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %27 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %28, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end12.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end12.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i29, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %30, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head, ptr %32, align 4
  store ptr %32, ptr %0, align 4
  %36 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end12.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %37 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %38, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i12.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %40, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %head, ptr %42, align 4
  store ptr %42, ptr %0, align 4
  %46 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %47 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %48, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i18.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %head, ptr %52, align 4
  store ptr %52, ptr %0, align 4
  %56 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %57 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %58, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i24.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %58, ptr %60, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %head, ptr %62, align 4
  store ptr %62, ptr %0, align 4
  %66 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i30 = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %67 = ptrtoint ptr %desc_terminated.i30 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %desc_terminated.i30, align 4
  %cmp.i.not.i27.i = icmp eq ptr %68, %desc_terminated.i30
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i30.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %68, ptr %70, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %head, ptr %72, align 4
  store ptr %72, ptr %0, align 4
  %76 = ptrtoint ptr %desc_terminated.i30 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %desc_terminated.i30, ptr %desc_terminated.i30, align 4
  store ptr %desc_terminated.i30, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dma_synchronize(ptr noundef %c) #2 align 64 {
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
define internal ptr @stm32_dma_prep_dma_memcpy(ptr noundef %c, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, 65519
  %div = udiv i32 %sub, 65520
  %0 = mul nuw nsw i32 %div, 44
  %spec.select.i93 = add nuw nsw i32 %0, 124
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i93, i32 noundef 2304) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp95.not = icmp eq i32 %len, 0
  br i1 %cmp95.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %threshold3 = getelementptr inbounds %struct.stm32_dma_chan, ptr %c, i32 0, i32 9
  %1 = ptrtoint ptr %threshold3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %threshold3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.i.i89 = icmp eq i32 %2, 4
  %add.i.i = shl i32 %2, 2
  %mul.i.i = add i32 %add.i.i, 4
  %add.i18.i = shl i32 %2, 4
  %mul.i19.i = add i32 %add.i18.i, 16
  %div514.i.i = lshr exact i32 %mul.i19.i, 2
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 5
  %and22 = and i32 %2, 3
  br label %for.body

for.body:                                         ; preds = %stm32_dma_get_burst.exit.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %stm32_dma_get_burst.exit.for.body_crit_edge ]
  %offset.096 = phi i32 [ 0, %for.body.lr.ph ], [ %add42, %stm32_dma_get_burst.exit.for.body_crit_edge ]
  %sub4 = sub i32 %len, %offset.096
  %3 = tail call i32 @llvm.umin.i32(i32 %sub4, i32 65520)
  br i1 %cmp.i.i89, label %for.body.stm32_dma_get_burst.exit_crit_edge, label %stm32_dma_is_burst_possible.exit.i

for.body.stm32_dma_get_burst.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_burst.exit

stm32_dma_is_burst_possible.exit.i:               ; preds = %for.body
  %rem.i.i = urem i32 %len, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp1.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp1.i.i, label %stm32_dma_is_burst_possible.exit.i.while.cond.i_crit_edge, label %stm32_dma_is_burst_possible.exit.i.stm32_dma_get_burst.exit_crit_edge

stm32_dma_is_burst_possible.exit.i.stm32_dma_get_burst.exit_crit_edge: ; preds = %stm32_dma_is_burst_possible.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_burst.exit

stm32_dma_is_burst_possible.exit.i.while.cond.i_crit_edge: ; preds = %stm32_dma_is_burst_possible.exit.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %stm32_dma_is_burst_possible.exit.i.while.cond.i_crit_edge
  %best_burst.0.i = phi i32 [ %best_burst.1.i, %while.body.i ], [ 16, %stm32_dma_is_burst_possible.exit.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %best_burst.0.i, i32 %len)
  %cmp1.i = icmp ugt i32 %best_burst.0.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %best_burst.0.i)
  %cmp2.i = icmp ugt i32 %best_burst.0.i, 1
  %or.cond.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond.i, label %while.cond.i.while.body.i_crit_edge, label %if.then2.i.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.then2.i.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_burst.0.i)
  %cmp3.not.i.i = icmp eq i32 %best_burst.0.i, 0
  br i1 %cmp3.not.i.i, label %if.then2.i.i.stm32_dma_get_burst.exit_crit_edge, label %if.then4.i.i

if.then2.i.i.stm32_dma_get_burst.exit_crit_edge:  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_burst.exit

if.then4.i.i:                                     ; preds = %if.then2.i.i
  %rem.i20.i = urem i32 %div514.i.i, %best_burst.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i20.i)
  %cmp6.i.i = icmp eq i32 %rem.i20.i, 0
  br i1 %cmp6.i.i, label %stm32_dma_get_best_burst.exit, label %if.then4.i.i.while.body.i_crit_edge

if.then4.i.i.while.body.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %if.then4.i.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %best_burst.0.i)
  %cmp4.i = icmp ugt i32 %best_burst.0.i, 4
  %shr.i = lshr i32 %best_burst.0.i, 1
  %best_burst.1.i = select i1 %cmp4.i, i32 %shr.i, i32 0
  br label %while.cond.i

stm32_dma_get_best_burst.exit:                    ; preds = %if.then4.i.i
  %4 = zext i32 %best_burst.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %best_burst.0.i, label %do.end.i [
    i32 16, label %sw.bb3.i
    i32 1, label %stm32_dma_get_best_burst.exit.stm32_dma_get_burst.exit_crit_edge
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
  ]

stm32_dma_get_best_burst.exit.stm32_dma_get_burst.exit_crit_edge: ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_burst.exit

sw.bb1.i:                                         ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_burst.exit

sw.bb2.i:                                         ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_burst.exit

sw.bb3.i:                                         ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_burst.exit

do.end.i:                                         ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.52) #12
  br label %stm32_dma_get_burst.exit

stm32_dma_get_burst.exit:                         ; preds = %do.end.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %stm32_dma_get_best_burst.exit.stm32_dma_get_burst.exit_crit_edge, %if.then2.i.i.stm32_dma_get_burst.exit_crit_edge, %stm32_dma_is_burst_possible.exit.i.stm32_dma_get_burst.exit_crit_edge, %for.body.stm32_dma_get_burst.exit_crit_edge
  %retval.0.i91 = phi i32 [ 20973204, %do.end.i ], [ 31458964, %sw.bb3.i ], [ 20973204, %sw.bb2.i ], [ 10487444, %sw.bb1.i ], [ 1684, %stm32_dma_get_best_burst.exit.stm32_dma_get_burst.exit_crit_edge ], [ 1684, %stm32_dma_is_burst_possible.exit.i.stm32_dma_get_burst.exit_crit_edge ], [ 1684, %for.body.stm32_dma_get_burst.exit_crit_edge ], [ 1684, %if.then2.i.i.stm32_dma_get_burst.exit_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.097
  %chan_reg = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.097, i32 1
  %7 = call ptr @memset(ptr %chan_reg, i32 0, i32 40)
  %dma_scr = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.097, i32 1, i32 4
  %8 = ptrtoint ptr %dma_scr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i91, ptr %dma_scr, align 4
  %dma_sfcr = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.097, i32 1, i32 9
  %9 = ptrtoint ptr %dma_sfcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_sfcr, align 4
  %or21 = or i32 %and22, %10
  %or27 = or i32 %or21, 132
  store i32 %or27, ptr %dma_sfcr, align 4
  %add28 = add i32 %offset.096, %src
  %dma_spar = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.097, i32 1, i32 6
  %11 = ptrtoint ptr %dma_spar to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add28, ptr %dma_spar, align 4
  %add32 = add i32 %offset.096, %dest
  %dma_sm0ar = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.097, i32 1, i32 7
  %12 = ptrtoint ptr %dma_sm0ar to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add32, ptr %dma_sm0ar, align 4
  %dma_sndtr = getelementptr %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 3, i32 %i.097, i32 1, i32 5
  %13 = ptrtoint ptr %dma_sndtr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %dma_sndtr, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %arrayidx, align 4
  %add42 = add i32 %3, %offset.096
  %inc = add i32 %i.097, 1
  %cmp = icmp ult i32 %add42, %len
  br i1 %cmp, label %stm32_dma_get_burst.exit.for.body_crit_edge, label %stm32_dma_get_burst.exit.for.end_crit_edge

stm32_dma_get_burst.exit.for.end_crit_edge:       ; preds = %stm32_dma_get_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

stm32_dma_get_burst.exit.for.body_crit_edge:      ; preds = %stm32_dma_get_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %stm32_dma_get_burst.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %num_sgs43 = getelementptr inbounds %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %num_sgs43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %num_sgs43, align 8
  %cyclic = getelementptr inbounds %struct.stm32_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cyclic, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %23, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 16
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %node.i, ptr %23, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dma_desc_free(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vdesc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_chan_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devid, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %devid, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devid, align 4
  %id.i = getelementptr inbounds %struct.stm32_dma_chan, ptr %devid, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %base.i12.i = getelementptr inbounds %struct.stm32_dma_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base.i12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i12.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !197
  br label %stm32_dma_irq_status.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !197
  br label %stm32_dma_irq_status.exit

stm32_dma_irq_status.exit:                        ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %9, %if.else.i ], [ %8, %if.then.i ]
  %10 = tail call i32 @llvm.bswap.i32(i32 %.sink.i) #9
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %and4.i = shl i32 %12, 3
  %shl.i = and i32 %and4.i, 16
  %and6.i = and i32 %12, 1
  %mul.i = mul nuw nsw i32 %and6.i, 6
  %or.i = or i32 %shl.i, %mul.i
  %shr.i = lshr i32 %10, %or.i
  %and7.i = and i32 %shr.i, 45
  %mul = mul i32 %12, 24
  %add = add i32 %mul, 16
  %base.i = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  %mul4 = mul i32 %18, 24
  %add5 = add i32 %mul4, 36
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %20, i32 %add5
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #9, !srcloc !197
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %and = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %stm32_dma_irq_status.exit.if.end29_crit_edge, label %if.then

stm32_dma_irq_status.exit.if.end29_crit_edge:     ; preds = %stm32_dma_irq_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %stm32_dma_irq_status.exit
  %23 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devid, align 4
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  %and1.i = shl i32 %26, 3
  %shl.i126 = and i32 %and1.i, 16
  %and3.i = and i32 %26, 1
  %mul.i127 = mul nuw nsw i32 %and3.i, 6
  %or.i128 = or i32 %shl.i126, %mul.i127
  %shl4.i = shl nuw i32 1, %or.i128
  %and6.i129 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i129)
  %tobool.not.i130 = icmp eq i32 %and6.i129, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %shl4.i) #9
  %base.i13.i = getelementptr inbounds %struct.stm32_dma_device, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %base.i13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i13.i, align 4
  br i1 %tobool.not.i130, label %if.else.i133, label %if.then.i132

if.then.i132:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i131 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131, i32 %27) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit

if.else.i133:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i14.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %27) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit

stm32_dma_irq_clear.exit:                         ; preds = %if.else.i133, %if.then.i132
  %and7 = and i32 %shr.i, 44
  %and8 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %stm32_dma_irq_clear.exit.if.end29_crit_edge, label %if.then10

stm32_dma_irq_clear.exit.if.end29_crit_edge:      ; preds = %stm32_dma_irq_clear.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then10:                                        ; preds = %stm32_dma_irq_clear.exit
  %and11 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and13 = and i32 %shr.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %do.end, label %do.body17

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %devid, i32 0, i32 5
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.67) #12
  br label %if.end29

do.body17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_chan_irq.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_chan_irq, %if.end29)) #9
          to label %if.then23 [label %if.end29], !srcloc !192

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i134 = getelementptr inbounds %struct.dma_chan, ptr %devid, i32 0, i32 5
  %32 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i134, align 4
  %device.i135 = getelementptr inbounds %struct.dma_chan_dev, ptr %33, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_chan_irq.__UNIQUE_ID_ddebug249, ptr noundef %device.i135, ptr noundef nonnull @.str.69) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %do.body17, %do.end, %stm32_dma_irq_clear.exit.if.end29_crit_edge, %stm32_dma_irq_status.exit.if.end29_crit_edge
  %status.0 = phi i32 [ %and7, %if.then23 ], [ %and7, %do.end ], [ %and7, %stm32_dma_irq_clear.exit.if.end29_crit_edge ], [ %and7.i, %stm32_dma_irq_status.exit.if.end29_crit_edge ], [ %and7, %do.body17 ]
  %and30 = and i32 %status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end57_crit_edge, label %if.then32

if.end29.if.end57_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then32:                                        ; preds = %if.end29
  %34 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devid, align 4
  %36 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i, align 4
  %and1.i137 = shl i32 %37, 3
  %shl.i138 = and i32 %and1.i137, 16
  %and3.i139 = and i32 %37, 1
  %mul.i140 = mul nuw nsw i32 %and3.i139, 6
  %or.i141 = or i32 %shl.i138, %mul.i140
  %shl4.i142 = shl i32 4, %or.i141
  %and6.i143 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i143)
  %tobool.not.i144 = icmp eq i32 %and6.i143, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %shl4.i142) #9
  %base.i13.i145 = getelementptr inbounds %struct.stm32_dma_device, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %base.i13.i145 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i13.i145, align 4
  br i1 %tobool.not.i144, label %if.else.i149, label %if.then.i147

if.then.i147:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i146 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i146, i32 %38) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit150

if.else.i149:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i14.i148 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i148, i32 %38) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit150

stm32_dma_irq_clear.exit150:                      ; preds = %if.else.i149, %if.then.i147
  %and33 = and i32 %status.0, 41
  %and34 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %stm32_dma_irq_clear.exit150.if.end57_crit_edge, label %do.body37

stm32_dma_irq_clear.exit150.if.end57_crit_edge:   ; preds = %stm32_dma_irq_clear.exit150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.body37:                                        ; preds = %stm32_dma_irq_clear.exit150
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_chan_irq.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_chan_irq, %if.end57)) #9
          to label %if.then51 [label %if.end57], !srcloc !192

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i151 = getelementptr inbounds %struct.dma_chan, ptr %devid, i32 0, i32 5
  %41 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i151, align 4
  %device.i152 = getelementptr inbounds %struct.dma_chan_dev, ptr %42, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_chan_irq.__UNIQUE_ID_ddebug250, ptr noundef %device.i152, ptr noundef nonnull @.str.70) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %do.body37, %stm32_dma_irq_clear.exit150.if.end57_crit_edge, %if.end29.if.end57_crit_edge
  %status.1 = phi i32 [ %and33, %if.then51 ], [ %and33, %stm32_dma_irq_clear.exit150.if.end57_crit_edge ], [ %status.0, %if.end29.if.end57_crit_edge ], [ %and33, %do.body37 ]
  %and58 = and i32 %status.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end66_crit_edge, label %if.then60

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  %43 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %devid, align 4
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id.i, align 4
  %and1.i154 = shl i32 %46, 3
  %shl.i155 = and i32 %and1.i154, 16
  %and3.i156 = and i32 %46, 1
  %mul.i157 = mul nuw nsw i32 %and3.i156, 6
  %or.i158 = or i32 %shl.i155, %mul.i157
  %shl4.i159 = shl i32 32, %or.i158
  %and6.i160 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i160)
  %tobool.not.i161 = icmp eq i32 %and6.i160, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %shl4.i159) #9
  %base.i13.i162 = getelementptr inbounds %struct.stm32_dma_device, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %base.i13.i162 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i13.i162, align 4
  br i1 %tobool.not.i161, label %if.else.i166, label %if.then.i164

if.then.i164:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i163 = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i163, i32 %47) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit167

if.else.i166:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i14.i165 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i165, i32 %47) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit167

stm32_dma_irq_clear.exit167:                      ; preds = %if.else.i166, %if.then.i164
  %and61 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %stm32_dma_irq_clear.exit167.if.end64_crit_edge, label %if.then63

stm32_dma_irq_clear.exit167.if.end64_crit_edge:   ; preds = %stm32_dma_irq_clear.exit167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then63:                                        ; preds = %stm32_dma_irq_clear.exit167
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @stm32_dma_handle_chan_done(ptr noundef %devid)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %stm32_dma_irq_clear.exit167.if.end64_crit_edge
  %and65 = and i32 %status.1, -33
  br label %if.end66

if.end66:                                         ; preds = %if.end64, %if.end57.if.end66_crit_edge
  %status.2 = phi i32 [ %and65, %if.end64 ], [ %status.1, %if.end57.if.end66_crit_edge ]
  %and67 = and i32 %status.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end71_crit_edge, label %if.then69

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  %50 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %devid, align 4
  %52 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i, align 4
  %and6.i174 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i174)
  %tobool.not.i175 = icmp eq i32 %and6.i174, 0
  %base.i13.i176 = getelementptr inbounds %struct.stm32_dma_device, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %base.i13.i176 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i13.i176, align 4
  br i1 %tobool.not.i175, label %if.else.i180, label %if.then.i178

if.then.i178:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i177 = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i177, i32 0) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit181

if.else.i180:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i14.i179 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i179, i32 0) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit181

stm32_dma_irq_clear.exit181:                      ; preds = %if.else.i180, %if.then.i178
  %and70 = and i32 %status.2, -17
  br label %if.end71

if.end71:                                         ; preds = %stm32_dma_irq_clear.exit181, %if.end66.if.end71_crit_edge
  %status.3 = phi i32 [ %and70, %stm32_dma_irq_clear.exit181 ], [ %status.2, %if.end66.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3)
  %tobool72.not = icmp eq i32 %status.3, 0
  br i1 %tobool72.not, label %if.end71.if.end86_crit_edge, label %if.then73

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then73:                                        ; preds = %if.end71
  %56 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %devid, align 4
  %and.i182 = and i32 %status.3, 45
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i, align 4
  %and1.i184 = shl i32 %59, 3
  %shl.i185 = and i32 %and1.i184, 16
  %and3.i186 = and i32 %59, 1
  %mul.i187 = mul nuw nsw i32 %and3.i186, 6
  %or.i188 = or i32 %shl.i185, %mul.i187
  %shl4.i189 = shl i32 %and.i182, %or.i188
  %and6.i190 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i190)
  %tobool.not.i191 = icmp eq i32 %and6.i190, 0
  %60 = tail call i32 @llvm.bswap.i32(i32 %shl4.i189) #9
  %base.i13.i192 = getelementptr inbounds %struct.stm32_dma_device, ptr %57, i32 0, i32 1
  %61 = ptrtoint ptr %base.i13.i192 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i13.i192, align 4
  br i1 %tobool.not.i191, label %if.else.i196, label %if.then.i194

if.then.i194:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i193 = getelementptr i8, ptr %62, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i193, i32 %60) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit197

if.else.i196:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i14.i195 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i195, i32 %60) #9, !srcloc !198
  br label %stm32_dma_irq_clear.exit197

stm32_dma_irq_clear.exit197:                      ; preds = %if.else.i196, %if.then.i194
  %dev.i198 = getelementptr inbounds %struct.dma_chan, ptr %devid, i32 0, i32 5
  %63 = ptrtoint ptr %dev.i198 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i198, align 4
  %device.i199 = getelementptr inbounds %struct.dma_chan_dev, ptr %64, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i199, ptr noundef nonnull @.str.72, i32 noundef %status.3) #12
  %and78 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.end83, label %stm32_dma_irq_clear.exit197.if.end86_crit_edge

stm32_dma_irq_clear.exit197.if.end86_crit_edge:   ; preds = %stm32_dma_irq_clear.exit197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.end83:                                         ; preds = %stm32_dma_irq_clear.exit197
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %dev.i198 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i198, align 4
  %device.i201 = getelementptr inbounds %struct.dma_chan_dev, ptr %66, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i201, ptr noundef nonnull @.str.75) #12
  br label %if.end86

if.end86:                                         ; preds = %do.end83, %stm32_dma_irq_clear.exit197.if.end86_crit_edge, %if.end71.if.end86_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.80) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp9 = icmp ugt i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp11 = icmp ugt i32 %9, 7
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp11
  br i1 %or.cond, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %arrayidx19 = getelementptr %struct.stm32_dma_device, ptr %1, i32 0, i32 4, i32 %7
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %arrayidx19) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.86) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %chan_reg.i = getelementptr %struct.stm32_dma_device, ptr %1, i32 0, i32 4, i32 %7, i32 8
  %14 = call ptr @memset(ptr %chan_reg.i, i32 0, i32 40)
  %and.i = and i32 %11, 230912
  %dma_scr.i = getelementptr %struct.stm32_dma_device, ptr %1, i32 0, i32 4, i32 %7, i32 8, i32 4
  %and2.i = shl nuw nsw i32 %9, 25
  %shl.i = and i32 %and2.i, 234881024
  %or.i = or i32 %shl.i, %and.i
  %or7.i = or i32 %or.i, 20
  %15 = ptrtoint ptr %dma_scr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or7.i, ptr %dma_scr.i, align 4
  %and8.i = and i32 %13, 3
  %threshold.i = getelementptr %struct.stm32_dma_device, ptr %1, i32 0, i32 4, i32 %7, i32 9
  %16 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 %and8.i, i32 4
  %17 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select.i, ptr %threshold.i, align 4
  %18 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not.i = icmp eq i32 %18, 0
  br i1 %tobool15.not.i, label %if.end25.cleanup_crit_edge, label %if.then16.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i = or i32 %or.i, 1048596
  %19 = ptrtoint ptr %dma_scr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or19.i, ptr %dma_scr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i, %if.end25.cleanup_crit_edge, %do.end24, %do.end15, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end15 ], [ null, %do.end24 ], [ %call, %if.end25.cleanup_crit_edge ], [ %call, %if.then16.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dma_disable_chan(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %id1 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %mul = mul i32 %3, 24
  %add = add i32 %mul, 16
  %base.i = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %and3 = and i32 %7, -2
  %8 = tail call i32 @llvm.bswap.i32(i32 %and3) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %8) #9, !srcloc !198
  %call4 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call4, 1000000000
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr54 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #9, !srcloc !197
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not56 = icmp eq i32 %14, 0
  br i1 %tobool8.not56, label %if.then.for.end.thread_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.for.end.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call11 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call11, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !197
  %19 = and i32 %18, 16777216
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %cond.false.for.end.thread_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

cond.false.for.end.thread_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr16 = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !197
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %cond.false.for.end.thread_crit_edge, %if.then.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.thread ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_dma_stop(ptr nocapture noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %id = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %mul = mul i32 %3, 24
  %add = add i32 %mul, 16
  %base.i = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %7 = and i32 %6, -369098753
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %mul3 = mul i32 %9, 24
  %add4 = add i32 %mul3, 16
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %11, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %7) #9, !srcloc !198
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %mul6 = mul i32 %13, 24
  %add7 = add i32 %mul6, 36
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %15, i32 %add7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #9, !srcloc !197
  %17 = and i32 %16, 2147483647
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %mul11 = mul i32 %19, 24
  %add12 = add i32 %mul11, 36
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %21, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %17) #9, !srcloc !198
  %call13 = tail call fastcc i32 @stm32_dma_disable_chan(ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %base.i12.i = getelementptr inbounds %struct.stm32_dma_device, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %base.i12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i12.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !197
  br label %stm32_dma_irq_status.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !197
  br label %stm32_dma_irq_status.exit

stm32_dma_irq_status.exit:                        ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %29, %if.else.i ], [ %28, %if.then.i ]
  %30 = tail call i32 @llvm.bswap.i32(i32 %.sink.i) #9
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %and4.i = shl i32 %32, 3
  %shl.i = and i32 %and4.i, 16
  %and6.i = and i32 %32, 1
  %mul.i = mul nuw nsw i32 %and6.i, 6
  %or.i = or i32 %shl.i, %mul.i
  %shr.i = lshr i32 %30, %or.i
  %and7.i = and i32 %shr.i, 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not = icmp eq i32 %and7.i, 0
  br i1 %tobool.not, label %stm32_dma_irq_status.exit.if.end24_crit_edge, label %do.body

stm32_dma_irq_status.exit.if.end24_crit_edge:     ; preds = %stm32_dma_irq_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.body:                                          ; preds = %stm32_dma_irq_status.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_stop.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_stop, %do.end)) #9
          to label %if.then21 [label %do.end], !srcloc !192

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_stop.__UNIQUE_ID_ddebug239, ptr noundef %device.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %and7.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  %35 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chan, align 4
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id, align 4
  %and1.i = shl i32 %38, 3
  %shl.i52 = and i32 %and1.i, 16
  %and3.i = and i32 %38, 1
  %mul.i53 = mul nuw nsw i32 %and3.i, 6
  %or.i54 = or i32 %shl.i52, %mul.i53
  %shl4.i = shl i32 %and7.i, %or.i54
  %and6.i55 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i55)
  %tobool.not.i56 = icmp eq i32 %and6.i55, 0
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl4.i) #9
  %base.i13.i = getelementptr inbounds %struct.stm32_dma_device, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %base.i13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i13.i, align 4
  br i1 %tobool.not.i56, label %if.else.i59, label %if.then.i58

if.then.i58:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i57 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %39) #9, !srcloc !198
  br label %if.end24

if.else.i59:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i14.i = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %39) #9, !srcloc !198
  br label %if.end24

if.end24:                                         ; preds = %if.else.i59, %if.then.i58, %stm32_dma_irq_status.exit.if.end24_crit_edge
  %busy = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 2
  %42 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %busy, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dma_desc_residue(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %desc, i32 noundef %next_sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %next_sg3 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %next_sg3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_sg3, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %id.i = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %mul.i = mul i32 %7, 24
  %add.i = add i32 %mul.i, 16
  %base.i.i = getelementptr inbounds %struct.stm32_dma_device, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !197
  %11 = lshr i32 %10, 19
  %shr.i = and i32 %11, 3
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %mul3.i = mul i32 %13, 24
  %add4.i = add i32 %mul3.i, 20
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %15, i32 %add4.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #9, !srcloc !197
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %shl.i = shl i32 %17, %shr.i
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %mul.i51 = mul i32 %21, 24
  %add.i52 = add i32 %mul.i51, 16
  %base.i.i53 = getelementptr inbounds %struct.stm32_dma_device, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %23, i32 %add.i52
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54) #9, !srcloc !197
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %and.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end7_crit_edge, label %if.end.i

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i:                                         ; preds = %entry
  %26 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc1, align 4
  %28 = ptrtoint ptr %next_sg3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %next_sg3, align 4
  %and4.i = and i32 %25, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add8.i = add i32 %mul.i51, 28
  %30 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %31, i32 %add8.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #9, !srcloc !197
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %dma_sm0ar.i = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %29, i32 1, i32 7
  br label %stm32_dma_is_current_sg.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i = add i32 %mul.i51, 32
  %34 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i53, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %35, i32 %add12.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #9, !srcloc !197
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %dma_sm1ar.i = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %29, i32 1, i32 8
  br label %stm32_dma_is_current_sg.exit

stm32_dma_is_current_sg.exit:                     ; preds = %if.end10.i, %if.then6.i
  %dma_sm1ar.sink.i = phi ptr [ %dma_sm1ar.i, %if.end10.i ], [ %dma_sm0ar.i, %if.then6.i ]
  %.sink.i = phi i32 [ %37, %if.end10.i ], [ %33, %if.then6.i ]
  %38 = ptrtoint ptr %dma_sm1ar.sink.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_sm1ar.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %39)
  %cmp15.i = icmp eq i32 %.sink.i, %39
  br i1 %cmp15.i, label %stm32_dma_is_current_sg.exit.if.end7_crit_edge, label %if.then

stm32_dma_is_current_sg.exit.if.end7_crit_edge:   ; preds = %stm32_dma_is_current_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %stm32_dma_is_current_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.stm32_dma_desc, ptr %1, i32 0, i32 3, i32 %3
  %inc = add i32 %next_sg, 1
  %40 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc1, align 4
  %num_sgs = getelementptr inbounds %struct.stm32_dma_desc, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %43)
  %cmp = icmp eq i32 %inc, %43
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %stm32_dma_is_current_sg.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %residue.0 = phi i32 [ %shl.i, %stm32_dma_is_current_sg.exit.if.end7_crit_edge ], [ %45, %if.then ], [ %shl.i, %entry.if.end7_crit_edge ]
  %n_sg.0 = phi i32 [ %next_sg, %stm32_dma_is_current_sg.exit.if.end7_crit_edge ], [ %spec.store.select, %if.then ], [ %next_sg, %entry.if.end7_crit_edge ]
  %46 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc1, align 4
  %cyclic = getelementptr inbounds %struct.stm32_dma_desc, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cyclic, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp ne i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_sg.0)
  %cmp9.not = icmp eq i32 %n_sg.0, 0
  %or.cond = select i1 %tobool.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end7.if.end17_crit_edge, label %for.cond.preheader

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

for.cond.preheader:                               ; preds = %if.end7
  %num_sgs11 = getelementptr inbounds %struct.stm32_dma_desc, ptr %desc, i32 0, i32 2
  %50 = ptrtoint ptr %num_sgs11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_sgs11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n_sg.0, i32 %51)
  %cmp1256 = icmp ult i32 %n_sg.0, %51
  br i1 %cmp1256, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end17_crit_edge

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.058 = phi i32 [ %inc16, %for.body.for.body_crit_edge ], [ %n_sg.0, %for.cond.preheader.for.body_crit_edge ]
  %residue.157 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %residue.0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.stm32_dma_desc, ptr %desc, i32 0, i32 3, i32 %i.058
  %52 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %53, %residue.157
  %inc16 = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc16, %51
  br i1 %exitcond.not, label %for.body.if.end17_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %for.body.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %residue.2 = phi i32 [ %residue.0, %if.end7.if.end17_crit_edge ], [ %residue.0, %for.cond.preheader.if.end17_crit_edge ], [ %add, %for.body.if.end17_crit_edge ]
  %mem_burst = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 10
  %54 = ptrtoint ptr %mem_burst to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mem_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool18.not = icmp eq i32 %55, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %mem_width = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 11
  %56 = ptrtoint ptr %mem_width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mem_width, align 4
  %mul = mul i32 %57, %55
  %rem = urem i32 %residue.2, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  %sub = sub i32 %residue.2, %rem
  %add24 = add i32 %sub, %mul
  %residue.3 = select i1 %tobool22.not, i32 %residue.2, i32 %add24
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %residue.3, %if.end20 ], [ %residue.2, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_dma_start_transfer(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call1 = tail call fastcc i32 @stm32_dma_disable_chan(ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %5, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -108
  %tobool4.not129 = icmp eq ptr %add.ptr.i, null
  %tobool4.not = or i1 %cmp.not.i, %tobool4.not129
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del.exit_crit_edge

if.end6.list_del.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end6.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %desc, align 4
  %next_sg = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 6
  %15 = ptrtoint ptr %next_sg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %next_sg, align 4
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit, %if.end.if.end9_crit_edge
  %next_sg10 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 6
  %16 = ptrtoint ptr %next_sg10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_sg10, align 4
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %num_sgs = getelementptr inbounds %struct.stm32_dma_desc, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp12 = icmp eq i32 %17, %21
  br i1 %cmp12, label %if.then13, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %next_sg10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %next_sg10, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %23 = ptrtoint ptr %next_sg10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_sg10, align 4
  %dma_scr = getelementptr %struct.stm32_dma_desc, ptr %19, i32 0, i32 3, i32 %24, i32 1, i32 4
  %25 = ptrtoint ptr %dma_scr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_scr, align 4
  %and = and i32 %26, -2
  store i32 %and, ptr %dma_scr, align 4
  %id = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 3
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %mul = mul i32 %28, 24
  %add = add i32 %mul, 16
  %29 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %base.i = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %31, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %29) #9, !srcloc !198
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %mul21 = mul i32 %33, 24
  %add22 = add i32 %mul21, 24
  %dma_spar = getelementptr %struct.stm32_dma_desc, ptr %19, i32 0, i32 3, i32 %24, i32 1, i32 6
  %34 = ptrtoint ptr %dma_spar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_spar, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %38, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %36) #9, !srcloc !198
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %mul24 = mul i32 %40, 24
  %add25 = add i32 %mul24, 28
  %dma_sm0ar = getelementptr %struct.stm32_dma_desc, ptr %19, i32 0, i32 3, i32 %24, i32 1, i32 7
  %41 = ptrtoint ptr %dma_sm0ar to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_sm0ar, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %45, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %43) #9, !srcloc !198
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %mul27 = mul i32 %47, 24
  %add28 = add i32 %mul27, 36
  %dma_sfcr = getelementptr %struct.stm32_dma_desc, ptr %19, i32 0, i32 3, i32 %24, i32 1, i32 9
  %48 = ptrtoint ptr %dma_sfcr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_sfcr, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %52, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %50) #9, !srcloc !198
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id, align 4
  %mul30 = mul i32 %54, 24
  %add31 = add i32 %mul30, 32
  %dma_sm1ar = getelementptr %struct.stm32_dma_desc, ptr %19, i32 0, i32 3, i32 %24, i32 1, i32 8
  %55 = ptrtoint ptr %dma_sm1ar to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_sm1ar, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %59, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %57) #9, !srcloc !198
  %60 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id, align 4
  %mul33 = mul i32 %61, 24
  %add34 = add i32 %mul33, 20
  %dma_sndtr = getelementptr %struct.stm32_dma_desc, ptr %19, i32 0, i32 3, i32 %24, i32 1, i32 5
  %62 = ptrtoint ptr %dma_sndtr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_sndtr, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %66, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %64) #9, !srcloc !198
  %67 = ptrtoint ptr %next_sg10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %next_sg10, align 4
  %inc = add i32 %68, 1
  store i32 %inc, ptr %next_sg10, align 4
  %69 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chan, align 4
  %71 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id, align 4
  %and.i = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %base.i12.i = getelementptr inbounds %struct.stm32_dma_device, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %base.i12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i12.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !197
  br label %stm32_dma_irq_status.exit

if.else.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !197
  br label %stm32_dma_irq_status.exit

stm32_dma_irq_status.exit:                        ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %76, %if.else.i ], [ %75, %if.then.i ]
  %77 = tail call i32 @llvm.bswap.i32(i32 %.sink.i) #9
  %78 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id, align 4
  %and4.i = shl i32 %79, 3
  %shl.i = and i32 %and4.i, 16
  %and6.i = and i32 %79, 1
  %mul.i = mul nuw nsw i32 %and6.i, 6
  %or.i = or i32 %shl.i, %mul.i
  %shr.i = lshr i32 %77, %or.i
  %and7.i = and i32 %shr.i, 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool37.not = icmp eq i32 %and7.i, 0
  br i1 %tobool37.not, label %stm32_dma_irq_status.exit.if.end39_crit_edge, label %if.then38

stm32_dma_irq_status.exit.if.end39_crit_edge:     ; preds = %stm32_dma_irq_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %stm32_dma_irq_status.exit
  %80 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chan, align 4
  %shl4.i = shl i32 %and7.i, %or.i
  %and6.i121 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i121)
  %tobool.not.i122 = icmp eq i32 %and6.i121, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %shl4.i) #9
  %base.i13.i = getelementptr inbounds %struct.stm32_dma_device, ptr %81, i32 0, i32 1
  %83 = ptrtoint ptr %base.i13.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i13.i, align 4
  br i1 %tobool.not.i122, label %if.else.i125, label %if.then.i124

if.then.i124:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i123 = getelementptr i8, ptr %84, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 %82) #9, !srcloc !198
  br label %if.end39

if.else.i125:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i14.i = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %82) #9, !srcloc !198
  br label %if.end39

if.end39:                                         ; preds = %if.else.i125, %if.then.i124, %stm32_dma_irq_status.exit.if.end39_crit_edge
  %85 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %desc, align 4
  %cyclic = getelementptr inbounds %struct.stm32_dma_desc, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %cyclic, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool41.not = icmp eq i8 %88, 0
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.then42

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @stm32_dma_configure_next_sg(ptr noundef %chan)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  tail call fastcc void @stm32_dma_dump_reg(ptr noundef %chan)
  %89 = ptrtoint ptr %dma_scr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma_scr, align 4
  %or = or i32 %90, 1
  store i32 %or, ptr %dma_scr, align 4
  %91 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id, align 4
  %mul46 = mul i32 %92, 24
  %add47 = add i32 %mul46, 16
  %93 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %95, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %93) #9, !srcloc !198
  %busy = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 2
  %96 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %busy, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_start_transfer.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_start_transfer, %cleanup)) #9
          to label %if.then54 [label %cleanup], !srcloc !192

if.then54:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %98, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_start_transfer.__UNIQUE_ID_ddebug246, ptr noundef %device.i, ptr noundef nonnull @.str.29, ptr noundef %chan) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end43, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_dma_configure_next_sg(ptr nocapture noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %id1 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %mul = mul i32 %3, 24
  %add = add i32 %mul, 16
  %base.i = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end52_crit_edge, label %if.then

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then:                                          ; preds = %entry
  %next_sg = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %next_sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_sg, align 4
  %desc = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %num_sgs = getelementptr inbounds %struct.stm32_dma_desc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp = icmp eq i32 %9, %13
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %next_sg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %next_sg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %next_sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next_sg, align 4
  %and8 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dma_sm0ar11 = getelementptr %struct.stm32_dma_desc, ptr %11, i32 0, i32 3, i32 %16, i32 1, i32 7
  %17 = ptrtoint ptr %dma_sm0ar11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_sm0ar11, align 4
  %add13 = add i32 %mul, 28
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %21, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %19) #9, !srcloc !198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_configure_next_sg, %if.end52)) #9
          to label %if.then19 [label %if.end52], !srcloc !192

if.then19:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %25, i32 %add13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #9, !srcloc !197
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug247, ptr noundef %device.i, ptr noundef nonnull @.str.31, i32 noundef %27) #9
  br label %if.end52

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dma_sm1ar26 = getelementptr %struct.stm32_dma_desc, ptr %11, i32 0, i32 3, i32 %16, i32 1, i32 8
  %28 = ptrtoint ptr %dma_sm1ar26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_sm1ar26, align 4
  %add28 = add i32 %mul, 32
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %32, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %30) #9, !srcloc !198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_configure_next_sg, %if.end52)) #9
          to label %if.then43 [label %if.end52], !srcloc !192

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i80 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i80, align 4
  %device.i81 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %36, i32 %add28
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #9, !srcloc !197
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug248, ptr noundef %device.i81, ptr noundef nonnull @.str.32, i32 noundef %38) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then43, %if.else, %if.then19, %if.then10, %entry.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_dma_dump_reg(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %id = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %mul = mul i32 %3, 24
  %add = add i32 %mul, 16
  %base.i = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %mul3 = mul i32 %8, 24
  %add4 = add i32 %mul3, 20
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %10, i32 %add4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #9, !srcloc !197
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %mul7 = mul i32 %14, 24
  %add8 = add i32 %mul7, 24
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %16, i32 %add8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #9, !srcloc !197
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %mul11 = mul i32 %20, 24
  %add12 = add i32 %mul11, 28
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %22, i32 %add12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #9, !srcloc !197
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %mul15 = mul i32 %26, 24
  %add16 = add i32 %mul15, 32
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %28, i32 %add16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #9, !srcloc !197
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %mul19 = mul i32 %32, 24
  %add20 = add i32 %mul19, 36
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %34, i32 %add20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #9, !srcloc !197
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_dump_reg, %do.body27)) #9
          to label %if.then [label %do.body27], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_dump_reg.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.34, i32 noundef %37) #9
  br label %do.body27

do.body27:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_dump_reg, %do.body46)) #9
          to label %if.then41 [label %do.body46], !srcloc !192

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i164 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %40 = ptrtoint ptr %dev.i164 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i164, align 4
  %device.i165 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_dump_reg.__UNIQUE_ID_ddebug241, ptr noundef %device.i165, ptr noundef nonnull @.str.35, i32 noundef %12) #9
  br label %do.body46

do.body46:                                        ; preds = %if.then41, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_dump_reg, %do.body65)) #9
          to label %if.then60 [label %do.body65], !srcloc !192

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i166 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %42 = ptrtoint ptr %dev.i166 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i166, align 4
  %device.i167 = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_dump_reg.__UNIQUE_ID_ddebug242, ptr noundef %device.i167, ptr noundef nonnull @.str.36, i32 noundef %18) #9
  br label %do.body65

do.body65:                                        ; preds = %if.then60, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_dump_reg, %do.body84)) #9
          to label %if.then79 [label %do.body84], !srcloc !192

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i168 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %44 = ptrtoint ptr %dev.i168 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i168, align 4
  %device.i169 = getelementptr inbounds %struct.dma_chan_dev, ptr %45, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_dump_reg.__UNIQUE_ID_ddebug243, ptr noundef %device.i169, ptr noundef nonnull @.str.37, i32 noundef %24) #9
  br label %do.body84

do.body84:                                        ; preds = %if.then79, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_dump_reg, %do.body103)) #9
          to label %if.then98 [label %do.body103], !srcloc !192

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i170 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %46 = ptrtoint ptr %dev.i170 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i170, align 4
  %device.i171 = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_dump_reg.__UNIQUE_ID_ddebug244, ptr noundef %device.i171, ptr noundef nonnull @.str.38, i32 noundef %30) #9
  br label %do.body103

do.body103:                                       ; preds = %if.then98, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_dump_reg, %do.end121)) #9
          to label %if.then117 [label %do.end121], !srcloc !192

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i172 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %48 = ptrtoint ptr %dev.i172 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i172, align 4
  %device.i173 = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_dma_dump_reg.__UNIQUE_ID_ddebug245, ptr noundef %device.i173, ptr noundef nonnull @.str.39, i32 noundef %36) #9
  br label %do.end121

do.end121:                                        ; preds = %if.then117, %do.body103
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dma_set_xfer_param(ptr noundef %chan, i32 noundef %direction, ptr nocapture noundef writeonly %buswidth, i32 noundef %buf_len, i32 noundef %buf_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr_width1 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %src_addr_width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr_width1, align 4
  %dst_addr_width3 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %dst_addr_width3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_addr_width3, align 4
  %src_maxburst5 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %src_maxburst5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_maxburst5, align 4
  %dst_maxburst7 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 7, i32 6
  %6 = ptrtoint ptr %dst_maxburst7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_maxburst7, align 4
  %threshold = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 9
  %8 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %threshold, align 4
  %10 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %direction, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb45
  ]

sw.bb:                                            ; preds = %entry
  %11 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %3, label %stm32_dma_get_width.exit [
    i32 1, label %sw.bb.if.end_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb2.i
  ]

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

stm32_dma_get_width.exit:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.50) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 64, %sw.bb.if.end_crit_edge ], [ 2112, %sw.bb1.i ], [ 4160, %sw.bb2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 4
  %or.cond25.i = or i1 %cmp.i, %cmp.i.i
  br i1 %or.cond25.i, label %if.end.if.end12_crit_edge, label %stm32_dma_is_burst_possible.exit.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

stm32_dma_is_burst_possible.exit.i:               ; preds = %if.end
  %add.i.i = shl i32 %9, 2
  %mul.i.i = add i32 %add.i.i, 4
  %rem.i.i = urem i32 %buf_len, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp1.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp1.i.i, label %while.cond.preheader.i, label %stm32_dma_is_burst_possible.exit.i.if.end12_crit_edge

stm32_dma_is_burst_possible.exit.i.if.end12_crit_edge: ; preds = %stm32_dma_is_burst_possible.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

while.cond.preheader.i:                           ; preds = %stm32_dma_is_burst_possible.exit.i
  %add.i18.i = add i32 %9, 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %while.cond.preheader.i
  %best_burst.0.i = phi i32 [ %best_burst.1.i, %while.body.i ], [ %7, %while.cond.preheader.i ]
  %mul.i = mul i32 %best_burst.0.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %buf_len)
  %cmp1.i = icmp ugt i32 %mul.i, %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %best_burst.0.i)
  %cmp2.i = icmp ugt i32 %best_burst.0.i, 1
  %or.cond.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond.i, label %while.cond.i.while.body.i_crit_edge, label %if.then2.i.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.then2.i.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_burst.0.i)
  %cmp3.not.i.i = icmp eq i32 %best_burst.0.i, 0
  br i1 %cmp3.not.i.i, label %if.then2.i.i.if.end12_crit_edge, label %if.then4.i.i

if.then2.i.i.if.end12_crit_edge:                  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then4.i.i:                                     ; preds = %if.then2.i.i
  %div.i.i = udiv i32 16, %3
  %mul.i19.i = mul i32 %div.i.i, %add.i18.i
  %div514.i.i = lshr i32 %mul.i19.i, 2
  %rem.i20.i = urem i32 %div514.i.i, %best_burst.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i20.i)
  %cmp6.i.i = icmp eq i32 %rem.i20.i, 0
  br i1 %cmp6.i.i, label %stm32_dma_get_best_burst.exit, label %if.then4.i.i.while.body.i_crit_edge

if.then4.i.i.while.body.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %if.then4.i.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %best_burst.0.i)
  %cmp4.i = icmp ugt i32 %best_burst.0.i, 4
  %shr.i = lshr i32 %best_burst.0.i, 1
  %best_burst.1.i = select i1 %cmp4.i, i32 %shr.i, i32 0
  br label %while.cond.i

stm32_dma_get_best_burst.exit:                    ; preds = %if.then4.i.i
  %14 = zext i32 %best_burst.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %best_burst.0.i, label %stm32_dma_get_burst.exit [
    i32 16, label %sw.bb3.i
    i32 1, label %stm32_dma_get_best_burst.exit.if.end12_crit_edge
    i32 4, label %sw.bb1.i208
    i32 8, label %sw.bb2.i209
  ]

stm32_dma_get_best_burst.exit.if.end12_crit_edge: ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sw.bb1.i208:                                      ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sw.bb2.i209:                                      ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sw.bb3.i:                                         ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

stm32_dma_get_burst.exit:                         ; preds = %stm32_dma_get_best_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i210 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i.i210 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i210, align 4
  %device.i.i211 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i211, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end12:                                         ; preds = %sw.bb3.i, %sw.bb2.i209, %sw.bb1.i208, %stm32_dma_get_best_burst.exit.if.end12_crit_edge, %if.then2.i.i.if.end12_crit_edge, %stm32_dma_is_burst_possible.exit.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %retval.0.i207386.ph = phi i32 [ %best_burst.0.i, %stm32_dma_get_best_burst.exit.if.end12_crit_edge ], [ %best_burst.0.i, %sw.bb1.i208 ], [ %best_burst.0.i, %sw.bb2.i209 ], [ %best_burst.0.i, %sw.bb3.i ], [ 0, %stm32_dma_is_burst_possible.exit.i.if.end12_crit_edge ], [ 0, %if.end.if.end12_crit_edge ], [ 0, %if.then2.i.i.if.end12_crit_edge ]
  %retval.0.i213.ph = phi i32 [ 0, %stm32_dma_get_best_burst.exit.if.end12_crit_edge ], [ 2097152, %sw.bb1.i208 ], [ 4194304, %sw.bb2.i209 ], [ 6291456, %sw.bb3.i ], [ 0, %stm32_dma_is_burst_possible.exit.i.if.end12_crit_edge ], [ 0, %if.end.if.end12_crit_edge ], [ 0, %if.then2.i.i.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i214 = icmp eq i32 %9, 3
  %..i = select i1 %cmp.i214, i32 4, i32 2
  br label %while.cond.i216

while.cond.i216:                                  ; preds = %while.body.i220, %if.end12
  %max_width.1.i = phi i32 [ %..i, %if.end12 ], [ %shr.i219, %while.body.i220 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_width.1.i, i32 %buf_len)
  %cmp1.i215 = icmp ugt i32 %max_width.1.i, %buf_len
  br i1 %cmp1.i215, label %land.rhs.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %while.cond.i216
  %rem.i = urem i32 %buf_len, %max_width.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_width.1.i)
  %cmp2.i217 = icmp ugt i32 %max_width.1.i, 1
  %or.cond.i218 = and i1 %cmp2.i217, %tobool.not.i
  br i1 %or.cond.i218, label %lor.lhs.false.i.while.body.i220_crit_edge, label %lor.lhs.false.i.stm32_dma_get_max_width.exit_crit_edge

lor.lhs.false.i.stm32_dma_get_max_width.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_max_width.exit

lor.lhs.false.i.while.body.i220_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i220

land.rhs.i:                                       ; preds = %while.cond.i216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_width.1.i)
  %cmp2.old.i = icmp ugt i32 %max_width.1.i, 1
  br i1 %cmp2.old.i, label %land.rhs.i.while.body.i220_crit_edge, label %land.rhs.i.stm32_dma_get_max_width.exit_crit_edge

land.rhs.i.stm32_dma_get_max_width.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_max_width.exit

land.rhs.i.while.body.i220_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i220

while.body.i220:                                  ; preds = %land.rhs.i.while.body.i220_crit_edge, %lor.lhs.false.i.while.body.i220_crit_edge
  %shr.i219 = lshr i32 %max_width.1.i, 1
  br label %while.cond.i216

stm32_dma_get_max_width.exit:                     ; preds = %land.rhs.i.stm32_dma_get_max_width.exit_crit_edge, %lor.lhs.false.i.stm32_dma_get_max_width.exit_crit_edge
  %sub.i = add nsw i32 %max_width.1.i, -1
  %and.i = and i32 %sub.i, %buf_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 %max_width.1.i, i32 1
  %mem_width = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 11
  %17 = ptrtoint ptr %mem_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select.i, ptr %mem_width, align 4
  %18 = zext i32 %spec.store.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %spec.store.select.i, label %stm32_dma_get_width.exit227 [
    i32 1, label %stm32_dma_get_max_width.exit.if.end17_crit_edge
    i32 2, label %sw.bb1.i221
    i32 4, label %sw.bb2.i222
  ]

stm32_dma_get_max_width.exit.if.end17_crit_edge:  ; preds = %stm32_dma_get_max_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb1.i221:                                      ; preds = %stm32_dma_get_max_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb2.i222:                                      ; preds = %stm32_dma_get_max_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

stm32_dma_get_width.exit227:                      ; preds = %stm32_dma_get_max_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i223 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %19 = ptrtoint ptr %dev.i.i223 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i223, align 4
  %device.i.i224 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i224, ptr noundef nonnull @.str.50) #12
  br label %cleanup

if.end17:                                         ; preds = %sw.bb2.i222, %sw.bb1.i221, %stm32_dma_get_max_width.exit.if.end17_crit_edge
  %retval.0.i226.ph = phi i32 [ 0, %stm32_dma_get_max_width.exit.if.end17_crit_edge ], [ 8192, %sw.bb1.i221 ], [ 16384, %sw.bb2.i222 ]
  %sub = add i32 %buf_len, -1
  %and = and i32 %sub, %buf_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %or.cond25.i230 = or i1 %tobool.not, %cmp.i.i
  br i1 %or.cond25.i230, label %if.end17.if.end24_crit_edge, label %stm32_dma_is_burst_possible.exit.i235

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

stm32_dma_is_burst_possible.exit.i235:            ; preds = %if.end17
  %add.i.i231 = shl i32 %9, 2
  %mul.i.i232 = add i32 %add.i.i231, 4
  %rem.i.i233 = urem i32 %buf_len, %mul.i.i232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i233)
  %cmp1.i.i234 = icmp eq i32 %rem.i.i233, 0
  br i1 %cmp1.i.i234, label %while.cond.preheader.i238, label %stm32_dma_is_burst_possible.exit.i235.if.end24_crit_edge

stm32_dma_is_burst_possible.exit.i235.if.end24_crit_edge: ; preds = %stm32_dma_is_burst_possible.exit.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

while.cond.preheader.i238:                        ; preds = %stm32_dma_is_burst_possible.exit.i235
  %add.i18.i237 = add i32 %9, 1
  br label %while.cond.i245

while.cond.i245:                                  ; preds = %while.body.i257, %while.cond.preheader.i238
  %best_burst.0.i239 = phi i32 [ %best_burst.1.i256, %while.body.i257 ], [ 16, %while.cond.preheader.i238 ]
  %mul.i240 = mul i32 %best_burst.0.i239, %spec.store.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i240, i32 %buf_len)
  %cmp1.i241 = icmp ugt i32 %mul.i240, %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %best_burst.0.i239)
  %cmp2.i242 = icmp ugt i32 %best_burst.0.i239, 1
  %or.cond.i243 = and i1 %cmp2.i242, %cmp1.i241
  br i1 %or.cond.i243, label %while.cond.i245.while.body.i257_crit_edge, label %if.then2.i.i247

while.cond.i245.while.body.i257_crit_edge:        ; preds = %while.cond.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i257

if.then2.i.i247:                                  ; preds = %while.cond.i245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_burst.0.i239)
  %cmp3.not.i.i246 = icmp eq i32 %best_burst.0.i239, 0
  br i1 %cmp3.not.i.i246, label %if.then2.i.i247.if.end24_crit_edge, label %if.then4.i.i253

if.then2.i.i247.if.end24_crit_edge:               ; preds = %if.then2.i.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then4.i.i253:                                  ; preds = %if.then2.i.i247
  %div.i.i248 = udiv i32 16, %spec.store.select.i
  %mul.i19.i249 = mul i32 %div.i.i248, %add.i18.i237
  %div514.i.i250 = lshr i32 %mul.i19.i249, 2
  %rem.i20.i251 = urem i32 %div514.i.i250, %best_burst.0.i239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i20.i251)
  %cmp6.i.i252 = icmp eq i32 %rem.i20.i251, 0
  br i1 %cmp6.i.i252, label %stm32_dma_get_best_burst.exit259, label %if.then4.i.i253.while.body.i257_crit_edge

if.then4.i.i253.while.body.i257_crit_edge:        ; preds = %if.then4.i.i253
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i257

while.body.i257:                                  ; preds = %if.then4.i.i253.while.body.i257_crit_edge, %while.cond.i245.while.body.i257_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %best_burst.0.i239)
  %cmp4.i254 = icmp ugt i32 %best_burst.0.i239, 4
  %shr.i255 = lshr i32 %best_burst.0.i239, 1
  %best_burst.1.i256 = select i1 %cmp4.i254, i32 %shr.i255, i32 0
  br label %while.cond.i245

stm32_dma_get_best_burst.exit259:                 ; preds = %if.then4.i.i253
  %21 = zext i32 %best_burst.0.i239 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %best_burst.0.i239, label %stm32_dma_get_burst.exit267 [
    i32 16, label %sw.bb3.i262
    i32 1, label %stm32_dma_get_best_burst.exit259.if.end24_crit_edge
    i32 4, label %sw.bb1.i260
    i32 8, label %sw.bb2.i261
  ]

stm32_dma_get_best_burst.exit259.if.end24_crit_edge: ; preds = %stm32_dma_get_best_burst.exit259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.bb1.i260:                                      ; preds = %stm32_dma_get_best_burst.exit259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.bb2.i261:                                      ; preds = %stm32_dma_get_best_burst.exit259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.bb3.i262:                                      ; preds = %stm32_dma_get_best_burst.exit259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

stm32_dma_get_burst.exit267:                      ; preds = %stm32_dma_get_best_burst.exit259
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i263 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i.i263 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i263, align 4
  %device.i.i264 = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i264, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end24:                                         ; preds = %sw.bb3.i262, %sw.bb2.i261, %sw.bb1.i260, %stm32_dma_get_best_burst.exit259.if.end24_crit_edge, %if.then2.i.i247.if.end24_crit_edge, %stm32_dma_is_burst_possible.exit.i235.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %retval.0.i258396.ph = phi i32 [ %best_burst.0.i239, %stm32_dma_get_best_burst.exit259.if.end24_crit_edge ], [ %best_burst.0.i239, %sw.bb1.i260 ], [ %best_burst.0.i239, %sw.bb2.i261 ], [ %best_burst.0.i239, %sw.bb3.i262 ], [ 0, %stm32_dma_is_burst_possible.exit.i235.if.end24_crit_edge ], [ 0, %if.end17.if.end24_crit_edge ], [ 0, %if.then2.i.i247.if.end24_crit_edge ]
  %retval.0.i266.ph = phi i32 [ 0, %stm32_dma_get_best_burst.exit259.if.end24_crit_edge ], [ 8388608, %sw.bb1.i260 ], [ 16777216, %sw.bb2.i261 ], [ 25165824, %sw.bb3.i262 ], [ 0, %stm32_dma_is_burst_possible.exit.i235.if.end24_crit_edge ], [ 0, %if.end17.if.end24_crit_edge ], [ 0, %if.then2.i.i247.if.end24_crit_edge ]
  %or28 = or i32 %retval.0.i.ph, %retval.0.i213.ph
  %or31 = or i32 %or28, %retval.0.i226.ph
  %or34 = or i32 %or31, %retval.0.i266.ph
  %dma_sfcr = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 8, i32 9
  %24 = ptrtoint ptr %dma_sfcr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_sfcr, align 4
  %and35 = and i32 %25, -4
  %and38 = and i32 %9, 3
  %storemerge205 = or i32 %and35, %and38
  store i32 %storemerge205, ptr %dma_sfcr, align 4
  %dst_addr = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_addr, align 4
  %dma_spar = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %dma_spar to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dma_spar, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %29 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %1, label %stm32_dma_get_width.exit274 [
    i32 1, label %sw.bb45.if.end49_crit_edge
    i32 2, label %sw.bb1.i268
    i32 4, label %sw.bb2.i269
  ]

sw.bb45.if.end49_crit_edge:                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb1.i268:                                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb2.i269:                                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

stm32_dma_get_width.exit274:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i270 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %30 = ptrtoint ptr %dev.i.i270 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i270, align 4
  %device.i.i271 = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i271, ptr noundef nonnull @.str.50) #12
  br label %cleanup

if.end49:                                         ; preds = %sw.bb2.i269, %sw.bb1.i268, %sw.bb45.if.end49_crit_edge
  %retval.0.i273.ph = phi i32 [ 0, %sw.bb45.if.end49_crit_edge ], [ 2048, %sw.bb1.i268 ], [ 4096, %sw.bb2.i269 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i275 = icmp eq i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i.i276 = icmp eq i32 %9, 4
  %or.cond25.i277 = or i1 %cmp.i275, %cmp.i.i276
  br i1 %or.cond25.i277, label %if.end49.stm32_dma_get_best_burst.exit306.thread_crit_edge, label %stm32_dma_is_burst_possible.exit.i282

if.end49.stm32_dma_get_best_burst.exit306.thread_crit_edge: ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_best_burst.exit306.thread

stm32_dma_is_burst_possible.exit.i282:            ; preds = %if.end49
  %add.i.i278 = shl i32 %9, 2
  %mul.i.i279 = add i32 %add.i.i278, 4
  %rem.i.i280 = urem i32 %buf_len, %mul.i.i279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i280)
  %cmp1.i.i281 = icmp eq i32 %rem.i.i280, 0
  br i1 %cmp1.i.i281, label %while.cond.preheader.i285, label %stm32_dma_is_burst_possible.exit.i282.stm32_dma_get_best_burst.exit306.thread_crit_edge

stm32_dma_is_burst_possible.exit.i282.stm32_dma_get_best_burst.exit306.thread_crit_edge: ; preds = %stm32_dma_is_burst_possible.exit.i282
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_best_burst.exit306.thread

while.cond.preheader.i285:                        ; preds = %stm32_dma_is_burst_possible.exit.i282
  %add.i18.i284 = add i32 %9, 1
  br label %while.cond.i292

while.cond.i292:                                  ; preds = %while.body.i304, %while.cond.preheader.i285
  %best_burst.0.i286 = phi i32 [ %best_burst.1.i303, %while.body.i304 ], [ %5, %while.cond.preheader.i285 ]
  %mul.i287 = mul i32 %best_burst.0.i286, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i287, i32 %buf_len)
  %cmp1.i288 = icmp ugt i32 %mul.i287, %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %best_burst.0.i286)
  %cmp2.i289 = icmp ugt i32 %best_burst.0.i286, 1
  %or.cond.i290 = and i1 %cmp2.i289, %cmp1.i288
  br i1 %or.cond.i290, label %while.cond.i292.while.body.i304_crit_edge, label %if.then2.i.i294

while.cond.i292.while.body.i304_crit_edge:        ; preds = %while.cond.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i304

if.then2.i.i294:                                  ; preds = %while.cond.i292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_burst.0.i286)
  %cmp3.not.i.i293 = icmp eq i32 %best_burst.0.i286, 0
  br i1 %cmp3.not.i.i293, label %if.then2.i.i294.stm32_dma_get_best_burst.exit306.thread_crit_edge, label %if.then4.i.i300

if.then2.i.i294.stm32_dma_get_best_burst.exit306.thread_crit_edge: ; preds = %if.then2.i.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_best_burst.exit306.thread

if.then4.i.i300:                                  ; preds = %if.then2.i.i294
  %div.i.i295 = udiv i32 16, %1
  %mul.i19.i296 = mul i32 %div.i.i295, %add.i18.i284
  %div514.i.i297 = lshr i32 %mul.i19.i296, 2
  %rem.i20.i298 = urem i32 %div514.i.i297, %best_burst.0.i286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i20.i298)
  %cmp6.i.i299 = icmp eq i32 %rem.i20.i298, 0
  br i1 %cmp6.i.i299, label %stm32_dma_get_best_burst.exit306, label %if.then4.i.i300.while.body.i304_crit_edge

if.then4.i.i300.while.body.i304_crit_edge:        ; preds = %if.then4.i.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i304

while.body.i304:                                  ; preds = %if.then4.i.i300.while.body.i304_crit_edge, %while.cond.i292.while.body.i304_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %best_burst.0.i286)
  %cmp4.i301 = icmp ugt i32 %best_burst.0.i286, 4
  %shr.i302 = lshr i32 %best_burst.0.i286, 1
  %best_burst.1.i303 = select i1 %cmp4.i301, i32 %shr.i302, i32 0
  br label %while.cond.i292

stm32_dma_get_best_burst.exit306.thread:          ; preds = %if.then2.i.i294.stm32_dma_get_best_burst.exit306.thread_crit_edge, %stm32_dma_is_burst_possible.exit.i282.stm32_dma_get_best_burst.exit306.thread_crit_edge, %if.end49.stm32_dma_get_best_burst.exit306.thread_crit_edge
  %mem_burst406 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 10
  %32 = ptrtoint ptr %mem_burst406 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %mem_burst406, align 4
  br label %if.end54

stm32_dma_get_best_burst.exit306:                 ; preds = %if.then4.i.i300
  %mem_burst = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 10
  %33 = ptrtoint ptr %mem_burst to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %best_burst.0.i286, ptr %mem_burst, align 4
  %34 = zext i32 %best_burst.0.i286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %best_burst.0.i286, label %stm32_dma_get_burst.exit314 [
    i32 16, label %sw.bb3.i309
    i32 1, label %stm32_dma_get_best_burst.exit306.if.end54_crit_edge
    i32 4, label %sw.bb1.i307
    i32 8, label %sw.bb2.i308
  ]

stm32_dma_get_best_burst.exit306.if.end54_crit_edge: ; preds = %stm32_dma_get_best_burst.exit306
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

sw.bb1.i307:                                      ; preds = %stm32_dma_get_best_burst.exit306
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

sw.bb2.i308:                                      ; preds = %stm32_dma_get_best_burst.exit306
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

sw.bb3.i309:                                      ; preds = %stm32_dma_get_best_burst.exit306
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

stm32_dma_get_burst.exit314:                      ; preds = %stm32_dma_get_best_burst.exit306
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i310 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %35 = ptrtoint ptr %dev.i.i310 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i310, align 4
  %device.i.i311 = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i311, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end54:                                         ; preds = %sw.bb3.i309, %sw.bb2.i308, %sw.bb1.i307, %stm32_dma_get_best_burst.exit306.if.end54_crit_edge, %stm32_dma_get_best_burst.exit306.thread
  %mem_burst408.ph = phi ptr [ %mem_burst406, %stm32_dma_get_best_burst.exit306.thread ], [ %mem_burst, %stm32_dma_get_best_burst.exit306.if.end54_crit_edge ], [ %mem_burst, %sw.bb1.i307 ], [ %mem_burst, %sw.bb2.i308 ], [ %mem_burst, %sw.bb3.i309 ]
  %retval.0.i305407.ph = phi i32 [ 0, %stm32_dma_get_best_burst.exit306.thread ], [ %best_burst.0.i286, %stm32_dma_get_best_burst.exit306.if.end54_crit_edge ], [ %best_burst.0.i286, %sw.bb1.i307 ], [ %best_burst.0.i286, %sw.bb2.i308 ], [ %best_burst.0.i286, %sw.bb3.i309 ]
  %retval.0.i313.ph = phi i32 [ 0, %stm32_dma_get_best_burst.exit306.thread ], [ 0, %stm32_dma_get_best_burst.exit306.if.end54_crit_edge ], [ 2097152, %sw.bb1.i307 ], [ 4194304, %sw.bb2.i308 ], [ 6291456, %sw.bb3.i309 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i315 = icmp eq i32 %9, 3
  %..i316 = select i1 %cmp.i315, i32 4, i32 2
  br label %while.cond.i319

while.cond.i319:                                  ; preds = %while.body.i328, %if.end54
  %max_width.1.i317 = phi i32 [ %..i316, %if.end54 ], [ %shr.i327, %while.body.i328 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_width.1.i317, i32 %buf_len)
  %cmp1.i318 = icmp ugt i32 %max_width.1.i317, %buf_len
  br i1 %cmp1.i318, label %land.rhs.i326, label %lor.lhs.false.i324

lor.lhs.false.i324:                               ; preds = %while.cond.i319
  %rem.i320 = urem i32 %buf_len, %max_width.1.i317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i320)
  %tobool.not.i321 = icmp ne i32 %rem.i320, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_width.1.i317)
  %cmp2.i322 = icmp ugt i32 %max_width.1.i317, 1
  %or.cond.i323 = and i1 %cmp2.i322, %tobool.not.i321
  br i1 %or.cond.i323, label %lor.lhs.false.i324.while.body.i328_crit_edge, label %lor.lhs.false.i324.stm32_dma_get_max_width.exit333_crit_edge

lor.lhs.false.i324.stm32_dma_get_max_width.exit333_crit_edge: ; preds = %lor.lhs.false.i324
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_max_width.exit333

lor.lhs.false.i324.while.body.i328_crit_edge:     ; preds = %lor.lhs.false.i324
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i328

land.rhs.i326:                                    ; preds = %while.cond.i319
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_width.1.i317)
  %cmp2.old.i325 = icmp ugt i32 %max_width.1.i317, 1
  br i1 %cmp2.old.i325, label %land.rhs.i326.while.body.i328_crit_edge, label %land.rhs.i326.stm32_dma_get_max_width.exit333_crit_edge

land.rhs.i326.stm32_dma_get_max_width.exit333_crit_edge: ; preds = %land.rhs.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_max_width.exit333

land.rhs.i326.while.body.i328_crit_edge:          ; preds = %land.rhs.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i328

while.body.i328:                                  ; preds = %land.rhs.i326.while.body.i328_crit_edge, %lor.lhs.false.i324.while.body.i328_crit_edge
  %shr.i327 = lshr i32 %max_width.1.i317, 1
  br label %while.cond.i319

stm32_dma_get_max_width.exit333:                  ; preds = %land.rhs.i326.stm32_dma_get_max_width.exit333_crit_edge, %lor.lhs.false.i324.stm32_dma_get_max_width.exit333_crit_edge
  %sub.i329 = add nsw i32 %max_width.1.i317, -1
  %and.i330 = and i32 %sub.i329, %buf_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i330)
  %tobool3.not.i331 = icmp eq i32 %and.i330, 0
  %spec.store.select.i332 = select i1 %tobool3.not.i331, i32 %max_width.1.i317, i32 1
  %mem_width56 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 11
  %37 = ptrtoint ptr %mem_width56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.store.select.i332, ptr %mem_width56, align 4
  %38 = zext i32 %spec.store.select.i332 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %spec.store.select.i332, label %stm32_dma_get_width.exit340 [
    i32 1, label %stm32_dma_get_max_width.exit333.if.end60_crit_edge
    i32 2, label %sw.bb1.i334
    i32 4, label %sw.bb2.i335
  ]

stm32_dma_get_max_width.exit333.if.end60_crit_edge: ; preds = %stm32_dma_get_max_width.exit333
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

sw.bb1.i334:                                      ; preds = %stm32_dma_get_max_width.exit333
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

sw.bb2.i335:                                      ; preds = %stm32_dma_get_max_width.exit333
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

stm32_dma_get_width.exit340:                      ; preds = %stm32_dma_get_max_width.exit333
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i336 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %39 = ptrtoint ptr %dev.i.i336 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i336, align 4
  %device.i.i337 = getelementptr inbounds %struct.dma_chan_dev, ptr %40, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i337, ptr noundef nonnull @.str.50) #12
  br label %cleanup

if.end60:                                         ; preds = %sw.bb2.i335, %sw.bb1.i334, %stm32_dma_get_max_width.exit333.if.end60_crit_edge
  %retval.0.i339.ph = phi i32 [ 0, %stm32_dma_get_max_width.exit333.if.end60_crit_edge ], [ 8192, %sw.bb1.i334 ], [ 16384, %sw.bb2.i335 ]
  %sub61 = add i32 %buf_len, -1
  %and62 = and i32 %sub61, %buf_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp ne i32 %and62, 0
  %or.cond25.i343 = or i1 %tobool63.not, %cmp.i.i276
  br i1 %or.cond25.i343, label %if.end60.stm32_dma_get_best_burst.exit372.thread_crit_edge, label %stm32_dma_is_burst_possible.exit.i348

if.end60.stm32_dma_get_best_burst.exit372.thread_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_best_burst.exit372.thread

stm32_dma_is_burst_possible.exit.i348:            ; preds = %if.end60
  %add.i.i344 = shl i32 %9, 2
  %mul.i.i345 = add i32 %add.i.i344, 4
  %rem.i.i346 = urem i32 %buf_len, %mul.i.i345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i346)
  %cmp1.i.i347 = icmp eq i32 %rem.i.i346, 0
  br i1 %cmp1.i.i347, label %while.cond.preheader.i351, label %stm32_dma_is_burst_possible.exit.i348.stm32_dma_get_best_burst.exit372.thread_crit_edge

stm32_dma_is_burst_possible.exit.i348.stm32_dma_get_best_burst.exit372.thread_crit_edge: ; preds = %stm32_dma_is_burst_possible.exit.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_best_burst.exit372.thread

while.cond.preheader.i351:                        ; preds = %stm32_dma_is_burst_possible.exit.i348
  %add.i18.i350 = add i32 %9, 1
  br label %while.cond.i358

while.cond.i358:                                  ; preds = %while.body.i370, %while.cond.preheader.i351
  %best_burst.0.i352 = phi i32 [ %best_burst.1.i369, %while.body.i370 ], [ 16, %while.cond.preheader.i351 ]
  %mul.i353 = mul i32 %best_burst.0.i352, %spec.store.select.i332
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i353, i32 %buf_len)
  %cmp1.i354 = icmp ugt i32 %mul.i353, %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %best_burst.0.i352)
  %cmp2.i355 = icmp ugt i32 %best_burst.0.i352, 1
  %or.cond.i356 = and i1 %cmp2.i355, %cmp1.i354
  br i1 %or.cond.i356, label %while.cond.i358.while.body.i370_crit_edge, label %if.then2.i.i360

while.cond.i358.while.body.i370_crit_edge:        ; preds = %while.cond.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i370

if.then2.i.i360:                                  ; preds = %while.cond.i358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_burst.0.i352)
  %cmp3.not.i.i359 = icmp eq i32 %best_burst.0.i352, 0
  br i1 %cmp3.not.i.i359, label %if.then2.i.i360.stm32_dma_get_best_burst.exit372.thread_crit_edge, label %if.then4.i.i366

if.then2.i.i360.stm32_dma_get_best_burst.exit372.thread_crit_edge: ; preds = %if.then2.i.i360
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_dma_get_best_burst.exit372.thread

if.then4.i.i366:                                  ; preds = %if.then2.i.i360
  %div.i.i361 = udiv i32 16, %spec.store.select.i332
  %mul.i19.i362 = mul i32 %div.i.i361, %add.i18.i350
  %div514.i.i363 = lshr i32 %mul.i19.i362, 2
  %rem.i20.i364 = urem i32 %div514.i.i363, %best_burst.0.i352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i20.i364)
  %cmp6.i.i365 = icmp eq i32 %rem.i20.i364, 0
  br i1 %cmp6.i.i365, label %stm32_dma_get_best_burst.exit372, label %if.then4.i.i366.while.body.i370_crit_edge

if.then4.i.i366.while.body.i370_crit_edge:        ; preds = %if.then4.i.i366
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i370

while.body.i370:                                  ; preds = %if.then4.i.i366.while.body.i370_crit_edge, %while.cond.i358.while.body.i370_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %best_burst.0.i352)
  %cmp4.i367 = icmp ugt i32 %best_burst.0.i352, 4
  %shr.i368 = lshr i32 %best_burst.0.i352, 1
  %best_burst.1.i369 = select i1 %cmp4.i367, i32 %shr.i368, i32 0
  br label %while.cond.i358

stm32_dma_get_best_burst.exit372.thread:          ; preds = %if.then2.i.i360.stm32_dma_get_best_burst.exit372.thread_crit_edge, %stm32_dma_is_burst_possible.exit.i348.stm32_dma_get_best_burst.exit372.thread_crit_edge, %if.end60.stm32_dma_get_best_burst.exit372.thread_crit_edge
  %41 = ptrtoint ptr %mem_burst408.ph to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %mem_burst408.ph, align 4
  br label %if.end72

stm32_dma_get_best_burst.exit372:                 ; preds = %if.then4.i.i366
  %42 = ptrtoint ptr %mem_burst408.ph to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %best_burst.0.i352, ptr %mem_burst408.ph, align 4
  %43 = zext i32 %best_burst.0.i352 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %best_burst.0.i352, label %stm32_dma_get_burst.exit380 [
    i32 16, label %sw.bb3.i375
    i32 1, label %stm32_dma_get_best_burst.exit372.if.end72_crit_edge
    i32 4, label %sw.bb1.i373
    i32 8, label %sw.bb2.i374
  ]

stm32_dma_get_best_burst.exit372.if.end72_crit_edge: ; preds = %stm32_dma_get_best_burst.exit372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

sw.bb1.i373:                                      ; preds = %stm32_dma_get_best_burst.exit372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

sw.bb2.i374:                                      ; preds = %stm32_dma_get_best_burst.exit372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

sw.bb3.i375:                                      ; preds = %stm32_dma_get_best_burst.exit372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

stm32_dma_get_burst.exit380:                      ; preds = %stm32_dma_get_best_burst.exit372
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i376 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %44 = ptrtoint ptr %dev.i.i376 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i376, align 4
  %device.i.i377 = getelementptr inbounds %struct.dma_chan_dev, ptr %45, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i377, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end72:                                         ; preds = %sw.bb3.i375, %sw.bb2.i374, %sw.bb1.i373, %stm32_dma_get_best_burst.exit372.if.end72_crit_edge, %stm32_dma_get_best_burst.exit372.thread
  %retval.0.i371420.ph = phi i32 [ 0, %stm32_dma_get_best_burst.exit372.thread ], [ %best_burst.0.i352, %stm32_dma_get_best_burst.exit372.if.end72_crit_edge ], [ %best_burst.0.i352, %sw.bb1.i373 ], [ %best_burst.0.i352, %sw.bb2.i374 ], [ %best_burst.0.i352, %sw.bb3.i375 ]
  %retval.0.i379.ph = phi i32 [ 0, %stm32_dma_get_best_burst.exit372.thread ], [ 0, %stm32_dma_get_best_burst.exit372.if.end72_crit_edge ], [ 8388608, %sw.bb1.i373 ], [ 16777216, %sw.bb2.i374 ], [ 25165824, %sw.bb3.i375 ]
  %or78 = or i32 %retval.0.i313.ph, %retval.0.i273.ph
  %or81 = or i32 %or78, %retval.0.i339.ph
  %or84 = or i32 %or81, %retval.0.i379.ph
  %dma_sfcr86 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 8, i32 9
  %46 = ptrtoint ptr %dma_sfcr86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_sfcr86, align 4
  %and87 = and i32 %47, -4
  %and90 = and i32 %9, 3
  %storemerge204 = or i32 %and87, %and90
  store i32 %storemerge204, ptr %dma_sfcr86, align 4
  %src_addr = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %src_addr, align 4
  %dma_spar97 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 8, i32 6
  %50 = ptrtoint ptr %dma_spar97 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dma_spar97, align 4
  %51 = ptrtoint ptr %src_addr_width1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %src_addr_width1, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.48) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end72, %if.end24
  %storemerge = phi i32 [ %52, %if.end72 ], [ %3, %if.end24 ]
  %src_best_burst.0 = phi i32 [ %retval.0.i305407.ph, %if.end72 ], [ %retval.0.i258396.ph, %if.end24 ]
  %dst_best_burst.0 = phi i32 [ %retval.0.i371420.ph, %if.end72 ], [ %retval.0.i207386.ph, %if.end24 ]
  %dma_scr.0 = phi i32 [ %or84, %if.end72 ], [ %or34, %if.end24 ]
  %55 = ptrtoint ptr %buswidth to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge, ptr %buswidth, align 4
  %dma_sfcr.i = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 8, i32 9
  %56 = ptrtoint ptr %dma_sfcr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_sfcr.i, align 4
  %and.i381 = and i32 %57, -133
  store i32 %and.i381, ptr %dma_sfcr.i, align 4
  %dma_scr.i = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 8, i32 4
  %58 = ptrtoint ptr %dma_scr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_scr.i, align 4
  %and2.i = and i32 %59, -3
  store i32 %and2.i, ptr %dma_scr.i, align 4
  %60 = or i32 %dst_best_burst.0, %src_best_burst.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %59, 2
  %62 = ptrtoint ptr %dma_scr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i, ptr %dma_scr.i, align 4
  br label %stm32_dma_set_fifo_config.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or8.i = or i32 %57, 132
  %63 = ptrtoint ptr %dma_sfcr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or8.i, ptr %dma_sfcr.i, align 4
  br label %stm32_dma_set_fifo_config.exit

stm32_dma_set_fifo_config.exit:                   ; preds = %if.else.i, %if.then.i
  %64 = ptrtoint ptr %dma_scr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_scr.i, align 4
  %and103 = and i32 %65, -31488193
  %or106 = or i32 %and103, %dma_scr.0
  store i32 %or106, ptr %dma_scr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %stm32_dma_set_fifo_config.exit, %do.end, %stm32_dma_get_burst.exit380, %stm32_dma_get_width.exit340, %stm32_dma_get_burst.exit314, %stm32_dma_get_width.exit274, %stm32_dma_get_burst.exit267, %stm32_dma_get_width.exit227, %stm32_dma_get_burst.exit, %stm32_dma_get_width.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %stm32_dma_set_fifo_config.exit ], [ -22, %stm32_dma_get_width.exit ], [ -22, %stm32_dma_get_burst.exit ], [ -22, %stm32_dma_get_width.exit227 ], [ -22, %stm32_dma_get_burst.exit267 ], [ -22, %stm32_dma_get_width.exit274 ], [ -22, %stm32_dma_get_burst.exit314 ], [ -22, %stm32_dma_get_width.exit340 ], [ -22, %stm32_dma_get_burst.exit380 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

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
define internal fastcc void @stm32_dma_handle_chan_done(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %cyclic = getelementptr inbounds %struct.stm32_dma_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cyclic, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then3.vchan_cyclic_callback.exit_crit_edge

if.then3.vchan_cyclic_callback.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cyclic_callback.exit

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cyclic_callback.exit

vchan_cyclic_callback.exit:                       ; preds = %if.then.i.i, %if.then3.vchan_cyclic_callback.exit_crit_edge
  %next_sg = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 6
  %7 = ptrtoint ptr %next_sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_sg, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %next_sg, align 4
  tail call fastcc void @stm32_dma_configure_next_sg(ptr noundef %chan)
  br label %if.end12

if.else:                                          ; preds = %if.then
  %busy = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 2
  %9 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %busy, align 1
  %next_sg5 = getelementptr inbounds %struct.stm32_dma_chan, ptr %chan, i32 0, i32 6
  %10 = ptrtoint ptr %next_sg5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next_sg5, align 4
  %num_sgs = getelementptr inbounds %struct.stm32_dma_desc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.then7, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %if.else
  %chan.i23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %chan.i23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan.i23, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i.i = icmp slt i32 %17, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !195

do.body2.i.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then7
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %completed_cookie.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_dma_handle_chan_done, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !192

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %23, ptr noundef nonnull @.str.79, ptr noundef nonnull %1, i32 noundef %17) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %15, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %15, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %25, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node.i, ptr %25, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i24 = getelementptr inbounds %struct.virt_dma_chan, ptr %15, i32 0, i32 1, i32 1
  %call.i.i25 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.then.i.i28, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i28:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i27 = getelementptr inbounds %struct.virt_dma_chan, ptr %15, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i27) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i28, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %vchan_cookie_complete.exit, %if.else.if.end_crit_edge
  tail call fastcc void @stm32_dma_start_transfer(ptr noundef %chan)
  br label %if.end12

if.end12:                                         ; preds = %if.end, %vchan_cyclic_callback.exit, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_suspend(ptr noundef %dev) #2 align 64 {
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
  %base.i = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.inc, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !190
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !191
  br label %cleanup

do.end:                                           ; preds = %for.inc.6.do.end_crit_edge, %for.inc.5.do.end_crit_edge, %for.inc.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %id.023.lcssa = phi i32 [ 0, %for.cond.preheader.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ], [ 4, %for.inc.3.do.end_crit_edge ], [ 5, %for.inc.4.do.end_crit_edge ], [ 6, %for.inc.5.do.end_crit_edge ], [ 7, %for.inc.6.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %id.023.lcssa) #12
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #9, !srcloc !197
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1 = icmp eq i32 %10, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #9, !srcloc !197
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.2 = icmp eq i32 %14, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.do.end_crit_edge

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %16, i32 88
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #9, !srcloc !197
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.3 = icmp eq i32 %18, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.do.end_crit_edge

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.3:                                        ; preds = %for.inc.2
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %20, i32 112
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #9, !srcloc !197
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.4 = icmp eq i32 %22, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.do.end_crit_edge

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.4:                                        ; preds = %for.inc.3
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %24, i32 136
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #9, !srcloc !197
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.5 = icmp eq i32 %26, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.do.end_crit_edge

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.5:                                        ; preds = %for.inc.4
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %28, i32 160
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #9, !srcloc !197
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.6 = icmp eq i32 %30, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.do.end_crit_edge

for.inc.5.do.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.6:                                        ; preds = %for.inc.5
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %32, i32 184
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #9, !srcloc !197
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.7 = icmp eq i32 %34, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.do.end_crit_edge

for.inc.6.do.end_crit_edge:                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %call.i19 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  %call7 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %do.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.inc.7 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dma_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_dma_device, ptr %1, i32 0, i32 2
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !170, !171, !172, !173, !175, !176, !177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_stm32_dma__255_1533_stm32_dma_init4, !1, !"__initcall__kmod_stm32_dma__255_1533_stm32_dma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/stm32-dma.c", i32 1533, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/stm32-dma.c", i32 1522, i32 11}
!4 = !{ptr @stm32_dma_driver, !5, !"stm32_dma_driver", i1 false, i1 false}
!5 = !{!"../drivers/dma/stm32-dma.c", i32 1520, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma/stm32-dma.c", i32 1329, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @stm32_dma_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @stm32_dma_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/stm32-dma.c", i32 1346, i32 58}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/stm32-dma.c", i32 1350, i32 3}
!18 = !{ptr @stm32_dma_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @stm32_dma_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/stm32-dma.c", i32 1355, i32 7}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/stm32-dma.c", i32 1424, i32 4}
!24 = !{ptr @stm32_dma_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @stm32_dma_probe._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/stm32-dma.c", i32 1434, i32 3}
!28 = !{ptr @stm32_dma_probe._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_dma_probe._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/stm32-dma.c", i32 1446, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stm32_dma_probe._entry.17, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @stm32_dma_probe._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/stm32-dma.c", i32 1234, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @stm32_dma_free_chan_resources.__UNIQUE_ID_ddebug254, !36, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/stm32-dma.c", i32 482, i32 3}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @stm32_dma_stop.__UNIQUE_ID_ddebug239, !41, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/stm32-dma.c", i32 707, i32 3}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @stm32_dma_issue_pending.__UNIQUE_ID_ddebug251, !45, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/stm32-dma.c", i32 596, i32 2}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @stm32_dma_start_transfer.__UNIQUE_ID_ddebug246, !49, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/stm32-dma.c", i32 617, i32 4}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug247, !53, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/stm32-dma.c", i32 622, i32 4}
!58 = !{ptr @stm32_dma_configure_next_sg.__UNIQUE_ID_ddebug248, !57, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/stm32-dma.c", i32 530, i32 2}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug240, !60, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/stm32-dma.c", i32 531, i32 2}
!65 = !{ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug241, !64, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/stm32-dma.c", i32 532, i32 2}
!68 = !{ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug242, !67, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/stm32-dma.c", i32 533, i32 2}
!71 = !{ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug243, !70, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/stm32-dma.c", i32 534, i32 2}
!74 = !{ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug244, !73, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/stm32-dma.c", i32 535, i32 2}
!77 = !{ptr @stm32_dma_dump_reg.__UNIQUE_ID_ddebug245, !76, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/stm32-dma.c", i32 879, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stm32_dma_prep_slave_sg._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @stm32_dma_prep_slave_sg._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/stm32-dma.c", i32 884, i32 3}
!85 = !{ptr @stm32_dma_prep_slave_sg._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @stm32_dma_prep_slave_sg._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/stm32-dma.c", i32 909, i32 4}
!89 = !{ptr @stm32_dma_prep_slave_sg._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @stm32_dma_prep_slave_sg._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/stm32-dma.c", i32 846, i32 3}
!93 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @stm32_dma_set_xfer_param._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @stm32_dma_set_xfer_param._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/stm32-dma.c", i32 263, i32 3}
!98 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @stm32_dma_get_width._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @stm32_dma_get_width._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dma/stm32-dma.c", i32 363, i32 3}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @stm32_dma_get_burst._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @stm32_dma_get_burst._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/stm32-dma.c", i32 944, i32 3}
!108 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @stm32_dma_prep_dma_cyclic._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @stm32_dma_prep_dma_cyclic._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @stm32_dma_prep_dma_cyclic._entry.56, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/dma/stm32-dma.c", i32 949, i32 3}
!113 = !{ptr @stm32_dma_prep_dma_cyclic._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/stm32-dma.c", i32 954, i32 3}
!116 = !{ptr @stm32_dma_prep_dma_cyclic._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @stm32_dma_prep_dma_cyclic._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/stm32-dma.c", i32 965, i32 3}
!120 = !{ptr @stm32_dma_prep_dma_cyclic._entry.61, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @stm32_dma_prep_dma_cyclic._entry_ptr.63, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dma/stm32-dma.c", i32 976, i32 3}
!124 = !{ptr @stm32_dma_prep_dma_cyclic._entry.64, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @stm32_dma_prep_dma_cyclic._entry_ptr.66, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/stm32-dma.c", i32 664, i32 5}
!128 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @stm32_dma_chan_irq._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @stm32_dma_chan_irq._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/dma/stm32-dma.c", i32 666, i32 5}
!133 = !{ptr @stm32_dma_chan_irq.__UNIQUE_ID_ddebug249, !132, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/stm32-dma.c", i32 673, i32 4}
!136 = !{ptr @stm32_dma_chan_irq.__UNIQUE_ID_ddebug250, !135, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/dma/stm32-dma.c", i32 690, i32 3}
!139 = !{ptr @stm32_dma_chan_irq._entry.71, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @stm32_dma_chan_irq._entry_ptr.73, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/dma/stm32-dma.c", i32 692, i32 4}
!143 = !{ptr @stm32_dma_chan_irq._entry.74, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @stm32_dma_chan_irq._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!147 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !146, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/dma/stm32-dma.c", i32 1283, i32 3}
!152 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @stm32_dma_of_xlate._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @stm32_dma_of_xlate._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dma/stm32-dma.c", i32 1294, i32 3}
!157 = !{ptr @stm32_dma_of_xlate._entry.82, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @stm32_dma_of_xlate._entry_ptr.84, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/dma/stm32-dma.c", i32 1302, i32 3}
!161 = !{ptr @stm32_dma_of_xlate._entry.85, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @stm32_dma_of_xlate._entry_ptr.87, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @stm32_dma_of_match, !164, !"stm32_dma_of_match", i1 false, i1 false}
!164 = !{!"../drivers/dma/stm32-dma.c", i32 1311, i32 34}
!165 = !{ptr @stm32_dma_pm_ops, !166, !"stm32_dma_pm_ops", i1 false, i1 false}
!166 = !{!"../drivers/dma/stm32-dma.c", i32 1514, i32 32}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/dma/stm32-dma.c", i32 1496, i32 4}
!169 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.90, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @stm32_dma_suspend._entry, !168, !"_entry", i1 false, i1 false}
!172 = !{ptr @stm32_dma_suspend._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/dma/stm32-dma.c", i32 1475, i32 3}
!175 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @stm32_dma_runtime_resume._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @stm32_dma_runtime_resume._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i8 0, i8 2}
!188 = !{i64 2148281441, i64 2148281467, i64 2148281496, i64 2148281530, i64 2148281561, i64 2148281584}
!189 = !{i64 2148280860}
!190 = !{i64 765683, i64 765708, i64 765730, i64 765746, i64 765758, i64 765778, i64 765802, i64 765818, i64 765830}
!191 = !{i64 2148281048}
!192 = !{i64 2148763256, i64 2148763261, i64 2148763274, i64 2148763318, i64 2148763352, i64 2148763373}
!193 = !{i64 2154498238}
!194 = !{!"auto-init"}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 2154496738, i64 2154497225, i64 2154496775, i64 2154496831, i64 2154496865, i64 2154496889, i64 2154496930, i64 2154496951, i64 2154496979, i64 2154497013}
!197 = !{i64 6348264}
!198 = !{i64 6347846}
