; ModuleID = '/llk/IR_all_yes/drivers/dma/ipu/ipu_idmac.c_pt.bc'
source_filename = "../drivers/dma/ipu/ipu_idmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ipu = type { ptr, ptr, i32, i32, i32, i32, %struct.spinlock, ptr, ptr, %struct.idmac, [32 x %struct.idmac_channel], %struct.tasklet_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idmac = type { %struct.dma_device }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idmac_channel = type { %struct.dma_chan, i32, %union.ipu_channel_param, i32, i32, ptr, i32, ptr, [2 x ptr], %struct.list_head, %struct.list_head, %struct.spinlock, %struct.mutex, i8, i32, i32, [16 x i8] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%union.ipu_channel_param = type { %struct.idmac_video_param }
%struct.idmac_video_param = type { i16, i16, i32, i16, i16, i32, i16, i8, i8, i8, i32, i16, i16 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.idmac_tx_desc = type { %struct.dma_async_tx_descriptor, ptr, i32, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.chan_param_mem = type { %struct.chan_param_mem_interleaved }
%struct.chan_param_mem_interleaved = type { [20 x i8], i32, i32, [12 x i8] }
%struct.chan_param_mem_planar = type <{ [20 x i8], i32, i32, i64 }>

@__initcall__kmod_ipu_idmac__253_1797_ipu_init4 = internal global ptr @ipu_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description254 = internal constant [38 x i8] c"ipu_idmac.description=IPU core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [41 x i8] c"ipu_idmac.file=drivers/dma/ipu/ipu_idmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [25 x i8] c"ipu_idmac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [52 x i8] c"ipu_idmac.author=Guennadi Liakhovetski <lg@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [34 x i8] c"ipu_idmac.alias=platform:ipu-core\00", section ".modinfo", align 1
@ipu_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @ipu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu-core\00", [23 x i8] zeroinitializer }, align 32
@ipu_disable_channel.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipu_idmac\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipu_disable_channel\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/dma/ipu/ipu_idmac.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"Warning: timeout waiting for channel %u to stop: buf0_rdy = 0x%08X, buf1_rdy = 0x%08X, busy = 0x%08X, tstat = 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@ipu_disable_channel.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"timeout = %d * 10ms\0A\00", [43 x i8] zeroinitializer }, align 32
@ipu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ipu_data = internal global { %struct.ipu, [2576 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ipu_data.lock\00", [17 x i8] zeroinitializer }, align 32
@ipu_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 1, i8 -88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipu_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fn irq %u, err irq %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ipu_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 1, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s @ 0x%08lx, fn irq %u, err irq %u\0A\00", [59 x i8] zeroinitializer }, align 32
@ipu_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.10, i8 1, i8 -75, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IPU initialized\0A\00", [47 x i8] zeroinitializer }, align 32
@ipu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.3, i32 1763, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to probe IPU: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipu_probe._entry_ptr = internal global ptr @ipu_probe._entry, section ".printk_index", align 4
@ipu_idmac_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ichan->lock\00", [19 x i8] zeroinitializer }, align 32
@ipu_idmac_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ichan->chan_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IDMAC EOF %d\00", [19 x i8] zeroinitializer }, align 32
@ic_sof = internal global { i32, [28 x i8] } { i32 -22, [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IC SOF\00", [25 x i8] zeroinitializer }, align 32
@idmac_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1540, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request irq failed for IC SOF\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"idmac_alloc_chan_resources\00", [37 x i8] zeroinitializer }, align 32
@idmac_alloc_chan_resources._entry_ptr = internal global ptr @idmac_alloc_chan_resources._entry, section ".printk_index", align 4
@ic_eof = internal global { i32, [28 x i8] } { i32 -22, [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IC EOF\00", [25 x i8] zeroinitializer }, align 32
@idmac_alloc_chan_resources._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.3, i32 1546, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request irq failed for IC EOF\00", [34 x i8] zeroinitializer }, align 32
@idmac_alloc_chan_resources._entry_ptr.24 = internal global ptr @idmac_alloc_chan_resources._entry.22, section ".printk_index", align 4
@idmac_alloc_chan_resources.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.25, i8 1, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Found channel 0x%x, irq %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ipu_init_channel.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipu_init_channel\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init channel = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ipu_ic_init_prpenc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 536, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Colourspace conversion unsupported!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipu_ic_init_prpenc\00", [45 x i8] zeroinitializer }, align 32
@ipu_ic_init_prpenc._entry_ptr = internal global ptr @ipu_ic_init_prpenc._entry, section ".printk_index", align 4
@calc_resize_coeffs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 482, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Warning! Overflow on resize coeff.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"calc_resize_coeffs\00", [45 x i8] zeroinitializer }, align 32
@calc_resize_coeffs._entry_ptr = internal global ptr @calc_resize_coeffs._entry, section ".printk_index", align 4
@idmac_tx_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 834, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Descriptor %p not prepared!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idmac_tx_submit\00", [16 x i8] zeroinitializer }, align 32
@idmac_tx_submit._entry_ptr = internal global ptr @idmac_tx_submit._entry, section ".printk_index", align 4
@idmac_tx_submit.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Submitting sg %p\0A\00", [46 x i8] zeroinitializer }, align 32
@ipu_init_channel_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 671, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Stride length must be 32-bit aligned, stride = %d, bytes = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipu_init_channel_buffer\00", [40 x i8] zeroinitializer }, align 32
@ipu_init_channel_buffer._entry_ptr = internal global ptr @ipu_init_channel_buffer._entry, section ".printk_index", align 4
@ipu_init_channel_buffer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 677, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Stride must be 8 pixel multiple\0A\00", [63 x i8] zeroinitializer }, align 32
@ipu_init_channel_buffer._entry_ptr.40 = internal global ptr @ipu_init_channel_buffer._entry.38, section ".printk_index", align 4
@ipu_ch_param_set_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 415, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mx3 ipu: unimplemented pixel format %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipu_ch_param_set_size\00", [42 x i8] zeroinitializer }, align 32
@ipu_ch_param_set_size._entry_ptr = internal global ptr @ipu_ch_param_set_size._entry, section ".printk_index", align 4
@ipu_write_param_mem.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipu_write_param_mem\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"write param mem - addr = 0x%08X, data = 0x%08X\0A\00", [48 x i8] zeroinitializer }, align 32
@ipu_submit_buffer.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipu_submit_buffer\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Updated sg %p on channel 0x%x buffer %d\0A\00", [55 x i8] zeroinitializer }, align 32
@dump_idmac_reg.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_idmac_reg\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"IDMAC_CONF 0x%x, IC_CONF 0x%x, IDMAC_CHA_EN 0x%x, IDMAC_CHA_PRI 0x%x, IDMAC_CHA_BUSY 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@dump_idmac_reg.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 0, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"BUF0_RDY 0x%x, BUF1_RDY 0x%x, CUR_BUF 0x%x, DB_MODE 0x%x, TASKS_STAT 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@idmac_interrupt.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idmac_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IDMAC irq %d, buf %d\0A\00", [42 x i8] zeroinitializer }, align 32
@idmac_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 1189, ptr @.str.53, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NFB4EOF on channel %d, ready %x, %x, cur %x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@idmac_interrupt._entry_ptr = internal global ptr @idmac_interrupt._entry, section ".printk_index", align 4
@idmac_interrupt.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 1, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"IRQ with active buffer still ready on channel %x, active %d, ready %x, %x!\0A\00", [52 x i8] zeroinitializer }, align 32
@idmac_interrupt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.3, i32 1213, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"IRQ without queued buffers on channel %x, active %d, ready %x, %x!\0A\00", [60 x i8] zeroinitializer }, align 32
@idmac_interrupt._entry_ptr.57 = internal global ptr @idmac_interrupt._entry.55, section ".printk_index", align 4
@idmac_interrupt.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.58, i8 1, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"IDMAC irq %d, dma %#llx, next dma %#llx, current %d, curbuf %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@idmac_interrupt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.50, ptr @.str.3, i32 1241, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Submitted buffer %p, next buffer %p\0A\00", [59 x i8] zeroinitializer }, align 32
@idmac_interrupt._entry_ptr.61 = internal global ptr @idmac_interrupt._entry.59, section ".printk_index", align 4
@idmac_interrupt.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.62, i8 1, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Underrun on channel %x\0A\00", [40 x i8] zeroinitializer }, align 32
@ic_sof_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017Got SOF IRQ %d on Channel %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ic_sof_irq\00", [21 x i8] zeroinitializer }, align 32
@ic_sof_irq._entry_ptr = internal global ptr @ic_sof_irq._entry, section ".printk_index", align 4
@ic_eof_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017Got EOF IRQ %d on Channel %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ic_eof_irq\00", [21 x i8] zeroinitializer }, align 32
@ic_eof_irq._entry_ptr = internal global ptr @ic_eof_irq._entry, section ".printk_index", align 4
@ipu_uninit_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 1022, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Channel already uninitialized %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipu_uninit_channel\00", [45 x i8] zeroinitializer }, align 32
@ipu_uninit_channel._entry_ptr = internal global ptr @ipu_uninit_channel._entry, section ".printk_index", align 4
@idmac_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1350, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid DMA direction %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idmac_prep_slave_sg\00", [44 x i8] zeroinitializer }, align 32
@idmac_prep_slave_sg._entry_ptr = internal global ptr @idmac_prep_slave_sg._entry, section ".printk_index", align 4
@switch.table.ipu_init_channel_buffer = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 14, i64 15]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 14, i64 15]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 14, i64 15]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 14, i64 15]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 14, i64 15]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"ipu_platform_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1786, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1788, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1090, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1101, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"ipu_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 39, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1676, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1698, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1732, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1748, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1763, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1635, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1636, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1640, i32 54 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"ic_sof\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1498, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1538, i32 45 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1540, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"ic_eof\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1498, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1544, i32 45 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1546, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1553, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 959, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 536, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 482, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 834, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 865, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 669, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 677, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 414, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 439, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 792, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 72, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 79, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1169, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1188, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1200, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1210, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1233, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1241, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1249, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1483, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1492, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1021, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [31 x i8] c"../drivers/dma/ipu/ipu_idmac.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1350, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [37 x i8] c"switch.table.ipu_init_channel_buffer\00", align 1
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__initcall__kmod_ipu_idmac__253_1797_ipu_init4, ptr @calc_resize_coeffs._entry, ptr @calc_resize_coeffs._entry_ptr, ptr @ic_eof_irq._entry, ptr @ic_eof_irq._entry_ptr, ptr @ic_sof_irq._entry, ptr @ic_sof_irq._entry_ptr, ptr @idmac_alloc_chan_resources._entry, ptr @idmac_alloc_chan_resources._entry.22, ptr @idmac_alloc_chan_resources._entry_ptr, ptr @idmac_alloc_chan_resources._entry_ptr.24, ptr @idmac_interrupt._entry, ptr @idmac_interrupt._entry.55, ptr @idmac_interrupt._entry.59, ptr @idmac_interrupt._entry_ptr, ptr @idmac_interrupt._entry_ptr.57, ptr @idmac_interrupt._entry_ptr.61, ptr @idmac_prep_slave_sg._entry, ptr @idmac_prep_slave_sg._entry_ptr, ptr @idmac_tx_submit._entry, ptr @idmac_tx_submit._entry_ptr, ptr @ipu_ch_param_set_size._entry, ptr @ipu_ch_param_set_size._entry_ptr, ptr @ipu_ic_init_prpenc._entry, ptr @ipu_ic_init_prpenc._entry_ptr, ptr @ipu_init_channel_buffer._entry, ptr @ipu_init_channel_buffer._entry.38, ptr @ipu_init_channel_buffer._entry_ptr, ptr @ipu_init_channel_buffer._entry_ptr.40, ptr @ipu_probe._entry, ptr @ipu_probe._entry_ptr, ptr @ipu_uninit_channel._entry, ptr @ipu_uninit_channel._entry_ptr, ptr @ipu_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ipu_probe.__key, ptr @ipu_data, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ipu_idmac_init.__key, ptr @.str.14, ptr @ipu_idmac_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @ic_sof, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ic_eof, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @switch.table.ipu_init_channel_buffer], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_data to i32), i32 10320, i32 12896, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_idmac_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_idmac_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_sof to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmac_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_eof to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmac_alloc_chan_resources._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_ic_init_prpenc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_resize_coeffs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmac_tx_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_init_channel_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_init_channel_buffer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_ch_param_set_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmac_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmac_interrupt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmac_interrupt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_sof_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_eof_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_uninit_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idmac_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_init_channel_buffer to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ipu_platform_driver, ptr noundef nonnull @ipu_probe, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), ptr noundef nonnull @.str.6, ptr noundef nonnull @ipu_probe.__key, i16 noundef signext 3) #10
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  %tobool3.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipu_data, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.do.end89_crit_edge, label %if.end6

if.end.do.end89_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

if.end6:                                          ; preds = %if.end
  store i32 %call4, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 2), align 4
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.do.end89_crit_edge, label %if.end10

if.end6.do.end89_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

if.end10:                                         ; preds = %if.end6
  store i32 %call7, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 3), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_probe, %do.end21)) #10
          to label %if.then17 [label %do.end21], !srcloc !182

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 2), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %2) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %if.end10
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call23 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %add.i) #10
  store ptr %call23, ptr @ipu_data, align 4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end21.do.end89_crit_edge, label %if.end26

do.end21.do.end89_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

if.end26:                                         ; preds = %do.end21
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call2, align 4
  %end.i124 = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %end.i124 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i124, align 4
  %sub.i125 = sub i32 1, %8
  %add.i126 = add i32 %sub.i125, %10
  %call29 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %add.i126) #10
  store ptr %call29, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end26.err_ioremap_ic_crit_edge, label %if.end32

if.end26.err_ioremap_ic_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ioremap_ic

if.end32:                                         ; preds = %if.end26
  %call34 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #10
  store ptr %call34, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 7), align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call34 to i32
  br label %err_clk_get

if.end38:                                         ; preds = %if.end32
  tail call fastcc void @clk_prepare_enable(ptr noundef %call34)
  %12 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !183
  %13 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i127 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 0) #10, !srcloc !183
  %14 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i128 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 0) #10, !srcloc !183
  %15 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i129 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 0) #10, !srcloc !183
  %16 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i130 = getelementptr i8, ptr %16, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 0) #10, !srcloc !183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_probe, %do.end59)) #10
          to label %if.then54 [label %do.end59], !srcloc !182

