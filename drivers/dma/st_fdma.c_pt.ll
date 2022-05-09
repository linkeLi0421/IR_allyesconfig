; ModuleID = '/llk/IR_all_yes/drivers/dma/st_fdma.c_pt.bc'
source_filename = "../drivers/dma/st_fdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.st_fdma_driverdata = type { i32, [10 x i8] }
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
%struct.st_fdma_dev = type { ptr, ptr, %struct.dma_device, ptr, i32, ptr, %struct.spinlock, i32, i32, [30 x i8] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.st_fdma_chan = type { ptr, ptr, %struct.dma_slave_config, %struct.st_fdma_cfg, i32, %struct.virt_dma_chan, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.st_fdma_cfg = type { ptr, i32, i32, i32, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.st_slim_rproc = type { ptr, [2 x %struct.st_slim_mem], ptr, ptr, [4 x ptr] }
%struct.st_slim_mem = type { ptr, i32, i32 }
%struct.st_fdma_desc = type { %struct.virt_dma_desc, ptr, i8, i32, [0 x %struct.st_fdma_sw_node] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.st_fdma_sw_node = type { i32, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.st_fdma_hw_node = type { i32, i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.st_fdma_generic_node }
%struct.st_fdma_generic_node = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_st_fdma__246_871_st_fdma_platform_driver_init6 = internal global ptr @st_fdma_platform_driver_init, section ".initcall6.init", align 4
@st_fdma_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_fdma_probe, ptr @st_fdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_fdma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_fdma_platform_driver_exit = internal global ptr @st_fdma_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file247 = internal constant [33 x i8] c"st_fdma.file=drivers/dma/st_fdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [23 x i8] c"st_fdma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [58 x i8] c"st_fdma.description=STMicroelectronics FDMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [52 x i8] c"st_fdma.author=Ludovic.barre <Ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [56 x i8] c"st_fdma.author=Peter Griffin <peter.griffin@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [31 x i8] c"st_fdma.alias=platform:st-fdma\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st-fdma\00", [24 x i8] zeroinitializer }, align 32
@st_fdma_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-fdma-mpe31-11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fdma_mpe31_stih407_11 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-fdma-mpe31-12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fdma_mpe31_stih407_12 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-fdma-mpe31-13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fdma_mpe31_stih407_13 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No device match found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_fdma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/st_fdma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry_ptr = internal global ptr @st_fdma_probe._entry, section ".printk_index", align 4
@st_fdma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 761, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to find platform data\0A\00", [34 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry_ptr.8 = internal global ptr @st_fdma_probe._entry.6, section ".printk_index", align 4
@st_fdma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 781, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry_ptr.11 = internal global ptr @st_fdma_probe._entry.9, section ".printk_index", align 4
@st_fdma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 788, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"slim_rproc_alloc failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry_ptr.14 = internal global ptr @st_fdma_probe._entry.12, section ".printk_index", align 4
@st_fdma_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register DMA device (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry_ptr.17 = internal global ptr @st_fdma_probe._entry.15, section ".printk_index", align 4
@st_fdma_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 837, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register controller (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry_ptr.20 = internal global ptr @st_fdma_probe._entry.18, section ".printk_index", align 4
@st_fdma_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 841, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ST FDMA engine driver, irq:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_fdma_probe._entry_ptr.24 = internal global ptr @st_fdma_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fdma_%s_%d.elf\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@st_fdma_ch_sta_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 109, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chan:%d, error:%ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st_fdma_ch_sta_update\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@st_fdma_ch_sta_update._entry_ptr = internal global ptr @st_fdma_ch_sta_update._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st_fdma\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@st_fdma_xfer_desc.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st_fdma_xfer_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start chan:%d\0A\00", [17 x i8] zeroinitializer }, align 32
@st_fdma_alloc_chan_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to allocate desc pool\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st_fdma_alloc_chan_res\00", [41 x i8] zeroinitializer }, align 32
@st_fdma_alloc_chan_res._entry_ptr = internal global ptr @st_fdma_alloc_chan_res._entry, section ".printk_index", align 4
@st_fdma_alloc_chan_res.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"alloc ch_id:%d type:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@st_fdma_free_chan_res.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st_fdma_free_chan_res\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: freeing chan:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@st_fdma_dreq_put.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st_fdma_dreq_put\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"put dreq_line:%#x\0A\00", [45 x i8] zeroinitializer }, align 32
@st_fdma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad width or direction\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_fdma_prep_dma_cyclic\00", [40 x i8] zeroinitializer }, align 32
@st_fdma_prep_dma_cyclic._entry_ptr = internal global ptr @st_fdma_prep_dma_cyclic._entry, section ".printk_index", align 4
@st_fdma_prep_dma_cyclic._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"len is not multiple of period\0A\00", [33 x i8] zeroinitializer }, align 32
@st_fdma_prep_dma_cyclic._entry_ptr.47 = internal global ptr @st_fdma_prep_dma_cyclic._entry.45, section ".printk_index", align 4
@st_fdma_prep_dma_cyclic._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no memory for desc\0A\00", [44 x i8] zeroinitializer }, align 32
@st_fdma_prep_dma_cyclic._entry_ptr.50 = internal global ptr @st_fdma_prep_dma_cyclic._entry.48, section ".printk_index", align 4
@st_fdma_prep_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad direction?\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_fdma_prep_common\00", [44 x i8] zeroinitializer }, align 32
@st_fdma_prep_common._entry_ptr = internal global ptr @st_fdma_prep_common._entry, section ".printk_index", align 4
@config_reqctrl.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config_reqctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"chan:%d config_reqctrl:%#x req_ctrl:%#lx\0A\00", [54 x i8] zeroinitializer }, align 32
@st_fdma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.55, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st_fdma_prep_slave_sg\00", [42 x i8] zeroinitializer }, align 32
@st_fdma_prep_slave_sg._entry_ptr = internal global ptr @st_fdma_prep_slave_sg._entry, section ".printk_index", align 4
@st_fdma_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.56, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_fdma_prep_dma_memcpy\00", [40 x i8] zeroinitializer }, align 32
@st_fdma_prep_dma_memcpy._entry_ptr = internal global ptr @st_fdma_prep_dma_memcpy._entry, section ".printk_index", align 4
@st_fdma_terminate_all.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st_fdma_terminate_all\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"terminate chan:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@st_fdma_pause.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_fdma_pause\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pause chan:%d\0A\00", [17 x i8] zeroinitializer }, align 32
@st_fdma_resume.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_fdma_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"resume chan:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@st_fdma_of_xlate.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st_fdma_of_xlate\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"xlate req_line:%d type:%d req_ctrl:%#lx\0A\00", [55 x i8] zeroinitializer }, align 32
@st_fdma_dreq_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 46, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No req lines available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st_fdma_dreq_get\00", [47 x i8] zeroinitializer }, align 32
@st_fdma_dreq_get._entry_ptr = internal global ptr @st_fdma_dreq_get._entry, section ".printk_index", align 4
@st_fdma_dreq_get._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 51, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid or used req line\0A\00", [38 x i8] zeroinitializer }, align 32
@st_fdma_dreq_get._entry_ptr.69 = internal global ptr @st_fdma_dreq_get._entry.67, section ".printk_index", align 4
@st_fdma_dreq_get.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.66, ptr @.str.3, ptr @.str.70, i8 0, i8 15, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"get dreq_line:%d mask:%#lx\0A\00", [36 x i8] zeroinitializer }, align 32
@fdma_mpe31_stih407_11 = internal constant { %struct.st_fdma_driverdata, [16 x i8] } { %struct.st_fdma_driverdata { i32 0, [10 x i8] c"STiH407\00\00\00" }, [16 x i8] zeroinitializer }, align 32
@fdma_mpe31_stih407_12 = internal constant { %struct.st_fdma_driverdata, [16 x i8] } { %struct.st_fdma_driverdata { i32 1, [10 x i8] c"STiH407\00\00\00" }, [16 x i8] zeroinitializer }, align 32
@fdma_mpe31_stih407_13 = internal constant { %struct.st_fdma_driverdata, [16 x i8] } { %struct.st_fdma_driverdata { i32 2, [10 x i8] c"STiH407\00\00\00" }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"st_fdma_platform_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 863, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 865, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"st_fdma_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 701, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 749, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 761, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 781, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 788, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 829, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 836, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 841, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 716, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 719, i32 49 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 109, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 101, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 94, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 277, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 281, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 293, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 70, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 464, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 470, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 477, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 440, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 405, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 526, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 326, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 665, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 627, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 644, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 214, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 46, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 51, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 60, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [22 x i8] c"fdma_mpe31_stih407_11\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 686, i32 40 }
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"fdma_mpe31_stih407_12\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 691, i32 40 }
@___asan_gen_.296 = private unnamed_addr constant [22 x i8] c"fdma_mpe31_stih407_13\00", align 1
@___asan_gen_.297 = private constant [25 x i8] c"../drivers/dma/st_fdma.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 696, i32 40 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_st_fdma_platform_driver_exit, ptr @__initcall__kmod_st_fdma__246_871_st_fdma_platform_driver_init6, ptr @st_fdma_alloc_chan_res._entry, ptr @st_fdma_alloc_chan_res._entry_ptr, ptr @st_fdma_ch_sta_update._entry, ptr @st_fdma_ch_sta_update._entry_ptr, ptr @st_fdma_dreq_get._entry, ptr @st_fdma_dreq_get._entry.67, ptr @st_fdma_dreq_get._entry_ptr, ptr @st_fdma_dreq_get._entry_ptr.69, ptr @st_fdma_platform_driver_exit, ptr @st_fdma_prep_common._entry, ptr @st_fdma_prep_common._entry_ptr, ptr @st_fdma_prep_dma_cyclic._entry, ptr @st_fdma_prep_dma_cyclic._entry.45, ptr @st_fdma_prep_dma_cyclic._entry.48, ptr @st_fdma_prep_dma_cyclic._entry_ptr, ptr @st_fdma_prep_dma_cyclic._entry_ptr.47, ptr @st_fdma_prep_dma_cyclic._entry_ptr.50, ptr @st_fdma_prep_dma_memcpy._entry, ptr @st_fdma_prep_dma_memcpy._entry_ptr, ptr @st_fdma_prep_slave_sg._entry, ptr @st_fdma_prep_slave_sg._entry_ptr, ptr @st_fdma_probe._entry, ptr @st_fdma_probe._entry.12, ptr @st_fdma_probe._entry.15, ptr @st_fdma_probe._entry.18, ptr @st_fdma_probe._entry.21, ptr @st_fdma_probe._entry.6, ptr @st_fdma_probe._entry.9, ptr @st_fdma_probe._entry_ptr, ptr @st_fdma_probe._entry_ptr.11, ptr @st_fdma_probe._entry_ptr.14, ptr @st_fdma_probe._entry_ptr.17, ptr @st_fdma_probe._entry_ptr.20, ptr @st_fdma_probe._entry_ptr.24, ptr @st_fdma_probe._entry_ptr.8, ptr @st_fdma_platform_driver, ptr @.str, ptr @st_fdma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @fdma_mpe31_stih407_11, ptr @fdma_mpe31_stih407_12, ptr @fdma_mpe31_stih407_13], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_ch_sta_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_alloc_chan_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_prep_dma_cyclic._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_prep_dma_cyclic._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_prep_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_dreq_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fdma_dreq_get._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdma_mpe31_stih407_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdma_mpe31_stih407_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdma_mpe31_stih407_13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_fdma_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_fdma_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_fdma_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @st_fdma_match, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 468, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fw_name.i = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 9
  %name.i = getelementptr inbounds %struct.st_fdma_driverdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call.i189 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.25, ptr noundef %name.i, i32 noundef %5) #9
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %nr_channels.i = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 8
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef %nr_channels.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_channels.i, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 272) #9
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !162

devm_kcalloc.exit.thread:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %chans192 = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %chans192 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %chans192, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end17
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #9
  %chans = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %chans, align 4
  %tobool21.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool21.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end23

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %devm_kcalloc.exit
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %call.i, align 4
  %drvdata26 = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %drvdata26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %drvdata26, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call27 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call27, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.dev_name.exit_crit_edge

if.end30.dev_name.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end30.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %if.end30.dev_name.exit_crit_edge ]
  %call.i190 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call27, ptr noundef nonnull @st_fdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool36.not = icmp eq i32 %call.i190, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i190) #12
  br label %cleanup