if.then54:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call1, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 2), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %18, i32 noundef %20, i32 noundef %21, i32 noundef %22) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %if.end38
  %call60 = tail call i32 @ipu_irq_attach_irq(ptr noundef nonnull @ipu_data, ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end59.err_attach_irq_crit_edge, label %if.end63

do.end59.err_attach_irq_crit_edge:                ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_attach_irq

if.end63:                                         ; preds = %do.end59
  %call64 = tail call fastcc i32 @ipu_idmac_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end63.err_attach_irq_crit_edge, label %if.end67

if.end63.err_attach_irq_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_attach_irq

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tasklet_setup(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 11), ptr noundef nonnull @ipu_gc_tasklet) #10
  store ptr %dev, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_probe, %cleanup)) #10
          to label %if.then83 [label %cleanup], !srcloc !182

if.then83:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %23 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_probe.__UNIQUE_ID_ddebug252, ptr noundef %23, ptr noundef nonnull @.str.10) #10
  br label %cleanup

err_attach_irq:                                   ; preds = %if.end63.err_attach_irq_crit_edge, %do.end59.err_attach_irq_crit_edge
  %ret.0 = phi i32 [ %call60, %do.end59.err_attach_irq_crit_edge ], [ %call64, %if.end63.err_attach_irq_crit_edge ]
  tail call void @ipu_irq_detach_irq(ptr noundef nonnull @ipu_data, ptr noundef %pdev) #10
  %24 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 7), align 4
  tail call void @clk_disable(ptr noundef %24) #10
  tail call void @clk_unprepare(ptr noundef %24) #10
  %25 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 7), align 4
  tail call void @clk_put(ptr noundef %25) #10
  br label %err_clk_get

err_clk_get:                                      ; preds = %err_attach_irq, %if.then36
  %ret.1 = phi i32 [ %11, %if.then36 ], [ %ret.0, %err_attach_irq ]
  %26 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void @iounmap(ptr noundef %26) #10
  br label %err_ioremap_ic

err_ioremap_ic:                                   ; preds = %err_clk_get, %if.end26.err_ioremap_ic_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_clk_get ], [ -12, %if.end26.err_ioremap_ic_crit_edge ]
  %27 = load ptr, ptr @ipu_data, align 4
  tail call void @iounmap(ptr noundef %27) #10
  br label %do.end89

do.end89:                                         ; preds = %err_ioremap_ic, %do.end21.do.end89_crit_edge, %if.end6.do.end89_crit_edge, %if.end.do.end89_crit_edge
  %ret.3 = phi i32 [ %call4, %if.end.do.end89_crit_edge ], [ %call7, %if.end6.do.end89_crit_edge ], [ %ret.2, %err_ioremap_ic ], [ -12, %do.end21.do.end89_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.3) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.then83, %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %do.end89 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then83 ], [ 0, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i = getelementptr inbounds %struct.ipu, ptr %1, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.idmac_channel, ptr %channel.i, i32 %i.05.i
  %chan_mutex.i.i = getelementptr %struct.idmac_channel, ptr %channel.i, i32 %i.05.i, i32 12
  tail call void @mutex_lock_nested(ptr noundef %chan_mutex.i.i, i32 noundef 0) #10
  tail call fastcc void @__idmac_terminate_all(ptr noundef %add.ptr.i) #10
  tail call void @mutex_unlock(ptr noundef %chan_mutex.i.i) #10
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %ipu_idmac_exit.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ipu_idmac_exit.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %idmac1.i = getelementptr inbounds %struct.ipu, ptr %1, i32 0, i32 9
  tail call void @dma_async_device_unregister(ptr noundef %idmac1.i) #10
  tail call void @ipu_irq_detach_irq(ptr noundef %1, ptr noundef %pdev) #10
  %ipu_clk = getelementptr inbounds %struct.ipu, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ipu_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipu_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %4 = ptrtoint ptr %ipu_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipu_clk, align 4
  tail call void @clk_put(ptr noundef %5) #10
  %reg_ic = getelementptr inbounds %struct.ipu, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %reg_ic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_ic, align 4
  tail call void @iounmap(ptr noundef %7) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %9) #10
  %tasklet = getelementptr inbounds %struct.ipu, ptr %1, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_irq_detach_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idmac_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_mutex = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %chan_mutex, i32 noundef 0) #10
  tail call fastcc void @__idmac_terminate_all(ptr noundef %chan)
  tail call void @mutex_unlock(ptr noundef %chan_mutex) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__idmac_terminate_all(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %status = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  tail call fastcc void @ipu_disable_channel(ptr noundef %1, ptr noundef %chan, i1 noundef zeroext %cmp)
  %tasklet = getelementptr i8, ptr %1, i32 10220
  %count.i.i = getelementptr i8, ptr %1, i32 10228
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !186
  %lock = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 11
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 10
  %free_list = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 9
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %6, %queue
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %free_list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %desc = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 7
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %list_splice_init.exit.if.end24_crit_edge, label %for.cond.preheader

list_splice_init.exit.if.end24_crit_edge:         ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.cond.preheader:                               ; preds = %list_splice_init.exit
  %n_tx_desc = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 6
  %17 = ptrtoint ptr %n_tx_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_tx_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp142.not = icmp eq i32 %18, 0
  br i1 %cmp142.not, label %for.cond.preheader.if.end24_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end24_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %list = getelementptr %struct.idmac_tx_desc, ptr %20, i32 %i.03, i32 3
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %22, %list
  br i1 %cmp.i.not, label %if.then21, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then21:                                        ; preds = %for.body
  %23 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %free_list, ptr noundef %24) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.if.end_crit_edge

if.then21.if.end_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %list, align 4
  %prev3.i.i1 = getelementptr %struct.idmac_tx_desc, ptr %20, i32 %i.03, i32 3, i32 1
  %27 = ptrtoint ptr %prev3.i.i1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %free_list, ptr %prev3.i.i1, align 4
  %28 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list, ptr %free_list, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then21.if.end_crit_edge, %for.body.if.end_crit_edge
  %flags.i = getelementptr %struct.idmac_tx_desc, ptr %20, i32 %i.03, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %30, -3
  store i32 %and.i, ptr %flags.i, align 4
  %inc = add nuw i32 %i.03, 1
  %31 = ptrtoint ptr %n_tx_desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_tx_desc, align 4
  %cmp14 = icmp ult i32 %inc, %32
  br i1 %cmp14, label %if.end.for.body_crit_edge, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end24:                                         ; preds = %if.end.if.end24_crit_edge, %for.cond.preheader.if.end24_crit_edge, %list_splice_init.exit.if.end24_crit_edge
  %sg = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 8
  %33 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sg, align 4
  %arrayidx26 = getelementptr %struct.idmac_channel, ptr %chan, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx26, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !187
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !188
  %36 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %status, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipu_disable_channel(ptr noundef %idmac, ptr nocapture noundef readonly %ichan, i1 noundef zeroext %wait_for_stop) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %ichan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %add.ptr = getelementptr i8, ptr %idmac, i32 -76
  %shl = shl nuw i32 1, %1
  %wait_for_stop.not = xor i1 %wait_for_stop, true
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %2)
  %switch3 = icmp eq i32 %2, 14
  %or.cond4 = select i1 %wait_for_stop.not, i1 true, i1 %switch3
  br i1 %or.cond4, label %entry.if.end40_crit_edge, label %while.cond.preheader

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

while.cond.preheader:                             ; preds = %entry
  %reg_ic.i = getelementptr i8, ptr %idmac, i32 -72
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cond.i = icmp eq i32 %1, 7
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %timeout.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ 40, %while.cond.preheader ]
  %3 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_ic.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !189
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !189
  %9 = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp520 = icmp eq i32 %9, 4
  %cmp5 = select i1 %cond.i, i1 %cmp520, i1 false
  br i1 %cmp5, label %lor.rhs.while.body_crit_edge, label %lor.rhs.do.body21_crit_edge

lor.rhs.do.body21_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %dec = add nsw i32 %timeout.0, -1
  tail call void @msleep(i32 noundef 10) #10
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %do.body, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_disable_channel.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_disable_channel, %do.body21)) #10
          to label %if.then15 [label %do.body21], !srcloc !182

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %idmac, i32 -4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i8 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #10, !srcloc !189
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #10, !srcloc !189
  %18 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_ic.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #10, !srcloc !189
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i12 = getelementptr i8, ptr %22, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #10, !srcloc !189
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_disable_channel.__UNIQUE_ID_ddebug243, ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #10
  br label %do.body21

do.body21:                                        ; preds = %if.then15, %do.body, %lor.rhs.do.body21_crit_edge
  %timeout.1 = phi i32 [ 0, %if.then15 ], [ 0, %do.body ], [ %timeout.0, %lor.rhs.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_disable_channel.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_disable_channel, %if.end40)) #10
          to label %if.then35 [label %if.end40], !srcloc !182

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %dev36 = getelementptr i8, ptr %idmac, i32 -4
  %24 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev36, align 4
  %sub = sub i32 40, %timeout.1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_disable_channel.__UNIQUE_ID_ddebug244, ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef %sub) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %do.body21, %entry.if.end40_crit_edge
  %or.cond = select i1 %wait_for_stop, i1 %switch3, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %if.end40.do.body53_crit_edge

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

for.cond.preheader:                               ; preds = %if.end40
  %eof_irq = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 15
  %26 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eof_irq, align 4
  %call47 = tail call zeroext i1 @ipu_irq_status(i32 noundef %27) #10
  br i1 %call47, label %for.cond.preheader.do.body53_crit_edge, label %for.body

for.cond.preheader.do.body53_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

for.body:                                         ; preds = %for.cond.preheader
  tail call void @msleep(i32 noundef 5) #10
  %28 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eof_irq, align 4
  %call47.1 = tail call zeroext i1 @ipu_irq_status(i32 noundef %29) #10
  br i1 %call47.1, label %for.body.do.body53_crit_edge, label %for.body.1

for.body.do.body53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

for.body.1:                                       ; preds = %for.body
  tail call void @msleep(i32 noundef 5) #10
  %30 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eof_irq, align 4
  %call47.2 = tail call zeroext i1 @ipu_irq_status(i32 noundef %31) #10
  br i1 %call47.2, label %for.body.1.do.body53_crit_edge, label %for.body.2

for.body.1.do.body53_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

for.body.2:                                       ; preds = %for.body.1
  tail call void @msleep(i32 noundef 5) #10
  %32 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eof_irq, align 4
  %call47.3 = tail call zeroext i1 @ipu_irq_status(i32 noundef %33) #10
  br i1 %call47.3, label %for.body.2.do.body53_crit_edge, label %for.body.3

for.body.2.do.body53_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

for.body.3:                                       ; preds = %for.body.2
  tail call void @msleep(i32 noundef 5) #10
  %34 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eof_irq, align 4
  %call47.4 = tail call zeroext i1 @ipu_irq_status(i32 noundef %35) #10
  br i1 %call47.4, label %for.body.3.do.body53_crit_edge, label %for.body.4

for.body.3.do.body53_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 5) #10
  br label %do.body53

do.body53:                                        ; preds = %for.body.4, %for.body.3.do.body53_crit_edge, %for.body.2.do.body53_crit_edge, %for.body.1.do.body53_crit_edge, %for.body.do.body53_crit_edge, %for.cond.preheader.do.body53_crit_edge, %if.end40.do.body53_crit_edge
  %lock = getelementptr i8, ptr %idmac, i32 -52
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %36 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body53.ipu_ic_disable_task.exit_crit_edge [
    i32 0, label %do.body53.sw.epilog.i_crit_edge
    i32 7, label %sw.bb1.i
  ]

do.body53.sw.epilog.i_crit_edge:                  ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.body53.ipu_ic_disable_task.exit_crit_edge:     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_ic_disable_task.exit

sw.bb1.i:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %do.body53.sw.epilog.i_crit_edge
  %mask.0.i = phi i32 [ -1073741826, %sw.bb1.i ], [ -2, %do.body53.sw.epilog.i_crit_edge ]
  %reg_ic.i.i = getelementptr i8, ptr %idmac, i32 -72
  %37 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_ic.i.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !189
  %and.i13 = and i32 %39, %mask.0.i
  %40 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_ic.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %and.i13) #10, !srcloc !183
  br label %ipu_ic_disable_task.exit

ipu_ic_disable_task.exit:                         ; preds = %sw.epilog.i, %do.body53.ipu_ic_disable_task.exit_crit_edge
  %reg_ic.i14 = getelementptr i8, ptr %idmac, i32 -72
  %42 = ptrtoint ptr %reg_ic.i14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_ic.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %43, i32 32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #10, !srcloc !189
  %neg = xor i32 %shl, -1
  %and63 = and i32 %44, %neg
  %45 = ptrtoint ptr %reg_ic.i14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_ic.i14, align 4
  %add.ptr.i17 = getelementptr i8, ptr %46, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %and63) #10, !srcloc !183
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call57) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_irq_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_irq_attach_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipu_idmac_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_set_bit(i32 noundef 11, ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 6)) #10
  tail call void @_set_bit(i32 noundef 9, ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 6)) #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 15), align 4
  store ptr @idmac_alloc_chan_resources, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 27), align 4
  store ptr @idmac_free_chan_resources, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 29), align 4
  store ptr @idmac_tx_status, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 49), align 4
  store ptr @idmac_issue_pending, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 50), align 4
  store ptr @idmac_prep_slave_sg, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 39), align 4
  store ptr @idmac_pause, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 45), align 4
  store ptr @idmac_terminate_all, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 47), align 4
  store volatile ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), align 4
  store ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3, i32 1), align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %i.01
  %lock = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %i.01, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @ipu_idmac_init.__key, i16 noundef signext 3) #10
  %chan_mutex = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %i.01, i32 12
  tail call void @__mutex_init(ptr noundef %chan_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @ipu_idmac_init.__key.15) #10
  %status = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %i.01, i32 4
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %status, align 4
  %sec_chan_en = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %i.01, i32 13
  %2 = ptrtoint ptr %sec_chan_en to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sec_chan_en, align 4
  %eof_name = getelementptr %struct.idmac_channel, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 10), i32 %i.01, i32 16
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %eof_name, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %i.01)
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9), ptr %add.ptr, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %add.ptr, i32 0, i32 2
  %4 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %add.ptr, i32 0, i32 3
  %5 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %completed_cookie.i, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %add.ptr, i32 0, i32 4
  %6 = ptrtoint ptr %chan_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i.01, ptr %chan_id, align 4
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %add.ptr, i32 0, i32 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %7, ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3)) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %device_node, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3, i32 1), align 4
  %8 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9, i32 0, i32 3), ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %device_node, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 112) #10, !srcloc !183
  %call14 = tail call i32 @dma_async_device_register(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 9)) #10
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_gc_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr i8, ptr %t, i32 -9856
  br label %for.body