if.end42:                                         ; preds = %dev_name.exit
  %call43 = tail call ptr @st_slim_rproc_alloc(ptr noundef %pdev, ptr noundef %fw_name.i) #9
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call43, ptr %slim_rproc, align 4
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end53

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %24) #12
  br label %cleanup

if.end53:                                         ; preds = %if.end42
  %dma_device = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2
  %channels = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %channels, ptr %prev.i, align 4
  %27 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp55194.not = icmp eq i32 %28, 0
  br i1 %cmp55194.not, label %if.end53.for.end_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  br label %for.body

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end53.for.body_crit_edge
  %i.0195 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end53.for.body_crit_edge ]
  %29 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chans, align 4
  %arrayidx = getelementptr %struct.st_fdma_chan, ptr %30, i32 %i.0195
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arrayidx, align 4
  %vchan = getelementptr %struct.st_fdma_chan, ptr %30, i32 %i.0195, i32 5
  %desc_free = getelementptr %struct.st_fdma_chan, ptr %30, i32 %i.0195, i32 5, i32 2
  %32 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @st_fdma_free_desc, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %vchan, ptr noundef %dma_device) #9
  %inc = add nuw i32 %i.0195, 1
  %33 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_channels.i, align 4
  %cmp55 = icmp ult i32 %inc, %34
  br i1 %cmp55, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end53.for.end_crit_edge
  %dreq_mask = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %dreq_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2147483647, ptr %dreq_mask, align 4
  %cap_mask = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  %dev67 = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 15
  %36 = ptrtoint ptr %dev67 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dev67, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 27
  %37 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @st_fdma_alloc_chan_res, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 29
  %38 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @st_fdma_free_chan_res, ptr %device_free_chan_resources, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 40
  %39 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @st_fdma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 39
  %40 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @st_fdma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 30
  %41 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @st_fdma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_tx_status = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 49
  %42 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @st_fdma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 50
  %43 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @st_fdma_issue_pending, ptr %device_issue_pending, align 4
  %device_terminate_all = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 47
  %44 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @st_fdma_terminate_all, ptr %device_terminate_all, align 4
  %device_config = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 44
  %45 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @st_fdma_slave_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 45
  %46 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @st_fdma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 46
  %47 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @st_fdma_resume, ptr %device_resume, align 4
  %src_addr_widths = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 19
  %48 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 30, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 20
  %49 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 30, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 21
  %50 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.st_fdma_dev, ptr %call.i, i32 0, i32 2, i32 26
  %51 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %residue_granularity, align 4
  %call84 = tail call i32 @dmaenginem_async_device_register(ptr noundef %dma_device) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call84) #12
  br label %err_rproc

if.end91:                                         ; preds = %for.end
  %call92 = tail call i32 @of_dma_controller_register(ptr noundef %1, ptr noundef nonnull @st_fdma_of_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.end102, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call92) #12
  br label %err_rproc

do.end102:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %53) #12
  br label %cleanup

err_rproc:                                        ; preds = %do.end97, %do.end89
  %ret.0 = phi i32 [ %call84, %do.end89 ], [ %call92, %do.end97 ]
  tail call fastcc void @st_fdma_free(ptr noundef nonnull %call.i)
  %54 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slim_rproc, align 4
  tail call void @st_slim_rproc_put(ptr noundef %55) #9
  br label %cleanup