for.body:                                         ; preds = %for.end39.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc41, %for.end39.for.body_crit_edge ]
  %add.ptr1 = getelementptr %struct.idmac_channel, ptr %channel, i32 %i.073
  %n_tx_desc = getelementptr inbounds %struct.idmac_channel, ptr %add.ptr1, i32 0, i32 6
  %0 = ptrtoint ptr %n_tx_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_tx_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp368.not = icmp eq i32 %1, 0
  br i1 %cmp368.not, label %for.body.for.end39_crit_edge, label %for.body4.lr.ph

for.body.for.end39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

for.body4.lr.ph:                                  ; preds = %for.body
  %desc5 = getelementptr inbounds %struct.idmac_channel, ptr %add.ptr1, i32 0, i32 7
  %lock = getelementptr inbounds %struct.idmac_channel, ptr %add.ptr1, i32 0, i32 11
  %free_list = getelementptr inbounds %struct.idmac_channel, ptr %add.ptr1, i32 0, i32 9
  %sg19 = getelementptr inbounds %struct.idmac_channel, ptr %add.ptr1, i32 0, i32 8
  %arrayidx26 = getelementptr [2 x ptr], ptr %sg19, i32 0, i32 1
  br label %for.body4

for.body4:                                        ; preds = %if.end35.for.body4_crit_edge, %for.body4.lr.ph
  %j.069 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc38, %if.end35.for.body4_crit_edge ]
  %2 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc5, align 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %flags.i = getelementptr %struct.idmac_tx_desc, ptr %3, i32 %j.069, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %for.body4.if.end35_crit_edge, label %if.then

for.body4.if.end35_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then:                                          ; preds = %for.body4
  %list = getelementptr %struct.idmac_tx_desc, ptr %3, i32 %j.069, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr %struct.idmac_tx_desc, ptr %3, i32 %j.069, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %12 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %free_list, ptr noundef %13) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list, align 4
  %prev3.i.i.i = getelementptr %struct.idmac_tx_desc, ptr %3, i32 %j.069, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free_list, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %free_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %sg_len = getelementptr %struct.idmac_tx_desc, ptr %3, i32 %j.069, i32 2
  %18 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1664.not = icmp eq i32 %19, 0
  br i1 %cmp1664.not, label %list_move.exit.for.end_crit_edge, label %for.body18.preheader

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body18.preheader:                             ; preds = %list_move.exit
  %sg14 = getelementptr %struct.idmac_tx_desc, ptr %3, i32 %j.069, i32 1
  %20 = ptrtoint ptr %sg14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg14, align 4
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.preheader
  %k.067 = phi i32 [ %inc, %for.inc.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %sg.065 = phi ptr [ %call33, %for.inc.for.body18_crit_edge ], [ %21, %for.body18.preheader ]
  %22 = ptrtoint ptr %sg19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg19, align 4
  %cmp20 = icmp eq ptr %23, %sg.065
  br i1 %cmp20, label %for.body18.for.inc.sink.split_crit_edge, label %if.else

for.body18.for.inc.sink.split_crit_edge:          ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body18
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %cmp27 = icmp eq ptr %25, %sg.065
  br i1 %cmp27, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %for.body18.for.inc.sink.split_crit_edge
  %sg19.sink = phi ptr [ %sg19, %for.body18.for.inc.sink.split_crit_edge ], [ %arrayidx26, %if.else.for.inc.sink.split_crit_edge ]
  %26 = ptrtoint ptr %sg19.sink to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sg19.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  %inc = add nuw i32 %k.067, 1
  %call33 = tail call ptr @sg_next(ptr noundef %sg.065) #10
  %27 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_len, align 4
  %cmp16 = icmp ult i32 %inc, %28
  br i1 %cmp16, label %for.inc.for.body18_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_move.exit.for.end_crit_edge
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i63 = and i32 %30, -3
  store i32 %and.i63, ptr %flags.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %for.end, %for.body4.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #10
  %inc38 = add nuw i32 %j.069, 1
  %31 = ptrtoint ptr %n_tx_desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_tx_desc, align 4
  %cmp3 = icmp ult i32 %inc38, %32
  br i1 %cmp3, label %if.end35.for.body4_crit_edge, label %if.end35.for.end39_crit_edge

if.end35.for.end39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

if.end35.for.body4_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.end39:                                        ; preds = %if.end35.for.end39_crit_edge, %for.body.for.end39_crit_edge
  %inc41 = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc41, 32
  br i1 %exitcond.not, label %for.end42, label %for.end39.for.body_crit_edge

for.end39.for.body_crit_edge:                     ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end42:                                        ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idmac_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %client_count = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 10
  %2 = ptrtoint ptr %client_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %client_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.body5, label %do.end10, !prof !190

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ipu/ipu_idmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #10, !srcloc !191
  unreachable

do.end10:                                         ; preds = %entry
  %status = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %do.end10.if.end33_crit_edge, label %do.end27, !prof !192

do.end10.if.end33_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end27:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1509, i32 noundef 9, ptr noundef null) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %do.end10.if.end33_crit_edge
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %completed_cookie.i, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 4
  %call = tail call i32 @ipu_irq_map(i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp41 = icmp slt i32 %call, 0
  br i1 %cmp41, label %if.end33.cleanup_crit_edge, label %if.end43

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %eof_irq = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 15
  %10 = ptrtoint ptr %eof_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %eof_irq, align 4
  tail call fastcc void @ipu_disable_channel(ptr noundef %1, ptr noundef %chan, i1 noundef zeroext true)
  %call45 = tail call fastcc i32 @ipu_init_channel(ptr noundef %1, ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.eichan_crit_edge, label %if.end48

if.end43.eichan_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %eichan

if.end48:                                         ; preds = %if.end43
  %11 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eof_irq, align 4
  %eof_name = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 16
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @idmac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %eof_name, ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp51 = icmp slt i32 %call.i, 0
  br i1 %cmp51, label %erirq, label %if.end53

if.end53:                                         ; preds = %if.end48
  %13 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp55 = icmp eq i32 %14, 7
  br i1 %cmp55, label %if.then56, label %if.end53.if.end82_crit_edge

if.end53.if.end82_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then56:                                        ; preds = %if.end53
  %call57 = tail call i32 @ipu_irq_map(i32 noundef 69) #10
  store i32 %call57, ptr @ic_sof, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.then56.if.end68_crit_edge

if.then56.if.end68_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then59:                                        ; preds = %if.then56
  %call.i139 = tail call i32 @request_threaded_irq(i32 noundef %call57, ptr noundef nonnull @ic_sof_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool61.not = icmp eq i32 %call.i139, 0
  br i1 %tobool61.not, label %if.then59.if.end68_crit_edge, label %do.end65

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.end65:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %device66 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device66, ptr noundef nonnull @.str.19) #14
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %if.then59.if.end68_crit_edge, %if.then56.if.end68_crit_edge
  %ret.0 = phi i32 [ %call.i139, %do.end65 ], [ 0, %if.then59.if.end68_crit_edge ], [ %call.i, %if.then56.if.end68_crit_edge ]
  %call69 = tail call i32 @ipu_irq_map(i32 noundef 70) #10
  store i32 %call69, ptr @ic_eof, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp sgt i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end68.if.end82_crit_edge

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then71:                                        ; preds = %if.end68
  %call.i140 = tail call i32 @request_threaded_irq(i32 noundef %call69, ptr noundef nonnull @ic_eof_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool73.not = icmp eq i32 %call.i140, 0
  br i1 %tobool73.not, label %if.then71.if.end82_crit_edge, label %do.end77

if.then71.if.end82_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end77:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %dev78 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev78, align 4
  %device79 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device79, ptr noundef nonnull @.str.23) #14
  br label %if.end82

if.end82:                                         ; preds = %do.end77, %if.then71.if.end82_crit_edge, %if.end68.if.end82_crit_edge, %if.end53.if.end82_crit_edge
  %ret.1 = phi i32 [ %call.i140, %do.end77 ], [ 0, %if.then71.if.end82_crit_edge ], [ %ret.0, %if.end68.if.end82_crit_edge ], [ %call.i, %if.end53.if.end82_crit_edge ]
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idmac_alloc_chan_resources.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idmac_alloc_chan_resources, %cleanup)) #10
          to label %if.then96 [label %cleanup], !srcloc !182

if.then96:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %dev97 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %20 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev97, align 4
  %device98 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chan_id, align 4
  %24 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eof_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idmac_alloc_chan_resources.__UNIQUE_ID_ddebug249, ptr noundef %device98, ptr noundef nonnull @.str.25, i32 noundef %23, i32 noundef %25) #10
  br label %cleanup

erirq:                                            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipu_uninit_channel(ptr noundef %1, ptr noundef %chan)
  br label %eichan

eichan:                                           ; preds = %erirq, %if.end43.eichan_crit_edge
  %ret.2 = phi i32 [ %call45, %if.end43.eichan_crit_edge ], [ %call.i, %erirq ]
  %26 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan_id, align 4
  %call105 = tail call i32 @ipu_irq_unmap(i32 noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %eichan, %if.then96, %if.end82, %if.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.then96 ], [ %call, %if.end33.cleanup_crit_edge ], [ %ret.2, %eichan ], [ %ret.1, %if.end82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idmac_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_mutex = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %chan_mutex, i32 noundef 0) #10
  tail call fastcc void @__idmac_terminate_all(ptr noundef %chan)
  %status = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp4 = icmp eq i32 %5, 7
  br i1 %cmp4, label %if.then5, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then5:                                         ; preds = %if.then
  %6 = load i32, ptr @ic_sof, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp sgt i32 %6, 0
  br i1 %cmp6, label %if.then7, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %chan) #10
  %call9 = tail call i32 @ipu_irq_unmap(i32 noundef 69) #10
  store i32 -22, ptr @ic_sof, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5.if.end_crit_edge
  %7 = load i32, ptr @ic_eof, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10 = icmp sgt i32 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %chan) #10
  %call13 = tail call i32 @ipu_irq_unmap(i32 noundef 70) #10
  store i32 -22, ptr @ic_eof, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %eof_irq = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 15
  %8 = ptrtoint ptr %eof_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eof_irq, align 4
  %call16 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %chan) #10
  %10 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_id, align 4
  %call18 = tail call i32 @ipu_irq_unmap(i32 noundef %11) #10
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %entry.if.end19_crit_edge
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %status, align 4
  tail call fastcc void @ipu_uninit_channel(ptr noundef %1, ptr noundef %chan)
  tail call void @mutex_unlock(ptr noundef %chan_mutex) #10
  %state.i = getelementptr i8, ptr %1, i32 10224
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end19.tasklet_schedule.exit_crit_edge

if.end19.tasklet_schedule.exit_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr i8, ptr %1, i32 10220
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end19.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idmac_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !193
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idmac_issue_pending(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr i8, ptr %1, i32 -52
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id, align 4
  %active_buffer = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 14
  %4 = ptrtoint ptr %active_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %shl.i = shl nuw i32 1, %3
  %6 = load ptr, ptr @ipu_data, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl.i) #10, !srcloc !183
  br label %ipu_select_buffer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i3.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %shl.i) #10, !srcloc !183
  br label %ipu_select_buffer.exit

ipu_select_buffer.exit:                           ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @idmac_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %tx_flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 14, label %entry.if.end_crit_edge
    i32 15, label %entry.if.end_crit_edge55
    i32 7, label %entry.if.end_crit_edge56
  ]

entry.if.end_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge55, %entry.if.end_crit_edge56
  %3 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.69, i32 noundef %direction) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %chan_mutex = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %chan_mutex, i32 noundef 0) #10
  %lock = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 11
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %free_list = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 9
  %9 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %10, %free_list
  br i1 %cmp.i.not, label %if.end7.if.end27_crit_edge, label %if.then19

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19:                                        ; preds = %if.end7
  %add.ptr23 = getelementptr i8, ptr %10, i32 -108
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.list_del_init.exit_crit_edge

if.then19.list_del_init.exit_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then19.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %prev.i3.i, align 4
  %sg_len24 = getelementptr i8, ptr %10, i32 -4
  %19 = ptrtoint ptr %sg_len24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sg_len, ptr %sg_len24, align 4
  %sg = getelementptr i8, ptr %10, i32 -8
  %20 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sgl, ptr %sg, align 4
  %flags26 = getelementptr i8, ptr %10, i32 -104
  %21 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tx_flags, ptr %flags26, align 4
  br label %if.end27

if.end27:                                         ; preds = %list_del_init.exit, %if.end7.if.end27_crit_edge
  %txd.0 = phi ptr [ null, %if.end7.if.end27_crit_edge ], [ %add.ptr23, %list_del_init.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #10
  tail call void @mutex_unlock(ptr noundef %chan_mutex) #10
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  %state.i = getelementptr i8, ptr %23, i32 10224
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr i8, ptr %23, i32 10220
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end27.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %txd.0, %if.end27.cleanup_crit_edge ], [ %txd.0, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idmac_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_mutex = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %chan_mutex, i32 noundef 0) #10
  %lock = getelementptr i8, ptr %1, i32 -52
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %entry.ipu_ic_disable_task.exit_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 7, label %sw.bb1.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

entry.ipu_ic_disable_task.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_ic_disable_task.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %mask.0.i = phi i32 [ -1073741826, %sw.bb1.i ], [ -2, %entry.sw.epilog.i_crit_edge ]
  %reg_ic.i.i = getelementptr i8, ptr %1, i32 -72
  %5 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_ic.i.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !189
  %and.i = and i32 %7, %mask.0.i
  %8 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_ic.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %and.i) #10, !srcloc !183
  br label %ipu_ic_disable_task.exit

ipu_ic_disable_task.exit:                         ; preds = %sw.epilog.i, %entry.ipu_ic_disable_task.exit_crit_edge
  %queue = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 10
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %cmp.i.not35 = icmp eq ptr %11, %queue
  br i1 %cmp.i.not35, label %ipu_ic_disable_task.exit.for.end_crit_edge, label %ipu_ic_disable_task.exit.for.body_crit_edge

ipu_ic_disable_task.exit.for.body_crit_edge:      ; preds = %ipu_ic_disable_task.exit
  br label %for.body