cleanup:                                          ; preds = %err_rproc, %do.end102, %if.then46, %do.end40, %if.end23.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end102 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ %call.i.i.i, %do.end15 ], [ %call.i190, %do.end40 ], [ %24, %if.then46 ], [ %ret.0, %err_rproc ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %irq = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %3, ptr noundef %1) #9
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slim_rproc, align 4
  tail call void @st_slim_rproc_put(ptr noundef %5) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chans = getelementptr inbounds %struct.st_fdma_dev, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chans, align 4
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slim_rproc, align 4
  %peri = getelementptr inbounds %struct.st_slim_rproc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not53 = icmp eq i32 %6, 0
  br i1 %cmp.not53, label %entry.do.body_crit_edge, label %for.body.preheader

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.preheader:                               ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ret.061 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %fchan.056 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %int_sta.054 = phi i32 [ %shr, %for.inc.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %and = and i32 %int_sta.054, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %lock = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan.056, i32 0, i32 5, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %chan_id.i = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan.056, i32 0, i32 5, i32 0, i32 4
  %8 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id.i, align 4
  %10 = ptrtoint ptr %fchan.056 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fchan.056, align 4
  %slim_rproc.i = getelementptr inbounds %struct.st_fdma_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %slim_rproc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slim_rproc.i, align 4
  %mem.i = getelementptr inbounds %struct.st_slim_rproc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i, align 4
  %mul.i = shl i32 %9, 2
  %add.ptr.i = getelementptr i8, ptr %15, i32 512
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #9, !srcloc !163
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %and9.i = and i32 %int_sta.054, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %17, 28
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %and.i) #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %and8.i = and i32 %17, 3
  %20 = zext i32 %and8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and8.i, label %if.end.i.st_fdma_ch_sta_update.exit_crit_edge [
    i32 3, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 2, label %sw.bb11.i
  ]

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end.i.st_fdma_ch_sta_update.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_fdma_ch_sta_update.exit

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb11.i, %if.end.i.cleanup.sink.split.i_crit_edge, %do.end.i
  %.sink.i = phi i32 [ 1, %sw.bb11.i ], [ 3, %do.end.i ], [ 2, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %status10.i = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan.056, i32 0, i32 7
  %21 = ptrtoint ptr %status10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.i, ptr %status10.i, align 4
  br label %st_fdma_ch_sta_update.exit

st_fdma_ch_sta_update.exit:                       ; preds = %cleanup.sink.split.i, %if.end.i.st_fdma_ch_sta_update.exit_crit_edge
  %fdesc = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan.056, i32 0, i32 6
  %22 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fdesc, align 4
  %tobool2.not = icmp eq ptr %23, null
  br i1 %tobool2.not, label %st_fdma_ch_sta_update.exit.if.end18_crit_edge, label %if.then3

st_fdma_ch_sta_update.exit.if.end18_crit_edge:    ; preds = %st_fdma_ch_sta_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then3:                                         ; preds = %st_fdma_ch_sta_update.exit
  %iscyclic = getelementptr inbounds %struct.st_fdma_desc, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %iscyclic to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iscyclic, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool5.not = icmp eq i8 %25, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %23, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del.exit_crit_edge

if.then6.list_del.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %23, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then6.list_del.exit_crit_edge
  %32 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %23, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %34 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fdesc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i = icmp slt i32 %39, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !162

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !167
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %completed_cookie.i.i, align 4
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_irq_handler, %do.end.i43)) #9
          to label %if.then.i [label %do.end.i43], !srcloc !168

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %45, ptr noundef nonnull @.str.33, ptr noundef %35, i32 noundef %39) #9
  br label %do.end.i43

do.end.i43:                                       ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %35, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 7
  %prev.i.i42 = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i42, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %47, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i43.list_add_tail.exit.i_crit_edge

do.end.i43.list_add_tail.exit.i_crit_edge:        ; preds = %do.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %node.i, ptr %prev.i.i42, align 4
  %49 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %35, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %node.i, ptr %47, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i43.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 1, i32 1
  %call.i.i44 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i.i = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.if.end13.thread_crit_edge

list_add_tail.exit.i.if.end13.thread_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.thread

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %if.then.i.i, %list_add_tail.exit.i.if.end13.thread_crit_edge
  %52 = ptrtoint ptr %fdesc to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fdesc, align 4
  %status = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan.056, i32 0, i32 7
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %status, align 4
  br label %if.then16

if.else:                                          ; preds = %if.then3
  %chan.i45 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 3
  %54 = ptrtoint ptr %chan.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chan.i45, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %23, ptr %cyclic.i, align 4
  %state.i.i46 = getelementptr inbounds %struct.virt_dma_chan, ptr %55, i32 0, i32 1, i32 1
  %call.i.i47 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %tobool.not.i.i48 = icmp eq i32 %call.i.i47, 0
  br i1 %tobool.not.i.i48, label %if.then.i.i50, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then.i.i50:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %task.i49 = getelementptr inbounds %struct.virt_dma_chan, ptr %55, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i49) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then.i.i50, %if.else.if.end13_crit_edge
  %57 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load ptr, ptr %fdesc, align 4
  %tobool15.not = icmp eq ptr %.pr, null
  br i1 %tobool15.not, label %if.end13.if.then16_crit_edge, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.end13.thread
  tail call fastcc void @st_fdma_xfer_desc(ptr noundef %fchan.056)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge, %st_fdma_ch_sta_update.exit.if.end18_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ 1, %if.end18 ], [ %ret.061, %for.body.for.inc_crit_edge ]
  %shr = lshr i32 %int_sta.054, 2
  %incdec.ptr = getelementptr %struct.st_fdma_chan, ptr %fchan.056, i32 1
  %cmp.not = icmp ult i32 %int_sta.054, 4
  br i1 %cmp.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %ret.1, %for.inc.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %slim_rproc, align 4
  %peri22 = getelementptr inbounds %struct.st_slim_rproc, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %peri22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %peri22, align 4
  %add.ptr23 = getelementptr i8, ptr %61, i32 4056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %6) #9, !srcloc !170
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @st_slim_rproc_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_fdma_free_desc(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_nodes = getelementptr inbounds %struct.st_fdma_desc, ptr %vdesc, i32 0, i32 3
  %0 = ptrtoint ptr %n_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fchan = getelementptr inbounds %struct.st_fdma_desc, ptr %vdesc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fchan, align 4
  %node_pool = getelementptr inbounds %struct.st_fdma_chan, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node_pool, align 4
  %arrayidx = getelementptr %struct.st_fdma_desc, ptr %vdesc, i32 0, i32 4, i32 %i.011
  %desc = getelementptr %struct.st_fdma_desc, ptr %vdesc, i32 0, i32 4, i32 %i.011, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef %7, i32 noundef %9) #9
  %inc = add nuw i32 %i.011, 1
  %10 = ptrtoint ptr %n_nodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_nodes, align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_alloc_chan_res(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %dev = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i27 = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call3 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i27, ptr noundef %9, i32 noundef 32, i32 noundef 32, i32 noundef 0) #9
  %node_pool = getelementptr i8, ptr %chan, i32 -80
  %10 = ptrtoint ptr %node_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %node_pool, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %do.body7

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.36) #12
  br label %cleanup

do.body7:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_alloc_chan_res.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_alloc_chan_res, %cleanup)) #9
          to label %if.then13 [label %cleanup], !srcloc !168

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %chan_id = getelementptr i8, ptr %chan, i32 16
  %19 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan_id, align 4
  %type = getelementptr i8, ptr %chan, i32 -24
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_alloc_chan_res.__UNIQUE_ID_ddebug240, ptr noundef %18, ptr noundef nonnull @.str.38, i32 noundef %20, i32 noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body7, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then13 ], [ 0, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_fdma_free_chan_res(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slim_rproc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_free_chan_res.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_free_chan_res, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %chan_id = getelementptr i8, ptr %chan, i32 16
  %10 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_free_chan_res.__UNIQUE_ID_ddebug241, ptr noundef %9, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr i8, ptr %chan, i32 -24
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %do.end.do.body11_crit_edge, label %if.then8

do.end.do.body11_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

if.then8:                                         ; preds = %do.end
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_dreq_put.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_free_chan_res, %st_fdma_dreq_put.exit)) #9
          to label %if.then.i [label %st_fdma_dreq_put.exit], !srcloc !168

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dreq_line.i = getelementptr i8, ptr %chan, i32 -4
  %18 = ptrtoint ptr %dreq_line.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dreq_line.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_dreq_put.__UNIQUE_ID_ddebug237, ptr noundef %17, ptr noundef nonnull @.str.42, i32 noundef %19) #9
  br label %st_fdma_dreq_put.exit

st_fdma_dreq_put.exit:                            ; preds = %if.then.i, %if.then8
  %dreq_line5.i = getelementptr i8, ptr %chan, i32 -4
  %20 = ptrtoint ptr %dreq_line5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dreq_line5.i, align 4
  %dreq_mask.i = getelementptr inbounds %struct.st_fdma_dev, ptr %15, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %21, ptr noundef %dreq_mask.i) #9
  br label %do.body11