ipu_ic_disable_task.exit.for.end_crit_edge:       ; preds = %ipu_ic_disable_task.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %ipu_ic_disable_task.exit.for.body_crit_edge
  %list.036 = phi ptr [ %tmp7.038, %list_del_init.exit.for.body_crit_edge ], [ %11, %ipu_ic_disable_task.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %list.036 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp7.038 = load ptr, ptr %list.036, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.036) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list.036, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list.036 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %list.036 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list.036, ptr %list.036, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %list.036, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.036, ptr %prev.i3.i, align 4
  %cmp.i.not = icmp eq ptr %tmp7.038, %queue
  br i1 %cmp.i.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %ipu_ic_disable_task.exit.for.end_crit_edge
  %sg = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 8
  %21 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sg, align 4
  %arrayidx18 = getelementptr %struct.idmac_channel, ptr %chan, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #10
  %status = getelementptr inbounds %struct.idmac_channel, ptr %chan, i32 0, i32 4
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %status, align 4
  tail call void @mutex_unlock(ptr noundef %chan_mutex) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_irq_map(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipu_init_channel(ptr noundef %idmac, ptr noundef %ichan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %ichan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %add.ptr = getelementptr i8, ptr %idmac, i32 -76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_init_channel.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_init_channel, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !182

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %idmac, i32 -4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_init_channel.__UNIQUE_ID_ddebug242, ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %1, label %do.end.cleanup_crit_edge [
    i32 14, label %do.end.do.body12_crit_edge
    i32 15, label %do.end.do.body12_crit_edge79
    i32 7, label %do.end.do.body12_crit_edge80
  ]

do.end.do.body12_crit_edge80:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.end.do.body12_crit_edge79:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.end.do.body12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %do.end.do.body12_crit_edge, %do.end.do.body12_crit_edge79, %do.end.do.body12_crit_edge80
  %lock = getelementptr i8, ptr %idmac, i32 -52
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %1, label %do.body12.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 15, label %do.body12.sw.bb26_crit_edge
    i32 14, label %do.body12.sw.bb26_crit_edge81
  ]

do.body12.sw.bb26_crit_edge81:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26

do.body12.sw.bb26_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26

do.body12.sw.epilog_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %reg_ic.i = getelementptr i8, ptr %idmac, i32 -72
  %6 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_ic.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !189
  %and = and i32 %8, 2147483647
  %9 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_ic.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and) #10, !srcloc !183
  %channel_init_mask74 = getelementptr i8, ptr %idmac, i32 -56
  %11 = ptrtoint ptr %channel_init_mask74 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_init_mask74, align 4
  %or75 = or i32 %12, 128
  store i32 %or75, ptr %channel_init_mask74, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !189
  br label %ipu_channel_conf_mask.exit

sw.bb26:                                          ; preds = %do.body12.sw.bb26_crit_edge, %do.body12.sw.bb26_crit_edge81
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %do.body12.sw.epilog_crit_edge
  %tobool31.not = phi i1 [ true, %do.body12.sw.epilog_crit_edge ], [ false, %sw.bb26 ]
  %n_desc.0 = phi i32 [ 0, %do.body12.sw.epilog_crit_edge ], [ 4, %sw.bb26 ]
  %shl = shl nuw nsw i32 1, %1
  %channel_init_mask = getelementptr i8, ptr %idmac, i32 -56
  %16 = ptrtoint ptr %channel_init_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_init_mask, align 4
  %or = or i32 %17, %shl
  store i32 %or, ptr %channel_init_mask, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !189
  %21 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %1, label %sw.default.i [
    i32 15, label %sw.epilog.sw.bb1.i_crit_edge
    i32 7, label %sw.epilog.ipu_channel_conf_mask.exit_crit_edge
    i32 14, label %sw.epilog.sw.bb1.i_crit_edge82
  ]

sw.epilog.sw.bb1.i_crit_edge82:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.epilog.ipu_channel_conf_mask.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_channel_conf_mask.exit

sw.epilog.sw.bb1.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.epilog.sw.bb1.i_crit_edge, %sw.epilog.sw.bb1.i_crit_edge82
  br label %ipu_channel_conf_mask.exit

sw.default.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_channel_conf_mask.exit

ipu_channel_conf_mask.exit:                       ; preds = %sw.default.i, %sw.bb1.i, %sw.epilog.ipu_channel_conf_mask.exit_crit_edge, %sw.bb
  %22 = phi i32 [ %20, %sw.default.i ], [ %20, %sw.bb1.i ], [ %20, %sw.epilog.ipu_channel_conf_mask.exit_crit_edge ], [ %15, %sw.bb ]
  %n_desc.078 = phi i32 [ %n_desc.0, %sw.default.i ], [ %n_desc.0, %sw.bb1.i ], [ %n_desc.0, %sw.epilog.ipu_channel_conf_mask.exit_crit_edge ], [ 16, %sw.bb ]
  %tobool31.not77 = phi i1 [ %tobool31.not, %sw.default.i ], [ %tobool31.not, %sw.bb1.i ], [ %tobool31.not, %sw.epilog.ipu_channel_conf_mask.exit_crit_edge ], [ false, %sw.bb ]
  %mask.0.i = phi i32 [ 0, %sw.default.i ], [ 80, %sw.bb1.i ], [ 3, %sw.epilog.ipu_channel_conf_mask.exit_crit_edge ], [ 3, %sw.bb ]
  %or29 = or i32 %mask.0.i, %22
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %or29) #10, !srcloc !183
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #10
  br i1 %tobool31.not77, label %ipu_channel_conf_mask.exit.if.end36_crit_edge, label %land.lhs.true32

ipu_channel_conf_mask.exit.if.end36_crit_edge:    ; preds = %ipu_channel_conf_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true32:                                  ; preds = %ipu_channel_conf_mask.exit
  %desc = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 7
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %tobool33.not = icmp eq ptr %26, null
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true32.if.end36_crit_edge

land.lhs.true32.if.end36_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true32
  %27 = mul nuw nsw i32 %n_desc.078, 116
  %call1.i = tail call noalias ptr @vmalloc(i32 noundef %27) #15
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then34.if.end36_crit_edge, label %if.end.i

if.then34.if.end36_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end.i:                                         ; preds = %if.then34
  %28 = ptrtoint ptr %ichan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ichan, align 4
  %tasklet.i = getelementptr i8, ptr %29, i32 10220
  %count.i.i.i = getelementptr i8, ptr %29, i32 10228
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !186
  %n_tx_desc.i = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 6
  %31 = ptrtoint ptr %n_tx_desc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %n_desc.078, ptr %n_tx_desc.i, align 4
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1.i, ptr %desc, align 4
  %queue.i = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 10
  %33 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %free_list.i = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 9
  %35 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %free_list.i, ptr %free_list.i, align 4
  %prev.i30.i = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_list.i, ptr %prev.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_desc.078)
  %tobool6.not31.i = icmp eq i32 %n_desc.078, 0
  br i1 %tobool6.not31.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %list_add.exit.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %n.addr.034.i = phi i32 [ %dec.i, %list_add.exit.i.while.body.i_crit_edge ], [ %n_desc.078, %if.end.i.while.body.i_crit_edge ]
  %desc.032.i = phi ptr [ %incdec.ptr.i, %list_add.exit.i.while.body.i_crit_edge ], [ %call1.i, %if.end.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %n.addr.034.i, -1
  %37 = call ptr @memset(ptr %desc.032.i, i32 0, i32 100)
  tail call void @dma_async_tx_descriptor_init(ptr noundef %desc.032.i, ptr noundef %ichan) #10
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.032.i, i32 0, i32 4
  %38 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @idmac_tx_submit, ptr %tx_submit.i, align 4
  %list.i = getelementptr inbounds %struct.idmac_tx_desc, ptr %desc.032.i, i32 0, i32 3
  %39 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %free_list.i, ptr noundef %40) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_add.exit.i_crit_edge

while.body.i.list_add.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.idmac_tx_desc, ptr %desc.032.i, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list.i, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_add.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.idmac_tx_desc, ptr %desc.032.i, i32 1
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %list_add.exit.i.while.end.i_crit_edge, label %list_add.exit.i.while.body.i_crit_edge

list_add.exit.i.while.body.i_crit_edge:           ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_add.exit.i.while.end.i_crit_edge:            ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %list_add.exit.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !187
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !188
  br label %if.end36

if.end36:                                         ; preds = %while.end.i, %if.then34.if.end36_crit_edge, %land.lhs.true32.if.end36_crit_edge, %ipu_channel_conf_mask.exit.if.end36_crit_edge
  %ret.1 = phi i32 [ 0, %land.lhs.true32.if.end36_crit_edge ], [ 0, %ipu_channel_conf_mask.exit.if.end36_crit_edge ], [ 0, %while.end.i ], [ -12, %if.then34.if.end36_crit_edge ]
  tail call fastcc void @dump_idmac_reg(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end36 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idmac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %dummy_result.i385 = alloca %struct.dmaengine_result, align 8
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dma_chan, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  %chan_id3 = getelementptr inbounds %struct.dma_chan, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idmac_interrupt.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idmac_interrupt, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !182

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %active_buffer = getelementptr inbounds %struct.idmac_channel, ptr %dev_id, i32 0, i32 14
  %4 = ptrtoint ptr %active_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_buffer, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idmac_interrupt.__UNIQUE_ID_ddebug245, ptr noundef %device, ptr noundef nonnull @.str.51, i32 noundef %irq, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  %6 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !189
  %8 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i350 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350) #10, !srcloc !189
  %10 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i351 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i351) #10, !srcloc !189
  %12 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i352 = getelementptr i8, ptr %12, i32 72
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i352) #10, !srcloc !189
  %shl = shl nuw i32 1, %3
  %and = and i32 %13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end17, label %if.then12

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i353 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i353, i32 %shl) #10, !srcloc !183
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.52, i32 noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %11) #14
  br label %cleanup

if.end17:                                         ; preds = %do.end
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  %lock = getelementptr inbounds %struct.idmac_channel, ptr %dev_id, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %active_buffer18 = getelementptr inbounds %struct.idmac_channel, ptr %dev_id, i32 0, i32 14
  %15 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active_buffer18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %land.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %17 = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end54_crit_edge, label %land.lhs.true.if.then33_crit_edge, !prof !192

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.rhs:                                         ; preds = %if.end17
  %18 = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %land.rhs.if.end54_crit_edge, label %land.rhs.if.then33_crit_edge, !prof !192

land.rhs.if.then33_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then33:                                        ; preds = %land.rhs.if.then33_crit_edge, %land.lhs.true.if.then33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idmac_interrupt.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idmac_interrupt, %cleanup)) #10
          to label %if.then49 [label %cleanup], !srcloc !182

if.then49:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_buffer18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idmac_interrupt.__UNIQUE_ID_ddebug246, ptr noundef %device, ptr noundef nonnull @.str.54, i32 noundef %3, i32 noundef %20, i32 noundef %7, i32 noundef %9) #10
  br label %cleanup

if.end54:                                         ; preds = %land.rhs.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge
  %queue = getelementptr inbounds %struct.idmac_channel, ptr %dev_id, i32 0, i32 10
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %22, %queue
  %arrayidx = getelementptr %struct.idmac_channel, ptr %dev_id, i32 0, i32 8, i32 %16
  br i1 %cmp.i.not, label %if.then63, label %if.end71, !prof !190

if.then63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %24 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %active_buffer18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.56, i32 noundef %3, i32 noundef %25, i32 noundef %7, i32 noundef %9) #14
  br label %cleanup

if.end71:                                         ; preds = %if.end54
  %lnot.ext79 = zext i1 %tobool19.not to i32
  %arrayidx80 = getelementptr %struct.idmac_channel, ptr %dev_id, i32 0, i32 8, i32 %lnot.ext79
  %26 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx80, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool81.not = icmp eq ptr %29, null
  br i1 %tobool81.not, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end84:                                         ; preds = %if.end71
  %add.ptr = getelementptr i8, ptr %22, i32 -108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idmac_interrupt.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idmac_interrupt, %do.end108)) #10
          to label %if.then101 [label %do.end108], !srcloc !182

if.then101:                                       ; preds = %if.end84
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %33 to i64
  %tobool102.not = icmp eq ptr %27, null
  br i1 %tobool102.not, label %if.then101.cond.end_crit_edge, label %cond.true

if.then101.cond.end_crit_edge:                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  %dma_address103 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 3
  %34 = ptrtoint ptr %dma_address103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address103, align 4
  %conv104 = zext i32 %35 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then101.cond.end_crit_edge
  %cond = phi i64 [ %conv104, %cond.true ], [ 0, %if.then101.cond.end_crit_edge ]
  %36 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %active_buffer18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idmac_interrupt.__UNIQUE_ID_ddebug247, ptr noundef %device, ptr noundef nonnull @.str.58, i32 noundef %irq, i64 noundef %conv, i64 noundef %cond, i32 noundef %37, i32 noundef %11) #10
  br label %do.end108

do.end108:                                        ; preds = %cond.end, %if.end84
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %do.end108.if.end.i_crit_edge, label %cond.end.i

do.end108.if.end.i_crit_edge:                     ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cond.end.i:                                       ; preds = %do.end108
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %39) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %cond.end.i.if.end.i_crit_edge, label %cond.end.i.idmac_sg_next.exit_crit_edge

cond.end.i.idmac_sg_next.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %idmac_sg_next.exit

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i.if.end.i_crit_edge, %do.end108.if.end.i_crit_edge
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %22, align 4
  %cmp.i354 = icmp eq ptr %41, %queue
  br i1 %cmp.i354, label %if.end.i.idmac_sg_next.exit_crit_edge, label %if.end3.i

if.end.i.idmac_sg_next.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %idmac_sg_next.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i355 = getelementptr i8, ptr %41, i32 -108
  %sg6.i = getelementptr i8, ptr %41, i32 -8
  %42 = ptrtoint ptr %sg6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sg6.i, align 4
  br label %idmac_sg_next.exit

idmac_sg_next.exit:                               ; preds = %if.end3.i, %if.end.i.idmac_sg_next.exit_crit_edge, %cond.end.i.idmac_sg_next.exit_crit_edge
  %descnew.0 = phi ptr [ %add.ptr, %if.end.i.idmac_sg_next.exit_crit_edge ], [ %add.ptr.i355, %if.end3.i ], [ %add.ptr, %cond.end.i.idmac_sg_next.exit_crit_edge ]
  %retval.0.i356 = phi ptr [ null, %if.end.i.idmac_sg_next.exit_crit_edge ], [ %43, %if.end3.i ], [ %call.i, %cond.end.i.idmac_sg_next.exit_crit_edge ]
  %cmp.not = icmp eq ptr %27, %retval.0.i356
  br i1 %cmp.not, label %idmac_sg_next.exit.if.end115_crit_edge, label %do.end114

idmac_sg_next.exit.if.end115_crit_edge:           ; preds = %idmac_sg_next.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

do.end114:                                        ; preds = %idmac_sg_next.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.60, ptr noundef %27, ptr noundef %retval.0.i356) #14
  br label %if.end115

if.end115:                                        ; preds = %do.end114, %idmac_sg_next.exit.if.end115_crit_edge
  %tobool116.not = icmp eq ptr %27, null
  br i1 %tobool116.not, label %if.then125, label %if.end198, !prof !190

if.then125:                                       ; preds = %if.end115
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %call126 = tail call ptr @sg_next(ptr noundef %45) #10
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %do.body159.critedge, label %do.end143, !prof !192

do.end143:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1248, i32 noundef 9, ptr noundef null) #10
  br label %if.end177

do.body159.critedge:                              ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idmac_interrupt.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idmac_interrupt, %if.end177)) #10
          to label %if.then173 [label %if.end177], !srcloc !182

if.then173:                                       ; preds = %do.body159.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idmac_interrupt.__UNIQUE_ID_ddebug248, ptr noundef %device, ptr noundef nonnull @.str.62, i32 noundef %3) #10
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %do.body159.critedge, %do.end143
  %46 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active_buffer18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool180.not = icmp eq i32 %47, 0
  %lnot.ext182 = zext i1 %tobool180.not to i32
  %arrayidx183 = getelementptr %struct.idmac_channel, ptr %dev_id, i32 0, i32 8, i32 %lnot.ext182
  %48 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %retval.0.i356, ptr %arrayidx183, align 4
  %tobool184.not = icmp eq ptr %retval.0.i356, null
  br i1 %tobool184.not, label %if.else, label %if.end198.thread415, !prof !192

if.end198.thread415:                              ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  %call196 = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %dev_id, ptr noundef %descnew.0, ptr noundef nonnull %retval.0.i356, i32 noundef %lnot.ext182)
  br label %cond.end.i360

if.else:                                          ; preds = %if.end177
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  %49 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %if.else.if.end198.thread_crit_edge [
    i32 0, label %if.else.sw.epilog.i_crit_edge
    i32 7, label %sw.bb1.i
  ]

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.else.if.end198.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198.thread

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.else.sw.epilog.i_crit_edge
  %mask.0.i = phi i32 [ -1073741826, %sw.bb1.i ], [ -2, %if.else.sw.epilog.i_crit_edge ]
  %50 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !189
  %and.i = and i32 %51, %mask.0.i
  %52 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %and.i) #10, !srcloc !183
  br label %if.end198.thread

if.end198.thread:                                 ; preds = %sw.epilog.i, %if.else.if.end198.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  %status = getelementptr inbounds %struct.idmac_channel, ptr %dev_id, i32 0, i32 4
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %status, align 4
  br label %if.end.i364

if.end198:                                        ; preds = %if.end115
  %tobool.not.i357 = icmp eq ptr %retval.0.i356, null
  br i1 %tobool.not.i357, label %if.end198.if.end.i364_crit_edge, label %if.end198.cond.end.i360_crit_edge

if.end198.cond.end.i360_crit_edge:                ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i360

if.end198.if.end.i364_crit_edge:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i364

cond.end.i360:                                    ; preds = %if.end198.cond.end.i360_crit_edge, %if.end198.thread415
  %call.i358 = tail call ptr @sg_next(ptr noundef nonnull %retval.0.i356) #10
  %tobool1.not.i359 = icmp eq ptr %call.i358, null
  br i1 %tobool1.not.i359, label %cond.end.i360.if.end.i364_crit_edge, label %cond.end.i360.idmac_sg_next.exit369_crit_edge

cond.end.i360.idmac_sg_next.exit369_crit_edge:    ; preds = %cond.end.i360
  call void @__sanitizer_cov_trace_pc() #12
  br label %idmac_sg_next.exit369

cond.end.i360.if.end.i364_crit_edge:              ; preds = %cond.end.i360
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i364

if.end.i364:                                      ; preds = %cond.end.i360.if.end.i364_crit_edge, %if.end198.if.end.i364_crit_edge, %if.end198.thread
  %list.i361 = getelementptr inbounds %struct.idmac_tx_desc, ptr %descnew.0, i32 0, i32 3
  %54 = ptrtoint ptr %list.i361 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %list.i361, align 4
  %cmp.i363 = icmp eq ptr %55, %queue
  br i1 %cmp.i363, label %if.end.i364.idmac_sg_next.exit369_crit_edge, label %if.end3.i367

if.end.i364.idmac_sg_next.exit369_crit_edge:      ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #12
  br label %idmac_sg_next.exit369

if.end3.i367:                                     ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i365 = getelementptr i8, ptr %55, i32 -108
  %sg6.i366 = getelementptr i8, ptr %55, i32 -8
  %56 = ptrtoint ptr %sg6.i366 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sg6.i366, align 4
  br label %idmac_sg_next.exit369

idmac_sg_next.exit369:                            ; preds = %if.end3.i367, %if.end.i364.idmac_sg_next.exit369_crit_edge, %cond.end.i360.idmac_sg_next.exit369_crit_edge
  %descnew.1 = phi ptr [ %descnew.0, %if.end.i364.idmac_sg_next.exit369_crit_edge ], [ %add.ptr.i365, %if.end3.i367 ], [ %descnew.0, %cond.end.i360.idmac_sg_next.exit369_crit_edge ]
  %retval.0.i368 = phi ptr [ null, %if.end.i364.idmac_sg_next.exit369_crit_edge ], [ %57, %if.end3.i367 ], [ %call.i358, %cond.end.i360.idmac_sg_next.exit369_crit_edge ]
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %call200 = tail call ptr @sg_next(ptr noundef %59) #10
  %tobool201.not = icmp eq ptr %call200, null
  %brmerge = select i1 %tobool201.not, i1 true, i1 %tobool116.not
  br i1 %brmerge, label %if.then211, label %idmac_sg_next.exit369.if.end212_crit_edge, !prof !194

idmac_sg_next.exit369.if.end212_crit_edge:        ; preds = %idmac_sg_next.exit369
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.then211:                                       ; preds = %idmac_sg_next.exit369
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then211.list_del_init.exit_crit_edge

if.then211.list_del_init.exit_crit_edge:          ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then211.list_del_init.exit_crit_edge
  %66 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %22, ptr %22, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %22, ptr %prev.i3.i, align 4
  br label %if.end212

if.end212:                                        ; preds = %list_del_init.exit, %idmac_sg_next.exit369.if.end212_crit_edge
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i368, ptr %arrayidx, align 4
  %tobool213.not = icmp eq ptr %retval.0.i368, null
  br i1 %tobool213.not, label %if.end212.if.end229_crit_edge, label %land.lhs.true220, !prof !190

if.end212.if.end229_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229

land.lhs.true220:                                 ; preds = %if.end212
  %69 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %active_buffer18, align 4
  %call222 = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %dev_id, ptr noundef %descnew.1, ptr noundef nonnull %retval.0.i368, i32 noundef %70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %land.lhs.true220.if.end229_crit_edge

land.lhs.true220.if.end229_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229

if.then225:                                       ; preds = %land.lhs.true220
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %descnew.1, i32 0, i32 6
  %71 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %descnew.1, i32 0, i32 7
  %73 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %descnew.1, i32 0, i32 8
  %75 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %callback_param.i, align 4
  %list226 = getelementptr inbounds %struct.idmac_tx_desc, ptr %descnew.1, i32 0, i32 3
  %call.i.i370 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list226) #10
  br i1 %call.i.i370, label %if.end.i.i373, label %if.then225.list_del_init.exit375_crit_edge

if.then225.list_del_init.exit375_crit_edge:       ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit375

if.end.i.i373:                                    ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i371 = getelementptr inbounds %struct.idmac_tx_desc, ptr %descnew.1, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %prev.i.i371 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i371, align 4
  %79 = ptrtoint ptr %list226 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %list226, align 4
  %prev1.i.i.i372 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i372 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i372, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del_init.exit375

list_del_init.exit375:                            ; preds = %if.end.i.i373, %if.then225.list_del_init.exit375_crit_edge
  %83 = ptrtoint ptr %list226 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %list226, ptr %list226, align 4
  %prev.i3.i374 = getelementptr inbounds %struct.idmac_tx_desc, ptr %descnew.1, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %prev.i3.i374 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %list226, ptr %prev.i3.i374, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %85 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i377 = icmp eq ptr %74, null
  br i1 %tobool.not.i377, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del_init.exit375
  call void @__sanitizer_cov_trace_pc() #12
  call void %74(ptr noundef %76, ptr noundef nonnull %dummy_result.i) #10
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %list_del_init.exit375
  %tobool4.not.i = icmp eq ptr %72, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %72(ptr noundef %76) #10
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #10
  call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %if.end229

if.end229:                                        ; preds = %dmaengine_desc_callback_invoke.exit, %land.lhs.true220.if.end229_crit_edge, %if.end212.if.end229_crit_edge
  %86 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %active_buffer18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool231.not = icmp eq i32 %87, 0
  %lnot.ext233 = zext i1 %tobool231.not to i32
  %88 = ptrtoint ptr %active_buffer18 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %lnot.ext233, ptr %active_buffer18, align 4
  br i1 %brmerge, label %if.then236, label %if.end248.critedge

if.then236:                                       ; preds = %if.end229
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp.i379 = icmp slt i32 %90, 1
  br i1 %cmp.i379, label %do.body2.i, label %dma_cookie_complete.exit, !prof !190

do.body2.i:                                       ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ipu/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !195
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then236
  %chan.i = getelementptr i8, ptr %22, i32 -96
  %91 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %completed_cookie.i, align 4
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %add.ptr, align 4
  %callback.i380 = getelementptr i8, ptr %22, i32 -84
  %95 = ptrtoint ptr %callback.i380 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %callback.i380, align 4
  %callback_result.i381 = getelementptr i8, ptr %22, i32 -80
  %97 = ptrtoint ptr %callback_result.i381 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %callback_result.i381, align 4
  %callback_param.i383 = getelementptr i8, ptr %22, i32 -76
  %99 = ptrtoint ptr %callback_param.i383 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %callback_param.i383, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %flags = getelementptr i8, ptr %22, i32 -104
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 4
  %and245 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %dma_cookie_complete.exit.cleanup_crit_edge, label %if.then247

dma_cookie_complete.exit.cleanup_crit_edge:       ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then247:                                       ; preds = %dma_cookie_complete.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i385) #10
  %103 = ptrtoint ptr %dummy_result.i385 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 0, ptr %dummy_result.i385, align 8
  %tobool.not.i387 = icmp eq ptr %98, null
  br i1 %tobool.not.i387, label %if.else.i391, label %if.then.i389

if.then.i389:                                     ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #12
  call void %98(ptr noundef %100, ptr noundef nonnull %dummy_result.i385) #10
  br label %dmaengine_desc_callback_invoke.exit394

if.else.i391:                                     ; preds = %if.then247
  %tobool4.not.i390 = icmp eq ptr %96, null
  br i1 %tobool4.not.i390, label %if.else.i391.dmaengine_desc_callback_invoke.exit394_crit_edge, label %if.then5.i393

if.else.i391.dmaengine_desc_callback_invoke.exit394_crit_edge: ; preds = %if.else.i391
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_desc_callback_invoke.exit394

if.then5.i393:                                    ; preds = %if.else.i391
  call void @__sanitizer_cov_trace_pc() #12
  call void %96(ptr noundef %100) #10
  br label %dmaengine_desc_callback_invoke.exit394

dmaengine_desc_callback_invoke.exit394:           ; preds = %if.then5.i393, %if.else.i391.dmaengine_desc_callback_invoke.exit394_crit_edge, %if.then.i389
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i385) #10
  br label %cleanup

if.end248.critedge:                               ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end248.critedge, %dmaengine_desc_callback_invoke.exit394, %dma_cookie_complete.exit.cleanup_crit_edge, %if.then82, %if.then63, %if.then49, %if.then33, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %if.then63 ], [ 1, %if.then82 ], [ 0, %if.then49 ], [ 1, %if.end248.critedge ], [ 1, %dmaengine_desc_callback_invoke.exit394 ], [ 1, %dma_cookie_complete.exit.cleanup_crit_edge ], [ 0, %if.then33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ic_sof_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %irq, i32 noundef %1) #14
  tail call void @disable_irq_nosync(i32 noundef %irq) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ic_eof_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %irq, i32 noundef %1) #14
  tail call void @disable_irq_nosync(i32 noundef %irq) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipu_uninit_channel(ptr noundef %idmac, ptr nocapture noundef %ichan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %ichan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %shl = shl nuw i32 1, %1
  %add.ptr = getelementptr i8, ptr %idmac, i32 -76
  %lock = getelementptr i8, ptr %idmac, i32 -52
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %channel_init_mask = getelementptr i8, ptr %idmac, i32 -56
  %2 = ptrtoint ptr %channel_init_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_init_mask, align 4
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %idmac, i32 -4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef %1) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !189
  %neg = xor i32 %shl, -1
  %and11 = and i32 %8, %neg
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i58 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %and11) #10, !srcloc !183
  %sec_chan_en = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 13
  %11 = ptrtoint ptr %sec_chan_en to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sec_chan_en, align 4
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %1, label %sw.epilog [
    i32 7, label %sw.bb
    i32 0, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %reg_ic.i = getelementptr i8, ptr %idmac, i32 -72
  %13 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_ic.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !189
  %and13 = and i32 %15, -1073741826
  %16 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_ic.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %and13) #10, !srcloc !183
  br label %sw.epilog.thread

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %reg_ic.i60 = getelementptr i8, ptr %idmac, i32 -72
  %18 = ptrtoint ptr %reg_ic.i60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_ic.i60, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !189
  %and16 = and i32 %20, -4
  %21 = ptrtoint ptr %reg_ic.i60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_ic.i60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %and16) #10, !srcloc !183
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb14, %sw.bb
  %23 = ptrtoint ptr %channel_init_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel_init_mask, align 4
  %and2162 = and i32 %24, %neg
  store i32 %and2162, ptr %channel_init_mask, align 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !189
  br label %ipu_channel_conf_mask.exit

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %channel_init_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel_init_mask, align 4
  %and21 = and i32 %29, %neg
  store i32 %and21, ptr %channel_init_mask, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !189
  %33 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %33)
  %switch = icmp eq i32 %33, 14
  %phi.bo = select i1 %switch, i32 -81, i32 -1
  br label %ipu_channel_conf_mask.exit