do.body11:                                        ; preds = %st_fdma_dreq_put.exit, %do.end.do.body11_crit_edge
  %cfg = getelementptr i8, ptr %chan, i32 -28
  %lock = getelementptr i8, ptr %chan, i32 92
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %fdesc = getelementptr i8, ptr %chan, i32 180
  %22 = ptrtoint ptr %fdesc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %fdesc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #9
  %node_pool = getelementptr i8, ptr %chan, i32 -80
  %23 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %24) #9
  %25 = ptrtoint ptr %node_pool to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %node_pool, align 4
  %26 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  tail call void @rproc_shutdown(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @st_fdma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not.i = icmp eq i32 %len, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %chan, i32 -84
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %st_fdma_prep_common.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51) #12
  br label %cleanup

st_fdma_prep_common.exit:                         ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool1.not = icmp eq i32 %period_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %st_fdma_prep_common.exit.cleanup_crit_edge, label %if.end3

st_fdma_prep_common.exit.cleanup_crit_edge:       ; preds = %st_fdma_prep_common.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %st_fdma_prep_common.exit
  %call4 = tail call fastcc i32 @config_reqctrl(ptr noundef nonnull %add.ptr.i.i, i32 noundef %direction)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %div = udiv i32 %len, %period_len
  %10 = mul i32 %div, %period_len
  %rem.decomposed = sub i32 %len, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.46) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call fastcc ptr @st_fdma_alloc_desc(ptr noundef nonnull %add.ptr.i.i, i32 noundef %div)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %iscyclic = getelementptr inbounds %struct.st_fdma_desc, ptr %call15, i32 0, i32 2
  %19 = ptrtoint ptr %iscyclic to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %iscyclic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp2484 = icmp sgt i32 %div, 0
  br i1 %cmp2484, label %for.body.lr.ph, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %dreq_line = getelementptr i8, ptr %chan, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 1
  %dev_addr8.i = getelementptr i8, ptr %chan, i32 -20
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end34.for.body_crit_edge ]
  %desc = getelementptr %struct.st_fdma_desc, ptr %call15, i32 0, i32 4, i32 %i.085, i32 1
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  %add = add nuw nsw i32 %i.085, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %22 = icmp eq i32 %add, %div
  %iv.rem = select i1 %22, i32 0, i32 %add
  %arrayidx27 = getelementptr %struct.st_fdma_desc, ptr %call15, i32 0, i32 4, i32 %iv.rem
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx27, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %21, align 32
  %26 = ptrtoint ptr %dreq_line to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dreq_line, align 4
  %and = and i32 %27, 31
  %control = getelementptr inbounds %struct.st_fdma_hw_node, ptr %21, i32 0, i32 1
  br i1 %cmp.i, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or2.i = or i32 %and, -2147483456
  %28 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or2.i, ptr %control, align 4
  %29 = ptrtoint ptr %dev_addr8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_addr8.i, align 4
  %mul = mul i32 %i.085, %period_len
  %add31 = add i32 %mul, %buf_addr
  br label %if.end34

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or6.i = or i32 %and, -2147483360
  %31 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or6.i, ptr %control, align 4
  %32 = ptrtoint ptr %dev_addr8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_addr8.i, align 4
  %mul32 = mul i32 %i.085, %period_len
  %add33 = add i32 %mul32, %buf_addr
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then30
  %add33.sink = phi i32 [ %30, %if.then30 ], [ %add33, %if.else ]
  %.sink = phi i32 [ %add31, %if.then30 ], [ %33, %if.else ]
  %34 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %21, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add33.sink, ptr %34, align 16
  %36 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %21, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %36, align 4
  %38 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %21, i32 0, i32 5, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %38, align 4
  %40 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %21, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %40, align 4
  %nbytes = getelementptr inbounds %struct.st_fdma_hw_node, ptr %21, i32 0, i32 2
  %42 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %period_len, ptr %nbytes, align 8
  %43 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %21, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %period_len, ptr %43, align 4
  %exitcond.not = icmp eq i32 %add, %div
  br i1 %exitcond.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %if.end23.for.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call15, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call15, i32 0, i32 1
  %45 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call15, i32 0, i32 4
  %46 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call15, i32 0, i32 5
  %47 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call15, i32 0, i32 1
  %48 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call15, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call15, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %51, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %node.i, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call15, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %node.i, ptr %51, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end20, %do.end11, %do.end, %st_fdma_prep_common.exit.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end11 ], [ %call15, %vchan_tx_prep.exit ], [ null, %do.end20 ], [ null, %st_fdma_prep_common.exit.cleanup_crit_edge ], [ null, %do.end.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @st_fdma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool1.not.i = icmp eq i32 %sg_len, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %chan, i32 -84
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %st_fdma_prep_common.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51) #12
  br label %cleanup

st_fdma_prep_common.exit:                         ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %tobool1.not = icmp eq ptr %sgl, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %st_fdma_prep_common.exit.cleanup_crit_edge, label %if.end3

st_fdma_prep_common.exit.cleanup_crit_edge:       ; preds = %st_fdma_prep_common.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %st_fdma_prep_common.exit
  %call4 = tail call fastcc ptr @st_fdma_alloc_desc(ptr noundef nonnull %add.ptr.i.i, i32 noundef %sg_len)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %for.body.lr.ph

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.49) #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end3
  %iscyclic = getelementptr inbounds %struct.st_fdma_desc, ptr %call4, i32 0, i32 2
  %10 = ptrtoint ptr %iscyclic to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %iscyclic, align 4
  %dreq_line = getelementptr i8, ptr %chan, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 1
  %dev_addr8.i = getelementptr i8, ptr %chan, i32 -20
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end13.for.body_crit_edge ]
  %sg.059 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call15, %if.end13.for.body_crit_edge ]
  %desc = getelementptr %struct.st_fdma_desc, ptr %call4, i32 0, i32 4, i32 %i.061, i32 1
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %add = add nuw i32 %i.061, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sg_len)
  %13 = icmp eq i32 %add, %sg_len
  %iv.rem = select i1 %13, i32 0, i32 %add
  %arrayidx9 = getelementptr %struct.st_fdma_desc, ptr %call4, i32 0, i32 4, i32 %iv.rem
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %12, align 32
  %17 = ptrtoint ptr %dreq_line to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dreq_line, align 4
  %and = and i32 %18, 31
  %control = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 1
  br i1 %cmp.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or2.i = or i32 %and, 192
  %19 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or2.i, ptr %control, align 4
  %20 = ptrtoint ptr %dev_addr8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_addr8.i, align 4
  %daddr.i = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 4
  %22 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %daddr.i, align 16
  %sstride.i56 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %sstride.i56 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sstride.i56, align 4
  %dstride.i57 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 5, i32 0, i32 2
  %24 = ptrtoint ptr %dstride.i57 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dstride.i57, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.059, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  %saddr = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 3
  %27 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %saddr, align 4
  br label %if.end13

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or6.i = or i32 %and, 288
  %28 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or6.i, ptr %control, align 4
  %29 = ptrtoint ptr %dev_addr8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_addr8.i, align 4
  %saddr.i = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 3
  %31 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %saddr.i, align 4
  %sstride.i = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %sstride.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sstride.i, align 4
  %dstride.i = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 5, i32 0, i32 2
  %33 = ptrtoint ptr %dstride.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dstride.i, align 4
  %dma_address12 = getelementptr inbounds %struct.scatterlist, ptr %sg.059, i32 0, i32 3
  %34 = ptrtoint ptr %dma_address12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address12, align 4
  %daddr = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 4
  %36 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %daddr, align 16
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.059, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length, align 4
  %nbytes = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 2
  %39 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %nbytes, align 8
  %40 = load i32, ptr %dma_length, align 4
  %41 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %41, align 4
  %call15 = tail call ptr @sg_next(ptr noundef %sg.059) #9
  %exitcond.not = icmp eq i32 %add, %sg_len
  br i1 %exitcond.not, label %for.end, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end13
  %control16 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 1
  %43 = ptrtoint ptr %control16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %control16, align 4
  %or = or i32 %44, -2147483648
  store i32 %or, ptr %control16, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call4, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call4, i32 0, i32 1
  %45 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call4, i32 0, i32 4
  %46 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call4, i32 0, i32 5
  %47 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 1
  %48 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %51, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %node.i, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %node.i, ptr %51, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end, %st_fdma_prep_common.exit.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %st_fdma_prep_common.exit.cleanup_crit_edge ], [ null, %do.end.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @st_fdma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %call1 = tail call fastcc ptr @st_fdma_alloc_desc(ptr noundef %add.ptr.i, i32 noundef 1)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %desc = getelementptr inbounds %struct.st_fdma_desc, ptr %call1, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 32
  %control = getelementptr inbounds %struct.st_fdma_hw_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2147483328, ptr %control, align 4
  %nbytes = getelementptr inbounds %struct.st_fdma_hw_node, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %nbytes, align 8
  %saddr = getelementptr inbounds %struct.st_fdma_hw_node, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %src, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.st_fdma_hw_node, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dst, ptr %daddr, align 16
  %11 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %11, align 4
  %sstride = getelementptr inbounds %struct.st_fdma_hw_node, ptr %5, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %sstride to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sstride, align 4
  %dstride = getelementptr inbounds %struct.st_fdma_hw_node, ptr %5, i32 0, i32 5, i32 0, i32 2
  %14 = ptrtoint ptr %dstride to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dstride, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call1, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 4
  %16 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 5
  %17 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 1
  %18 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %21, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.vchan_tx_prep.exit_crit_edge

if.end4.vchan_tx_prep.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %node.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %node.i, ptr %21, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end4.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !171
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
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
  %brmerge80 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge80, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr i8, ptr %chan, i32 92
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #9
  %fdesc = getelementptr i8, ptr %chan, i32 180
  %8 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fdesc, align 4
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
  %cmp13 = icmp eq i32 %11, %cookie
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc.i = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %slim_rproc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slim_rproc.i, align 4
  %mem.i = getelementptr inbounds %struct.st_slim_rproc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem.i, align 4
  %chan_id.i = getelementptr i8, ptr %chan, i32 16
  %18 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chan_id.i, align 4
  %mul.i = shl i32 %19, 2
  %add.ptr.i47 = getelementptr i8, ptr %17, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i47, i32 512
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %21 = and i32 %20, -520093697
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fdesc, align 4
  %n_nodes.i = getelementptr inbounds %struct.st_fdma_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %n_nodes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_nodes.i, align 4
  %i.02.i = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %if.then15.for.body.i_crit_edge, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then15.for.body.i_crit_edge:                   ; preds = %if.then15
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then15.for.body.i_crit_edge
  %i.05.i = phi i32 [ %i.0.i, %if.end24.i.for.body.i_crit_edge ], [ %i.02.i, %if.then15.for.body.i_crit_edge ]
  %residue.04.i = phi i32 [ %add27.i, %if.end24.i.for.body.i_crit_edge ], [ 0, %if.then15.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.st_fdma_desc, ptr %9, i32 0, i32 4, i32 %i.05.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %28)
  %cmp6.i = icmp eq i32 %22, %28
  br i1 %cmp6.i, label %if.then7.i, label %if.end24.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc11.i = getelementptr inbounds %struct.st_fdma_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %slim_rproc11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slim_rproc11.i, align 4
  %mem12.i = getelementptr inbounds %struct.st_slim_rproc, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %mem12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mem12.i, align 4
  %35 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan_id.i, align 4
  %mul18.i = shl i32 %36, 7
  %add.ptr19.i = getelementptr i8, ptr %34, i32 %mul18.i
  %add.ptr20.i = getelementptr i8, ptr %add.ptr19.i, i32 2056
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !163
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %add.i = add i32 %38, %residue.04.i
  br label %if.end24

if.end24.i:                                       ; preds = %for.body.i
  %desc.i = getelementptr %struct.st_fdma_desc, ptr %9, i32 0, i32 4, i32 %i.05.i, i32 1
  %39 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc.i, align 4
  %nbytes.i = getelementptr inbounds %struct.st_fdma_hw_node, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nbytes.i, align 8
  %add27.i = add i32 %42, %residue.04.i
  %i.0.i = add i32 %i.05.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %if.end24.i.for.body.i_crit_edge, label %if.end24.i.if.end24_crit_edge

if.end24.i.if.end24_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body2.if.else_crit_edge
  %tobool17.not = icmp eq ptr %call9, null
  br i1 %tobool17.not, label %if.else.if.end24_crit_edge, label %if.then18

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.else
  %n_nodes.i51 = getelementptr inbounds %struct.st_fdma_desc, ptr %9, i32 0, i32 3
  %43 = ptrtoint ptr %n_nodes.i51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_nodes.i51, align 4
  %i.02.i52 = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i52)
  %cmp3.i53 = icmp sgt i32 %i.02.i52, -1
  br i1 %cmp3.i53, label %if.then18.for.body.i59_crit_edge, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18.for.body.i59_crit_edge:                 ; preds = %if.then18
  br label %for.body.i59

for.body.i59:                                     ; preds = %if.end24.i73.for.body.i59_crit_edge, %if.then18.for.body.i59_crit_edge
  %i.05.i55 = phi i32 [ %i.0.i71, %if.end24.i73.for.body.i59_crit_edge ], [ %i.02.i52, %if.then18.for.body.i59_crit_edge ]
  %residue.04.i56 = phi i32 [ %add27.i70, %if.end24.i73.for.body.i59_crit_edge ], [ 0, %if.then18.for.body.i59_crit_edge ]
  %arrayidx5.i57 = getelementptr %struct.st_fdma_desc, ptr %9, i32 0, i32 4, i32 %i.05.i55
  %45 = ptrtoint ptr %arrayidx5.i57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp6.i58 = icmp eq i32 %46, 0
  br i1 %cmp6.i58, label %if.then7.i67, label %if.end24.i73

if.then7.i67:                                     ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc11.i60 = getelementptr inbounds %struct.st_fdma_dev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %slim_rproc11.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slim_rproc11.i60, align 4
  %mem12.i61 = getelementptr inbounds %struct.st_slim_rproc, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %mem12.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem12.i61, align 4
  %chan_id17.i62 = getelementptr i8, ptr %chan, i32 16
  %53 = ptrtoint ptr %chan_id17.i62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chan_id17.i62, align 4
  %mul18.i63 = shl i32 %54, 7
  %add.ptr19.i64 = getelementptr i8, ptr %52, i32 %mul18.i63
  %add.ptr20.i65 = getelementptr i8, ptr %add.ptr19.i64, i32 2056
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i65) #9, !srcloc !163
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %add.i66 = add i32 %56, %residue.04.i56
  br label %if.end24

if.end24.i73:                                     ; preds = %for.body.i59
  %desc.i68 = getelementptr %struct.st_fdma_desc, ptr %9, i32 0, i32 4, i32 %i.05.i55, i32 1
  %57 = ptrtoint ptr %desc.i68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc.i68, align 4
  %nbytes.i69 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %nbytes.i69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nbytes.i69, align 8
  %add27.i70 = add i32 %60, %residue.04.i56
  %i.0.i71 = add i32 %i.05.i55, -1
  %cmp.i72 = icmp sgt i32 %i.0.i71, -1
  br i1 %cmp.i72, label %if.end24.i73.for.body.i59_crit_edge, label %if.end24.i73.if.end24_crit_edge

if.end24.i73.if.end24_crit_edge:                  ; preds = %if.end24.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24.i73.for.body.i59_crit_edge:              ; preds = %if.end24.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i59

if.end24:                                         ; preds = %if.end24.i73.if.end24_crit_edge, %if.then7.i67, %if.then18.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.end24.i.if.end24_crit_edge, %if.then7.i, %if.then15.if.end24_crit_edge
  %residue.1.i74.sink = phi i32 [ %add.i, %if.then7.i ], [ 0, %if.then15.if.end24_crit_edge ], [ %add.i66, %if.then7.i67 ], [ 0, %if.then18.if.end24_crit_edge ], [ 0, %if.else.if.end24_crit_edge ], [ %add27.i70, %if.end24.i73.if.end24_crit_edge ], [ %add27.i, %if.end24.i.if.end24_crit_edge ]
  %residue20 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %61 = ptrtoint ptr %residue20 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %residue.1.i74.sink, ptr %residue20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i79.shrunk = phi i1 [ true, %if.end24 ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i79 = zext i1 %retval.0.i.i79.shrunk to i32
  ret i32 %retval.0.i.i79
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_fdma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %lock = getelementptr i8, ptr %chan, i32 92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
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
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %fdesc = getelementptr i8, ptr %chan, i32 180
  %12 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdesc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @st_fdma_xfer_desc(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_terminate_all(ptr noundef %chan) #2 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %chan_id = getelementptr i8, ptr %chan, i32 16
  %3 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_terminate_all.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_terminate_all, %do.body8)) #9
          to label %if.then [label %do.body8], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_terminate_all.__UNIQUE_ID_ddebug245, ptr noundef %8, ptr noundef nonnull @.str.58, i32 noundef %4) #9
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %shl = shl i32 %4, 1
  %shl2 = shl i32 2, %shl
  %lock = getelementptr i8, ptr %chan, i32 92
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  call void @arm_heavy_mb() #9
  %9 = call i32 @llvm.bswap.i32(i32 %shl2)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slim_rproc, align 4
  %peri = getelementptr inbounds %struct.st_slim_rproc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 4036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #9, !srcloc !170
  %fdesc = getelementptr i8, ptr %chan, i32 180
  %16 = ptrtoint ptr %fdesc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %fdesc, align 4
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %17 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %do.body8.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