ipu_channel_conf_mask.exit:                       ; preds = %sw.epilog, %sw.epilog.thread
  %34 = phi i32 [ %27, %sw.epilog.thread ], [ %32, %sw.epilog ]
  %mask.0.i = phi i32 [ -4, %sw.epilog.thread ], [ %phi.bo, %sw.epilog ]
  %and25 = and i32 %mask.0.i, %34
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %and25) #10, !srcloc !183
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %n_tx_desc = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 6
  %37 = ptrtoint ptr %n_tx_desc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %n_tx_desc, align 4
  %desc = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 7
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc, align 4
  tail call void @vfree(ptr noundef %39) #10
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %ipu_channel_conf_mask.exit, %do.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_irq_unmap(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_idmac_reg(ptr nocapture noundef readonly %ipu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_idmac_reg.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_idmac_reg, %do.body9)) #10
          to label %if.then [label %do.body9], !srcloc !182

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %reg_ic.i = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 1
  %2 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_ic.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !189
  %5 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_ic.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !189
  %8 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_ic.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #10, !srcloc !189
  %11 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_ic.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #10, !srcloc !189
  %14 = ptrtoint ptr %reg_ic.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_ic.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #10, !srcloc !189
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_idmac_reg.__UNIQUE_ID_ddebug236, ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %4, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16) #10
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_idmac_reg.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_idmac_reg, %do.end31)) #10
          to label %if.then23 [label %do.end31], !srcloc !182

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.ipu, ptr %ipu, i32 0, i32 8
  %17 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev24, align 4
  %19 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipu, align 4
  %add.ptr.i53 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #10, !srcloc !189
  %22 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipu, align 4
  %add.ptr.i54 = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #10, !srcloc !189
  %25 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ipu, align 4
  %add.ptr.i55 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #10, !srcloc !189
  %28 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ipu, align 4
  %add.ptr.i56 = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #10, !srcloc !189
  %31 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipu, align 4
  %add.ptr.i57 = getelementptr i8, ptr %32, i32 28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #10, !srcloc !189
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_idmac_reg.__UNIQUE_ID_ddebug237, ptr noundef %18, ptr noundef nonnull @.str.49, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idmac_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 -76
  %dev11 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 4
  %device12 = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %list = getelementptr inbounds %struct.idmac_tx_desc, ptr %tx, i32 0, i32 3
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %7, %list
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device12, ptr noundef nonnull @.str.33, ptr noundef %tx) #14
  br label %cleanup128

if.end:                                           ; preds = %entry
  %chan_mutex = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %chan_mutex, i32 noundef 0) #10
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, -3
  store i32 %and.i, ptr %flags.i, align 4
  %status = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp ult i32 %11, 2
  br i1 %cmp, label %if.then13, label %if.end.do.body57_crit_edge

if.end.do.body57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

if.then13:                                        ; preds = %if.end
  %sg = getelementptr inbounds %struct.idmac_tx_desc, ptr %tx, i32 0, i32 1
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i179 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.i.not = icmp eq i32 %and.i179, 0
  br i1 %tobool.i.not, label %cond.false, label %if.then13.cond.end_crit_edge

if.then13.cond.end_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %dma_address = getelementptr %struct.scatterlist, ptr %13, i32 1, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then13.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.false ], [ 0, %if.then13.cond.end_crit_edge ]
  %sg16 = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %sg16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg16, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %lor.rhs, label %cond.end.do.end33_crit_edge

cond.end.do.end33_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

lor.rhs:                                          ; preds = %cond.end
  %arrayidx20 = getelementptr %struct.idmac_channel, ptr %1, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %lor.rhs.if.end39_crit_edge, label %lor.rhs.do.end33_crit_edge, !prof !192

lor.rhs.do.end33_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

lor.rhs.if.end39_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end33:                                         ; preds = %lor.rhs.do.end33_crit_edge, %cond.end.do.end33_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 851, i32 noundef 9, ptr noundef null) #10
  br label %if.end39

if.end39:                                         ; preds = %do.end33, %lor.rhs.if.end39_crit_edge
  %out_pixel_fmt = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 2, i32 0, i32 5
  %22 = ptrtoint ptr %out_pixel_fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_pixel_fmt, align 4
  %out_width = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 2, i32 0, i32 3
  %24 = ptrtoint ptr %out_width to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %out_width, align 4
  %out_height = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 2, i32 0, i32 4
  %26 = ptrtoint ptr %out_height to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %out_height, align 2
  %out_stride = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 2, i32 0, i32 6
  %28 = ptrtoint ptr %out_stride to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %out_stride, align 4
  %conv = zext i16 %29 to i32
  %30 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg, align 4
  %dma_address49 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dma_address49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_address49, align 4
  %call50 = tail call fastcc i32 @ipu_init_channel_buffer(ptr noundef %1, i32 noundef %23, i16 noundef zeroext %25, i16 noundef zeroext %27, i32 noundef %conv, i32 noundef %33, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end39.out_crit_edge, label %if.end39.do.body57_crit_edge

if.end39.do.body57_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body57:                                        ; preds = %if.end39.do.body57_crit_edge, %if.end.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idmac_tx_submit.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idmac_tx_submit, %do.end74)) #10
          to label %if.then69 [label %do.end74], !srcloc !182

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %sg70 = getelementptr inbounds %struct.idmac_tx_desc, ptr %tx, i32 0, i32 1
  %34 = ptrtoint ptr %sg70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sg70, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idmac_tx_submit.__UNIQUE_ID_ddebug241, ptr noundef %device12, ptr noundef nonnull @.str.35, ptr noundef %35) #10
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.body57
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %39, 1
  %40 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #10
  %41 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %cookie2.i, align 4
  %42 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %tx, align 4
  %lock = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 11
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %44, ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end74.list_add_tail.exit_crit_edge

do.end74.list_add_tail.exit_crit_edge:            ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list, ptr %prev.i, align 4
  %46 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.idmac_tx_desc, ptr %tx, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end74.list_add_tail.exit_crit_edge
  %sg1.i = getelementptr inbounds %struct.idmac_tx_desc, ptr %tx, i32 0, i32 1
  %49 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sg1.i, align 4
  %tobool.not24.i = icmp eq ptr %50, null
  br i1 %tobool.not24.i, label %ipu_submit_channel_buffers.exit.thread187, label %for.body.i

ipu_submit_channel_buffers.exit.thread187:        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call82) #10
  br label %if.end93

for.body.i:                                       ; preds = %list_add_tail.exit
  %arrayidx.i = getelementptr %struct.idmac_channel, ptr %1, i32 0, i32 8, i32 0
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %52, null
  br i1 %tobool3.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %1, ptr noundef %tx, ptr noundef nonnull %50, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.then.i.ipu_submit_channel_buffers.exit.thread_crit_edge, label %if.end.i

if.then.i.ipu_submit_channel_buffers.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_submit_channel_buffers.exit.thread

ipu_submit_channel_buffers.exit.thread:           ; preds = %if.then.i.1.ipu_submit_channel_buffers.exit.thread_crit_edge, %if.then.i.ipu_submit_channel_buffers.exit.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %if.then.i.ipu_submit_channel_buffers.exit.thread_crit_edge ], [ %call.i.1, %if.then.i.1.ipu_submit_channel_buffers.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call82) #10
  br label %do.body108

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call ptr @sg_next(ptr noundef nonnull %50) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %sg.1.i = phi ptr [ %50, %for.body.i.for.inc.i_crit_edge ], [ %call8.i, %if.end.i ]
  %ret.1.i = phi i32 [ 0, %for.body.i.for.inc.i_crit_edge ], [ %call.i, %if.end.i ]
  %tobool.not.i = icmp eq ptr %sg.1.i, null
  br i1 %tobool.not.i, label %for.inc.i.ipu_submit_channel_buffers.exit_crit_edge, label %for.body.i.1

for.inc.i.ipu_submit_channel_buffers.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_submit_channel_buffers.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.idmac_channel, ptr %1, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool3.not.i.1 = icmp eq ptr %55, null
  br i1 %tobool3.not.i.1, label %if.then.i.1, label %for.body.i.1.ipu_submit_channel_buffers.exit_crit_edge

for.body.i.1.ipu_submit_channel_buffers.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_submit_channel_buffers.exit

if.then.i.1:                                      ; preds = %for.body.i.1
  %56 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %sg.1.i, ptr %arrayidx.i.1, align 4
  %call.i.1 = tail call fastcc i32 @ipu_submit_buffer(ptr noundef %1, ptr noundef %tx, ptr noundef nonnull %sg.1.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp6.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp6.i.1, label %if.then.i.1.ipu_submit_channel_buffers.exit.thread_crit_edge, label %if.end.i.1

if.then.i.1.ipu_submit_channel_buffers.exit.thread_crit_edge: ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_submit_channel_buffers.exit.thread

if.end.i.1:                                       ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i.1 = tail call ptr @sg_next(ptr noundef nonnull %sg.1.i) #10
  br label %ipu_submit_channel_buffers.exit

ipu_submit_channel_buffers.exit:                  ; preds = %if.end.i.1, %for.body.i.1.ipu_submit_channel_buffers.exit_crit_edge, %for.inc.i.ipu_submit_channel_buffers.exit_crit_edge
  %ret.1.i.lcssa = phi i32 [ %ret.1.i, %for.inc.i.ipu_submit_channel_buffers.exit_crit_edge ], [ %ret.1.i, %for.body.i.1.ipu_submit_channel_buffers.exit_crit_edge ], [ %call.i.1, %if.end.i.1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.lcssa)
  %cmp90 = icmp slt i32 %ret.1.i.lcssa, 0
  br i1 %cmp90, label %ipu_submit_channel_buffers.exit.do.body108_crit_edge, label %ipu_submit_channel_buffers.exit.if.end93_crit_edge

ipu_submit_channel_buffers.exit.if.end93_crit_edge: ; preds = %ipu_submit_channel_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

ipu_submit_channel_buffers.exit.do.body108_crit_edge: ; preds = %ipu_submit_channel_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body108

if.end93:                                         ; preds = %ipu_submit_channel_buffers.exit.if.end93_crit_edge, %ipu_submit_channel_buffers.exit.thread187
  %57 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp95 = icmp ult i32 %58, 3
  br i1 %cmp95, label %if.then97, label %if.end93.dequeue_crit_edge

if.end93.dequeue_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %dequeue

if.then97:                                        ; preds = %if.end93
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan_id.i, align 4
  %lock.i = getelementptr i8, ptr %3, i32 -52
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %shl.i = shl nuw i32 1, %60
  %61 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr10, align 4
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl.i) #10, !srcloc !183
  %active_buffer.i = getelementptr inbounds %struct.idmac_channel, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %active_buffer.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %active_buffer.i, align 4
  %64 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3, ptr %status, align 4
  %65 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %60, label %if.then97.sw.epilog.i_crit_edge [
    i32 14, label %if.then97.sw.bb.i_crit_edge
    i32 15, label %if.then97.sw.bb.i_crit_edge193
    i32 7, label %if.then97.sw.bb.i_crit_edge194
  ]

if.then97.sw.bb.i_crit_edge194:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then97.sw.bb.i_crit_edge193:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then97.sw.bb.i_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then97.sw.epilog.i_crit_edge:                  ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then97.sw.bb.i_crit_edge, %if.then97.sw.bb.i_crit_edge193, %if.then97.sw.bb.i_crit_edge194
  %reg_ic.i.i.i = getelementptr i8, ptr %3, i32 -72
  %66 = ptrtoint ptr %reg_ic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_ic.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 36
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !189
  %or.i.i = or i32 %68, %shl.i
  %69 = ptrtoint ptr %reg_ic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_ic.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %70, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %or.i.i) #10, !srcloc !183
  tail call fastcc void @dump_idmac_reg(ptr noundef %add.ptr10) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.then97.sw.epilog.i_crit_edge
  %reg_ic.i.i = getelementptr i8, ptr %3, i32 -72
  %71 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_ic.i.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %72, i32 32
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #10, !srcloc !189
  %or.i = or i32 %73, %shl.i
  %74 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_ic.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %75, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %or.i) #10, !srcloc !183
  %76 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %60, label %sw.epilog.i.ipu_enable_channel.exit_crit_edge [
    i32 0, label %sw.epilog.i.sw.epilog.i.i_crit_edge
    i32 7, label %sw.bb1.i.i
  ]

sw.epilog.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.epilog.i.ipu_enable_channel.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_enable_channel.exit

sw.bb1.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.epilog.i.sw.epilog.i.i_crit_edge
  %mask.0.i.i = phi i32 [ 1073741825, %sw.bb1.i.i ], [ 1, %sw.epilog.i.sw.epilog.i.i_crit_edge ]
  %77 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_ic.i.i, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #10, !srcloc !189
  %or.i5.i = or i32 %79, %mask.0.i.i
  %80 = ptrtoint ptr %reg_ic.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_ic.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %or.i5.i) #10, !srcloc !183
  br label %ipu_enable_channel.exit

ipu_enable_channel.exit:                          ; preds = %sw.epilog.i.i, %sw.epilog.i.ipu_enable_channel.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  br label %dequeue

dequeue:                                          ; preds = %ipu_enable_channel.exit, %if.end93.dequeue_crit_edge
  tail call fastcc void @dump_idmac_reg(ptr noundef %add.ptr10)
  br label %out

do.body108:                                       ; preds = %ipu_submit_channel_buffers.exit.do.body108_crit_edge, %ipu_submit_channel_buffers.exit.thread
  %cookie.0192 = phi i32 [ %call.i.lcssa, %ipu_submit_channel_buffers.exit.thread ], [ %ret.1.i.lcssa, %ipu_submit_channel_buffers.exit.do.body108_crit_edge ]
  %call116 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call.i.i182 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i182, label %if.end.i.i183, label %do.body108.list_del_init.exit_crit_edge

do.body108.list_del_init.exit_crit_edge:          ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i183:                                    ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.idmac_tx_desc, ptr %tx, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i, align 4
  %84 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i183, %do.body108.list_del_init.exit_crit_edge
  %88 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.idmac_tx_desc, ptr %tx, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call116) #10
  %90 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cookie.0192, ptr %tx, align 4
  %cookie125 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 2
  %91 = ptrtoint ptr %cookie125 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cookie.0192, ptr %cookie125, align 4
  br label %out

out:                                              ; preds = %list_del_init.exit, %dequeue, %if.end39.out_crit_edge
  %cookie.1 = phi i32 [ %call50, %if.end39.out_crit_edge ], [ %cookie.0192, %list_del_init.exit ], [ %40, %dequeue ]
  tail call void @mutex_unlock(ptr noundef %chan_mutex) #10
  br label %cleanup128

cleanup128:                                       ; preds = %out, %do.end
  %retval.0 = phi i32 [ %cookie.1, %out ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipu_init_channel_buffer(ptr nocapture noundef %ichan, i32 noundef %pixel_fmt, i16 noundef zeroext %width, i16 noundef zeroext %height, i32 noundef %stride, i32 noundef %phyaddr_0, i32 noundef %phyaddr_1) unnamed_addr #2 align 64 {
entry:
  %params = alloca %union.chan_param_mem, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %ichan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %2 = ptrtoint ptr %ichan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ichan, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 -76
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #10
  %4 = call ptr @memset(ptr %params, i32 0, i32 40)
  %5 = getelementptr inbounds { %struct.chan_param_mem_planar, [4 x i8] }, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %switch.tableidx = add i32 %pixel_fmt, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 11
  br i1 %7, label %switch.lookup, label %entry.bytes_per_pixel.exit_crit_edge

entry.bytes_per_pixel.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bytes_per_pixel.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.ipu_init_channel_buffer, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bytes_per_pixel.exit

bytes_per_pixel.exit:                             ; preds = %switch.lookup, %entry.bytes_per_pixel.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.bytes_per_pixel.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %mul = mul i32 %retval.0.i, %stride
  %rem = and i32 %mul, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %bytes_per_pixel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %3, i32 -4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.36, i32 noundef %stride, i32 noundef %mul) #14
  br label %cleanup

if.end:                                           ; preds = %bytes_per_pixel.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp ugt i32 %1, 13
  %rem5 = and i32 %stride, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5)
  %tobool6.not = icmp eq i32 %rem5, 0
  %or.cond = or i1 %tobool6.not, %cmp
  br i1 %or.cond, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr i8, ptr %3, i32 -4
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.39) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %13 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %13, i32 20)
  %bf.load.i = load i160, ptr %params, align 8
  %14 = add i16 %width, 4095
  %15 = and i16 %14, 4095
  %bf.value.i = zext i16 %15 to i160
  %bf.shl.i = shl nuw nsw i160 %bf.value.i, 40
  %bf.clear.i = and i160 %bf.load.i, -4503599358935041
  %bf.set.i = or i160 %bf.clear.i, %bf.shl.i
  %conv1.i = zext i16 %height to i32
  %sub2.i = add nsw i32 %conv1.i, -1
  %16 = and i32 %sub2.i, 255
  %bf.value4.i = zext i32 %16 to i160
  %bf.shl5.i = shl nuw nsw i160 %bf.value4.i, 32
  %bf.set7.i = or i160 %bf.set.i, %bf.shl5.i
  %17 = shl i32 %sub2.i, 20
  %18 = and i32 %17, -268435456
  %bf.shl13.i = zext i32 %18 to i160
  %bf.set15.i = or i160 %bf.set7.i, %bf.shl13.i
  store i160 %bf.set15.i, ptr %params, align 8
  %conv17.i = and i32 %mul, 65535
  %sub18.i = add i32 %mul, 16383
  %sl.i = getelementptr inbounds %struct.chan_param_mem_planar, ptr %params, i32 0, i32 3
  %19 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load19.i = load i64, ptr %sl.i, align 4
  %20 = and i32 %sub18.i, 16383
  %bf.value20.i = zext i32 %20 to i64
  %bf.shl21.i = shl nuw nsw i64 %bf.value20.i, 47
  %bf.clear22.i = and i64 %bf.load19.i, -2305702271725338625
  %bf.set23.i = or i64 %bf.clear22.i, %bf.shl21.i
  store i64 %bf.set23.i, ptr %sl.i, align 4
  %21 = zext i32 %pixel_fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %pixel_fmt, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 13, label %sw.bb37.i
    i32 6, label %sw.bb54.i
    i32 12, label %sw.bb92.i
    i32 11, label %sw.bb137.i
    i32 17, label %if.end12.sw.bb182.i_crit_edge
    i32 15, label %if.end12.sw.bb182.i_crit_edge6
    i32 16, label %if.end12.sw.bb182.i_crit_edge7
    i32 18, label %if.end12.sw.bb230.i_crit_edge
    i32 14, label %if.end12.sw.bb230.i_crit_edge8
    i32 10, label %sw.bb279.i
    i32 4, label %if.end12.sw.bb296.i_crit_edge
    i32 2, label %if.end12.sw.bb296.i_crit_edge9
    i32 5, label %sw.bb315.i
    i32 3, label %sw.bb337.i
  ]

if.end12.sw.bb296.i_crit_edge9:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb296.i

if.end12.sw.bb296.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb296.i

if.end12.sw.bb230.i_crit_edge8:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb230.i

if.end12.sw.bb230.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb230.i

if.end12.sw.bb182.i_crit_edge7:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb182.i

if.end12.sw.bb182.i_crit_edge6:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb182.i

if.end12.sw.bb182.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb182.i

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear26.i = and i64 %bf.set23.i, 2305719319524278271
  %bf.set36.i = or i64 %bf.clear26.i, 6917652441378848768
  %22 = ptrtoint ptr %sl.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %bf.set36.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb37.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear44.i = and i64 %bf.set23.i, 2305719319524278271
  %bf.set53.i = or i64 %bf.clear44.i, 123207579336704
  %23 = ptrtoint ptr %sl.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %bf.set53.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb54.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 12)
  %bf.load56.i = load i96, ptr %sl.i, align 4
  %bf.clear57.i = and i96 %bf.load56.i, 9902989068806306451324665855
  %bf.set91.i = or i96 %bf.clear57.i, 19807343422658751831937646592
  store i96 %bf.set91.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb92.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 12)
  %bf.load94.i = load i96, ptr %sl.i, align 4
  %bf.clear95.i = and i96 %bf.load94.i, 9902989068806306451324665855
  %bf.set136.i = or i96 %bf.clear95.i, 9903822813234930194977914880
  store i96 %bf.set136.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb137.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 12)
  %bf.load139.i = load i96, ptr %sl.i, align 4
  %bf.clear140.i = and i96 %bf.load139.i, 9902989068806306451324665855
  %bf.set181.i = or i96 %bf.clear140.i, 9903822814386725799677919232
  store i96 %bf.set181.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb182.i:                                       ; preds = %if.end12.sw.bb182.i_crit_edge, %if.end12.sw.bb182.i_crit_edge6, %if.end12.sw.bb182.i_crit_edge7
  %27 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 12)
  %bf.load184.i = load i96, ptr %sl.i, align 4
  %bf.clear189.i = and i96 %bf.load184.i, 9902989068806306447566569471
  %bf.set229.i = or i96 %bf.clear189.i, 302499546873323751211008
  store i96 %bf.set229.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb230.i:                                       ; preds = %if.end12.sw.bb230.i_crit_edge, %if.end12.sw.bb230.i_crit_edge8
  %28 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 12)
  %bf.load232.i = load i96, ptr %sl.i, align 4
  %bf.clear237.i = and i96 %bf.load232.i, 9902989068806306447566569471
  %bf.set278.i = or i96 %bf.clear237.i, 302500698668928451215360
  store i96 %bf.set278.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb279.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 12)
  %bf.load281.i = load i96, ptr %sl.i, align 4
  %bf.clear282.i = and i96 %bf.load281.i, 9902989071112149456243392511
  %bf.set295.i = or i96 %bf.clear282.i, 19807494243226228953115000832
  store i96 %bf.set295.i, ptr %sl.i, align 4
  br label %ipu_ch_param_set_size.exit

sw.bb296.i:                                       ; preds = %if.end12.sw.bb296.i_crit_edge, %if.end12.sw.bb296.i_crit_edge9
  %30 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 12)
  %bf.load298.i = load i96, ptr %sl.i, align 4
  %bf.clear299.i = and i96 %bf.load298.i, 9902989071112149456243392511
  %bf.set312.i = or i96 %bf.clear299.i, 29710787883918093409337737216
  store i96 %bf.set312.i, ptr %sl.i, align 4
  %mul.i = mul nuw i32 %conv17.i, %conv1.i
  %div470.i = lshr i32 %mul.i, 2
  %add.i = add i32 %div470.i, %mul.i
  %31 = and i32 %mul.i, 2047
  %bf.value.i.i = zext i32 %31 to i160
  %bf.shl.i.i = shl nuw nsw i160 %bf.value.i.i, 96
  %bf.clear.i.i = and i160 %bf.set15.i, -162259276829213327362780991324161
  %bf.set.i.i = or i160 %bf.clear.i.i, %bf.shl.i.i
  %shr.i.i = lshr i32 %mul.i, 11
  %32 = and i32 %shr.i.i, 32767
  %bf.value2.i.i = zext i32 %32 to i160
  %bf.shl3.i.i = shl nuw nsw i160 %bf.value2.i.i, 81
  %bf.set5.i.i = or i160 %bf.set.i.i, %bf.shl3.i.i
  %33 = and i32 %add.i, 131071
  %bf.value9.i.i = zext i32 %33 to i160
  %bf.shl10.i.i = shl nuw nsw i160 %bf.value9.i.i, 64
  %bf.set12.i.i = or i160 %bf.set5.i.i, %bf.shl10.i.i
  %shr14.i.i = lshr i32 %add.i, 17
  %34 = and i32 %shr14.i.i, 511
  %bf.value16.i.i = zext i32 %34 to i160
  %bf.shl17.i.i = shl nuw nsw i160 %bf.value16.i.i, 55
  %bf.set19.i.i = or i160 %bf.set12.i.i, %bf.shl17.i.i
  %35 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %35, i32 20)
  store i160 %bf.set19.i.i, ptr %params, align 8
  br label %ipu_ch_param_set_size.exit

sw.bb315.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 12)
  %bf.load317.i = load i96, ptr %sl.i, align 4
  %bf.clear318.i = and i96 %bf.load317.i, 9902989071112149456243392511
  %bf.set331.i = or i96 %bf.clear318.i, 29710712326054367495014318080
  store i96 %bf.set331.i, ptr %sl.i, align 4
  %mul334.i = mul nuw i32 %conv17.i, %conv1.i
  %div335469.i = lshr i32 %mul334.i, 1
  %add336.i = add i32 %div335469.i, %mul334.i
  %37 = and i32 %add336.i, 2047
  %bf.value.i472.i = zext i32 %37 to i160
  %bf.shl.i473.i = shl nuw nsw i160 %bf.value.i472.i, 96
  %bf.clear.i474.i = and i160 %bf.set15.i, -162259276829213327362780991324161
  %bf.set.i475.i = or i160 %bf.clear.i474.i, %bf.shl.i473.i
  %shr.i476.i = lshr i32 %add336.i, 11
  %38 = and i32 %shr.i476.i, 32767
  %bf.value2.i477.i = zext i32 %38 to i160
  %bf.shl3.i478.i = shl nuw nsw i160 %bf.value2.i477.i, 81
  %bf.set5.i479.i = or i160 %bf.set.i475.i, %bf.shl3.i478.i
  %39 = and i32 %mul334.i, 131071
  %bf.value9.i480.i = zext i32 %39 to i160
  %bf.shl10.i481.i = shl nuw nsw i160 %bf.value9.i480.i, 64
  %bf.set12.i482.i = or i160 %bf.set5.i479.i, %bf.shl10.i481.i
  %shr14.i483.i = lshr i32 %mul334.i, 17
  %40 = and i32 %shr14.i483.i, 511
  %bf.value16.i484.i = zext i32 %40 to i160
  %bf.shl17.i485.i = shl nuw nsw i160 %bf.value16.i484.i, 55
  %bf.set19.i486.i = or i160 %bf.set12.i482.i, %bf.shl17.i485.i
  %41 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %41, i32 20)
  store i160 %bf.set19.i486.i, ptr %params, align 8
  br label %ipu_ch_param_set_size.exit

sw.bb337.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 12)
  %bf.load339.i = load i96, ptr %sl.i, align 4
  %bf.clear340.i = and i96 %bf.load339.i, 9902989071112149456243392511
  %bf.set353.i = or i96 %bf.clear340.i, 29710712326054367495014318080
  store i96 %bf.set353.i, ptr %sl.i, align 4
  %mul356.i = mul nuw i32 %conv17.i, %conv1.i
  %div357468.i = lshr i32 %mul356.i, 1
  %add358.i = add i32 %div357468.i, %mul356.i
  %43 = and i32 %mul356.i, 2047
  %bf.value.i488.i = zext i32 %43 to i160
  %bf.shl.i489.i = shl nuw nsw i160 %bf.value.i488.i, 96
  %bf.clear.i490.i = and i160 %bf.set15.i, -162259276829213327362780991324161
  %bf.set.i491.i = or i160 %bf.clear.i490.i, %bf.shl.i489.i
  %shr.i492.i = lshr i32 %mul356.i, 11
  %44 = and i32 %shr.i492.i, 32767
  %bf.value2.i493.i = zext i32 %44 to i160
  %bf.shl3.i494.i = shl nuw nsw i160 %bf.value2.i493.i, 81
  %bf.set5.i495.i = or i160 %bf.set.i491.i, %bf.shl3.i494.i
  %45 = and i32 %add358.i, 131071
  %bf.value9.i496.i = zext i32 %45 to i160
  %bf.shl10.i497.i = shl nuw nsw i160 %bf.value9.i496.i, 64
  %bf.set12.i498.i = or i160 %bf.set5.i495.i, %bf.shl10.i497.i
  %shr14.i499.i = lshr i32 %add358.i, 17
  %46 = and i32 %shr14.i499.i, 511
  %bf.value16.i500.i = zext i32 %46 to i160
  %bf.shl17.i501.i = shl nuw nsw i160 %bf.value16.i500.i, 55
  %bf.set19.i502.i = or i160 %bf.set12.i498.i, %bf.shl17.i501.i
  %47 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %47, i32 20)
  store i160 %bf.set19.i502.i, ptr %params, align 8
  br label %ipu_ch_param_set_size.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %48 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.41, i32 noundef %pixel_fmt) #14
  br label %ipu_ch_param_set_size.exit