do.body8.list_splice_tail_init.exit.i_crit_edge:  ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %20, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head, ptr %22, align 4
  store ptr %22, ptr %0, align 4
  %26 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %do.body8.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %28, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i12.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %30, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head, ptr %32, align 4
  store ptr %32, ptr %0, align 4
  %36 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %37 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %38, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i18.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %40, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %head, ptr %42, align 4
  store ptr %42, ptr %0, align 4
  %46 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %47 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %48, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i24.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %head, ptr %52, align 4
  store ptr %52, ptr %0, align 4
  %56 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %57 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %58, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i30.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %58, ptr %60, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %head, ptr %62, align 4
  store ptr %62, ptr %0, align 4
  %66 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st_fdma_slave_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %slave_cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scfg = getelementptr i8, ptr %chan, i32 -76
  %0 = call ptr @memcpy(ptr %scfg, ptr %slave_cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %chan_id = getelementptr i8, ptr %chan, i32 16
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %shl = shl i32 %1, 1
  %shl2 = shl i32 2, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_pause.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_pause, %do.body8)) #9
          to label %if.then [label %do.body8], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_pause.__UNIQUE_ID_ddebug243, ptr noundef %5, ptr noundef nonnull @.str.60, i32 noundef %1) #9
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %chan, i32 92
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %fdesc = getelementptr i8, ptr %chan, i32 180
  %6 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdesc, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %do.body8.if.end23_crit_edge, label %do.body19

do.body8.if.end23_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl2)
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slim_rproc, align 4
  %peri = getelementptr inbounds %struct.st_slim_rproc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %peri, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 4036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #9, !srcloc !170
  br label %if.end23

if.end23:                                         ; preds = %do.body19, %do.body8.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_fdma_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -84
  %chan_id = getelementptr i8, ptr %chan, i32 16
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_resume.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_resume, %do.body7)) #9
          to label %if.then [label %do.body7], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_resume.__UNIQUE_ID_ddebug244, ptr noundef %5, ptr noundef nonnull @.str.62, i32 noundef %1) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %chan, i32 92
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %fdesc = getelementptr i8, ptr %chan, i32 180
  %6 = ptrtoint ptr %fdesc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdesc, align 4
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %do.body7.if.end40_crit_edge, label %if.then17

do.body7.if.end40_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slim_rproc, align 4
  %mem = getelementptr inbounds %struct.st_slim_rproc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem, align 4
  %14 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan_id, align 4
  %mul = shl i32 %15, 2
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %17 = and i32 %16, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %slim_rproc30 = getelementptr inbounds %struct.st_fdma_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %slim_rproc30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slim_rproc30, align 4
  %mem31 = getelementptr inbounds %struct.st_slim_rproc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %mem31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem31, align 4
  %24 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan_id, align 4
  %mul37 = shl i32 %25, 2
  %add.ptr38 = getelementptr i8, ptr %23, i32 %mul37
  %add.ptr39 = getelementptr i8, ptr %add.ptr38, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %17) #9, !srcloc !170
  br label %if.end40

if.end40:                                         ; preds = %if.then17, %do.body7.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @st_fdma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_device = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 2
  %dev = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 2, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %8 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_spec, align 4
  %cmp1.not = icmp eq ptr %7, %9
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slim_rproc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call5 = tail call i32 @rproc_boot(ptr noundef %13) #9
  %14 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call5, label %if.then9 [
    i32 -2, label %if.end4.cleanup_crit_edge
    i32 0, label %if.end12
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %15 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call14 = tail call ptr @dma_get_any_slave_channel(ptr noundef %dma_device) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.err_chan_crit_edge, label %if.end17

if.end12.err_chan_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chan

if.end17:                                         ; preds = %if.end12
  %add.ptr.i = getelementptr i8, ptr %call14, i32 -84
  %16 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_spec, align 4
  %cfg = getelementptr i8, ptr %call14, i32 -28
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %cfg, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %19 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %args, align 4
  %req_line = getelementptr i8, ptr %call14, i32 -12
  %21 = ptrtoint ptr %req_line to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %req_line, align 4
  %req_ctrl = getelementptr i8, ptr %call14, i32 -8
  %22 = ptrtoint ptr %req_ctrl to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %req_ctrl, align 4
  %type = getelementptr i8, ptr %call14, i32 -24
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %type, align 4
  %24 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp25 = icmp sgt i32 %25, 1
  br i1 %cmp25, label %if.end31, label %if.end17.if.then43_crit_edge

if.end17.if.then43_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.end31:                                         ; preds = %if.end17
  %arrayidx28 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx28, align 4
  %and = and i32 %27, 6422535
  %28 = ptrtoint ptr %req_ctrl to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %req_ctrl, align 4
  %29 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp33 = icmp sgt i32 %.pr, 2
  br i1 %cmp33, label %if.then34, label %if.end39thread-pre-split

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36, align 4
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %type, align 4
  br label %if.end39

if.end39thread-pre-split:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr111 = load i32, ptr %type, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39thread-pre-split, %if.then34
  %34 = phi i32 [ %.pr111, %if.end39thread-pre-split ], [ %31, %if.then34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp42 = icmp eq i32 %34, 0
  br i1 %cmp42, label %if.end39.if.then43_crit_edge, label %if.else44

if.end39.if.then43_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.then43:                                        ; preds = %if.end39.if.then43_crit_edge, %if.end17.if.then43_crit_edge
  %dreq_line = getelementptr i8, ptr %call14, i32 -4
  %35 = ptrtoint ptr %dreq_line to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %dreq_line, align 4
  br label %do.body

if.else44:                                        ; preds = %if.end39
  %call45 = tail call fastcc i32 @st_fdma_dreq_get(ptr noundef %add.ptr.i)
  %dreq_line46 = getelementptr i8, ptr %call14, i32 -4
  %36 = ptrtoint ptr %dreq_line46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call45, ptr %dreq_line46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call45)
  %cmp48 = icmp ugt i32 %call45, -4096
  br i1 %cmp48, label %if.then51, label %if.else44.do.body_crit_edge, !prof !162

if.else44.do.body_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then51:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %37 = inttoptr i32 %call45 to ptr
  br label %err_chan

do.body:                                          ; preds = %if.else44.do.body_crit_edge, %if.then43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_of_xlate.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_of_xlate, %cleanup)) #9
          to label %if.then66 [label %cleanup], !srcloc !168

if.then66:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %req_line to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req_line, align 4
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  %44 = ptrtoint ptr %req_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %req_ctrl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_of_xlate.__UNIQUE_ID_ddebug239, ptr noundef %39, ptr noundef nonnull @.str.64, i32 noundef %41, i32 noundef %43, i32 noundef %45) #9
  br label %cleanup

err_chan:                                         ; preds = %if.then51, %if.end12.err_chan_crit_edge
  %chan.0 = phi ptr [ %37, %if.then51 ], [ null, %if.end12.err_chan_crit_edge ]
  %46 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %slim_rproc, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void @rproc_shutdown(ptr noundef %49) #9
  br label %cleanup

cleanup:                                          ; preds = %err_chan, %if.then66, %do.body, %if.then9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then9 ], [ %chan.0, %err_chan ], [ %call14, %if.then66 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end4.cleanup_crit_edge ], [ %call14, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_fdma_free(ptr nocapture noundef readonly %fdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_channels = getelementptr inbounds %struct.st_fdma_dev, ptr %fdev, i32 0, i32 8
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chans = getelementptr inbounds %struct.st_fdma_dev, ptr %fdev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chans, align 4
  %device_node = getelementptr %struct.st_fdma_chan, ptr %3, i32 %i.07, i32 5, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr %struct.st_fdma_chan, ptr %3, i32 %i.07, i32 5, i32 0, i32 8, i32 1
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

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node, align 4
  %prev.i = getelementptr %struct.st_fdma_chan, ptr %3, i32 %i.07, i32 5, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr %struct.st_fdma_chan, ptr %3, i32 %i.07, i32 5, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #9
  %inc = add nuw i32 %i.07, 1
  %12 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_channels, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_slim_rproc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_fdma_xfer_desc(ptr noundef %fchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued.i = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not64 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not64
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fdesc = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 6
  %2 = ptrtoint ptr %fdesc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %fdesc, align 4
  %node = getelementptr i8, ptr %1, i32 20
  %desc = getelementptr i8, ptr %1, i32 24
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %nbytes3 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %nbytes3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nbytes3, align 8
  %chan_id = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 5, i32 0, i32 4
  %7 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_id, align 4
  %shl = shl i32 %8, 1
  %shl5 = shl nuw i32 1, %shl
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node, align 4
  %or = or i32 %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %6)
  %12 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fchan, align 4
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slim_rproc, align 4
  %mem = getelementptr inbounds %struct.st_slim_rproc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem, align 4
  %18 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chan_id, align 4
  %mul = shl i32 %19, 7
  %add.ptr = getelementptr i8, ptr %17, i32 %mul
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  %21 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fchan, align 4
  %slim_rproc18 = getelementptr inbounds %struct.st_fdma_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %slim_rproc18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slim_rproc18, align 4
  %mem19 = getelementptr inbounds %struct.st_slim_rproc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %mem19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem19, align 4
  %27 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan_id, align 4
  %mul25 = shl i32 %28, 2
  %add.ptr26 = getelementptr i8, ptr %26, i32 %mul25
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %20) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl5)
  %30 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fchan, align 4
  %slim_rproc32 = getelementptr inbounds %struct.st_fdma_dev, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %slim_rproc32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %slim_rproc32, align 4
  %peri = getelementptr inbounds %struct.st_slim_rproc, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %peri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peri, align 4
  %add.ptr33 = getelementptr i8, ptr %35, i32 4036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %29) #9, !srcloc !170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_xfer_desc.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_xfer_desc, %cleanup)) #9
          to label %if.then40 [label %cleanup], !srcloc !168

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fchan, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_xfer_desc.__UNIQUE_ID_ddebug238, ptr noundef %39, ptr noundef nonnull @.str.35, i32 noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_reqctrl(ptr nocapture noundef %fchan, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 5, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %2 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fchan, align 4
  %4 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %direction, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_ctrl = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %req_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req_ctrl, align 4
  %and = and i32 %6, -16385
  store i32 %and, ptr %req_ctrl, align 4
  %src_maxburst = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 2, i32 5
  %src_addr_width = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 2, i32 3
  %src_addr = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 2, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_ctrl6 = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %req_ctrl6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req_ctrl6, align 4
  %or = or i32 %8, 16384
  store i32 %or, ptr %req_ctrl6, align 4
  %dst_maxburst = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 2, i32 6
  %dst_addr_width = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 2, i32 4
  %dst_addr = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 2, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %addr.0.in = phi ptr [ %dst_addr, %sw.bb4 ], [ %src_addr, %sw.bb ]
  %width.0.in = phi ptr [ %dst_addr_width, %sw.bb4 ], [ %src_addr_width, %sw.bb ]
  %maxburst.0.in = phi ptr [ %dst_maxburst, %sw.bb4 ], [ %src_maxburst, %sw.bb ]
  %9 = ptrtoint ptr %maxburst.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %maxburst.0 = load i32, ptr %maxburst.0.in, align 4
  %10 = ptrtoint ptr %width.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %width.0 = load i32, ptr %width.0.in, align 4
  %11 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %addr.0 = load i32, ptr %addr.0.in, align 4
  %req_ctrl11 = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %req_ctrl11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req_ctrl11, align 4
  %and12 = and i32 %13, -241
  store i32 %and12, ptr %req_ctrl11, align 4
  %14 = zext i32 %width.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %width.0, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.epilog.sw.epilog30_crit_edge
    i32 2, label %sw.epilog.sw.epilog30.sink.split_crit_edge
    i32 4, label %sw.bb21
    i32 8, label %sw.bb25
  ]

sw.epilog.sw.epilog30.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog30.sink.split

sw.epilog.sw.epilog30_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog30

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb21:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog30.sink.split

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog30.sink.split

sw.epilog30.sink.split:                           ; preds = %sw.bb25, %sw.bb21, %sw.epilog.sw.epilog30.sink.split_crit_edge
  %.sink = phi i32 [ 48, %sw.bb25 ], [ 32, %sw.bb21 ], [ 16, %sw.epilog.sw.epilog30.sink.split_crit_edge ]
  %or28 = or i32 %and12, %.sink
  %15 = ptrtoint ptr %req_ctrl11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or28, ptr %req_ctrl11, align 4
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.epilog30.sink.split, %sw.epilog.sw.epilog30_crit_edge
  %16 = ptrtoint ptr %req_ctrl11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %req_ctrl11, align 4
  %and33 = and i32 %17, 16777215
  %sub = shl i32 %maxburst.0, 24
  %shl = add i32 %sub, -16777216
  %or37 = or i32 %and33, %shl
  store i32 %or37, ptr %req_ctrl11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %req_ctrl11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_ctrl11, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fchan, align 4
  %slim_rproc = getelementptr inbounds %struct.st_fdma_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %slim_rproc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slim_rproc, align 4
  %mem = getelementptr inbounds %struct.st_slim_rproc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem, align 4
  %dreq_line = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 4
  %27 = ptrtoint ptr %dreq_line to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dreq_line, align 4
  %mul = shl i32 %28, 2
  %add.ptr = getelementptr i8, ptr %26, i32 %mul
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %20) #9, !srcloc !170
  %dev_addr = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %addr.0, ptr %dev_addr, align 4
  %dir = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %direction, ptr %dir, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_reqctrl.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@config_reqctrl, %cleanup)) #9
          to label %if.then [label %cleanup], !srcloc !168