ipu_ch_param_set_size.exit:                       ; preds = %do.end.i, %sw.bb337.i, %sw.bb315.i, %sw.bb296.i, %sw.bb279.i, %sw.bb230.i, %sw.bb182.i, %sw.bb137.i, %sw.bb92.i, %sw.bb54.i, %sw.bb37.i, %sw.bb.i
  %49 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %49, i32 20)
  %bf.load359.i = load i160, ptr %params, align 8
  %bf.set361.i = or i160 %bf.load359.i, 10384593717069655257060992658440192
  store i160 %bf.set361.i, ptr %params, align 8
  %eba0.i = getelementptr inbounds %struct.chan_param_mem_planar, ptr %params, i32 0, i32 1
  %50 = ptrtoint ptr %eba0.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %phyaddr_0, ptr %eba0.i, align 4
  %eba1.i = getelementptr inbounds %struct.chan_param_mem_planar, ptr %params, i32 0, i32 2
  %51 = ptrtoint ptr %eba1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %phyaddr_1, ptr %eba1.i, align 8
  %52 = ptrtoint ptr %sl.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load.i1 = load i64, ptr %sl.i, align 4
  %bf.clear.i2 = and i64 %bf.load.i1, -15393162788865
  store i64 %bf.clear.i2, ptr %sl.i, align 4
  %lock = getelementptr i8, ptr %3, i32 -52
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %shl.i = shl i32 %1, 4
  %or.i = or i32 %shl.i, 65536
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i4.do.body.i_crit_edge, %ipu_ch_param_set_size.exit
  %addr.addr.05.i = phi i32 [ %or.i, %ipu_ch_param_set_size.exit ], [ %addr.addr.1.i, %do.end.i4.do.body.i_crit_edge ]
  %data.addr.04.i = phi ptr [ %params, %ipu_ch_param_set_size.exit ], [ %incdec.ptr.i, %do.end.i4.do.body.i_crit_edge ]
  %num_words.addr.03.i = phi i32 [ 10, %ipu_ch_param_set_size.exit ], [ %dec.i, %do.end.i4.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_write_param_mem.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_init_channel_buffer, %do.end.i4)) #10
          to label %if.then.i [label %do.end.i4], !srcloc !182

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 8), align 4
  %54 = ptrtoint ptr %data.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data.addr.04.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_write_param_mem.__UNIQUE_ID_ddebug238, ptr noundef %53, ptr noundef nonnull @.str.44, i32 noundef %addr.addr.05.i, i32 noundef %55) #10
  br label %do.end.i4

do.end.i4:                                        ; preds = %if.then.i, %do.body.i
  %56 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %addr.addr.05.i) #10, !srcloc !183
  %incdec.ptr.i = getelementptr i32, ptr %data.addr.04.i, i32 1
  %57 = ptrtoint ptr %data.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data.addr.04.i, align 4
  %59 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %59, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %58) #10, !srcloc !183
  %inc.i = add i32 %addr.addr.05.i, 1
  %and.i = and i32 %inc.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp4.i = icmp eq i32 %and.i, 5
  %60 = add i32 %addr.addr.05.i, 9
  %add.i3 = and i32 %60, -8
  %addr.addr.1.i = select i1 %cmp4.i, i32 %add.i3, i32 %inc.i
  %dec.i = add nsw i32 %num_words.addr.03.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %ipu_write_param_mem.exit, label %do.end.i4.do.body.i_crit_edge

do.end.i4.do.body.i_crit_edge:                    ; preds = %do.end.i4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

ipu_write_param_mem.exit:                         ; preds = %do.end.i4
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr4, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phyaddr_1)
  %tobool26.not = icmp eq i32 %phyaddr_1, 0
  %shl28 = shl nuw i32 1, %1
  %or = or i32 %63, %shl28
  %neg = xor i32 %shl28, -1
  %and = and i32 %63, %neg
  %reg.0 = select i1 %tobool26.not, i32 %and, i32 %or
  %64 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %65, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %reg.0) #10, !srcloc !183
  %status = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 4
  %66 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #10
  br label %cleanup

cleanup:                                          ; preds = %ipu_write_param_mem.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %ipu_write_param_mem.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipu_submit_buffer(ptr nocapture noundef %ichan, ptr nocapture noundef readonly %desc, ptr noundef %sg, i32 noundef %buf_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id1 = getelementptr inbounds %struct.dma_chan, ptr %ichan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id1, align 4
  %dev3 = getelementptr inbounds %struct.dma_chan, ptr %ichan, i32 0, i32 5
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_idx)
  %cmp5.i = icmp eq i32 %buf_idx, 0
  %8 = load ptr, ptr @ipu_data, align 4
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !189
  %shl.i = shl nuw i32 1, %1
  %and.i17 = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i, label %if.then.i.if.then.i21_crit_edge, label %if.then8.i

if.then.i.if.then.i21_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i21

if.then8.i:                                       ; preds = %if.then.i
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %if.then8.i.ipu_ic_disable_task.exit.i_crit_edge [
    i32 0, label %if.then8.i.sw.epilog.i.i_crit_edge
    i32 7, label %sw.bb1.i.i
  ]

if.then8.i.sw.epilog.i.i_crit_edge:               ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.then8.i.ipu_ic_disable_task.exit.i_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_ic_disable_task.exit.i

sw.bb1.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.then8.i.sw.epilog.i.i_crit_edge
  %mask.0.i.i = phi i32 [ -1073741826, %sw.bb1.i.i ], [ -2, %if.then8.i.sw.epilog.i.i_crit_edge ]
  %11 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !189
  %and.i.i = and i32 %12, %mask.0.i.i
  %13 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %and.i.i) #10, !srcloc !183
  br label %ipu_ic_disable_task.exit.i

ipu_ic_disable_task.exit.i:                       ; preds = %sw.epilog.i.i, %if.then8.i.ipu_ic_disable_task.exit.i_crit_edge
  %status.i = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 4
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %status.i, align 4
  br label %if.then.i21

if.else.i:                                        ; preds = %if.end
  %add.ptr.i42.i = getelementptr i8, ptr %8, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #10, !srcloc !189
  %shl11.i = shl nuw i32 1, %1
  %and12.i = and i32 %15, %shl11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.then14.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.else.i
  %16 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %1, label %if.then14.i.ipu_ic_disable_task.exit47.i_crit_edge [
    i32 0, label %if.then14.i.sw.epilog.i46.i_crit_edge
    i32 7, label %sw.bb1.i43.i
  ]

if.then14.i.sw.epilog.i46.i_crit_edge:            ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i46.i

if.then14.i.ipu_ic_disable_task.exit47.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipu_ic_disable_task.exit47.i

sw.bb1.i43.i:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i46.i

sw.epilog.i46.i:                                  ; preds = %sw.bb1.i43.i, %if.then14.i.sw.epilog.i46.i_crit_edge
  %mask.0.i44.i = phi i32 [ -1073741826, %sw.bb1.i43.i ], [ -2, %if.then14.i.sw.epilog.i46.i_crit_edge ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !189
  %and.i45.i = and i32 %18, %mask.0.i44.i
  %19 = load ptr, ptr getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %and.i45.i) #10, !srcloc !183
  br label %ipu_ic_disable_task.exit47.i

ipu_ic_disable_task.exit47.i:                     ; preds = %sw.epilog.i46.i, %if.then14.i.ipu_ic_disable_task.exit47.i_crit_edge
  %status15.i = getelementptr inbounds %struct.idmac_channel, ptr %ichan, i32 0, i32 4
  %20 = ptrtoint ptr %status15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %status15.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %ipu_ic_disable_task.exit47.i, %if.else.i.if.end16.i_crit_edge
  %21 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #10, !srcloc !189
  %and19.i = and i32 %22, %shl11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end16.i.if.else.i22_crit_edge

if.end16.i.if.else.i22_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i22

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %22, %shl11.i
  %23 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %or.i) #10, !srcloc !183
  br label %if.else.i22

if.then.i21:                                      ; preds = %ipu_ic_disable_task.exit.i, %if.then.i.if.then.i21_crit_edge
  %shl.i.i = shl i32 %1, 4
  %add.i = or i32 %shl.i.i, 65544
  %24 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %add.i) #10, !srcloc !183
  %25 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %7) #10, !srcloc !183
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), i32 noundef %call2.i) #10
  %26 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 %shl.i) #10, !srcloc !183
  br label %ipu_select_buffer.exit

if.else.i22:                                      ; preds = %if.then21.i, %if.end16.i.if.else.i22_crit_edge
  %shl.i50.i = shl i32 %1, 4
  %add25.i = or i32 %shl.i50.i, 65545
  %27 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %add25.i) #10, !srcloc !183
  %28 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %7) #10, !srcloc !183
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.ipu, ptr @ipu_data, i32 0, i32 6), i32 noundef %call2.i) #10
  %29 = load ptr, ptr @ipu_data, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %shl11.i) #10, !srcloc !183
  br label %ipu_select_buffer.exit

ipu_select_buffer.exit:                           ; preds = %if.else.i22, %if.then.i21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_submit_buffer.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ipu_submit_buffer, %cleanup)) #10
          to label %if.then8 [label %cleanup], !srcloc !182

if.then8:                                         ; preds = %ipu_select_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_submit_buffer.__UNIQUE_ID_ddebug240, ptr noundef %device, ptr noundef nonnull @.str.46, ptr noundef %sg, i32 noundef %1, i32 noundef %buf_idx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %ipu_select_buffer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %ipu_select_buffer.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45, !47, !48, !50, !51, !53, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !144, !145, !146, !148, !149, !151, !153, !154, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_ipu_idmac__253_1797_ipu_init4, !1, !"__initcall__kmod_ipu_idmac__253_1797_ipu_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1797, i32 1}
!2 = !{ptr @__UNIQUE_ID_description254, !3, !"__UNIQUE_ID_description254", i1 false, i1 false}
!3 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1799, i32 1}
!4 = !{ptr @__UNIQUE_ID_file255, !5, !"__UNIQUE_ID_file255", i1 false, i1 false}
!5 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1800, i32 1}
!6 = !{ptr @__UNIQUE_ID_license256, !5, !"__UNIQUE_ID_license256", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author257, !8, !"__UNIQUE_ID_author257", i1 false, i1 false}
!8 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1801, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias258, !10, !"__UNIQUE_ID_alias258", i1 false, i1 false}
!10 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1802, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1788, i32 11}
!13 = !{ptr @ipu_platform_driver, !14, !"ipu_platform_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1786, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1090, i32 5}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ipu_disable_channel.__UNIQUE_ID_ddebug243, !16, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1101, i32 3}
!23 = !{ptr @ipu_disable_channel.__UNIQUE_ID_ddebug244, !22, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!24 = !{ptr @ipu_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1676, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1698, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ipu_probe.__UNIQUE_ID_ddebug250, !28, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1732, i32 2}
!33 = !{ptr @ipu_probe.__UNIQUE_ID_ddebug251, !32, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1748, i32 2}
!36 = !{ptr @ipu_probe.__UNIQUE_ID_ddebug252, !35, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1763, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ipu_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @ipu_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ipu_data, !44, !"ipu_data", i1 false, i1 false}
!44 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 39, i32 19}
!45 = !{ptr @ipu_idmac_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1635, i32 3}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ipu_idmac_init.__key.15, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1636, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1640, i32 54}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1538, i32 45}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1540, i32 5}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @idmac_alloc_chan_resources._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @idmac_alloc_chan_resources._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1544, i32 45}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1546, i32 5}
!64 = !{ptr @idmac_alloc_chan_resources._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @idmac_alloc_chan_resources._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1553, i32 2}
!68 = !{ptr @idmac_alloc_chan_resources.__UNIQUE_ID_ddebug249, !67, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 959, i32 2}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ipu_init_channel.__UNIQUE_ID_ddebug242, !70, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 536, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ipu_ic_init_prpenc._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ipu_ic_init_prpenc._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 482, i32 3}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @calc_resize_coeffs._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @calc_resize_coeffs._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 486, i32 2}
!85 = distinct !{null, !84, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 834, i32 3}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @idmac_tx_submit._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @idmac_tx_submit._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 865, i32 2}
!93 = !{ptr @idmac_tx_submit.__UNIQUE_ID_ddebug241, !92, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 669, i32 3}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ipu_init_channel_buffer._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @ipu_init_channel_buffer._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 677, i32 3}
!101 = !{ptr @ipu_init_channel_buffer._entry.38, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ipu_init_channel_buffer._entry_ptr.40, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 414, i32 3}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ipu_ch_param_set_size._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ipu_ch_param_set_size._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 439, i32 3}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ipu_write_param_mem.__UNIQUE_ID_ddebug238, !109, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 792, i32 2}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ipu_submit_buffer.__UNIQUE_ID_ddebug240, !113, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 72, i32 2}
!118 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @dump_idmac_reg.__UNIQUE_ID_ddebug236, !117, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 79, i32 2}
!122 = !{ptr @dump_idmac_reg.__UNIQUE_ID_ddebug237, !121, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1169, i32 2}
!125 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @idmac_interrupt.__UNIQUE_ID_ddebug245, !124, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1188, i32 3}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @idmac_interrupt._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @idmac_interrupt._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1200, i32 3}
!134 = !{ptr @idmac_interrupt.__UNIQUE_ID_ddebug246, !133, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1210, i32 3}
!137 = !{ptr @idmac_interrupt._entry.55, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @idmac_interrupt._entry_ptr.57, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1233, i32 2}
!141 = !{ptr @idmac_interrupt.__UNIQUE_ID_ddebug247, !140, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1241, i32 3}
!144 = !{ptr @idmac_interrupt._entry.59, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @idmac_interrupt._entry_ptr.61, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1249, i32 4}
!148 = !{ptr @idmac_interrupt.__UNIQUE_ID_ddebug248, !147, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!149 = !{ptr @ic_sof, !150, !"ic_sof", i1 false, i1 false}
!150 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1498, i32 12}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1483, i32 2}
!153 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ic_sof_irq._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ic_sof_irq._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @ic_eof, !157, !"ic_eof", i1 false, i1 false}
!157 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1498, i32 30}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1492, i32 2}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ic_eof_irq._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ic_eof_irq._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1021, i32 3}
!165 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @ipu_uninit_channel._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @ipu_uninit_channel._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/dma/ipu/ipu_idmac.c", i32 1350, i32 3}
!170 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @idmac_prep_slave_sg._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @idmac_prep_slave_sg._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 2148365963, i64 2148365968, i64 2148365981, i64 2148366025, i64 2148366059, i64 2148366080}
!183 = !{i64 6261028}
!184 = !{i64 2148552570, i64 2148552596, i64 2148552625, i64 2148552659, i64 2148552690, i64 2148552713}
!185 = !{i64 2154175452}
!186 = !{i64 2154176094}
!187 = !{i64 2154176441}
!188 = !{i64 2148555035, i64 2148555061, i64 2148555090, i64 2148555124, i64 2148555155, i64 2148555178}
!189 = !{i64 6261446}
!190 = !{!"branch_weights", i32 1, i32 2000}
!191 = !{i64 2154430702, i64 2154431195, i64 2154430739, i64 2154430795, i64 2154430829, i64 2154430853, i64 2154430894, i64 2154430915, i64 2154430943, i64 2154430977}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{i64 2154273326}
!194 = !{!"branch_weights", i32 2002, i32 2000}
!195 = !{i64 2154271819, i64 2154272313, i64 2154271856, i64 2154271912, i64 2154271946, i64 2154271970, i64 2154272011, i64 2154272032, i64 2154272060, i64 2154272094}