if.then:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %33 = ptrtoint ptr %req_ctrl11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %req_ctrl11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_reqctrl.__UNIQUE_ID_ddebug242, ptr noundef %32, ptr noundef nonnull @.str.54, i32 noundef %1, i32 noundef %addr.0, i32 noundef %34) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog30, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %sw.epilog30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @st_fdma_alloc_desc(ptr noundef %fchan, i32 noundef %sg_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sg_len, i32 8) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 128) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fchan2 = getelementptr inbounds %struct.st_fdma_desc, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fchan2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fchan, ptr %fchan2, align 4
  %n_nodes = getelementptr inbounds %struct.st_fdma_desc, ptr %call9.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %n_nodes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sg_len, ptr %n_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp42 = icmp sgt i32 %sg_len, 0
  br i1 %cmp42, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %node_pool = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node_pool, align 4
  %arrayidx = getelementptr %struct.st_fdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.043
  %call3 = tail call ptr @dma_pool_alloc(ptr noundef %6, i32 noundef 2048, ptr noundef %arrayidx) #9
  %desc = getelementptr %struct.st_fdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %i.043, i32 1
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %desc, align 4
  %tobool9.not = icmp eq ptr %call3, null
  br i1 %tobool9.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.043)
  %cmp1245.not = icmp eq i32 %i.043, 0
  br i1 %cmp1245.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec46.in = phi i32 [ %dec46, %while.body.while.body_crit_edge ], [ %i.043, %while.cond.preheader.while.body_crit_edge ]
  %dec46 = add nsw i32 %dec46.in, -1
  %8 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node_pool, align 4
  %arrayidx15 = getelementptr %struct.st_fdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %dec46
  %desc16 = getelementptr %struct.st_fdma_desc, ptr %call9.i.i, i32 0, i32 4, i32 %dec46, i32 1
  %10 = ptrtoint ptr %desc16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc16, align 4
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 8
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef %11, i32 noundef %13) #9
  %cmp12 = icmp sgt i32 %dec46.in, 1
  br i1 %cmp12, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end.cleanup_crit_edge ], [ %call9.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_boot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_fdma_dreq_get(ptr nocapture noundef readonly %fchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fchan, align 4
  %req_line = getelementptr inbounds %struct.st_fdma_chan, ptr %fchan, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %req_line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_line, align 4
  %dreq_mask = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp3 = icmp ugt i32 %3, 31
  %4 = ptrtoint ptr %dreq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dreq_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.65) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp3, label %if.end.do.end7_crit_edge, label %if.else

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end7:                                          ; preds = %do.body.1.do.end7_crit_edge, %if.end.do.end7_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call = tail call i32 @_test_and_set_bit(i32 noundef %3, ptr noundef %dreq_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %do.body14, label %do.body.1

do.body.1:                                        ; preds = %if.else
  %10 = ptrtoint ptr %dreq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dreq_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.1 = icmp eq i32 %11, -1
  br i1 %cmp.1, label %do.body.1.do.end_crit_edge, label %do.body.1.do.end7_crit_edge

do.body.1.do.end7_crit_edge:                      ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.body14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_fdma_dreq_get.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_fdma_dreq_get, %cleanup)) #9
          to label %if.then20 [label %cleanup], !srcloc !168

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %dreq_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dreq_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_fdma_dreq_get.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.70, i32 noundef %3, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body14, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %3, %if.then20 ], [ %3, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !147, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_st_fdma__246_871_st_fdma_platform_driver_init6, !1, !"__initcall__kmod_st_fdma__246_871_st_fdma_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/st_fdma.c", i32 871, i32 1}
!2 = !{ptr @__exitcall_st_fdma_platform_driver_exit, !1, !"__exitcall_st_fdma_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file247, !4, !"__UNIQUE_ID_file247", i1 false, i1 false}
!4 = !{!"../drivers/dma/st_fdma.c", i32 873, i32 1}
!5 = !{ptr @__UNIQUE_ID_license248, !4, !"__UNIQUE_ID_license248", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description249, !7, !"__UNIQUE_ID_description249", i1 false, i1 false}
!7 = !{!"../drivers/dma/st_fdma.c", i32 874, i32 1}
!8 = !{ptr @__UNIQUE_ID_author250, !9, !"__UNIQUE_ID_author250", i1 false, i1 false}
!9 = !{!"../drivers/dma/st_fdma.c", i32 875, i32 1}
!10 = !{ptr @__UNIQUE_ID_author251, !11, !"__UNIQUE_ID_author251", i1 false, i1 false}
!11 = !{!"../drivers/dma/st_fdma.c", i32 876, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias252, !13, !"__UNIQUE_ID_alias252", i1 false, i1 false}
!13 = !{!"../drivers/dma/st_fdma.c", i32 877, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/st_fdma.c", i32 865, i32 11}
!16 = !{ptr @st_fdma_platform_driver, !17, !"st_fdma_platform_driver", i1 false, i1 false}
!17 = !{!"../drivers/dma/st_fdma.c", i32 863, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/st_fdma.c", i32 749, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @st_fdma_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @st_fdma_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/st_fdma.c", i32 761, i32 3}
!28 = !{ptr @st_fdma_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @st_fdma_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/st_fdma.c", i32 781, i32 3}
!32 = !{ptr @st_fdma_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @st_fdma_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/st_fdma.c", i32 788, i32 3}
!36 = !{ptr @st_fdma_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @st_fdma_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/st_fdma.c", i32 829, i32 3}
!40 = !{ptr @st_fdma_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @st_fdma_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/st_fdma.c", i32 836, i32 3}
!44 = !{ptr @st_fdma_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @st_fdma_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/st_fdma.c", i32 841, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @st_fdma_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @st_fdma_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/st_fdma.c", i32 716, i32 40}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/st_fdma.c", i32 719, i32 49}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/st_fdma.c", i32 109, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @st_fdma_ch_sta_update._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @st_fdma_ch_sta_update._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !62, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/st_fdma.c", i32 94, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @st_fdma_xfer_desc.__UNIQUE_ID_ddebug238, !68, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/st_fdma.c", i32 277, i32 3}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @st_fdma_alloc_chan_res._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @st_fdma_alloc_chan_res._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/st_fdma.c", i32 281, i32 2}
!78 = !{ptr @st_fdma_alloc_chan_res.__UNIQUE_ID_ddebug240, !77, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/st_fdma.c", i32 293, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @st_fdma_free_chan_res.__UNIQUE_ID_ddebug241, !80, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/st_fdma.c", i32 70, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @st_fdma_dreq_put.__UNIQUE_ID_ddebug237, !84, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/st_fdma.c", i32 464, i32 3}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @st_fdma_prep_dma_cyclic._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @st_fdma_prep_dma_cyclic._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/st_fdma.c", i32 470, i32 3}
!94 = !{ptr @st_fdma_prep_dma_cyclic._entry.45, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @st_fdma_prep_dma_cyclic._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/st_fdma.c", i32 477, i32 3}
!98 = !{ptr @st_fdma_prep_dma_cyclic._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @st_fdma_prep_dma_cyclic._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/st_fdma.c", i32 440, i32 3}
!102 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @st_fdma_prep_common._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @st_fdma_prep_common._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/st_fdma.c", i32 405, i32 2}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @config_reqctrl.__UNIQUE_ID_ddebug242, !106, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/st_fdma.c", i32 526, i32 3}
!111 = !{ptr @st_fdma_prep_slave_sg._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @st_fdma_prep_slave_sg._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/dma/st_fdma.c", i32 326, i32 3}
!115 = !{ptr @st_fdma_prep_dma_memcpy._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @st_fdma_prep_dma_memcpy._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/st_fdma.c", i32 665, i32 2}
!119 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @st_fdma_terminate_all.__UNIQUE_ID_ddebug245, !118, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/st_fdma.c", i32 627, i32 2}
!123 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @st_fdma_pause.__UNIQUE_ID_ddebug243, !122, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/st_fdma.c", i32 644, i32 2}
!127 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @st_fdma_resume.__UNIQUE_ID_ddebug244, !126, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/st_fdma.c", i32 214, i32 2}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @st_fdma_of_xlate.__UNIQUE_ID_ddebug239, !130, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/st_fdma.c", i32 46, i32 4}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @st_fdma_dreq_get._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @st_fdma_dreq_get._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/st_fdma.c", i32 51, i32 4}
!140 = !{ptr @st_fdma_dreq_get._entry.67, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @st_fdma_dreq_get._entry_ptr.69, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/st_fdma.c", i32 60, i32 2}
!144 = !{ptr @st_fdma_dreq_get.__UNIQUE_ID_ddebug236, !143, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!145 = !{ptr @st_fdma_match, !146, !"st_fdma_match", i1 false, i1 false}
!146 = !{!"../drivers/dma/st_fdma.c", i32 701, i32 34}
!147 = !{ptr @fdma_mpe31_stih407_11, !148, !"fdma_mpe31_stih407_11", i1 false, i1 false}
!148 = !{!"../drivers/dma/st_fdma.c", i32 686, i32 40}
!149 = !{ptr @fdma_mpe31_stih407_12, !150, !"fdma_mpe31_stih407_12", i1 false, i1 false}
!150 = !{!"../drivers/dma/st_fdma.c", i32 691, i32 40}
!151 = !{ptr @fdma_mpe31_stih407_13, !152, !"fdma_mpe31_stih407_13", i1 false, i1 false}
!152 = !{!"../drivers/dma/st_fdma.c", i32 696, i32 40}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 6459007}
!164 = !{i64 2154445417}
!165 = !{i64 2154441858}
!166 = !{i8 0, i8 2}
!167 = !{i64 2154374400, i64 2154374887, i64 2154374437, i64 2154374493, i64 2154374527, i64 2154374551, i64 2154374592, i64 2154374613, i64 2154374641, i64 2154374675}
!168 = !{i64 2148973904, i64 2148973909, i64 2148973922, i64 2148973966, i64 2148974000, i64 2148974021}
!169 = !{i64 2154445740}
!170 = !{i64 6458589}
!171 = !{i64 2154375900}
!172 = !{i64 2154476247}
!173 = !{i64 2154477923}
!174 = !{i64 2154493972}
!175 = !{i64 2154481601}
!176 = !{i64 2154489482}
!177 = !{i64 2154490627}
!178 = !{i64 2154437069}
!179 = !{i64 2154437822}
!180 = !{i64 2154438352}
!181 = !{i64 2154462033}
