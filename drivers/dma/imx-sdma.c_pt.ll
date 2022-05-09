; ModuleID = '/llk/IR_all_yes/drivers/dma/imx-sdma.c_pt.bc'
source_filename = "../drivers/dma/imx-sdma.c"
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdma_driver_data = type { i32, i32, ptr, i8, i8 }
%struct.sdma_script_start_addrs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.sdma_engine = type { ptr, [32 x %struct.sdma_channel], ptr, ptr, ptr, i32, %struct.dma_device, ptr, ptr, %struct.spinlock, i32, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8 }
%struct.sdma_channel = type { %struct.virt_dma_chan, ptr, ptr, i32, i32, %struct.dma_slave_config, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, %struct.imx_dma_data, %struct.work_struct, %struct.list_head, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.imx_dma_data = type { i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.sdma_desc = type { %struct.virt_dma_desc, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.sdma_buffer_descriptor = type { %struct.sdma_mode_count, i32, i32 }
%struct.sdma_mode_count = type { i32 }
%struct.sdma_channel_control = type { i32, i32, [2 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.sdma_context_data = type { %struct.sdma_state_registers, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdma_state_registers = type { i64 }
%struct.firmware = type { i32, ptr, ptr }
%struct.sdma_firmware_header = type { i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_imx_sdma__254_2260_sdma_driver_init6 = internal global ptr @sdma_driver_init, section ".initcall6.init", align 4
@sdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdma_probe, ptr @sdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sdma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdma_driver_exit = internal global ptr @sdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author255 = internal constant [67 x i8] c"imx_sdma.author=Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [38 x i8] c"imx_sdma.description=i.MX SDMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [42 x i8] c"imx_sdma.firmware=imx/sdma/sdma-imx6q.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [42 x i8] c"imx_sdma.firmware=imx/sdma/sdma-imx7d.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [35 x i8] c"imx_sdma.file=drivers/dma/imx-sdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [21 x i8] c"imx_sdma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-sdma\00", [23 x i8] zeroinitializer }, align 32
@sdma_dt_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx6q }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx53 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx51 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx35 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx31 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx25 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx7d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx6ul }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx8mq }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@sdma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sdma->channel_0_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@sdma_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&sdmac->terminate_worker)\00", [52 x i8] zeroinitializer }, align 32
@sdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2181, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdma_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/imx-sdma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdma_probe._entry_ptr = internal global ptr @sdma_probe._entry, section ".printk_index", align 4
@sdma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 2188, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register controller\0A\00", [33 x i8] zeroinitializer }, align 32
@sdma_probe._entry_ptr.14 = internal global ptr @sdma_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,spba-bus\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl,sdma-ram-script-name\00", [39 x i8] zeroinitializer }, align 32
@sdma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 2209, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get firmware name\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdma_probe._entry_ptr.20 = internal global ptr @sdma_probe._entry.17, section ".printk_index", align 4
@sdma_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.9, i32 2213, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get firmware from device tree\0A\00", [55 x i8] zeroinitializer }, align 32
@sdma_probe._entry_ptr.23 = internal global ptr @sdma_probe._entry.21, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx_sdma\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sdma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 2009, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"initialisation failed with %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_init\00", [22 x i8] zeroinitializer }, align 32
@sdma_init._entry_ptr = internal global ptr @sdma_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpr\00", [28 x i8] zeroinitializer }, align 32
@__const.sdma_event_remap.propname = private unnamed_addr constant [21 x i8] c"fsl,sdma-event-remap\00", align 1
@sdma_event_remap.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.31, ptr @.str.9, ptr @.str.32, i8 1, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdma_event_remap\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no event needs to be remapped\0A\00", [33 x i8] zeroinitializer }, align 32
@sdma_event_remap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.9, i32 1882, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"the property %s must modulo %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sdma_event_remap._entry_ptr = internal global ptr @sdma_event_remap._entry, section ".printk_index", align 4
@sdma_event_remap._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.9, i32 1889, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get gpr regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@sdma_event_remap._entry_ptr.36 = internal global ptr @sdma_event_remap._entry.34, section ".printk_index", align 4
@sdma_event_remap._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.9, i32 1898, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read property %s index %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sdma_event_remap._entry_ptr.39 = internal global ptr @sdma_event_remap._entry.37, section ".printk_index", align 4
@sdma_event_remap._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.9, i32 1905, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@sdma_event_remap._entry_ptr.41 = internal global ptr @sdma_event_remap._entry.40, section ".printk_index", align 4
@sdma_event_remap._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.9, i32 1912, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@sdma_event_remap._entry_ptr.43 = internal global ptr @sdma_event_remap._entry.42, section ".printk_index", align 4
@sdma_add_scripts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.9, i32 1774, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SDMA script number %d not match with firmware.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdma_add_scripts\00", [47 x i8] zeroinitializer }, align 32
@sdma_add_scripts._entry_ptr = internal global ptr @sdma_add_scripts._entry, section ".printk_index", align 4
@sdma_alloc_chan_resources.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.46, ptr @.str.9, ptr @.str.47, i8 1, i8 76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdma_alloc_chan_resources\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEMCPY in case?\0A\00", [47 x i8] zeroinitializer }, align 32
@sdma_prep_slave_sg.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.48, ptr @.str.9, ptr @.str.49, i8 1, i8 123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdma_prep_slave_sg\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting up %d entries for channel %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@sdma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.9, i32 1528, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"SDMA channel %d: maximum bytes for sg entry exceeded: %d > %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sdma_prep_slave_sg._entry_ptr = internal global ptr @sdma_prep_slave_sg._entry, section ".printk_index", align 4
@sdma_prep_slave_sg.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.48, ptr @.str.9, ptr @.str.51, i8 1, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"entry %d: count: %d dma: %#llx %s%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wrap\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" intr\00", [26 x i8] zeroinitializer }, align 32
@sdma_transfer_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sdma_transfer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.9, i32 1404, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdma firmware not ready!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdma_transfer_init\00", [45 x i8] zeroinitializer }, align 32
@sdma_transfer_init._entry_ptr = internal global ptr @sdma_transfer_init._entry, section ".printk_index", align 4
@sdma_load_context.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.57, ptr @.str.9, ptr @.str.58, i8 1, i8 8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdma_load_context\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"load_address = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sdma_load_context.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.57, ptr @.str.9, ptr @.str.59, i8 1, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wml = 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@sdma_load_context.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.57, ptr @.str.9, ptr @.str.60, i8 1, i8 8, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"shp_addr = 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sdma_load_context.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.57, ptr @.str.9, ptr @.str.61, i8 1, i8 9, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"per_addr = 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sdma_load_context.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.57, ptr @.str.9, ptr @.str.62, i8 1, i8 9, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event_mask0 = 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@sdma_load_context.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.57, ptr @.str.9, ptr @.str.63, i8 1, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event_mask1 = 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdma_run_channel0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.9, i32 722, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout waiting for CH0 ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdma_run_channel0\00", [46 x i8] zeroinitializer }, align 32
@sdma_run_channel0._entry_ptr = internal global ptr @sdma_run_channel0._entry, section ".printk_index", align 4
@sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.66, ptr @.str.9, ptr @.str.67, i8 1, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdma_prep_dma_cyclic\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s channel: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sdma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.9, i32 1607, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"SDMA channel %d: maximum period size exceeded: %zu > %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sdma_prep_dma_cyclic._entry_ptr = internal global ptr @sdma_prep_dma_cyclic._entry, section ".printk_index", align 4
@sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.66, ptr @.str.9, ptr @.str.69, i8 1, i8 -104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"entry %d: count: %zu dma: %#llx %s%s\0A\00", [58 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sdma_prep_memcpy.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.70, ptr @.str.9, ptr @.str.71, i8 1, i8 108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdma_prep_memcpy\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"memcpy: %pad->%pad, len=%zu, channel=%d.\0A\00", [54 x i8] zeroinitializer }, align 32
@sdma_prep_memcpy.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.70, ptr @.str.9, ptr @.str.72, i8 1, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"entry %d: count: %zd dma: 0x%x %s%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-dma\00", [24 x i8] zeroinitializer }, align 32
@sdma_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.9, i32 1804, ptr @.str.76, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"external firmware not found, using ROM firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdma_load_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sdma_load_firmware._entry_ptr = internal global ptr @sdma_load_firmware._entry, section ".printk_index", align 4
@sdma_load_firmware._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.9, i32 1832, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown firmware version\0A\00", [38 x i8] zeroinitializer }, align 32
@sdma_load_firmware._entry_ptr.79 = internal global ptr @sdma_load_firmware._entry.77, section ".printk_index", align 4
@sdma_load_firmware._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.75, ptr @.str.9, i32 1854, ptr @.str.76, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"loaded firmware %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@sdma_load_firmware._entry_ptr.82 = internal global ptr @sdma_load_firmware._entry.80, section ".printk_index", align 4
@sdma_imx6q = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx6q, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx53 = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx53, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx51 = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx51, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx35 = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr null, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx31 = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 128, i32 32, ptr null, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx25 = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx25, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx7d = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx7d, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx6ul = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx6q, i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@sdma_imx8mq = internal global { %struct.sdma_driver_data, [16 x i8] } { %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx7d, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sdma_script_imx6q = internal global { %struct.sdma_script_start_addrs, [40 x i8] } { %struct.sdma_script_start_addrs { i32 642, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 747, i32 6331, i32 0, i32 0, i32 0, i32 960, i32 0, i32 0, i32 0, i32 683, i32 0, i32 891, i32 0, i32 0, i32 1100, i32 1134, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 817, i32 1032, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sdma_script_imx53 = internal global { %struct.sdma_script_start_addrs, [40 x i8] } { %struct.sdma_script_start_addrs { i32 642, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1193, i32 0, i32 1290, i32 0, i32 0, i32 0, i32 747, i32 0, i32 0, i32 0, i32 0, i32 960, i32 0, i32 0, i32 0, i32 683, i32 0, i32 891, i32 0, i32 0, i32 1100, i32 1134, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 817, i32 1032, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sdma_script_imx51 = internal global { %struct.sdma_script_start_addrs, [40 x i8] } { %struct.sdma_script_start_addrs { i32 642, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 747, i32 0, i32 0, i32 0, i32 0, i32 961, i32 1473, i32 1392, i32 1033, i32 683, i32 1251, i32 892, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 817, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sdma_script_imx25 = internal global { %struct.sdma_script_start_addrs, [40 x i8] } { %struct.sdma_script_start_addrs { i32 729, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1255, i32 834, i32 0, i32 0, i32 0, i32 1329, i32 1048, i32 1560, i32 1479, i32 1189, i32 770, i32 1407, i32 979, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 904, i32 1120, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sdma_script_imx7d = internal global { %struct.sdma_script_start_addrs, [40 x i8] } { %struct.sdma_script_start_addrs { i32 644, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 749, i32 0, i32 0, i32 0, i32 0, i32 962, i32 0, i32 0, i32 0, i32 685, i32 0, i32 893, i32 0, i32 0, i32 1102, i32 1136, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 819, i32 1034, i32 0 }, [40 x i8] zeroinitializer }, align 32
@switch.table.sdma_load_firmware = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 34, i32 38, i32 45, i32 46], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 16]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 23]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"sdma_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2251, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2253, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"sdma_dt_ids\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 643, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2074, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2088, i32 43 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2092, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2104, i32 63 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2136, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2181, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2188, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2192, i32 50 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2206, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2209, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2213, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 101, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2009, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1865, i32 52 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1878, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1881, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1889, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1897, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1904, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1911, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1772, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1329, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1515, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1527, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1564, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1404, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1057, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1058, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1059, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1060, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1061, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1062, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 722, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1593, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1606, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1630, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1456, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1486, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [41 x i8] c"../include/linux/platform_data/dma-imx.h\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 65, i32 44 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1804, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1832, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1852, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [11 x i8] c"sdma_imx6q\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 605, i32 32 }
@___asan_gen_.349 = private unnamed_addr constant [11 x i8] c"sdma_imx53\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 586, i32 32 }
@___asan_gen_.352 = private unnamed_addr constant [11 x i8] c"sdma_imx51\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 566, i32 32 }
@___asan_gen_.355 = private unnamed_addr constant [11 x i8] c"sdma_imx35\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 548, i32 32 }
@___asan_gen_.358 = private unnamed_addr constant [11 x i8] c"sdma_imx31\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 521, i32 32 }
@___asan_gen_.361 = private unnamed_addr constant [11 x i8] c"sdma_imx25\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 542, i32 32 }
@___asan_gen_.364 = private unnamed_addr constant [11 x i8] c"sdma_imx7d\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 630, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant [12 x i8] c"sdma_imx6ul\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 611, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant [12 x i8] c"sdma_imx8mq\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 636, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant [18 x i8] c"sdma_script_imx6q\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 592, i32 39 }
@___asan_gen_.376 = private unnamed_addr constant [18 x i8] c"sdma_script_imx53\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 572, i32 39 }
@___asan_gen_.379 = private unnamed_addr constant [18 x i8] c"sdma_script_imx51\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 553, i32 39 }
@___asan_gen_.382 = private unnamed_addr constant [18 x i8] c"sdma_script_imx25\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 526, i32 39 }
@___asan_gen_.385 = private unnamed_addr constant [18 x i8] c"sdma_script_imx7d\00", align 1
@___asan_gen_.386 = private constant [26 x i8] c"../drivers/dma/imx-sdma.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 618, i32 39 }
@___asan_gen_.388 = private unnamed_addr constant [32 x i8] c"switch.table.sdma_load_firmware\00", align 1
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_license260, ptr @__exitcall_sdma_driver_exit, ptr @__initcall__kmod_imx_sdma__254_2260_sdma_driver_init6, ptr @sdma_add_scripts._entry, ptr @sdma_add_scripts._entry_ptr, ptr @sdma_driver_exit, ptr @sdma_event_remap._entry, ptr @sdma_event_remap._entry.34, ptr @sdma_event_remap._entry.37, ptr @sdma_event_remap._entry.40, ptr @sdma_event_remap._entry.42, ptr @sdma_event_remap._entry_ptr, ptr @sdma_event_remap._entry_ptr.36, ptr @sdma_event_remap._entry_ptr.39, ptr @sdma_event_remap._entry_ptr.41, ptr @sdma_event_remap._entry_ptr.43, ptr @sdma_init._entry, ptr @sdma_init._entry_ptr, ptr @sdma_load_firmware._entry, ptr @sdma_load_firmware._entry.77, ptr @sdma_load_firmware._entry.80, ptr @sdma_load_firmware._entry_ptr, ptr @sdma_load_firmware._entry_ptr.79, ptr @sdma_load_firmware._entry_ptr.82, ptr @sdma_prep_dma_cyclic._entry, ptr @sdma_prep_dma_cyclic._entry_ptr, ptr @sdma_prep_slave_sg._entry, ptr @sdma_prep_slave_sg._entry_ptr, ptr @sdma_probe._entry, ptr @sdma_probe._entry.12, ptr @sdma_probe._entry.17, ptr @sdma_probe._entry.21, ptr @sdma_probe._entry_ptr, ptr @sdma_probe._entry_ptr.14, ptr @sdma_probe._entry_ptr.20, ptr @sdma_probe._entry_ptr.23, ptr @sdma_run_channel0._entry, ptr @sdma_run_channel0._entry_ptr, ptr @sdma_transfer_init._entry, ptr @sdma_transfer_init._entry_ptr, ptr @sdma_driver, ptr @.str, ptr @sdma_dt_ids, ptr @sdma_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sdma_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @sdma_imx6q, ptr @sdma_imx53, ptr @sdma_imx51, ptr @sdma_imx35, ptr @sdma_imx31, ptr @sdma_imx25, ptr @sdma_imx7d, ptr @sdma_imx6ul, ptr @sdma_imx8mq, ptr @sdma_script_imx6q, ptr @sdma_script_imx53, ptr @sdma_script_imx51, ptr @sdma_script_imx25, ptr @sdma_script_imx7d, ptr @switch.table.sdma_load_firmware], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_dt_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_event_remap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_event_remap._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_event_remap._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_event_remap._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_event_remap._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_add_scripts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_transfer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_run_channel0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_load_firmware._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_load_firmware._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx6q to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx7d to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx6ul to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_imx8mq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_script_imx6q to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_script_imx53 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_script_imx51 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_script_imx25 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_script_imx7d to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_load_firmware to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdma_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fw_name = alloca ptr, align 4
  %spba_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #10
  %2 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_name, align 4, !annotation !216
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %spba_res) #10
  %3 = getelementptr inbounds %struct.resource, ptr %spba_res, i32 0, i32 1
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %4 = call ptr @memset(ptr %spba_res, i32 255, i32 32)
  %5 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12760, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %channel_0_lock = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %channel_0_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sdma_probe.__key, i16 noundef signext 3) #10
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %drvdata = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %drvdata, align 4
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %call15 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call17 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call15) #10
  %regs = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %clk_ipg = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call25, ptr %clk_ipg, align 4
  %cmp.i290 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %clk_ahb = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call33, ptr %clk_ahb, align 4
  %cmp.i291 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %14 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ipg, align 4
  %call41 = tail call i32 @clk_prepare(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %16 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_ahb, align 4
  %call46 = tail call i32 @clk_prepare(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.err_clk_crit_edge

if.end44.err_clk_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk

if.end49:                                         ; preds = %if.end44
  %call.i292 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call12, ptr noundef nonnull @sdma_int_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %tobool52.not = icmp eq i32 %call.i292, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.err_irq_crit_edge

if.end49.err_irq_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_irq

if.end54:                                         ; preds = %if.end49
  %irq55 = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %irq55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call12, ptr %irq55, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 184) #13
  %script_addrs = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 11
  %20 = ptrtoint ptr %script_addrs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %script_addrs, align 4
  %tobool58.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool58.not, label %if.end54.err_irq_crit_edge, label %for.body70.peel.next

if.end54.err_irq_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_irq

for.body70.peel.next:                             ; preds = %if.end54
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -22, ptr %call7.i.i, align 8
  %arrayidx.1 = getelementptr i32, ptr %call7.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr i32, ptr %call7.i.i, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -22, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr i32, ptr %call7.i.i, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -22, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr i32, ptr %call7.i.i, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -22, ptr %arrayidx.4, align 8
  %arrayidx.5 = getelementptr i32, ptr %call7.i.i, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -22, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr i32, ptr %call7.i.i, i32 6
  %27 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -22, ptr %arrayidx.6, align 8
  %arrayidx.7 = getelementptr i32, ptr %call7.i.i, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -22, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr i32, ptr %call7.i.i, i32 8
  %29 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -22, ptr %arrayidx.8, align 8
  %arrayidx.9 = getelementptr i32, ptr %call7.i.i, i32 9
  %30 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -22, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr i32, ptr %call7.i.i, i32 10
  %31 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -22, ptr %arrayidx.10, align 8
  %arrayidx.11 = getelementptr i32, ptr %call7.i.i, i32 11
  %32 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -22, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr i32, ptr %call7.i.i, i32 12
  %33 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -22, ptr %arrayidx.12, align 8
  %arrayidx.13 = getelementptr i32, ptr %call7.i.i, i32 13
  %34 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -22, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr i32, ptr %call7.i.i, i32 14
  %35 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -22, ptr %arrayidx.14, align 8
  %arrayidx.15 = getelementptr i32, ptr %call7.i.i, i32 15
  %36 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -22, ptr %arrayidx.15, align 4
  %arrayidx.16 = getelementptr i32, ptr %call7.i.i, i32 16
  %37 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -22, ptr %arrayidx.16, align 8
  %arrayidx.17 = getelementptr i32, ptr %call7.i.i, i32 17
  %38 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -22, ptr %arrayidx.17, align 4
  %arrayidx.18 = getelementptr i32, ptr %call7.i.i, i32 18
  %39 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -22, ptr %arrayidx.18, align 8
  %arrayidx.19 = getelementptr i32, ptr %call7.i.i, i32 19
  %40 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -22, ptr %arrayidx.19, align 4
  %arrayidx.20 = getelementptr i32, ptr %call7.i.i, i32 20
  %41 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -22, ptr %arrayidx.20, align 8
  %arrayidx.21 = getelementptr i32, ptr %call7.i.i, i32 21
  %42 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -22, ptr %arrayidx.21, align 4
  %arrayidx.22 = getelementptr i32, ptr %call7.i.i, i32 22
  %43 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -22, ptr %arrayidx.22, align 8
  %arrayidx.23 = getelementptr i32, ptr %call7.i.i, i32 23
  %44 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -22, ptr %arrayidx.23, align 4
  %arrayidx.24 = getelementptr i32, ptr %call7.i.i, i32 24
  %45 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -22, ptr %arrayidx.24, align 8
  %arrayidx.25 = getelementptr i32, ptr %call7.i.i, i32 25
  %46 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -22, ptr %arrayidx.25, align 4
  %arrayidx.26 = getelementptr i32, ptr %call7.i.i, i32 26
  %47 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -22, ptr %arrayidx.26, align 8
  %arrayidx.27 = getelementptr i32, ptr %call7.i.i, i32 27
  %48 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -22, ptr %arrayidx.27, align 4
  %arrayidx.28 = getelementptr i32, ptr %call7.i.i, i32 28
  %49 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -22, ptr %arrayidx.28, align 8
  %arrayidx.29 = getelementptr i32, ptr %call7.i.i, i32 29
  %50 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -22, ptr %arrayidx.29, align 4
  %arrayidx.30 = getelementptr i32, ptr %call7.i.i, i32 30
  %51 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -22, ptr %arrayidx.30, align 8
  %arrayidx.31 = getelementptr i32, ptr %call7.i.i, i32 31
  %52 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -22, ptr %arrayidx.31, align 4
  %arrayidx.32 = getelementptr i32, ptr %call7.i.i, i32 32
  %53 = ptrtoint ptr %arrayidx.32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -22, ptr %arrayidx.32, align 8
  %arrayidx.33 = getelementptr i32, ptr %call7.i.i, i32 33
  %54 = ptrtoint ptr %arrayidx.33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -22, ptr %arrayidx.33, align 4
  %arrayidx.34 = getelementptr i32, ptr %call7.i.i, i32 34
  %55 = ptrtoint ptr %arrayidx.34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -22, ptr %arrayidx.34, align 8
  %arrayidx.35 = getelementptr i32, ptr %call7.i.i, i32 35
  %56 = ptrtoint ptr %arrayidx.35 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -22, ptr %arrayidx.35, align 4
  %arrayidx.36 = getelementptr i32, ptr %call7.i.i, i32 36
  %57 = ptrtoint ptr %arrayidx.36 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -22, ptr %arrayidx.36, align 8
  %arrayidx.37 = getelementptr i32, ptr %call7.i.i, i32 37
  %58 = ptrtoint ptr %arrayidx.37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -22, ptr %arrayidx.37, align 4
  %arrayidx.38 = getelementptr i32, ptr %call7.i.i, i32 38
  %59 = ptrtoint ptr %arrayidx.38 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -22, ptr %arrayidx.38, align 8
  %arrayidx.39 = getelementptr i32, ptr %call7.i.i, i32 39
  %60 = ptrtoint ptr %arrayidx.39 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -22, ptr %arrayidx.39, align 4
  %arrayidx.40 = getelementptr i32, ptr %call7.i.i, i32 40
  %61 = ptrtoint ptr %arrayidx.40 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -22, ptr %arrayidx.40, align 8
  %arrayidx.41 = getelementptr i32, ptr %call7.i.i, i32 41
  %62 = ptrtoint ptr %arrayidx.41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -22, ptr %arrayidx.41, align 4
  %arrayidx.42 = getelementptr i32, ptr %call7.i.i, i32 42
  %63 = ptrtoint ptr %arrayidx.42 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -22, ptr %arrayidx.42, align 8
  %arrayidx.43 = getelementptr i32, ptr %call7.i.i, i32 43
  %64 = ptrtoint ptr %arrayidx.43 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -22, ptr %arrayidx.43, align 4
  %arrayidx.44 = getelementptr i32, ptr %call7.i.i, i32 44
  %65 = ptrtoint ptr %arrayidx.44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -22, ptr %arrayidx.44, align 8
  %arrayidx.45 = getelementptr i32, ptr %call7.i.i, i32 45
  %66 = ptrtoint ptr %arrayidx.45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -22, ptr %arrayidx.45, align 4
  %dma_device = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6
  %cap_mask = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  %channels = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 3
  %67 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 3, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %channels, ptr %prev.i, align 4
  %sdma72.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %69 = ptrtoint ptr %sdma72.peel to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %sdma72.peel, align 4
  %channel73.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %70 = ptrtoint ptr %channel73.peel to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %channel73.peel, align 4
  %desc_free.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %desc_free.peel to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sdma_desc_free, ptr %desc_free.peel, align 4
  %terminated.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 24
  %72 = ptrtoint ptr %terminated.peel to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %terminated.peel, ptr %terminated.peel, align 4
  %prev.i293.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 24, i32 1
  %73 = ptrtoint ptr %prev.i293.peel to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %terminated.peel, ptr %prev.i293.peel, align 4
  %terminate_worker.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 23
  tail call void @__init_work(ptr noundef %terminate_worker.peel, i32 noundef 0) #10
  %74 = ptrtoint ptr %terminate_worker.peel to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -64, ptr %terminate_worker.peel, align 4
  %lockdep_map.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.peel, ptr noundef nonnull @.str.6, ptr noundef nonnull @sdma_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry78.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 23, i32 1
  %75 = ptrtoint ptr %entry78.peel to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %entry78.peel, ptr %entry78.peel, align 4
  %prev.i294.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 23, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i294.peel to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry78.peel, ptr %prev.i294.peel, align 4
  %func.peel = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 0, i32 23, i32 2
  %77 = ptrtoint ptr %func.peel to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @sdma_channel_terminate_work, ptr %func.peel, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end86.if.end86_crit_edge, %for.body70.peel.next
  %i.1297 = phi i32 [ 1, %for.body70.peel.next ], [ %inc88, %if.end86.if.end86_crit_edge ]
  %arrayidx71 = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297
  %sdma72 = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 2
  %78 = ptrtoint ptr %sdma72 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %sdma72, align 4
  %channel73 = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 3
  %79 = ptrtoint ptr %channel73 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %i.1297, ptr %channel73, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx71, i32 0, i32 2
  %80 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @sdma_desc_free, ptr %desc_free, align 4
  %terminated = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 24
  %81 = ptrtoint ptr %terminated to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %terminated, ptr %terminated, align 4
  %prev.i293 = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 24, i32 1
  %82 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %terminated, ptr %prev.i293, align 4
  %terminate_worker = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 23
  tail call void @__init_work(ptr noundef %terminate_worker, i32 noundef 0) #10
  %83 = ptrtoint ptr %terminate_worker to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -64, ptr %terminate_worker, align 4
  %lockdep_map = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @sdma_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry78 = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 23, i32 1
  %84 = ptrtoint ptr %entry78 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %entry78, ptr %entry78, align 4
  %prev.i294 = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 23, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %entry78, ptr %prev.i294, align 4
  %func = getelementptr %struct.sdma_engine, ptr %call.i, i32 0, i32 1, i32 %i.1297, i32 23, i32 2
  %86 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @sdma_channel_terminate_work, ptr %func, align 4
  tail call void @vchan_init(ptr noundef %arrayidx71, ptr noundef %dma_device) #10
  %inc88 = add nuw nsw i32 %i.1297, 1
  %exitcond.not = icmp eq i32 %inc88, 32
  br i1 %exitcond.not, label %for.end89, label %if.end86.if.end86_crit_edge, !llvm.loop !217

if.end86.if.end86_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

for.end89:                                        ; preds = %if.end86
  %call90 = tail call fastcc i32 @sdma_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %for.end89.err_init_crit_edge

for.end89.err_init_crit_edge:                     ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init

if.end93:                                         ; preds = %for.end89
  %call94 = tail call fastcc i32 @sdma_event_remap(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.err_init_crit_edge

if.end93.err_init_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init

if.end97:                                         ; preds = %if.end93
  %87 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %drvdata, align 4
  %script_addrs99 = getelementptr inbounds %struct.sdma_driver_data, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %script_addrs99 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %script_addrs99, align 4
  %tobool100.not = icmp eq ptr %90, null
  br i1 %tobool100.not, label %if.end97.if.end104_crit_edge, label %if.then101

if.end97.if.end104_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sdma_add_scripts(ptr noundef nonnull %call.i, ptr noundef nonnull %90)
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end97.if.end104_crit_edge
  %dev107 = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 15
  %91 = ptrtoint ptr %dev107 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %dev, ptr %dev107, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 27
  %92 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @sdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 29
  %93 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @sdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 49
  %94 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @sdma_tx_status, ptr %device_tx_status, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 39
  %95 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @sdma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 40
  %96 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @sdma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 44
  %97 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @sdma_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 47
  %98 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @sdma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 48
  %99 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @sdma_channel_synchronize, ptr %device_synchronize, align 4
  %src_addr_widths = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 19
  %100 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 22, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 20
  %101 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 22, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 21
  %102 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 14, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 26
  %103 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %residue_granularity, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 30
  %104 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @sdma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_issue_pending = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 50
  %105 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @sdma_issue_pending, ptr %device_issue_pending, align 4
  %copy_align = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 6, i32 10
  %106 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %copy_align, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %107 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %108, null
  br i1 %tobool.not.i, label %if.end104.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end104.dma_set_max_seg_size.exit_crit_edge:    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 65535, ptr %108, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end104.dma_set_max_seg_size.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %110 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call127 = tail call i32 @dma_async_device_register(ptr noundef %dma_device) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end134, label %do.end132

do.end132:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  br label %err_init

if.end134:                                        ; preds = %dma_set_max_seg_size.exit
  %tobool135.not = icmp eq ptr %1, null
  br i1 %tobool135.not, label %if.end134.if.end150_crit_edge, label %if.then136

if.end134.if.end150_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then136:                                       ; preds = %if.end134
  %call137 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %1, ptr noundef nonnull @sdma_xlate, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end144, label %do.end142

do.end142:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #14
  tail call void @dma_async_device_unregister(ptr noundef %dma_device) #10
  br label %err_init

if.end144:                                        ; preds = %if.then136
  %call145 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15) #10
  %call146 = call i32 @of_address_to_resource(ptr noundef %call145, i32 noundef 0, ptr noundef nonnull %spba_res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then148, label %if.end144.if.end149_crit_edge

if.end144.if.end149_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then148:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %spba_res to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %spba_res, align 4
  %spba_start_addr = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 13
  %113 = ptrtoint ptr %spba_start_addr to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %spba_start_addr, align 4
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %3, align 4
  %spba_end_addr = getelementptr inbounds %struct.sdma_engine, ptr %call.i, i32 0, i32 14
  %116 = ptrtoint ptr %spba_end_addr to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %spba_end_addr, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end144.if.end149_crit_edge
  call void @of_node_put(ptr noundef %call145) #10
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.end134.if.end150_crit_edge
  %call151 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %fw_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else, label %do.end156

do.end156:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.else:                                          ; preds = %if.end150
  %117 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fw_name, align 4
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call.i, align 4
  %call.i295 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %118, ptr noundef %120, i32 noundef 3264, ptr noundef %call.i, ptr noundef nonnull @sdma_load_firmware) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %tobool159.not = icmp eq i32 %call.i295, 0
  br i1 %tobool159.not, label %if.else.cleanup_crit_edge, label %do.end163

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end163:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #14
  br label %cleanup

err_init:                                         ; preds = %do.end142, %do.end132, %if.end93.err_init_crit_edge, %for.end89.err_init_crit_edge
  %ret.0 = phi i32 [ %call90, %for.end89.err_init_crit_edge ], [ %call94, %if.end93.err_init_crit_edge ], [ %call127, %do.end132 ], [ %call137, %do.end142 ]
  %121 = ptrtoint ptr %script_addrs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %script_addrs, align 4
  tail call void @kfree(ptr noundef %122) #10
  br label %err_irq

err_irq:                                          ; preds = %err_init, %if.end54.err_irq_crit_edge, %if.end49.err_irq_crit_edge
  %ret.1 = phi i32 [ %call.i292, %if.end49.err_irq_crit_edge ], [ %ret.0, %err_init ], [ -12, %if.end54.err_irq_crit_edge ]
  %123 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_unprepare(ptr noundef %124) #10
  br label %err_clk

err_clk:                                          ; preds = %err_irq, %if.end44.err_clk_crit_edge
  %ret.2 = phi i32 [ %call46, %if.end44.err_clk_crit_edge ], [ %ret.1, %err_irq ]
  %125 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_unprepare(ptr noundef %126) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %do.end163, %if.else.cleanup_crit_edge, %do.end156, %if.end39.cleanup_crit_edge, %if.then36, %if.then28, %if.then20, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then20 ], [ %11, %if.then28 ], [ %13, %if.then36 ], [ %ret.2, %err_clk ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %do.body.cleanup_crit_edge ], [ %call41, %if.end39.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end163 ], [ 0, %do.end156 ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %spba_res) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %irq = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %3, ptr noundef %1) #10
  %dma_device = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 6
  tail call void @dma_async_device_unregister(ptr noundef %dma_device) #10
  %script_addrs = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %script_addrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %script_addrs, align 4
  tail call void @kfree(ptr noundef %5) #10
  %clk_ahb = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_unprepare(ptr noundef %7) #10
  %clk_ipg = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %i.014
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #10
  tail call void @sdma_free_chan_resources(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_int_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sdma_engine, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #10, !srcloc !220
  %5 = and i32 %2, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not41 = icmp eq i32 %5, 0
  br i1 %tobool.not41, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.preheader
  %7 = phi i32 [ %and.i, %if.end10.while.body_crit_edge ], [ %6, %while.body.preheader ]
  %8 = call i32 @llvm.ctlz.i32(i32 %7, i1 true) #10, !range !221
  %sub = xor i32 %8, 31
  %arrayidx = getelementptr %struct.sdma_engine, ptr %dev_id, i32 0, i32 1, i32 %sub
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %desc5 = getelementptr %struct.sdma_engine, ptr %dev_id, i32 0, i32 1, i32 %sub, i32 1
  %9 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc5, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %while.body.if.end10_crit_edge, label %if.then

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %while.body
  %flags = getelementptr %struct.sdma_engine, ptr %dev_id, i32 0, i32 1, i32 %sub, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and7 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  %status.i = getelementptr %struct.sdma_engine, ptr %dev_id, i32 0, i32 1, i32 %sub, i32 21
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i, align 4
  %15 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc5, align 4
  %tobool.not71.i = icmp eq ptr %16, null
  br i1 %tobool.not71.i, label %if.then9.if.end10_crit_edge, label %if.then9.while.body.i_crit_edge

if.then9.while.body.i_crit_edge:                  ; preds = %if.then9
  br label %while.body.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then9.while.body.i_crit_edge
  %17 = phi ptr [ %45, %cleanup.i.while.body.i_crit_edge ], [ %16, %if.then9.while.body.i_crit_edge ]
  %error.072.i = phi i32 [ %error.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.then9.while.body.i_crit_edge ]
  %bd3.i = getelementptr inbounds %struct.sdma_desc, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %bd3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd3.i, align 4
  %buf_tail.i = getelementptr inbounds %struct.sdma_desc, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %buf_tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_tail.i, align 4
  %arrayidx.i = getelementptr %struct.sdma_buffer_descriptor, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load.i = load i32, ptr %arrayidx.i, align 1
  %23 = and i32 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.i = icmp eq i32 %23, 0
  br i1 %tobool4.not.i, label %if.end.i, label %while.body.i.if.end10_crit_edge

while.body.i.if.end10_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.i:                                         ; preds = %while.body.i
  %24 = and i32 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not.i = icmp eq i32 %24, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then11.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i = and i32 %bf.load.i, -4097
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %bf.set.i, ptr %arrayidx.i, align 1
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %status.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then11.i, %if.end.i.if.end20.i_crit_edge
  %error.1.i = phi i32 [ -5, %if.then11.i ], [ %error.072.i, %if.end.i.if.end20.i_crit_edge ]
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load22.i = load i32, ptr %arrayidx.i, align 1
  %bf.lshr23.i = lshr i32 %bf.load22.i, 16
  %chn_real_count.i = getelementptr inbounds %struct.sdma_desc, ptr %17, i32 0, i32 6
  %28 = ptrtoint ptr %chn_real_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.lshr23.i, ptr %chn_real_count.i, align 4
  %bf.load25.i = load i32, ptr %arrayidx.i, align 1
  %bf.set32.i = or i32 %bf.load25.i, 256
  store i32 %bf.set32.i, ptr %arrayidx.i, align 1
  %period_len.i = getelementptr inbounds %struct.sdma_desc, ptr %17, i32 0, i32 5
  %29 = ptrtoint ptr %period_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %period_len.i, align 4
  %bf.shl36.i = shl i32 %30, 16
  %bf.clear37.i = and i32 %bf.set32.i, 65535
  %bf.set38.i = or i32 %bf.shl36.i, %bf.clear37.i
  store i32 %bf.set38.i, ptr %arrayidx.i, align 1
  %31 = ptrtoint ptr %buf_tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_tail.i, align 4
  %buf_ptail.i = getelementptr inbounds %struct.sdma_desc, ptr %17, i32 0, i32 4
  %33 = ptrtoint ptr %buf_ptail.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %buf_ptail.i, align 4
  %add.i = add i32 %32, 1
  %num_bd.i = getelementptr inbounds %struct.sdma_desc, ptr %17, i32 0, i32 1
  %34 = ptrtoint ptr %num_bd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_bd.i, align 4
  %rem.i24 = urem i32 %add.i, %35
  store i32 %rem.i24, ptr %buf_tail.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %callback.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 6
  %36 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 7
  %38 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 8
  %40 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %callback_param.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #10
  %42 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %39(ptr noundef %41, ptr noundef nonnull %dummy_result.i.i.i) #10
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.else.i.i.i:                                    ; preds = %if.end20.i
  %tobool4.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %37(ptr noundef %41) #10
  br label %dmaengine_desc_get_callback_invoke.exit.i

dmaengine_desc_get_callback_invoke.exit.i:        ; preds = %if.then5.i.i.i, %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #10
  call void @_raw_spin_lock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool44.not.i = icmp eq i32 %error.1.i, 0
  br i1 %tobool44.not.i, label %dmaengine_desc_get_callback_invoke.exit.i.cleanup.i_crit_edge, label %if.then45.i

dmaengine_desc_get_callback_invoke.exit.i.cleanup.i_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then45.i:                                      ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %14, ptr %status.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then45.i, %dmaengine_desc_get_callback_invoke.exit.i.cleanup.i_crit_edge
  %44 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc5, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %cleanup.i.if.end10_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.if.end10_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else:                                          ; preds = %if.then
  %46 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc5, align 4
  %chn_real_count.i26 = getelementptr inbounds %struct.sdma_desc, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %chn_real_count.i26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %chn_real_count.i26, align 4
  %49 = load ptr, ptr %desc5, align 4
  %num_bd21.i = getelementptr inbounds %struct.sdma_desc, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %num_bd21.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_bd21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp22.not.i = icmp eq i32 %51, 0
  br i1 %cmp22.not.i, label %if.else.if.else.i_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %52 = phi ptr [ %60, %for.body.i.for.body.i_crit_edge ], [ %49, %if.else.for.body.i_crit_edge ]
  %error.024.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %bd3.i27 = getelementptr inbounds %struct.sdma_desc, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %bd3.i27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bd3.i27, align 4
  %arrayidx.i28 = getelementptr %struct.sdma_buffer_descriptor, ptr %54, i32 %i.023.i
  %55 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load.i29 = load i32, ptr %arrayidx.i28, align 1
  %56 = and i32 %bf.load.i29, 4352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i30 = icmp eq i32 %56, 0
  %spec.select.i = select i1 %tobool.not.i30, i32 %error.024.i, i32 -5
  %bf.lshr6.i = lshr i32 %bf.load.i29, 16
  %chn_real_count8.i = getelementptr inbounds %struct.sdma_desc, ptr %52, i32 0, i32 6
  %57 = ptrtoint ptr %chn_real_count8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chn_real_count8.i, align 4
  %add.i31 = add i32 %58, %bf.lshr6.i
  store i32 %add.i31, ptr %chn_real_count8.i, align 4
  %inc.i = add nuw i32 %i.023.i, 1
  %59 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc5, align 4
  %num_bd.i32 = getelementptr inbounds %struct.sdma_desc, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %num_bd.i32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_bd.i32, align 4
  %cmp.i = icmp ult i32 %inc.i, %62
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %phi.cmp.i = icmp eq i32 %spec.select.i, 0
  br i1 %phi.cmp.i, label %for.end.i.if.else.i_crit_edge, label %for.end.i.mxc_sdma_handle_channel_normal.exit_crit_edge

for.end.i.mxc_sdma_handle_channel_normal.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxc_sdma_handle_channel_normal.exit

for.end.i.if.else.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %for.end.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  br label %mxc_sdma_handle_channel_normal.exit

mxc_sdma_handle_channel_normal.exit:              ; preds = %if.else.i, %for.end.i.mxc_sdma_handle_channel_normal.exit_crit_edge
  %.sink.i = phi i32 [ 0, %if.else.i ], [ 3, %for.end.i.mxc_sdma_handle_channel_normal.exit_crit_edge ]
  %63 = getelementptr %struct.sdma_engine, ptr %dev_id, i32 0, i32 1, i32 %sub, i32 21
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink.i, ptr %63, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 3
  %65 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chan.i, align 4
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i.i = icmp slt i32 %68, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !222

do.body2.i.i:                                     ; preds = %mxc_sdma_handle_channel_normal.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !223
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %mxc_sdma_handle_channel_normal.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %66, i32 0, i32 3
  %69 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %completed_cookie.i.i, align 4
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_int_handler, %do.end.i)) #10
          to label %if.then.i [label %do.end.i], !srcloc !224

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %66, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %74, ptr noundef nonnull @.str.27, ptr noundef nonnull %10, i32 noundef %68) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %76, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %node.i, ptr %prev.i.i, align 4
  %78 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %node.i, ptr %76, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 1, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 6
  %81 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %82, %desc_issued.i.i
  %add.ptr.i.i = getelementptr i8, ptr %82, i32 -108
  %tobool.not25.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i33 = or i1 %cmp.not.i.i, %tobool.not25.i
  br i1 %tobool.not.i33, label %if.then.i34, label %if.end.i36

if.then.i34:                                      ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %desc5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %desc5, align 4
  br label %if.end10

if.end.i36:                                       ; preds = %vchan_cookie_complete.exit
  %channel2.i = getelementptr %struct.sdma_engine, ptr %dev_id, i32 0, i32 1, i32 %sub, i32 3
  %84 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %channel2.i, align 4
  %sdma1.i = getelementptr %struct.sdma_engine, ptr %dev_id, i32 0, i32 1, i32 %sub, i32 2
  %86 = ptrtoint ptr %sdma1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sdma1.i, align 4
  %88 = ptrtoint ptr %desc5 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr.i.i, ptr %desc5, align 4
  %call.i.i.i35 = call zeroext i1 @__list_del_entry_valid(ptr noundef %82) #10
  br i1 %call.i.i.i35, label %if.end.i.i.i37, label %if.end.i36.list_del.exit.i_crit_edge

if.end.i36.list_del.exit.i_crit_edge:             ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i37:                                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i, align 4
  %91 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %82, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i37, %if.end.i36.list_del.exit.i_crit_edge
  %95 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %82, align 4
  %prev.i.i38 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i38, align 4
  %bd_phys.i = getelementptr i8, ptr %82, i32 12
  %97 = ptrtoint ptr %bd_phys.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bd_phys.i, align 4
  %channel_control.i = getelementptr inbounds %struct.sdma_engine, ptr %87, i32 0, i32 2
  %99 = ptrtoint ptr %channel_control.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %channel_control.i, align 4
  %base_bd_ptr.i = getelementptr %struct.sdma_channel_control, ptr %100, i32 %85, i32 1
  %101 = ptrtoint ptr %base_bd_ptr.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %98, ptr %base_bd_ptr.i, align 1
  %102 = load i32, ptr %bd_phys.i, align 4
  %103 = load ptr, ptr %channel_control.i, align 4
  %arrayidx8.i = getelementptr %struct.sdma_channel_control, ptr %103, i32 %85
  %104 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %102, ptr %arrayidx8.i, align 1
  %105 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %channel2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  call void @arm_heavy_mb() #10
  %shl.i.i = shl nuw i32 1, %106
  %107 = call i32 @llvm.bswap.i32(i32 %shl.i.i) #10
  %regs.i.i = getelementptr inbounds %struct.sdma_engine, ptr %87, i32 0, i32 3
  %108 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %109, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %107) #10, !srcloc !220
  br label %if.end10

if.end10:                                         ; preds = %list_del.exit.i, %if.then.i34, %cleanup.i.if.end10_crit_edge, %while.body.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %while.body.if.end10_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %shl.i = shl nuw i32 1, %sub
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %7, %neg.i
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bd.i = getelementptr inbounds %struct.sdma_desc, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %num_bd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bd.i, align 4
  %mul.i = mul i32 %1, 12
  %sdmac.i = getelementptr inbounds %struct.sdma_desc, ptr %vd, i32 0, i32 8
  %2 = ptrtoint ptr %sdmac.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdmac.i, align 4
  %sdma.i = getelementptr inbounds %struct.sdma_channel, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sdma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdma.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bd.i = getelementptr inbounds %struct.sdma_desc, ptr %vd, i32 0, i32 9
  %8 = ptrtoint ptr %bd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd.i, align 4
  %bd_phys.i = getelementptr inbounds %struct.sdma_desc, ptr %vd, i32 0, i32 2
  %10 = ptrtoint ptr %bd_phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %mul.i, ptr noundef %9, i32 noundef %11, i32 noundef 0) #10
  tail call void @kfree(ptr noundef %vd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_channel_terminate_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -328
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %terminated = getelementptr i8, ptr %work, i32 44
  tail call void @vchan_dma_desc_free_list(ptr noundef %add.ptr, ptr noundef %terminated) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdma_init(ptr noundef %sdma) unnamed_addr #2 align 64 {
entry:
  %ccb_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccb_phys) #10
  %0 = ptrtoint ptr %ccb_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ccb_phys, align 4, !annotation !216
  %clk_ipg = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 7
  %1 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_ipg, align 4
  %call = tail call i32 @clk_enable(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_ahb = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 8
  %3 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_ahb, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.disable_clk_ipg_crit_edge

if.end.disable_clk_ipg_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_clk_ipg

if.end4:                                          ; preds = %if.end
  %drvdata = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 12
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  %check_ratio = getelementptr inbounds %struct.sdma_driver_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %check_ratio to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %check_ratio, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %land.lhs.true

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %9 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_ahb, align 4
  %call7 = tail call i32 @clk_get_rate(ptr noundef %10) #10
  %11 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_ipg, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %call9)
  %cmp = icmp eq i32 %call7, %call9
  br i1 %cmp, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %clk_ratio = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 18
  %13 = ptrtoint ptr %clk_ratio to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %clk_ratio, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %regs = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 3
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #10, !srcloc !220
  %16 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdma, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %17, i32 noundef 640, ptr noundef nonnull %ccb_phys, i32 noundef 3264, i32 noundef 0) #10
  %channel_control = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 2
  %18 = ptrtoint ptr %channel_control to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %channel_control, align 4
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.err_dma_alloc_crit_edge, label %if.end16

if.end11.err_dma_alloc_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma_alloc

if.end16:                                         ; preds = %if.end11
  %add.ptr18 = getelementptr i8, ptr %call.i, i32 512
  %context = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 4
  %19 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr18, ptr %context, align 4
  %20 = ptrtoint ptr %ccb_phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ccb_phys, align 4
  %add = add i32 %21, 512
  %context_phys = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 5
  %22 = ptrtoint ptr %context_phys to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %context_phys, align 4
  %23 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drvdata, align 4
  %num_events107 = getelementptr inbounds %struct.sdma_driver_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %num_events107 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_events107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp20108 = icmp sgt i32 %26, 0
  br i1 %cmp20108, label %if.end16.for.body_crit_edge, label %if.end16.for.body26.preheader_crit_edge

if.end16.for.body26.preheader_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.preheader

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %27 = phi ptr [ %33, %for.body.for.body_crit_edge ], [ %24, %if.end16.for.body_crit_edge ]
  %i.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %mul.i = shl i32 %i.0109, 2
  %add.i = add i32 %31, %mul.i
  %add.ptr23 = getelementptr i8, ptr %29, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #10, !srcloc !220
  %inc = add nuw nsw i32 %i.0109, 1
  %32 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drvdata, align 4
  %num_events = getelementptr inbounds %struct.sdma_driver_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_events, align 4
  %cmp20 = icmp slt i32 %inc, %35
  br i1 %cmp20, label %for.body.for.body_crit_edge, label %for.body.for.body26.preheader_crit_edge

for.body.for.body26.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body26.preheader:                             ; preds = %for.body.for.body26.preheader_crit_edge, %if.end16.for.body26.preheader_crit_edge
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.preheader
  %i.1110 = phi i32 [ %inc31, %for.body26.for.body26_crit_edge ], [ 0, %for.body26.preheader ]
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %37, i32 256
  %mul = shl i32 %i.1110, 2
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %mul
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #10, !srcloc !220
  %inc31 = add nuw nsw i32 %i.1110, 1
  %exitcond.not = icmp eq i32 %inc31, 32
  br i1 %exitcond.not, label %for.end32, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26

for.end32:                                        ; preds = %for.body26
  %38 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdma, align 4
  %bd0_phys.i = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 16
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %39, i32 noundef 4096, ptr noundef %bd0_phys.i, i32 noundef 2048, i32 noundef 0) #10
  %bd0.i = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 17
  %40 = ptrtoint ptr %bd0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %bd0.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.end32.err_dma_alloc_crit_edge, label %if.end36

for.end32.err_dma_alloc_crit_edge:                ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma_alloc

if.end36:                                         ; preds = %for.end32
  %41 = ptrtoint ptr %bd0_phys.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bd0_phys.i, align 4
  %43 = ptrtoint ptr %channel_control to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channel_control, align 4
  %base_bd_ptr.i = getelementptr inbounds %struct.sdma_channel_control, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %base_bd_ptr.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %42, ptr %base_bd_ptr.i, align 1
  %46 = load i32, ptr %bd0_phys.i, align 4
  %47 = load ptr, ptr %channel_control, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %46, ptr %47, align 1
  %channel2.i.i = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 1, i32 0, i32 3
  %49 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel2.i.i, align 4
  %sdma1.i.i = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sdma1.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.sdma_engine, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 256
  %mul.i.i = shl i32 %50, 2
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 16777216) #10, !srcloc !220
  %55 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel2.i.i, align 4
  %57 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdma1.i.i, align 4
  %regs.i = getelementptr inbounds %struct.sdma_engine, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 16
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !219
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %64, i32 24
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !219
  %66 = call i32 @llvm.bswap.i32(i32 %65) #10
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %68, i32 20
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #10, !srcloc !219
  %70 = call i32 @llvm.bswap.i32(i32 %69) #10
  %rem.i.i = and i32 %56, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %or.i.i = or i32 %70, %shl.i.i
  %or.i15.i = or i32 %62, %shl.i.i
  %and.i21.i = and i32 %66, %neg.i.i
  %71 = call i32 @llvm.bswap.i32(i32 %or.i15.i) #10
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %73, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %71) #10, !srcloc !220
  %74 = call i32 @llvm.bswap.i32(i32 %and.i21.i) #10
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %76, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %74) #10, !srcloc !220
  %77 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %79, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %77) #10, !srcloc !220
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %81, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 1346371584) #10, !srcloc !220
  %clk_ratio40 = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 18
  %82 = ptrtoint ptr %clk_ratio40 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %clk_ratio40, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool41.not = icmp eq i8 %83, 0
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %add.ptr46 = getelementptr i8, ptr %85, i32 56
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 268435456) #10, !srcloc !220
  br label %if.end47

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 0) #10, !srcloc !220
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then42
  %86 = ptrtoint ptr %ccb_phys to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ccb_phys, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #10, !srcloc !220
  %91 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %channel2.i.i, align 4
  %93 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sdma1.i.i, align 4
  %regs.i100 = getelementptr inbounds %struct.sdma_engine, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %regs.i100 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %96, i32 256
  %mul.i102 = shl i32 %92, 2
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i101, i32 %mul.i102
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 117440512) #10, !srcloc !220
  %97 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %98) #10
  %99 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clk_ahb, align 4
  call void @clk_disable(ptr noundef %100) #10
  br label %cleanup

err_dma_alloc:                                    ; preds = %for.end32.err_dma_alloc_crit_edge, %if.end11.err_dma_alloc_crit_edge
  %101 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk_ahb, align 4
  call void @clk_disable(ptr noundef %102) #10
  br label %disable_clk_ipg

disable_clk_ipg:                                  ; preds = %err_dma_alloc, %if.end.disable_clk_ipg_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.disable_clk_ipg_crit_edge ], [ -12, %err_dma_alloc ]
  %103 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %104) #10
  %105 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sdma, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.28, i32 noundef %ret.1) #14
  br label %cleanup

cleanup:                                          ; preds = %disable_clk_ipg, %if.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %disable_clk_ipg ], [ 0, %if.end47 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccb_phys) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdma_event_remap(ptr nocapture noundef readonly %sdma) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %propname = alloca [21 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  %shift = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.of_parse_phandle.exit_crit_edge

entry.of_parse_phandle.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %entry.of_parse_phandle.exit_crit_edge
  %retval.0.i101 = phi ptr [ %6, %if.end.i ], [ null, %entry.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %propname) #10
  %7 = call ptr @memcpy(ptr %propname, ptr @__const.sdma_event_remap.propname, i32 21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg, align 4, !annotation !216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #10
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %shift, align 4, !annotation !216
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %cmp.i102 = icmp ugt ptr %retval.0.i101, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i102
  br i1 %or.cond, label %of_parse_phandle.exit.out_crit_edge, label %if.end

of_parse_phandle.exit.out_crit_edge:              ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %of_parse_phandle.exit
  %call3 = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull %propname, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %cond.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cond.end:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.property, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %div100 = lshr i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %tobool4.not = icmp ult i32 %12, 4
  br i1 %tobool4.not, label %cond.end.do.body_crit_edge, label %if.else

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %cond.end.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_event_remap.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_event_remap, %out)) #10
          to label %if.then11 [label %out], !srcloc !224

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdma, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_event_remap.__UNIQUE_ID_ddebug253, ptr noundef %14, ptr noundef nonnull @.str.32) #10
  br label %out

if.else:                                          ; preds = %cond.end
  %rem = urem i32 %div100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool14.not = icmp eq i32 %rem, 0
  br i1 %tobool14.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdma, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.33, ptr noundef nonnull %propname, i32 noundef 3) #14
  br label %out

if.end22:                                         ; preds = %if.else
  %call23 = call ptr @syscon_node_to_regmap(ptr noundef %retval.0.i101) #10
  %cmp.i103 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %do.end28, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdma, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.35) #14
  %19 = ptrtoint ptr %call23 to i32
  br label %out

for.body:                                         ; preds = %if.end64.for.body_crit_edge, %if.end22.for.body_crit_edge
  %i.0117 = phi i32 [ %add67, %if.end64.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %call33 = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull %propname, i32 noundef %i.0117, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdma, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.38, ptr noundef nonnull %propname, i32 noundef %i.0117) #14
  br label %out

if.end41:                                         ; preds = %for.body
  %add = add nuw nsw i32 %i.0117, 1
  %call43 = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull %propname, i32 noundef %add, ptr noundef nonnull %shift) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end52, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdma, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.38, ptr noundef nonnull %propname, i32 noundef %add) #14
  br label %out

if.end52:                                         ; preds = %if.end41
  %add54 = add nuw nsw i32 %i.0117, 2
  %call55 = call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull %propname, i32 noundef %add54, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end64, label %do.end60

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdma, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.38, ptr noundef nonnull %propname, i32 noundef %add54) #14
  br label %out

if.end64:                                         ; preds = %if.end52
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %28 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shift, align 4
  %shl = shl nuw i32 1, %29
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %shl65 = shl i32 %31, %29
  %call.i104 = call i32 @regmap_update_bits_base(ptr noundef %call23, i32 noundef %27, i32 noundef %shl, i32 noundef %shl65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %add67 = add nuw nsw i32 %i.0117, 3
  %cmp = icmp ult i32 %add67, %div100
  br i1 %cmp, label %if.end64.for.body_crit_edge, label %if.end64.out_crit_edge

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %if.end64.out_crit_edge, %do.end60, %do.end48, %do.end38, %do.end28, %do.end18, %if.then11, %do.body, %of_parse_phandle.exit.out_crit_edge
  %ret.1 = phi i32 [ 0, %of_parse_phandle.exit.out_crit_edge ], [ -22, %do.end18 ], [ %19, %do.end28 ], [ %call33, %do.end38 ], [ %call43, %do.end48 ], [ %call55, %do.end60 ], [ 0, %if.then11 ], [ 0, %do.body ], [ 0, %if.end64.out_crit_edge ]
  br i1 %cmp.i102, label %out.if.end70_crit_edge, label %if.then69

out.if.end70_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then69:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_node_put(ptr noundef %retval.0.i101) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %out.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %propname) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_add_scripts(ptr nocapture noundef %sdma, ptr nocapture noundef readonly %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %script_addrs = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 11
  %0 = ptrtoint ptr %script_addrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %script_addrs, align 4
  %script_number = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 10
  %2 = ptrtoint ptr %script_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %script_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %script_number to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 34, ptr %script_number, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %if.end.thread
  br label %for.body

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %3)
  %cmp = icmp ugt i32 %3, 46
  br i1 %cmp, label %do.end, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdma, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.44, i32 noundef %3) #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %addr, i32 %i.048
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11 = getelementptr i32, ptr %1, i32 %i.048
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %10 = ptrtoint ptr %script_number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %script_number, align 4
  %cmp7 = icmp ult i32 %inc, %11
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %uart_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %addr, i32 0, i32 43
  %12 = ptrtoint ptr %uart_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uart_2_mcu_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %for.end.if.end18_crit_edge, label %if.then14

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %script_addrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %script_addrs, align 4
  %uart_2_mcu_addr17 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %15, i32 0, i32 43
  %16 = ptrtoint ptr %uart_2_mcu_addr17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %uart_2_mcu_addr17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %for.end.if.end18_crit_edge
  %uartsh_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %addr, i32 0, i32 44
  %17 = ptrtoint ptr %uartsh_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uartsh_2_mcu_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %script_addrs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %script_addrs, align 4
  %uartsh_2_mcu_addr23 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %uartsh_2_mcu_addr23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %uartsh_2_mcu_addr23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_alloc_chan_resources(ptr nocapture noundef %chan) #2 align 64 {
entry:
  %mem_data.sroa.0 = alloca i32, align 4
  %mem_data.sroa.5 = alloca i32, align 4
  %mem_data.sroa.8 = alloca i32, align 4
  %mem_data.sroa.11 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %.sroa.gep63 = getelementptr inbounds %struct.imx_dma_data, ptr %1, i32 0, i32 1
  %.sroa.gep60 = getelementptr inbounds %struct.imx_dma_data, ptr %1, i32 0, i32 2
  %.sroa.gep = getelementptr inbounds %struct.imx_dma_data, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_data.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_data.sroa.5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_data.sroa.8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_data.sroa.11)
  %2 = ptrtoint ptr %mem_data.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mem_data.sroa.0, align 4
  %3 = ptrtoint ptr %mem_data.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mem_data.sroa.5, align 4
  %4 = ptrtoint ptr %mem_data.sroa.8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mem_data.sroa.8, align 4
  %5 = ptrtoint ptr %mem_data.sroa.11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mem_data.sroa.11, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_alloc_chan_resources.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_alloc_chan_resources, %do.end)) #10
          to label %if.then6 [label %do.end], !srcloc !224

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sdma = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdma, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_alloc_chan_resources.__UNIQUE_ID_ddebug244, ptr noundef %9, ptr noundef nonnull @.str.47) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %10 = ptrtoint ptr %mem_data.sroa.11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %mem_data.sroa.11, align 4
  %11 = ptrtoint ptr %mem_data.sroa.8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %mem_data.sroa.8, align 4
  %12 = ptrtoint ptr %mem_data.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mem_data.sroa.0, align 4
  %13 = ptrtoint ptr %mem_data.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mem_data.sroa.5, align 4
  %sdma1.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %14 = ptrtoint ptr %sdma1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdma1.i, align 4
  %pc_from_device.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 10
  %is_ram_script.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 25
  %16 = ptrtoint ptr %is_ram_script.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_ram_script.i, align 4
  %17 = call ptr @memset(ptr %pc_from_device.i, i32 0, i32 16)
  %script_addrs.i = getelementptr inbounds %struct.sdma_engine, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %script_addrs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %script_addrs.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %pc_to_pc.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 13
  %22 = ptrtoint ptr %pc_to_pc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pc_to_pc.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  %data.0 = phi ptr [ %1, %entry.if.end7_crit_edge ], [ %mem_data.sroa.0, %do.end ]
  %data.0.sroa.phi = phi ptr [ %.sroa.gep, %entry.if.end7_crit_edge ], [ %mem_data.sroa.11, %do.end ]
  %data.0.sroa.phi59 = phi ptr [ %.sroa.gep60, %entry.if.end7_crit_edge ], [ %mem_data.sroa.8, %do.end ]
  %data.0.sroa.phi62 = phi ptr [ %.sroa.gep63, %entry.if.end7_crit_edge ], [ %mem_data.sroa.5, %do.end ]
  %23 = ptrtoint ptr %data.0.sroa.phi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data.0.sroa.phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %switch.selectcmp = icmp eq i32 %24, 1
  %switch.select = select i1 %switch.selectcmp, i32 33554432, i32 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %switch.selectcmp55 = icmp eq i32 %24, 0
  %switch.select56 = select i1 %switch.selectcmp55, i32 50331648, i32 %switch.select
  %25 = ptrtoint ptr %data.0.sroa.phi59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.0.sroa.phi59, align 4
  %peripheral_type12 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 6
  %27 = ptrtoint ptr %peripheral_type12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %peripheral_type12, align 4
  %28 = ptrtoint ptr %data.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data.0, align 4
  %event_id0 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 7
  %30 = ptrtoint ptr %event_id0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %event_id0, align 4
  %31 = ptrtoint ptr %data.0.sroa.phi62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data.0.sroa.phi62, align 4
  %event_id1 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 8
  %33 = ptrtoint ptr %event_id1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %event_id1, align 4
  %sdma15 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %34 = ptrtoint ptr %sdma15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdma15, align 4
  %clk_ipg = getelementptr inbounds %struct.sdma_engine, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_ipg, align 4
  %call16 = tail call i32 @clk_enable(ptr noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %38 = ptrtoint ptr %sdma15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdma15, align 4
  %clk_ahb = getelementptr inbounds %struct.sdma_engine, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_ahb, align 4
  %call21 = tail call i32 @clk_enable(ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %disable_clk_ipg

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %channel2.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %42 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel2.i, align 4
  %44 = ptrtoint ptr %sdma15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdma15, align 4
  %regs.i = getelementptr inbounds %struct.sdma_engine, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 256
  %mul.i = shl i32 %43, 2
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %switch.select56) #10, !srcloc !220
  br label %cleanup

disable_clk_ipg:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %sdma15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdma15, align 4
  %clk_ipg32 = getelementptr inbounds %struct.sdma_engine, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %clk_ipg32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_ipg32, align 4
  tail call void @clk_disable(ptr noundef %51) #10
  br label %cleanup

cleanup:                                          ; preds = %disable_clk_ipg, %if.end24, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %disable_clk_ipg ], [ %call16, %if.end7.cleanup_crit_edge ], [ 0, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_data.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_data.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_data.sroa.8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_data.sroa.11)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma1 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma1, align 4
  %call2 = tail call i32 @sdma_terminate_all(ptr noundef %chan)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i.i) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %head.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head.i.i, ptr %head.i.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head.i.i, ptr %2, align 4
  %task.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i.i) #10
  %lock.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %5 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %6, %desc_terminated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.sdma_channel_synchronize.exit_crit_edge, label %if.then.i.i.i

entry.sdma_channel_synchronize.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_channel_synchronize.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head.i.i, ptr %10, align 4
  store ptr %10, ptr %2, align 4
  %14 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %sdma_channel_synchronize.exit

sdma_channel_synchronize.exit:                    ; preds = %if.then.i.i.i, %entry.sdma_channel_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i.i) #10
  %terminate_worker.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 23
  %call1.i = call zeroext i1 @flush_work(ptr noundef %terminate_worker.i) #10
  %event_id0 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 7
  %15 = ptrtoint ptr %event_id0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %event_id0, align 4
  %17 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdma1, align 4
  %channel2.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %19 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel2.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.sdma_engine, ptr %18, i32 0, i32 12
  %21 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvdata.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %mul.i.i = shl i32 %16, 2
  %add.i.i = add i32 %24, %mul.i.i
  %regs.i = getelementptr inbounds %struct.sdma_engine, ptr %18, i32 0, i32 3
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %add.i.i
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !219
  %28 = call i32 @llvm.bswap.i32(i32 %27) #10
  %rem.i.i = and i32 %20, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %28, %neg.i.i
  %29 = call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %31, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %29) #10, !srcloc !220
  %event_id1 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 8
  %32 = ptrtoint ptr %event_id1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %event_id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %sdma_channel_synchronize.exit.if.end_crit_edge, label %if.then

sdma_channel_synchronize.exit.if.end_crit_edge:   ; preds = %sdma_channel_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sdma_channel_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdma1, align 4
  %36 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel2.i, align 4
  %drvdata.i.i20 = getelementptr inbounds %struct.sdma_engine, ptr %35, i32 0, i32 12
  %38 = ptrtoint ptr %drvdata.i.i20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drvdata.i.i20, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %mul.i.i21 = shl i32 %33, 2
  %add.i.i22 = add i32 %41, %mul.i.i21
  %regs.i23 = getelementptr inbounds %struct.sdma_engine, ptr %35, i32 0, i32 3
  %42 = ptrtoint ptr %regs.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %43, i32 %add.i.i22
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #10, !srcloc !219
  %45 = call i32 @llvm.bswap.i32(i32 %44) #10
  %rem.i.i25 = and i32 %37, 31
  %shl.i.i26 = shl nuw i32 1, %rem.i.i25
  %neg.i.i27 = xor i32 %shl.i.i26, -1
  %and.i.i28 = and i32 %45, %neg.i.i27
  %46 = call i32 @llvm.bswap.i32(i32 %and.i.i28) #10
  %47 = ptrtoint ptr %regs.i23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i23, align 4
  %add.ptr5.i29 = getelementptr i8, ptr %48, i32 %add.i.i22
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i29, i32 %46) #10, !srcloc !220
  br label %if.end

if.end:                                           ; preds = %if.then, %sdma_channel_synchronize.exit.if.end_crit_edge
  %49 = ptrtoint ptr %event_id0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %event_id0, align 4
  %50 = ptrtoint ptr %event_id1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %event_id1, align 4
  %clk_ipg = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %52) #10
  %clk_ahb = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_ahb, align 4
  call void @clk_disable(ptr noundef %54) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !227
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
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  %.mux = zext i1 %not.or.cond.i.i to i32
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge75 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  %.mux76 = zext i1 %not.or.cond16.i.i to i32
  br i1 %brmerge75, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else, label %do.body2.if.then26_crit_edge

do.body2.if.then26_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.else:                                          ; preds = %do.body2
  %desc13 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc13, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.else.dma_set_tx_state.exit_crit_edge, label %land.lhs.true

if.else.dma_set_tx_state.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_tx_state.exit

land.lhs.true:                                    ; preds = %if.else
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp19 = icmp eq i32 %11, %cookie
  br i1 %cmp19, label %land.lhs.true.if.then26_crit_edge, label %land.lhs.true.dma_set_tx_state.exit_crit_edge

land.lhs.true.dma_set_tx_state.exit_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_tx_state.exit

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then26:                                        ; preds = %land.lhs.true.if.then26_crit_edge, %do.body2.if.then26_crit_edge
  %desc.0 = phi ptr [ %call9, %do.body2.if.then26_crit_edge ], [ %9, %land.lhs.true.if.then26_crit_edge ]
  %flags27 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 14
  %12 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags27, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %num_bd = getelementptr inbounds %struct.sdma_desc, ptr %desc.0, i32 0, i32 1
  %14 = ptrtoint ptr %num_bd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_bd, align 4
  %buf_ptail = getelementptr inbounds %struct.sdma_desc, ptr %desc.0, i32 0, i32 4
  %16 = ptrtoint ptr %buf_ptail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_ptail, align 4
  %sub = sub i32 %15, %17
  %period_len = getelementptr inbounds %struct.sdma_desc, ptr %desc.0, i32 0, i32 5
  %18 = ptrtoint ptr %period_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_len, align 4
  %mul = mul i32 %sub, %19
  br label %dma_set_tx_state.exit.sink.split

if.else31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %chn_count = getelementptr inbounds %struct.sdma_desc, ptr %desc.0, i32 0, i32 7
  %20 = ptrtoint ptr %chn_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chn_count, align 4
  br label %dma_set_tx_state.exit.sink.split

dma_set_tx_state.exit.sink.split:                 ; preds = %if.else31, %if.then29
  %mul.sink = phi i32 [ %mul, %if.then29 ], [ %21, %if.else31 ]
  %chn_real_count = getelementptr inbounds %struct.sdma_desc, ptr %desc.0, i32 0, i32 6
  %22 = ptrtoint ptr %chn_real_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chn_real_count, align 4
  %sub30 = sub i32 %mul.sink, %23
  br label %dma_set_tx_state.exit

dma_set_tx_state.exit:                            ; preds = %dma_set_tx_state.exit.sink.split, %land.lhs.true.dma_set_tx_state.exit_crit_edge, %if.else.dma_set_tx_state.exit_crit_edge
  %residue.0 = phi i32 [ 0, %if.else.dma_set_tx_state.exit_crit_edge ], [ 0, %land.lhs.true.dma_set_tx_state.exit_crit_edge ], [ %sub30, %dma_set_tx_state.exit.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  %24 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %completed_cookie.i, align 4
  %26 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cookie1.i, align 4
  %28 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %txstate, align 4
  %used2.i68 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %29 = ptrtoint ptr %used2.i68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %used2.i68, align 4
  %residue3.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %30 = ptrtoint ptr %residue3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %residue.0, ptr %residue3.i, align 4
  %status = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 21
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_tx_state.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %dma_set_tx_state.exit ], [ %.mux, %if.then.i.i.cleanup_crit_edge ], [ %.mux76, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sdma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma1 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma1, align 4
  %channel2 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %slave_config = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 5
  tail call fastcc void @sdma_config_write(ptr noundef %chan, ptr noundef %slave_config, i32 noundef %direction)
  %call4 = tail call fastcc ptr @sdma_transfer_init(ptr noundef %chan, i32 noundef %direction, i32 noundef %sg_len)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.err_out_crit_edge, label %do.body

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_prep_slave_sg.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_prep_slave_sg, %do.end)) #10
          to label %if.then10 [label %do.end], !srcloc !224

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_prep_slave_sg.__UNIQUE_ID_ddebug249, ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %sg_len, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp155.not = icmp eq i32 %sg_len, 0
  br i1 %cmp155.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %bd12 = getelementptr inbounds %struct.sdma_desc, ptr %call4, i32 0, i32 9
  %chn_count = getelementptr inbounds %struct.sdma_desc, ptr %call4, i32 0, i32 7
  %word_size = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %add52, %for.inc.for.body_crit_edge ]
  %sg.0156 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call90, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %bd12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd12, align 4
  %arrayidx = getelementptr %struct.sdma_buffer_descriptor, ptr %7, i32 %i.0157
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0156, i32 0, i32 3
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_address, align 4
  %buffer_addr = getelementptr %struct.sdma_buffer_descriptor, ptr %7, i32 %i.0157, i32 1
  %10 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %buffer_addr, align 1
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0156, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %12)
  %cmp13 = icmp sgt i32 %12, 65535
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %12, i32 noundef 65535) #14
  br label %err_bd_out

if.end19:                                         ; preds = %for.body
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load = load i32, ptr %arrayidx, align 1
  %bf.shl = shl i32 %12, 16
  %bf.clear = and i32 %bf.load, 65535
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %chn_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chn_count, align 4
  %add = add i32 %17, %12
  store i32 %add, ptr %chn_count, align 4
  %18 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp20 = icmp ugt i32 %19, 4
  br i1 %cmp20, label %if.end19.err_bd_out_crit_edge, label %if.end22

if.end19.err_bd_out_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_bd_out

if.end22:                                         ; preds = %if.end19
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end22.err_bd_out_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %sw.bb34
    i32 1, label %sw.bb47
  ]

if.end22.err_bd_out_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_bd_out

sw.bb:                                            ; preds = %if.end22
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load25 = load i32, ptr %arrayidx, align 1
  %bf.clear26 = and i32 %bf.load25, -256
  store i32 %bf.clear26, ptr %arrayidx, align 1
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %sw.bb.err_bd_out_crit_edge

sw.bb.err_bd_out_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_bd_out

lor.lhs.false:                                    ; preds = %sw.bb
  %22 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address, align 4
  %and30 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.err_bd_out_crit_edge

lor.lhs.false.err_bd_out_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_bd_out

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end22
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load36 = load i32, ptr %arrayidx, align 1
  %bf.clear37 = and i32 %bf.load36, -256
  %bf.set38 = or i32 %bf.clear37, 2
  store i32 %bf.set38, ptr %arrayidx, align 1
  %and39 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %sw.bb34.err_bd_out_crit_edge

sw.bb34.err_bd_out_crit_edge:                     ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_bd_out

lor.lhs.false41:                                  ; preds = %sw.bb34
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  %and43 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false41.sw.epilog_crit_edge, label %lor.lhs.false41.err_bd_out_crit_edge

lor.lhs.false41.err_bd_out_crit_edge:             ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_bd_out

lor.lhs.false41.sw.epilog_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load49 = load i32, ptr %arrayidx, align 1
  %bf.clear50 = and i32 %bf.load49, -256
  %bf.set51 = or i32 %bf.clear50, 1
  store i32 %bf.set51, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %lor.lhs.false41.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge
  %add52 = add nuw i32 %i.0157, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %sg_len)
  %cmp53 = icmp eq i32 %add52, %sg_len
  %spec.select = select i1 %cmp53, i32 169, i32 133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_prep_slave_sg.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_prep_slave_sg, %for.inc)) #10
          to label %if.then72 [label %for.inc], !srcloc !224

if.then72:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %31 to i64
  %and77 = and i32 %spec.select, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cond79 = select i1 %tobool78.not, ptr @.str.53, ptr @.str.54
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_prep_slave_sg.__UNIQUE_ID_ddebug250, ptr noundef %29, ptr noundef nonnull @.str.51, i32 noundef %i.0157, i32 noundef %12, i64 noundef %conv, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond79) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then72, %sw.epilog
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %bf.load84 = load i32, ptr %arrayidx, align 1
  %bf.shl86 = shl nuw nsw i32 %spec.select, 8
  %bf.clear87 = and i32 %bf.load84, -65281
  %bf.set88 = or i32 %bf.clear87, %bf.shl86
  store i32 %bf.set88, ptr %arrayidx, align 1
  %call90 = tail call ptr @sg_next(ptr noundef %sg.0156) #10
  %exitcond.not = icmp eq i32 %add52, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call4, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call4, i32 0, i32 1
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call4, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call4, i32 0, i32 5
  %35 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 1
  %36 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %39, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node.i, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call4, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node.i, ptr %39, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup92

err_bd_out:                                       ; preds = %lor.lhs.false41.err_bd_out_crit_edge, %sw.bb34.err_bd_out_crit_edge, %lor.lhs.false.err_bd_out_crit_edge, %sw.bb.err_bd_out_crit_edge, %if.end22.err_bd_out_crit_edge, %if.end19.err_bd_out_crit_edge, %do.end17
  %num_bd.i = getelementptr inbounds %struct.sdma_desc, ptr %call4, i32 0, i32 1
  %44 = ptrtoint ptr %num_bd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_bd.i, align 4
  %mul.i = mul i32 %45, 12
  %sdmac.i = getelementptr inbounds %struct.sdma_desc, ptr %call4, i32 0, i32 8
  %46 = ptrtoint ptr %sdmac.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdmac.i, align 4
  %sdma.i = getelementptr inbounds %struct.sdma_channel, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %sdma.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdma.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %bd12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bd12, align 4
  %bd_phys.i = getelementptr inbounds %struct.sdma_desc, ptr %call4, i32 0, i32 2
  %54 = ptrtoint ptr %bd_phys.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bd_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %51, i32 noundef %mul.i, ptr noundef %53, i32 noundef %55, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %call4) #10
  br label %err_out

err_out:                                          ; preds = %err_bd_out, %entry.err_out_crit_edge
  %status = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 21
  %56 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %status, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %err_out, %vchan_tx_prep.exit
  %retval.0 = phi ptr [ null, %err_out ], [ %call4, %vchan_tx_prep.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sdma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %dma_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma1 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma1, align 4
  %div = udiv i32 %buf_len, %period_len
  %channel2 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_prep_dma_cyclic, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %slave_config = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 5
  tail call fastcc void @sdma_config_write(ptr noundef %chan, ptr noundef %slave_config, i32 noundef %direction)
  %call8 = tail call fastcc ptr @sdma_transfer_init(ptr noundef %chan, i32 noundef %direction, i32 noundef %div)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end.err_out_crit_edge, label %if.end11

do.end.err_out_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end11:                                         ; preds = %do.end
  %period_len12 = getelementptr inbounds %struct.sdma_desc, ptr %call8, i32 0, i32 5
  %6 = ptrtoint ptr %period_len12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %period_len, ptr %period_len12, align 4
  %flags13 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 14
  %7 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags13, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %flags13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %period_len)
  %cmp = icmp ugt i32 %period_len, 65535
  br i1 %cmp, label %do.end17, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp20133.not = icmp eq i32 %buf_len, 0
  br i1 %cmp20133.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bd21 = getelementptr inbounds %struct.sdma_desc, ptr %call8, i32 0, i32 9
  %bf.shl = shl nuw i32 %period_len, 16
  %word_size = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 9
  br label %while.body

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.68, i32 noundef %3, i32 noundef %period_len, i32 noundef 65535) #14
  br label %err_bd_out

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dma_addr.addr.0136 = phi i32 [ %dma_addr, %while.body.lr.ph ], [ %add72, %cleanup.while.body_crit_edge ]
  %buf.0135 = phi i32 [ 0, %while.body.lr.ph ], [ %add73, %cleanup.while.body_crit_edge ]
  %i.0134 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %11 = ptrtoint ptr %bd21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd21, align 4
  %arrayidx = getelementptr %struct.sdma_buffer_descriptor, ptr %12, i32 %i.0134
  %buffer_addr = getelementptr %struct.sdma_buffer_descriptor, ptr %12, i32 %i.0134, i32 1
  %13 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %dma_addr.addr.0136, ptr %buffer_addr, align 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load = load i32, ptr %arrayidx, align 1
  %bf.clear = and i32 %bf.load, 65535
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp22 = icmp ugt i32 %16, 4
  br i1 %cmp22, label %while.body.err_bd_out_crit_edge, label %if.end24

while.body.err_bd_out_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_bd_out

if.end24:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp26 = icmp eq i32 %16, 4
  %bf.clear36 = and i32 %bf.set, -256
  %bf.set37 = select i1 %cmp26, i32 0, i32 %16
  %storemerge = or i32 %bf.set37, %bf.clear36
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %storemerge, ptr %arrayidx, align 1
  %add = add i32 %i.0134, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp39 = icmp eq i32 %add, %div
  %param.0 = select i1 %cmp39, i32 143, i32 141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_prep_dma_cyclic, %cleanup)) #10
          to label %if.then57 [label %cleanup], !srcloc !224

if.then57:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %conv = zext i32 %dma_addr.addr.0136 to i64
  %and = and i32 %param.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool59.not, ptr @.str.53, ptr @.str.52
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug252, ptr noundef %19, ptr noundef nonnull @.str.69, i32 noundef %i.0134, i32 noundef %period_len, i64 noundef %conv, ptr noundef nonnull %cond, ptr noundef nonnull @.str.54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end24
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load67 = load i32, ptr %arrayidx, align 1
  %bf.shl69 = shl nuw nsw i32 %param.0, 8
  %bf.clear70 = and i32 %bf.load67, -65281
  %bf.set71 = or i32 %bf.clear70, %bf.shl69
  store i32 %bf.set71, ptr %arrayidx, align 1
  %add72 = add i32 %dma_addr.addr.0136, %period_len
  %add73 = add i32 %buf.0135, %period_len
  %cmp20 = icmp ult i32 %add73, %buf_len
  br i1 %cmp20, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call8, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8, i32 0, i32 1
  %21 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8, i32 0, i32 4
  %22 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8, i32 0, i32 5
  %23 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 1
  %24 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %27, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.end.vchan_tx_prep.exit_crit_edge

while.end.vchan_tx_prep.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %node.i, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %node.i, ptr %27, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %while.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup76

err_bd_out:                                       ; preds = %while.body.err_bd_out_crit_edge, %do.end17
  %num_bd.i = getelementptr inbounds %struct.sdma_desc, ptr %call8, i32 0, i32 1
  %32 = ptrtoint ptr %num_bd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_bd.i, align 4
  %mul.i = mul i32 %33, 12
  %sdmac.i = getelementptr inbounds %struct.sdma_desc, ptr %call8, i32 0, i32 8
  %34 = ptrtoint ptr %sdmac.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdmac.i, align 4
  %sdma.i = getelementptr inbounds %struct.sdma_channel, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %sdma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdma.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %bd.i = getelementptr inbounds %struct.sdma_desc, ptr %call8, i32 0, i32 9
  %40 = ptrtoint ptr %bd.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bd.i, align 4
  %bd_phys.i = getelementptr inbounds %struct.sdma_desc, ptr %call8, i32 0, i32 2
  %42 = ptrtoint ptr %bd_phys.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bd_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef %mul.i, ptr noundef %41, i32 noundef %43, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %call8) #10
  br label %err_out

err_out:                                          ; preds = %err_bd_out, %do.end.err_out_crit_edge
  %status = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 21
  %44 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %status, align 4
  br label %cleanup76

cleanup76:                                        ; preds = %err_out, %vchan_tx_prep.exit
  %retval.0 = phi ptr [ null, %err_out ], [ %call8, %vchan_tx_prep.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %dmaengine_cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_config = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %slave_config, ptr %dmaengine_cfg, i32 48)
  %event_id0 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 7
  %1 = ptrtoint ptr %event_id0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %event_id0, align 4
  %sdma = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %3 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdma, align 4
  %drvdata = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  %num_events = getelementptr inbounds %struct.sdma_driver_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_events, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp.not = icmp ult i32 %2, %8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel2.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel2.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  %mul.i.i = shl i32 %2, 2
  %add.i.i = add i32 %12, %mul.i.i
  %regs.i = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !219
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %rem.i.i = and i32 %10, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %16, %shl.i.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %19, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %17) #10, !srcloc !220
  %event_id1 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 8
  %20 = ptrtoint ptr %event_id1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %22 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdma, align 4
  %drvdata5 = getelementptr inbounds %struct.sdma_engine, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %drvdata5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drvdata5, align 4
  %num_events6 = getelementptr inbounds %struct.sdma_driver_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %num_events6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_events6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %27)
  %cmp7.not = icmp ult i32 %21, %27
  br i1 %cmp7.not, label %if.end9, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel2.i, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 4
  %mul.i.i25 = shl i32 %21, 2
  %add.i.i26 = add i32 %31, %mul.i.i25
  %regs.i27 = getelementptr inbounds %struct.sdma_engine, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %regs.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %33, i32 %add.i.i26
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #10, !srcloc !219
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %rem.i.i29 = and i32 %29, 31
  %shl.i.i30 = shl nuw i32 1, %rem.i.i29
  %or.i.i31 = or i32 %35, %shl.i.i30
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i.i31) #10
  %37 = ptrtoint ptr %regs.i27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i27, align 4
  %add.ptr5.i32 = getelementptr i8, ptr %38, i32 %add.i.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i32, i32 %36) #10, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %sdma1.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %sdma1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma1.i, align 4
  %channel2.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2.i, align 4
  %shl.i = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %regs.i = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !220
  %status.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 21
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %status.i, align 4
  %desc = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %9, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %13, ptr noundef %desc_terminated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %9, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node.i, ptr %13, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 9
  %18 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %19, %9
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %terminated = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 24
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %21 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %22, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %vchan_terminate_vdesc.exit.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

vchan_terminate_vdesc.exit.list_splice_tail_init.exit.i_crit_edge: ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i21 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 24, i32 1
  %23 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i21, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i22, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %22, ptr %24, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %terminated, ptr %26, align 4
  store ptr %26, ptr %prev.i.i21, align 4
  %30 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %vchan_terminate_vdesc.exit.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %31 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %32, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i10.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 24, i32 1
  %33 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i10.i, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i12.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %34, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %terminated, ptr %36, align 4
  store ptr %36, ptr %prev.i10.i, align 4
  %40 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %41 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %42, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i16.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 24, i32 1
  %43 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i16.i, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i18.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %42, ptr %44, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %terminated, ptr %46, align 4
  store ptr %46, ptr %prev.i16.i, align 4
  %50 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %51 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %52, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i22.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 24, i32 1
  %53 = ptrtoint ptr %prev.i22.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i22.i, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i24.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %52, ptr %54, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %terminated, ptr %56, align 4
  store ptr %56, ptr %prev.i22.i, align 4
  %60 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i23 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %61 = ptrtoint ptr %desc_terminated.i23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %desc_terminated.i23, align 4
  %cmp.i.not.i27.i = icmp eq ptr %62, %desc_terminated.i23
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i28.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 24, i32 1
  %63 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i28.i, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i30.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %62, ptr %64, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %terminated, ptr %66, align 4
  store ptr %66, ptr %prev.i28.i, align 4
  %70 = ptrtoint ptr %desc_terminated.i23 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %desc_terminated.i23, ptr %desc_terminated.i23, align 4
  store ptr %desc_terminated.i23, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %71 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %desc, align 4
  %terminate_worker = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %72 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %terminate_worker) #10
  br label %if.end

if.end:                                           ; preds = %vchan_get_all_descriptors.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_channel_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #10
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #10
  %terminate_worker = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 23
  %call1 = call zeroext i1 @flush_work(ptr noundef %terminate_worker) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sdma_prep_memcpy(ptr noundef %chan, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %dma_dst.addr = alloca i32, align 4
  %dma_src.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma_dst.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dma_dst, ptr %dma_dst.addr, align 4
  %1 = ptrtoint ptr %dma_src.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dma_src, ptr %dma_src.addr, align 4
  %sdma1 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdma1, align 4
  %channel2 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  %tobool.not = icmp eq ptr %chan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_prep_memcpy.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_prep_memcpy, %do.end)) #10
          to label %if.then9 [label %do.end], !srcloc !224

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_prep_memcpy.__UNIQUE_ID_ddebug245, ptr noundef %7, ptr noundef nonnull @.str.71, ptr noundef nonnull %dma_src.addr, ptr noundef nonnull %dma_dst.addr, i32 noundef %len, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %div = udiv i32 %len, 65535
  %add = add nuw nsw i32 %div, 1
  %call11 = call fastcc ptr @sdma_transfer_init(ptr noundef nonnull %chan, i32 noundef 0, i32 noundef %add)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end.cleanup_crit_edge, label %do.body15.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body15.preheader:                              ; preds = %do.end
  %bd17 = getelementptr inbounds %struct.sdma_desc, ptr %call11, i32 0, i32 9
  %chn_count = getelementptr inbounds %struct.sdma_desc, ptr %call11, i32 0, i32 7
  br label %do.body15

do.body15:                                        ; preds = %do.end54.do.body15_crit_edge, %do.body15.preheader
  %i.0 = phi i32 [ %inc, %do.end54.do.body15_crit_edge ], [ 0, %do.body15.preheader ]
  %len.addr.0 = phi i32 [ %sub, %do.end54.do.body15_crit_edge ], [ %len, %do.body15.preheader ]
  %8 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 65535)
  %9 = ptrtoint ptr %bd17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd17, align 4
  %arrayidx = getelementptr %struct.sdma_buffer_descriptor, ptr %10, i32 %i.0
  %11 = ptrtoint ptr %dma_src.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_src.addr, align 4
  %buffer_addr = getelementptr %struct.sdma_buffer_descriptor, ptr %10, i32 %i.0, i32 1
  %13 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %buffer_addr, align 1
  %14 = ptrtoint ptr %dma_dst.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_dst.addr, align 4
  %ext_buffer_addr = getelementptr %struct.sdma_buffer_descriptor, ptr %10, i32 %i.0, i32 2
  %16 = ptrtoint ptr %ext_buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %ext_buffer_addr, align 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %bf.load = load i32, ptr %arrayidx, align 1
  %bf.shl = shl nuw i32 %8, 16
  %bf.clear = and i32 %bf.load, 65535
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %arrayidx, align 1
  %18 = ptrtoint ptr %chn_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chn_count, align 4
  %add18 = add i32 %19, %8
  store i32 %add18, ptr %chn_count, align 4
  %bf.load20 = load i32, ptr %arrayidx, align 1
  %bf.clear21 = and i32 %bf.load20, -256
  store i32 %bf.clear21, ptr %arrayidx, align 1
  %20 = load i32, ptr %dma_src.addr, align 4
  %add23 = add i32 %20, %8
  store i32 %add23, ptr %dma_src.addr, align 4
  %21 = load i32, ptr %dma_dst.addr, align 4
  %add24 = add i32 %21, %8
  store i32 %add24, ptr %dma_dst.addr, align 4
  %sub = sub i32 %len.addr.0, %8
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool25.not = icmp eq i32 %sub, 0
  %param.0 = select i1 %tobool25.not, i32 169, i32 133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_prep_memcpy.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_prep_memcpy, %do.end54)) #10
          to label %if.then43 [label %do.end54], !srcloc !224

if.then43:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %buffer_addr, align 1
  %and49 = and i32 %param.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.53, ptr @.str.54
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_prep_memcpy.__UNIQUE_ID_ddebug248, ptr noundef %23, ptr noundef nonnull @.str.72, i32 noundef %inc, i32 noundef %8, i32 noundef %25, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond51) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then43, %do.body15
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load56 = load i32, ptr %arrayidx, align 1
  %bf.shl58 = shl nuw nsw i32 %param.0, 8
  %bf.clear59 = and i32 %bf.load56, -65281
  %bf.set60 = or i32 %bf.clear59, %bf.shl58
  store i32 %bf.set60, ptr %arrayidx, align 1
  br i1 %tobool25.not, label %do.end63, label %do.end54.do.body15_crit_edge

do.end54.do.body15_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

do.end63:                                         ; preds = %do.end54
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call11, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11, i32 0, i32 1
  %27 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11, i32 0, i32 4
  %28 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11, i32 0, i32 5
  %29 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 1
  %30 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %33, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end63.vchan_tx_prep.exit_crit_edge

do.end63.vchan_tx_prep.exit_crit_edge:            ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %node.i, ptr %33, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %do.end63.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call11, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %15, %desc_issued.i
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -108
  %tobool.not25.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not25.i
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %channel2.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %17 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel2.i, align 4
  %sdma1.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %19 = ptrtoint ptr %sdma1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdma1.i, align 4
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %desc, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i15 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i15, align 4
  %bd_phys.i = getelementptr i8, ptr %15, i32 12
  %30 = ptrtoint ptr %bd_phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bd_phys.i, align 4
  %channel_control.i = getelementptr inbounds %struct.sdma_engine, ptr %20, i32 0, i32 2
  %32 = ptrtoint ptr %channel_control.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel_control.i, align 4
  %base_bd_ptr.i = getelementptr %struct.sdma_channel_control, ptr %33, i32 %18, i32 1
  %34 = ptrtoint ptr %base_bd_ptr.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %31, ptr %base_bd_ptr.i, align 1
  %35 = load i32, ptr %bd_phys.i, align 4
  %36 = load ptr, ptr %channel_control.i, align 4
  %arrayidx8.i = getelementptr %struct.sdma_channel_control, ptr %36, i32 %18
  %37 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %35, ptr %arrayidx8.i, align 1
  %38 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %shl.i.i = shl nuw i32 1, %39
  %40 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #10
  %regs.i.i = getelementptr inbounds %struct.sdma_engine, ptr %20, i32 0, i32 3
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %40) #10, !srcloc !220
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i, %if.then.i, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sdma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %data = alloca %struct.imx_dma_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %cap_mask = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap_mask, align 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #10
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %5 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not = icmp eq i32 %6, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = getelementptr inbounds %struct.imx_dma_data, ptr %data, i32 0, i32 3
  %8 = getelementptr inbounds %struct.imx_dma_data, ptr %data, i32 0, i32 2
  %9 = getelementptr inbounds %struct.imx_dma_data, ptr %data, i32 0, i32 1
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %8, align 4
  %arrayidx4 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %7, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %9, align 4
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 4
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @sdma_filter_fn, ptr noundef nonnull %data, ptr noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @sdma_get_pc(ptr nocapture noundef %sdmac, i32 noundef %peripheral_type) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma1 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 2
  %0 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma1, align 4
  %pc_from_device = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 10
  %is_ram_script = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 25
  %2 = ptrtoint ptr %is_ram_script to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_ram_script, align 4
  %3 = call ptr @memset(ptr %pc_from_device, i32 0, i32 16)
  %4 = zext i32 %peripheral_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %peripheral_type, label %entry.sw.epilog_crit_edge [
    i32 16, label %sw.bb
    i32 15, label %sw.bb2
    i32 6, label %sw.bb5
    i32 4, label %sw.bb8
    i32 5, label %sw.bb11
    i32 10, label %sw.bb14
    i32 7, label %sw.bb17
    i32 12, label %entry.sw.bb24_crit_edge
    i32 0, label %entry.sw.bb24_crit_edge108
    i32 24, label %entry.sw.bb24_crit_edge109
    i32 22, label %sw.bb29
    i32 1, label %entry.sw.bb33_crit_edge
    i32 2, label %entry.sw.bb33_crit_edge110
    i32 3, label %entry.sw.bb33_crit_edge111
    i32 8, label %entry.sw.bb33_crit_edge112
    i32 21, label %entry.sw.bb33_crit_edge113
    i32 14, label %entry.sw.bb33_crit_edge114
    i32 20, label %sw.bb37
    i32 23, label %sw.bb43
    i32 13, label %sw.bb50
    i32 11, label %sw.bb53
    i32 18, label %sw.bb55
    i32 19, label %sw.bb58
  ]

entry.sw.bb33_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

entry.sw.bb33_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

entry.sw.bb33_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

entry.sw.bb33_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

entry.sw.bb33_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

entry.sw.bb33_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

entry.sw.bb24_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

entry.sw.bb24_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %script_addrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %script_addrs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs3 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %script_addrs3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %script_addrs3, align 4
  %bp_2_ap_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bp_2_ap_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bp_2_ap_addr, align 4
  %ap_2_bp_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ap_2_bp_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ap_2_bp_addr, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs6 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %script_addrs6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %script_addrs6, align 4
  %firi_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %firi_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %firi_2_mcu_addr, align 4
  %mcu_2_firi_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %16, i32 0, i32 9
  %19 = ptrtoint ptr %mcu_2_firi_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mcu_2_firi_addr, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs9 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %script_addrs9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %script_addrs9, align 4
  %uart_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %22, i32 0, i32 43
  %23 = ptrtoint ptr %uart_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uart_2_mcu_addr, align 4
  %mcu_2_app_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %22, i32 0, i32 13
  %25 = ptrtoint ptr %mcu_2_app_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mcu_2_app_addr, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs12 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %script_addrs12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %script_addrs12, align 4
  %uartsh_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %uartsh_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uartsh_2_mcu_addr, align 4
  %mcu_2_shp_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %28, i32 0, i32 18
  %31 = ptrtoint ptr %mcu_2_shp_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mcu_2_shp_addr, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs15 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %script_addrs15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %script_addrs15, align 4
  %ata_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %ata_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ata_2_mcu_addr, align 4
  %mcu_2_ata_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %34, i32 0, i32 20
  %37 = ptrtoint ptr %mcu_2_ata_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mcu_2_ata_addr, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %script_addrs18 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %script_addrs18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %script_addrs18, align 4
  %app_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %app_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %app_2_mcu_addr, align 4
  %drvdata = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %drvdata, align 4
  %ecspi_fixed = getelementptr inbounds %struct.sdma_driver_data, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %ecspi_fixed to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ecspi_fixed, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %mcu_2_app_addr21 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %40, i32 0, i32 13
  %47 = ptrtoint ptr %mcu_2_app_addr21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mcu_2_app_addr21, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %mcu_2_ecspi_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %40, i32 0, i32 40
  %49 = ptrtoint ptr %mcu_2_ecspi_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mcu_2_ecspi_addr, align 4
  %51 = ptrtoint ptr %is_ram_script to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %is_ram_script, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge108, %entry.sw.bb24_crit_edge109
  %script_addrs25 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %script_addrs25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %script_addrs25, align 4
  %app_2_mcu_addr26 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %53, i32 0, i32 22
  %54 = ptrtoint ptr %app_2_mcu_addr26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %app_2_mcu_addr26, align 4
  %mcu_2_app_addr28 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %53, i32 0, i32 13
  %56 = ptrtoint ptr %mcu_2_app_addr28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mcu_2_app_addr28, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs30 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %58 = ptrtoint ptr %script_addrs30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %script_addrs30, align 4
  %ssish_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %59, i32 0, i32 36
  %60 = ptrtoint ptr %ssish_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ssish_2_mcu_addr, align 4
  %mcu_2_ssish_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %59, i32 0, i32 35
  %62 = ptrtoint ptr %mcu_2_ssish_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mcu_2_ssish_addr, align 4
  %64 = ptrtoint ptr %is_ram_script to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %is_ram_script, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry.sw.bb33_crit_edge, %entry.sw.bb33_crit_edge110, %entry.sw.bb33_crit_edge111, %entry.sw.bb33_crit_edge112, %entry.sw.bb33_crit_edge113, %entry.sw.bb33_crit_edge114
  %script_addrs34 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %65 = ptrtoint ptr %script_addrs34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %script_addrs34, align 4
  %shp_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %66, i32 0, i32 24
  %67 = ptrtoint ptr %shp_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %shp_2_mcu_addr, align 4
  %mcu_2_shp_addr36 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %66, i32 0, i32 18
  %69 = ptrtoint ptr %mcu_2_shp_addr36 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mcu_2_shp_addr36, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs38 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %71 = ptrtoint ptr %script_addrs38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %script_addrs38, align 4
  %asrc_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %72, i32 0, i32 29
  %73 = ptrtoint ptr %asrc_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %asrc_2_mcu_addr, align 4
  %per_2_per_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %72, i32 0, i32 14
  %75 = ptrtoint ptr %per_2_per_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %per_2_per_addr, align 4
  %77 = ptrtoint ptr %is_ram_script to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %is_ram_script, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs44 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %78 = ptrtoint ptr %script_addrs44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %script_addrs44, align 4
  %shp_2_mcu_addr45 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %79, i32 0, i32 24
  %80 = ptrtoint ptr %shp_2_mcu_addr45 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %shp_2_mcu_addr45, align 4
  %mcu_2_shp_addr47 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %79, i32 0, i32 18
  %82 = ptrtoint ptr %mcu_2_shp_addr47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mcu_2_shp_addr47, align 4
  %per_2_per_addr49 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %79, i32 0, i32 14
  %84 = ptrtoint ptr %per_2_per_addr49 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %per_2_per_addr49, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs51 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %86 = ptrtoint ptr %script_addrs51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %script_addrs51, align 4
  %mshc_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %87, i32 0, i32 25
  %88 = ptrtoint ptr %mshc_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mshc_2_mcu_addr, align 4
  %mcu_2_mshc_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %87, i32 0, i32 26
  %90 = ptrtoint ptr %mcu_2_mshc_addr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mcu_2_mshc_addr, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs54 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %92 = ptrtoint ptr %script_addrs54 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %script_addrs54, align 4
  %dptc_dvfs_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %93, i32 0, i32 32
  %94 = ptrtoint ptr %dptc_dvfs_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dptc_dvfs_addr, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs56 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %96 = ptrtoint ptr %script_addrs56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %script_addrs56, align 4
  %spdif_2_mcu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %97, i32 0, i32 27
  %98 = ptrtoint ptr %spdif_2_mcu_addr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %spdif_2_mcu_addr, align 4
  %mcu_2_spdif_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %97, i32 0, i32 28
  %100 = ptrtoint ptr %mcu_2_spdif_addr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mcu_2_spdif_addr, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %script_addrs59 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 11
  %102 = ptrtoint ptr %script_addrs59 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %script_addrs59, align 4
  %ext_mem_2_ipu_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %103, i32 0, i32 30
  %104 = ptrtoint ptr %ext_mem_2_ipu_addr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ext_mem_2_ipu_addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %sw.bb55, %sw.bb53, %sw.bb50, %sw.bb43, %sw.bb37, %sw.bb33, %sw.bb29, %sw.bb24, %if.else, %if.then, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %per_2_emi.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb58 ], [ %99, %sw.bb55 ], [ %95, %sw.bb53 ], [ %89, %sw.bb50 ], [ %81, %sw.bb43 ], [ %74, %sw.bb37 ], [ %68, %sw.bb33 ], [ %61, %sw.bb29 ], [ %55, %sw.bb24 ], [ %42, %if.then ], [ %42, %if.else ], [ %36, %sw.bb14 ], [ %30, %sw.bb11 ], [ %24, %sw.bb8 ], [ %18, %sw.bb5 ], [ %14, %sw.bb2 ], [ 0, %sw.bb ]
  %emi_2_per.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %105, %sw.bb58 ], [ %101, %sw.bb55 ], [ 0, %sw.bb53 ], [ %91, %sw.bb50 ], [ %83, %sw.bb43 ], [ %74, %sw.bb37 ], [ %70, %sw.bb33 ], [ %63, %sw.bb29 ], [ %57, %sw.bb24 ], [ %48, %if.then ], [ %50, %if.else ], [ %38, %sw.bb14 ], [ %32, %sw.bb11 ], [ %26, %sw.bb8 ], [ %20, %sw.bb5 ], [ %12, %sw.bb2 ], [ 0, %sw.bb ]
  %per_2_per.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb58 ], [ 0, %sw.bb55 ], [ 0, %sw.bb53 ], [ 0, %sw.bb50 ], [ %85, %sw.bb43 ], [ %76, %sw.bb37 ], [ 0, %sw.bb33 ], [ 0, %sw.bb29 ], [ 0, %sw.bb24 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb14 ], [ 0, %sw.bb11 ], [ 0, %sw.bb8 ], [ 0, %sw.bb5 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  %emi_2_emi.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb58 ], [ 0, %sw.bb55 ], [ 0, %sw.bb53 ], [ 0, %sw.bb50 ], [ 0, %sw.bb43 ], [ 0, %sw.bb37 ], [ 0, %sw.bb33 ], [ 0, %sw.bb29 ], [ 0, %sw.bb24 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb14 ], [ 0, %sw.bb11 ], [ 0, %sw.bb8 ], [ 0, %sw.bb5 ], [ 0, %sw.bb2 ], [ %8, %sw.bb ]
  %pc_to_pc = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 13
  %device_to_device = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 12
  %pc_to_device = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 11
  %106 = ptrtoint ptr %pc_from_device to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %per_2_emi.0, ptr %pc_from_device, align 4
  %107 = ptrtoint ptr %pc_to_device to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %emi_2_per.0, ptr %pc_to_device, align 4
  %108 = ptrtoint ptr %device_to_device to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %per_2_per.0, ptr %device_to_device, align 4
  %109 = ptrtoint ptr %pc_to_pc to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %emi_2_emi.0, ptr %pc_to_pc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_config_write(ptr noundef %chan, ptr nocapture noundef readonly %dmaengine_cfg, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %direction, label %if.else11 [
    i32 2, label %if.then
    i32 3, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 1
  %1 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_addr, align 4
  %per_address = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 15
  %3 = ptrtoint ptr %per_address to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %per_address, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 5
  %4 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_maxburst, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 3
  %6 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_addr_width, align 4
  %mul = mul i32 %7, %5
  %watermark_level = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 18
  %8 = ptrtoint ptr %watermark_level to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %watermark_level, align 4
  br label %if.end20

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr4 = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 1
  %9 = ptrtoint ptr %src_addr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_addr4, align 4
  %per_address2 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 16
  %11 = ptrtoint ptr %per_address2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %per_address2, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 2
  %12 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_addr, align 4
  %per_address5 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 15
  %14 = ptrtoint ptr %per_address5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %per_address5, align 4
  %src_maxburst6 = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 5
  %15 = ptrtoint ptr %src_maxburst6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_maxburst6, align 4
  %and = and i32 %16, 255
  %watermark_level7 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 18
  %17 = ptrtoint ptr %watermark_level7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %watermark_level7, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 6
  %18 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_maxburst, align 4
  %shl = shl i32 %19, 16
  %and8 = and i32 %shl, 16711680
  %or = or i32 %and8, %and
  store i32 %or, ptr %watermark_level7, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 4
  br label %if.end20

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dst_addr12 = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 2
  %20 = ptrtoint ptr %dst_addr12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_addr12, align 4
  %per_address13 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 15
  %22 = ptrtoint ptr %per_address13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %per_address13, align 4
  %dst_maxburst14 = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 6
  %23 = ptrtoint ptr %dst_maxburst14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst_maxburst14, align 4
  %dst_addr_width15 = getelementptr inbounds %struct.dma_slave_config, ptr %dmaengine_cfg, i32 0, i32 4
  %25 = ptrtoint ptr %dst_addr_width15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_addr_width15, align 4
  %mul16 = mul i32 %26, %24
  %watermark_level17 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 18
  %27 = ptrtoint ptr %watermark_level17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul16, ptr %watermark_level17, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else11, %if.then3, %if.then
  %dst_addr_width.sink = phi ptr [ %dst_addr_width, %if.then3 ], [ %dst_addr_width15, %if.else11 ], [ %src_addr_width, %if.then ]
  %28 = ptrtoint ptr %dst_addr_width.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_addr_width.sink, align 4
  %word_size10 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 9
  %30 = ptrtoint ptr %word_size10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %word_size10, align 4
  %direction21 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 4
  %31 = ptrtoint ptr %direction21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %direction, ptr %direction21, align 4
  %sdma1.i.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 2
  %32 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdma1.i.i, align 4
  %channel2.i.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 3
  %34 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel2.i.i, align 4
  %shl.i1.i = shl nuw i32 1, %35
  %36 = tail call i32 @llvm.bswap.i32(i32 %shl.i1.i) #10
  %regs.i.i = getelementptr inbounds %struct.sdma_engine, ptr %33, i32 0, i32 3
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %36) #10, !srcloc !220
  %status.i.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 21
  %39 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %status.i.i, align 4
  %event_mask.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 17
  %40 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %event_mask.i, align 4
  %arrayidx3.i = getelementptr %struct.sdma_channel, ptr %chan, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx3.i, align 4
  %shp_addr.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 19
  %42 = ptrtoint ptr %shp_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %shp_addr.i, align 4
  %per_addr.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 20
  %43 = ptrtoint ptr %per_addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %per_addr.i, align 4
  %peripheral_type.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 6
  %44 = ptrtoint ptr %peripheral_type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %peripheral_type.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %45, label %sw.default.i [
    i32 15, label %sw.bb.i
    i32 16, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel2.i.i, align 4
  %49 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdma1.i.i, align 4
  %regs.i3.i = getelementptr inbounds %struct.sdma_engine, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i3.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #10, !srcloc !219
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  %55 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i3.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %56, i32 24
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #10, !srcloc !219
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i3.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %60, i32 20
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i.i) #10, !srcloc !219
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %rem.i.i.i = and i32 %48, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i.i = and i32 %62, %neg.i.i.i
  %or.i15.i.i = or i32 %54, %shl.i.i.i
  %and.i21.i.i = and i32 %58, %neg.i.i.i
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i15.i.i) #10
  %64 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i3.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %63) #10, !srcloc !220
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i21.i.i) #10
  %67 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i3.i, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %68, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i, i32 %66) #10, !srcloc !220
  %69 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #10
  %70 = ptrtoint ptr %regs.i3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i3.i, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %71, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 %69) #10, !srcloc !220
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %channel2.i.i, align 4
  %74 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sdma1.i.i, align 4
  %regs.i7.i = getelementptr inbounds %struct.sdma_engine, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %regs.i7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %77, i32 16
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #10, !srcloc !219
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  %80 = ptrtoint ptr %regs.i7.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i7.i, align 4
  %add.ptr10.i9.i = getelementptr i8, ptr %81, i32 24
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i9.i) #10, !srcloc !219
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #10
  %84 = ptrtoint ptr %regs.i7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i7.i, align 4
  %add.ptr15.i10.i = getelementptr i8, ptr %85, i32 20
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i10.i) #10, !srcloc !219
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  %rem.i.i11.i = and i32 %73, 31
  %shl.i.i12.i = shl nuw i32 1, %rem.i.i11.i
  %neg.i.i13.i = xor i32 %shl.i.i12.i, -1
  %or.i.i15.i = or i32 %87, %shl.i.i12.i
  %or.i15.i20.i = or i32 %79, %shl.i.i12.i
  %and.i21.i22.i = and i32 %83, %neg.i.i13.i
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i15.i20.i) #10
  %89 = ptrtoint ptr %regs.i7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i7.i, align 4
  %add.ptr30.i23.i = getelementptr i8, ptr %90, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i23.i, i32 %88) #10, !srcloc !220
  %91 = tail call i32 @llvm.bswap.i32(i32 %and.i21.i22.i) #10
  %92 = ptrtoint ptr %regs.i7.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i7.i, align 4
  %add.ptr32.i24.i = getelementptr i8, ptr %93, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i24.i, i32 %91) #10, !srcloc !220
  %94 = tail call i32 @llvm.bswap.i32(i32 %or.i.i15.i) #10
  %95 = ptrtoint ptr %regs.i7.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i7.i, align 4
  %add.ptr34.i25.i = getelementptr i8, ptr %96, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i25.i, i32 %94) #10, !srcloc !220
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %channel2.i.i, align 4
  %99 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sdma1.i.i, align 4
  %regs.i28.i = getelementptr inbounds %struct.sdma_engine, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %102, i32 16
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #10, !srcloc !219
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  %105 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr10.i30.i = getelementptr i8, ptr %106, i32 24
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i30.i) #10, !srcloc !219
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #10
  %109 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr15.i31.i = getelementptr i8, ptr %110, i32 20
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i31.i) #10, !srcloc !219
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #10
  %rem.i.i32.i = and i32 %98, 31
  %shl.i.i33.i = shl nuw i32 1, %rem.i.i32.i
  %neg.i.i34.i = xor i32 %shl.i.i33.i, -1
  %or.i.i36.i = or i32 %112, %shl.i.i33.i
  %and.i10.i40.i = and i32 %104, %neg.i.i34.i
  %and.i21.i43.i = and i32 %108, %neg.i.i34.i
  %113 = tail call i32 @llvm.bswap.i32(i32 %and.i10.i40.i) #10
  %114 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr30.i44.i = getelementptr i8, ptr %115, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i44.i, i32 %113) #10, !srcloc !220
  %116 = tail call i32 @llvm.bswap.i32(i32 %and.i21.i43.i) #10
  %117 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr32.i45.i = getelementptr i8, ptr %118, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i45.i, i32 %116) #10, !srcloc !220
  %119 = tail call i32 @llvm.bswap.i32(i32 %or.i.i36.i) #10
  %120 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr34.i46.i = getelementptr i8, ptr %121, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i46.i, i32 %119) #10, !srcloc !220
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb5.i, %sw.bb.i
  %122 = ptrtoint ptr %peripheral_type.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %peripheral_type.i, align 4
  tail call fastcc void @sdma_get_pc(ptr noundef %chan, i32 noundef %123) #10
  %124 = ptrtoint ptr %peripheral_type.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %peripheral_type.i, align 4
  %.off.i = add i32 %125, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.else22.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  %event_id1.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 8
  %126 = ptrtoint ptr %event_id1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %event_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i = icmp eq i32 %127, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then.i
  %128 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %125, label %if.then12.i.if.end19.i_crit_edge [
    i32 23, label %if.then12.i.if.then17.i_crit_edge
    i32 20, label %if.then12.i.if.then17.i_crit_edge1
  ]

if.then12.i.if.then17.i_crit_edge1:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then12.i.if.then17.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then12.i.if.end19.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.then12.i.if.then17.i_crit_edge, %if.then12.i.if.then17.i_crit_edge1
  %129 = ptrtoint ptr %sdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sdma1.i.i, align 4
  %watermark_level.i.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 18
  %131 = ptrtoint ptr %watermark_level.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %watermark_level.i.i, align 4
  %and.i.i = and i32 %132, 255
  %and3.i.i = lshr i32 %132, 16
  %shr.i.i = and i32 %and3.i.i, 255
  %event_id0.i.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 7
  %133 = ptrtoint ptr %event_id0.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %event_id0.i.i, align 4
  %rem.i48.i = and i32 %134, 31
  tail call void @_set_bit(i32 noundef %rem.i48.i, ptr noundef %arrayidx3.i) #10
  %135 = ptrtoint ptr %event_id1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %event_id1.i, align 4
  %rem4.i.i = and i32 %136, 31
  tail call void @_set_bit(i32 noundef %rem4.i.i, ptr noundef %event_mask.i) #10
  %137 = ptrtoint ptr %event_id0.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %event_id0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %138)
  %cmp.i.i = icmp ugt i32 %138, 31
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then17.i.if.end.i.i_crit_edge

if.then17.i.if.end.i.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %watermark_level.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %watermark_level.i.i, align 4
  %or.i49.i = or i32 %140, 268435456
  store i32 %or.i49.i, ptr %watermark_level.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then17.i.if.end.i.i_crit_edge
  %141 = ptrtoint ptr %event_id1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %event_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %142)
  %cmp10.i.i = icmp ugt i32 %142, 31
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end.i.i.if.end14.i.i_crit_edge

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %watermark_level.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %watermark_level.i.i, align 4
  %or13.i.i = or i32 %144, 536870912
  store i32 %or13.i.i, ptr %watermark_level.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %shr.i.i)
  %cmp15.i.i = icmp ugt i32 %and.i.i, %shr.i.i
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end14.i.i.if.end31.i.i_crit_edge

if.end14.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %watermark_level.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %watermark_level.i.i, align 4
  %and18.i.i = and i32 %146, -16711936
  %or20.i.i = or i32 %shr.i.i, %and18.i.i
  %shl.i50.i = shl nuw nsw i32 %and.i.i, 16
  %or22.i.i = or i32 %or20.i.i, %shl.i50.i
  store i32 %or22.i.i, ptr %watermark_level.i.i, align 4
  %147 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %event_mask.i, align 4
  %149 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx3.i, align 4
  store i32 %150, ptr %event_mask.i, align 4
  store i32 %148, ptr %arrayidx3.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end31.i.i_crit_edge
  %per_address2.i.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 16
  %151 = ptrtoint ptr %per_address2.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %per_address2.i.i, align 4
  %spba_start_addr.i.i = getelementptr inbounds %struct.sdma_engine, ptr %130, i32 0, i32 13
  %153 = ptrtoint ptr %spba_start_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %spba_start_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %154)
  %cmp32.not.i.i = icmp ult i32 %152, %154
  br i1 %cmp32.not.i.i, label %if.end31.i.i.if.end38.i.i_crit_edge, label %land.lhs.true.i.i

if.end31.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i.i

land.lhs.true.i.i:                                ; preds = %if.end31.i.i
  %spba_end_addr.i.i = getelementptr inbounds %struct.sdma_engine, ptr %130, i32 0, i32 14
  %155 = ptrtoint ptr %spba_end_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %spba_end_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %156)
  %cmp34.not.i.i = icmp ugt i32 %152, %156
  br i1 %cmp34.not.i.i, label %land.lhs.true.i.i.if.end38.i.i_crit_edge, label %if.then35.i.i

land.lhs.true.i.i.if.end38.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %watermark_level.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %watermark_level.i.i, align 4
  %or37.i.i = or i32 %158, 2048
  store i32 %or37.i.i, ptr %watermark_level.i.i, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then35.i.i, %land.lhs.true.i.i.if.end38.i.i_crit_edge, %if.end31.i.i.if.end38.i.i_crit_edge
  %per_address.i.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 15
  %159 = ptrtoint ptr %per_address.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %per_address.i.i, align 4
  %161 = ptrtoint ptr %spba_start_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %spba_start_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %162)
  %cmp40.not.i.i = icmp ult i32 %160, %162
  br i1 %cmp40.not.i.i, label %if.end38.i.i.sdma_set_watermarklevel_for_p2p.exit.i_crit_edge, label %land.lhs.true41.i.i

if.end38.i.i.sdma_set_watermarklevel_for_p2p.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_set_watermarklevel_for_p2p.exit.i

land.lhs.true41.i.i:                              ; preds = %if.end38.i.i
  %spba_end_addr43.i.i = getelementptr inbounds %struct.sdma_engine, ptr %130, i32 0, i32 14
  %163 = ptrtoint ptr %spba_end_addr43.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %spba_end_addr43.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %164)
  %cmp44.not.i.i = icmp ugt i32 %160, %164
  br i1 %cmp44.not.i.i, label %land.lhs.true41.i.i.sdma_set_watermarklevel_for_p2p.exit.i_crit_edge, label %if.then45.i.i

land.lhs.true41.i.i.sdma_set_watermarklevel_for_p2p.exit.i_crit_edge: ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_set_watermarklevel_for_p2p.exit.i

if.then45.i.i:                                    ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %watermark_level.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %watermark_level.i.i, align 4
  %or47.i.i = or i32 %166, 4096
  store i32 %or47.i.i, ptr %watermark_level.i.i, align 4
  br label %sdma_set_watermarklevel_for_p2p.exit.i

sdma_set_watermarklevel_for_p2p.exit.i:           ; preds = %if.then45.i.i, %land.lhs.true41.i.i.sdma_set_watermarklevel_for_p2p.exit.i_crit_edge, %if.end38.i.i.sdma_set_watermarklevel_for_p2p.exit.i_crit_edge
  %167 = ptrtoint ptr %watermark_level.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %watermark_level.i.i, align 4
  br label %if.end19.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %event_id0.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 7
  %169 = ptrtoint ptr %event_id0.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %event_id0.i, align 4
  %rem.i.i = and i32 %170, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %170, 5
  %add.ptr.i.i = getelementptr i32, ptr %event_mask.i, i32 %div2.i.i
  %171 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %add.ptr.i.i, align 4
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else.i, %sdma_set_watermarklevel_for_p2p.exit.i
  %.sink51.i = phi i32 [ -2147483648, %sdma_set_watermarklevel_for_p2p.exit.i ], [ %172, %if.else.i ]
  %.sink.i = phi i32 [ %168, %sdma_set_watermarklevel_for_p2p.exit.i ], [ %shl.i.i, %if.else.i ]
  %watermark_level.i.sink.i = phi ptr [ %watermark_level.i.i, %sdma_set_watermarklevel_for_p2p.exit.i ], [ %add.ptr.i.i, %if.else.i ]
  %or50.i.i = or i32 %.sink.i, %.sink51.i
  %173 = ptrtoint ptr %watermark_level.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or50.i.i, ptr %watermark_level.i.sink.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.then12.i.if.end19.i_crit_edge
  %per_address.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 15
  %174 = ptrtoint ptr %per_address.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %per_address.i, align 4
  %176 = ptrtoint ptr %shp_addr.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %shp_addr.i, align 4
  %per_address2.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 16
  %177 = ptrtoint ptr %per_address2.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %per_address2.i, align 4
  %179 = ptrtoint ptr %per_addr.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %per_addr.i, align 4
  br label %sdma_config_channel.exit

if.else22.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %watermark_level.i = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 18
  %180 = ptrtoint ptr %watermark_level.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %watermark_level.i, align 4
  br label %sdma_config_channel.exit

sdma_config_channel.exit:                         ; preds = %if.else22.i, %if.end19.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sdma_transfer_init(ptr noundef %sdmac, i32 noundef %direction, i32 noundef %bds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 2
  %0 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma, align 4
  %fw_loaded = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_loaded, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %is_ram_script = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 25
  %4 = ptrtoint ptr %is_ram_script to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_ram_script, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end8_crit_edge, label %do.body

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  %.b43 = load i1, ptr @sdma_transfer_init.__print_once, align 1
  br i1 %.b43, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sdma_transfer_init.__print_once, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.55) #14
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2304, i32 noundef 152) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %status = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 21
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %status, align 4
  %direction12 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 4
  %10 = ptrtoint ptr %direction12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %direction, ptr %direction12, align 4
  %flags = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %chn_count = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %chn_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %chn_count, align 4
  %chn_real_count = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %chn_real_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %chn_real_count, align 8
  %buf_tail = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf_tail to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buf_tail, align 4
  %buf_ptail = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %buf_ptail to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %buf_ptail, align 8
  %sdmac13 = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %sdmac13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sdmac, ptr %sdmac13, align 8
  %num_bd = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %num_bd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bds, ptr %num_bd, align 4
  %mul.i = mul i32 %bds, 12
  %18 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdma, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %bd_phys.i = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %21, i32 noundef %mul.i, ptr noundef %bd_phys.i, i32 noundef 2048, i32 noundef 0) #10
  %bd.i = getelementptr inbounds %struct.sdma_desc, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %bd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %bd.i, align 4
  %tobool.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not, label %if.end11.err_desc_out_crit_edge, label %if.end17

if.end11.err_desc_out_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_desc_out

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  br i1 %cmp, label %if.then18, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %channel4.i = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 3
  %23 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel4.i, align 4
  %25 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdma, align 4
  %regs.i = getelementptr inbounds %struct.sdma_engine, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !219
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %32, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !219
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #10, !srcloc !219
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %rem.i.i = and i32 %24, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %or.i.i = or i32 %38, %shl.i.i
  %or.i15.i = or i32 %30, %shl.i.i
  %and.i21.i = and i32 %34, %neg.i.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i15.i) #10
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %39) #10, !srcloc !220
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i21.i) #10
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %44, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %42) #10, !srcloc !220
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %47, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %45) #10, !srcloc !220
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end17.if.end20_crit_edge
  %call21 = tail call fastcc i32 @sdma_load_context(ptr noundef %sdmac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end20.err_desc_out_crit_edge

if.end20.err_desc_out_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_desc_out

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_desc_out:                                     ; preds = %if.end20.err_desc_out_crit_edge, %if.end11.err_desc_out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_desc_out, %if.end20.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end20.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ null, %do.body.cleanup_crit_edge ], [ null, %if.then3 ], [ null, %err_desc_out ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdma_load_context(ptr nocapture noundef readonly %sdmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma1 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 2
  %0 = ptrtoint ptr %sdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma1, align 4
  %channel2 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 3
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %context3 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context3, align 4
  %bd04 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %bd04 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd04, align 4
  %direction = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 4
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %9, label %if.else12 [
    i32 2, label %if.then
    i32 3, label %if.then7
    i32 0, label %if.then11
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pc_from_device = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 10
  br label %if.end14

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device_to_device = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 12
  br label %if.end14

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pc_to_pc = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 13
  br label %if.end14

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pc_to_device = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 11
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then11, %if.then7, %if.then
  %load_address.0.in = phi ptr [ %pc_from_device, %if.then ], [ %device_to_device, %if.then7 ], [ %pc_to_pc, %if.then11 ], [ %pc_to_device, %if.else12 ]
  %11 = ptrtoint ptr %load_address.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %load_address.0 = load i32, ptr %load_address.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_address.0)
  %cmp15 = icmp slt i32 %load_address.0, 0
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %do.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_load_context.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_load_context, %do.body23)) #10
          to label %if.then21 [label %do.body23], !srcloc !224

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_load_context.__UNIQUE_ID_ddebug238, ptr noundef %13, ptr noundef nonnull @.str.58, i32 noundef %load_address.0) #10
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_load_context.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_load_context, %do.body42)) #10
          to label %if.then37 [label %do.body42], !srcloc !224

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %watermark_level = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 18
  %16 = ptrtoint ptr %watermark_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %watermark_level, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_load_context.__UNIQUE_ID_ddebug239, ptr noundef %15, ptr noundef nonnull @.str.59, i32 noundef %17) #10
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_load_context.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_load_context, %do.body61)) #10
          to label %if.then56 [label %do.body61], !srcloc !224

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %shp_addr = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 19
  %20 = ptrtoint ptr %shp_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shp_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_load_context.__UNIQUE_ID_ddebug240, ptr noundef %19, ptr noundef nonnull @.str.60, i32 noundef %21) #10
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_load_context.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_load_context, %do.body80)) #10
          to label %if.then75 [label %do.body80], !srcloc !224

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %per_addr = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 20
  %24 = ptrtoint ptr %per_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %per_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_load_context.__UNIQUE_ID_ddebug241, ptr noundef %23, ptr noundef nonnull @.str.61, i32 noundef %25) #10
  br label %do.body80

do.body80:                                        ; preds = %if.then75, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_load_context.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_load_context, %do.body99)) #10
          to label %if.then94 [label %do.body99], !srcloc !224

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %event_mask = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 17
  %28 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %event_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_load_context.__UNIQUE_ID_ddebug242, ptr noundef %27, ptr noundef nonnull @.str.62, i32 noundef %29) #10
  br label %do.body99

do.body99:                                        ; preds = %if.then94, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_load_context.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sdma_load_context, %do.body121)) #10
          to label %if.then113 [label %do.body121], !srcloc !224

if.then113:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx116 = getelementptr %struct.sdma_channel, ptr %sdmac, i32 0, i32 17, i32 1
  %32 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx116, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_load_context.__UNIQUE_ID_ddebug243, ptr noundef %31, ptr noundef nonnull @.str.63, i32 noundef %33) #10
  br label %do.body121

do.body121:                                       ; preds = %if.then113, %do.body99
  %channel_0_lock = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 9
  %call125 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %channel_0_lock) #10
  %34 = getelementptr inbounds i8, ptr %5, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 120)
  %bf.value = zext i32 %load_address.0 to i64
  %bf.shl = shl i64 %bf.value, 50
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %bf.shl, ptr %5, align 1
  %event_mask130 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 17
  %arrayidx131 = getelementptr %struct.sdma_channel, ptr %sdmac, i32 0, i32 17, i32 1
  %37 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx131, align 4
  %gReg = getelementptr inbounds %struct.sdma_context_data, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %gReg to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %gReg, align 1
  %40 = ptrtoint ptr %event_mask130 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %event_mask130, align 4
  %arrayidx136 = getelementptr %struct.sdma_context_data, ptr %5, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %arrayidx136, align 1
  %per_addr137 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 20
  %43 = ptrtoint ptr %per_addr137 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %per_addr137, align 4
  %arrayidx139 = getelementptr %struct.sdma_context_data, ptr %5, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %arrayidx139, align 1
  %shp_addr140 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 19
  %46 = ptrtoint ptr %shp_addr140 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %shp_addr140, align 4
  %arrayidx142 = getelementptr %struct.sdma_context_data, ptr %5, i32 0, i32 1, i32 6
  %48 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %arrayidx142, align 1
  %watermark_level143 = getelementptr inbounds %struct.sdma_channel, ptr %sdmac, i32 0, i32 18
  %49 = ptrtoint ptr %watermark_level143 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %watermark_level143, align 4
  %arrayidx145 = getelementptr %struct.sdma_context_data, ptr %5, i32 0, i32 1, i32 7
  %51 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %arrayidx145, align 1
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 2130689, ptr %7, align 1
  %context_phys = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %context_phys to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %context_phys, align 4
  %buffer_addr = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %7, i32 0, i32 1
  %55 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %buffer_addr, align 1
  %mul = shl i32 %3, 5
  %add = add i32 %mul, 2048
  %ext_buffer_addr = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %7, i32 0, i32 2
  %56 = ptrtoint ptr %ext_buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %add, ptr %ext_buffer_addr, align 1
  %call157 = tail call fastcc i32 @sdma_run_channel0(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %channel_0_lock, i32 noundef %call125) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body121, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call157, %do.body121 ], [ %load_address.0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdma_run_channel0(ptr nocapture noundef readonly %sdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !220
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 500000
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr54 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #10, !srcloc !219
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not56 = icmp eq i32 %5, 0
  br i1 %tobool.not56, label %entry.if.end25_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call4 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call4, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #10
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %10 = and i32 %9, 16777216
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %cond.false.if.end25_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

cond.false.if.end25_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !219
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %for.end.if.end25_crit_edge, label %do.end

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdma, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.64) #14
  br label %if.end25

if.end25:                                         ; preds = %do.end, %for.end.if.end25_crit_edge, %cond.false.if.end25_crit_edge, %entry.if.end25_crit_edge
  %tobool22.not59 = phi i32 [ -110, %do.end ], [ 0, %for.end.if.end25_crit_edge ], [ 0, %entry.if.end25_crit_edge ], [ 0, %cond.false.if.end25_crit_edge ]
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr28 = getelementptr i8, ptr %18, i32 56
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !219
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %and32 = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %if.then34, label %if.end25.if.end37_crit_edge

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %20, 3
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %21) #10, !srcloc !220
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end25.if.end37_crit_edge
  ret i32 %tobool22.not59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sdma_filter_fn(ptr noundef %chan, ptr nocapture noundef readonly %fn_param) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(9) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %imx_dma_is_general_purpose.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

imx_dma_is_general_purpose.exit:                  ; preds = %entry
  %call5.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(8) @.str.73) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i.not = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i.not, label %imx_dma_is_general_purpose.exit.if.end_crit_edge, label %imx_dma_is_general_purpose.exit.cleanup_crit_edge

imx_dma_is_general_purpose.exit.cleanup_crit_edge: ; preds = %imx_dma_is_general_purpose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

imx_dma_is_general_purpose.exit.if.end_crit_edge: ; preds = %imx_dma_is_general_purpose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %imx_dma_is_general_purpose.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data2 = getelementptr inbounds %struct.sdma_channel, ptr %chan, i32 0, i32 22
  %8 = call ptr @memcpy(ptr %data2, ptr %fn_param, i32 16)
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %9 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data2, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %imx_dma_is_general_purpose.exit.cleanup_crit_edge
  %tobool.not10 = phi i1 [ false, %imx_dma_is_general_purpose.exit.cleanup_crit_edge ], [ true, %if.end ]
  ret i1 %tobool.not10
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_load_firmware(ptr noundef %fw, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.74) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %3)
  %cmp = icmp ult i32 %3, 28
  br i1 %cmp, label %if.end.err_firmware_crit_edge, label %if.end2

if.end.err_firmware_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_firmware

if.end2:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095582803, i32 %7)
  %cmp3.not = icmp eq i32 %7, 1095582803
  br i1 %cmp3.not, label %if.end5, label %if.end2.err_firmware_crit_edge

if.end2.err_firmware_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_firmware

if.end5:                                          ; preds = %if.end2
  %ram_code_start = getelementptr inbounds %struct.sdma_firmware_header, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %ram_code_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ram_code_start, align 4
  %ram_code_size = getelementptr inbounds %struct.sdma_firmware_header, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %ram_code_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ram_code_size, align 4
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp7 = icmp ugt i32 %add, %3
  br i1 %cmp7, label %if.end5.err_firmware_crit_edge, label %if.end9

if.end5.err_firmware_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_firmware

if.end9:                                          ; preds = %if.end5
  %version_major = getelementptr inbounds %struct.sdma_firmware_header, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %version_major to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version_major, align 4
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 4
  br i1 %14, label %switch.lookup, label %do.end18

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.78) #14
  br label %err_firmware

switch.lookup:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sdma_load_firmware, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %script_number15 = getelementptr inbounds %struct.sdma_engine, ptr %context, i32 0, i32 10
  %18 = ptrtoint ptr %script_number15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.load, ptr %script_number15, align 4
  %script_addrs_start = getelementptr inbounds %struct.sdma_firmware_header, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %script_addrs_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %script_addrs_start, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %20
  %21 = ptrtoint ptr %ram_code_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ram_code_start, align 4
  %add.ptr21 = getelementptr i8, ptr %5, i32 %22
  %clk_ipg = getelementptr inbounds %struct.sdma_engine, ptr %context, i32 0, i32 7
  %23 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_ipg, align 4
  %call = tail call i32 @clk_enable(ptr noundef %24) #10
  %clk_ahb = getelementptr inbounds %struct.sdma_engine, ptr %context, i32 0, i32 8
  %25 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk_ahb, align 4
  %call22 = tail call i32 @clk_enable(ptr noundef %26) #10
  %27 = ptrtoint ptr %ram_code_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ram_code_size, align 4
  %ram_code_start_addr = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %add.ptr, i32 0, i32 34
  %29 = ptrtoint ptr %ram_code_start_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ram_code_start_addr, align 4
  tail call fastcc void @sdma_load_script(ptr noundef %context, ptr noundef %add.ptr21, i32 noundef %28, i32 noundef %30)
  %31 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %32) #10
  %33 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %34) #10
  tail call fastcc void @sdma_add_scripts(ptr noundef %context, ptr noundef %add.ptr)
  %fw_loaded = getelementptr inbounds %struct.sdma_engine, ptr %context, i32 0, i32 19
  %35 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %fw_loaded, align 1
  %36 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context, align 4
  %38 = ptrtoint ptr %version_major to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %version_major, align 4
  %version_minor = getelementptr inbounds %struct.sdma_firmware_header, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %version_minor to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version_minor, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.81, i32 noundef %39, i32 noundef %41) #14
  br label %err_firmware

err_firmware:                                     ; preds = %switch.lookup, %do.end18, %if.end5.err_firmware_crit_edge, %if.end2.err_firmware_crit_edge, %if.end.err_firmware_crit_edge
  tail call void @release_firmware(ptr noundef nonnull %fw) #10
  br label %cleanup

cleanup:                                          ; preds = %err_firmware, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_load_script(ptr noundef %sdma, ptr nocapture noundef readonly %buf, i32 noundef %size, i32 noundef %address) unnamed_addr #2 align 64 {
entry:
  %buf_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bd01 = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 17
  %0 = ptrtoint ptr %bd01 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd01, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_phys) #10
  %2 = ptrtoint ptr %buf_phys to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf_phys, align 4, !annotation !216
  %3 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdma, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %size, ptr noundef nonnull %buf_phys, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channel_0_lock = getelementptr inbounds %struct.sdma_engine, ptr %sdma, i32 0, i32 9
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %channel_0_lock) #10
  %div = sdiv i32 %size, 2
  %bf.shl = shl i32 %div, 16
  %bf.set14 = or i32 %bf.shl, 33540
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %bf.set14, ptr %1, align 1
  %6 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_phys, align 4
  %buffer_addr = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %buffer_addr, align 1
  %ext_buffer_addr = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ext_buffer_addr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %address, ptr %ext_buffer_addr, align 1
  %10 = call ptr @memcpy(ptr %call.i, ptr %buf, i32 %size)
  %call15 = call fastcc i32 @sdma_run_channel0(ptr noundef %sdma)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %channel_0_lock, i32 noundef %call4) #10
  %11 = ptrtoint ptr %sdma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdma, align 4
  %13 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_phys, align 4
  call void @dma_free_attrs(ptr noundef %12, i32 noundef %size, ptr noundef nonnull %call.i, i32 noundef %14, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_phys) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !165, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @__initcall__kmod_imx_sdma__254_2260_sdma_driver_init6, !1, !"__initcall__kmod_imx_sdma__254_2260_sdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/imx-sdma.c", i32 2260, i32 1}
!2 = !{ptr @__exitcall_sdma_driver_exit, !1, !"__exitcall_sdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author255, !4, !"__UNIQUE_ID_author255", i1 false, i1 false}
!4 = !{!"../drivers/dma/imx-sdma.c", i32 2262, i32 1}
!5 = !{ptr @__UNIQUE_ID_description256, !6, !"__UNIQUE_ID_description256", i1 false, i1 false}
!6 = !{!"../drivers/dma/imx-sdma.c", i32 2263, i32 1}
!7 = !{ptr @__UNIQUE_ID_firmware257, !8, !"__UNIQUE_ID_firmware257", i1 false, i1 false}
!8 = !{!"../drivers/dma/imx-sdma.c", i32 2265, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware258, !10, !"__UNIQUE_ID_firmware258", i1 false, i1 false}
!10 = !{!"../drivers/dma/imx-sdma.c", i32 2268, i32 1}
!11 = !{ptr @__UNIQUE_ID_file259, !12, !"__UNIQUE_ID_file259", i1 false, i1 false}
!12 = !{!"../drivers/dma/imx-sdma.c", i32 2270, i32 1}
!13 = !{ptr @__UNIQUE_ID_license260, !12, !"__UNIQUE_ID_license260", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/imx-sdma.c", i32 2253, i32 11}
!16 = !{ptr @sdma_driver, !17, !"sdma_driver", i1 false, i1 false}
!17 = !{!"../drivers/dma/imx-sdma.c", i32 2251, i32 31}
!18 = !{ptr @sdma_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/dma/imx-sdma.c", i32 2074, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/imx-sdma.c", i32 2088, i32 43}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/imx-sdma.c", i32 2092, i32 43}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/imx-sdma.c", i32 2104, i32 63}
!27 = !{ptr @sdma_probe.__key.5, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/dma/imx-sdma.c", i32 2136, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/imx-sdma.c", i32 2181, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sdma_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @sdma_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/imx-sdma.c", i32 2188, i32 4}
!40 = !{ptr @sdma_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sdma_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/imx-sdma.c", i32 2192, i32 50}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/imx-sdma.c", i32 2206, i32 36}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/imx-sdma.c", i32 2209, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sdma_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sdma_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/imx-sdma.c", i32 2213, i32 4}
!53 = !{ptr @sdma_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sdma_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !56, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/imx-sdma.c", i32 2009, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sdma_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @sdma_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/imx-sdma.c", i32 1865, i32 52}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/imx-sdma.c", i32 1878, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sdma_event_remap.__UNIQUE_ID_ddebug253, !69, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/imx-sdma.c", i32 1881, i32 3}
!74 = !{ptr @sdma_event_remap._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sdma_event_remap._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/imx-sdma.c", i32 1889, i32 3}
!78 = !{ptr @sdma_event_remap._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sdma_event_remap._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/imx-sdma.c", i32 1897, i32 4}
!82 = !{ptr @sdma_event_remap._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sdma_event_remap._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @sdma_event_remap._entry.40, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/dma/imx-sdma.c", i32 1904, i32 4}
!86 = !{ptr @sdma_event_remap._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @sdma_event_remap._entry.42, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/dma/imx-sdma.c", i32 1911, i32 4}
!89 = !{ptr @sdma_event_remap._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/imx-sdma.c", i32 1772, i32 3}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sdma_add_scripts._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @sdma_add_scripts._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/imx-sdma.c", i32 1329, i32 3}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @sdma_alloc_chan_resources.__UNIQUE_ID_ddebug244, !96, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/imx-sdma.c", i32 1515, i32 2}
!101 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sdma_prep_slave_sg.__UNIQUE_ID_ddebug249, !100, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/imx-sdma.c", i32 1527, i32 4}
!105 = !{ptr @sdma_prep_slave_sg._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @sdma_prep_slave_sg._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/imx-sdma.c", i32 1564, i32 3}
!109 = !{ptr @sdma_prep_slave_sg.__UNIQUE_ID_ddebug250, !108, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!110 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__print_once", i1 false, i1 false}
!114 = !{!"../drivers/dma/imx-sdma.c", i32 1404, i32 3}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sdma_transfer_init._entry, !114, !"_entry", i1 false, i1 false}
!118 = !{ptr @sdma_transfer_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/imx-sdma.c", i32 1057, i32 2}
!121 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @sdma_load_context.__UNIQUE_ID_ddebug238, !120, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma/imx-sdma.c", i32 1058, i32 2}
!125 = !{ptr @sdma_load_context.__UNIQUE_ID_ddebug239, !124, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/imx-sdma.c", i32 1059, i32 2}
!128 = !{ptr @sdma_load_context.__UNIQUE_ID_ddebug240, !127, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/imx-sdma.c", i32 1060, i32 2}
!131 = !{ptr @sdma_load_context.__UNIQUE_ID_ddebug241, !130, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/imx-sdma.c", i32 1061, i32 2}
!134 = !{ptr @sdma_load_context.__UNIQUE_ID_ddebug242, !133, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/dma/imx-sdma.c", i32 1062, i32 2}
!137 = !{ptr @sdma_load_context.__UNIQUE_ID_ddebug243, !136, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/imx-sdma.c", i32 722, i32 3}
!140 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @sdma_run_channel0._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @sdma_run_channel0._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/dma/imx-sdma.c", i32 1593, i32 2}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug251, !144, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/dma/imx-sdma.c", i32 1606, i32 3}
!149 = !{ptr @sdma_prep_dma_cyclic._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @sdma_prep_dma_cyclic._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/imx-sdma.c", i32 1630, i32 3}
!153 = !{ptr @sdma_prep_dma_cyclic.__UNIQUE_ID_ddebug252, !152, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/dma/imx-sdma.c", i32 1456, i32 2}
!156 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @sdma_prep_memcpy.__UNIQUE_ID_ddebug245, !155, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/dma/imx-sdma.c", i32 1486, i32 3}
!160 = !{ptr @sdma_prep_memcpy.__UNIQUE_ID_ddebug248, !159, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/platform_data/dma-imx.h", i32 65, i32 44}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/dma/imx-sdma.c", i32 1804, i32 3}
!165 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @sdma_load_firmware._entry, !164, !"_entry", i1 false, i1 false}
!168 = !{ptr @sdma_load_firmware._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/dma/imx-sdma.c", i32 1832, i32 3}
!171 = !{ptr @sdma_load_firmware._entry.77, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @sdma_load_firmware._entry_ptr.79, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/dma/imx-sdma.c", i32 1852, i32 2}
!175 = !{ptr @sdma_load_firmware._entry.80, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @sdma_load_firmware._entry_ptr.82, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @sdma_dt_ids, !178, !"sdma_dt_ids", i1 false, i1 false}
!178 = !{!"../drivers/dma/imx-sdma.c", i32 643, i32 34}
!179 = !{ptr @sdma_imx6q, !180, !"sdma_imx6q", i1 false, i1 false}
!180 = !{!"../drivers/dma/imx-sdma.c", i32 605, i32 32}
!181 = !{ptr @sdma_script_imx6q, !182, !"sdma_script_imx6q", i1 false, i1 false}
!182 = !{!"../drivers/dma/imx-sdma.c", i32 592, i32 39}
!183 = !{ptr @sdma_imx53, !184, !"sdma_imx53", i1 false, i1 false}
!184 = !{!"../drivers/dma/imx-sdma.c", i32 586, i32 32}
!185 = !{ptr @sdma_script_imx53, !186, !"sdma_script_imx53", i1 false, i1 false}
!186 = !{!"../drivers/dma/imx-sdma.c", i32 572, i32 39}
!187 = !{ptr @sdma_imx51, !188, !"sdma_imx51", i1 false, i1 false}
!188 = !{!"../drivers/dma/imx-sdma.c", i32 566, i32 32}
!189 = !{ptr @sdma_script_imx51, !190, !"sdma_script_imx51", i1 false, i1 false}
!190 = !{!"../drivers/dma/imx-sdma.c", i32 553, i32 39}
!191 = !{ptr @sdma_imx35, !192, !"sdma_imx35", i1 false, i1 false}
!192 = !{!"../drivers/dma/imx-sdma.c", i32 548, i32 32}
!193 = !{ptr @sdma_imx31, !194, !"sdma_imx31", i1 false, i1 false}
!194 = !{!"../drivers/dma/imx-sdma.c", i32 521, i32 32}
!195 = !{ptr @sdma_imx25, !196, !"sdma_imx25", i1 false, i1 false}
!196 = !{!"../drivers/dma/imx-sdma.c", i32 542, i32 32}
!197 = !{ptr @sdma_script_imx25, !198, !"sdma_script_imx25", i1 false, i1 false}
!198 = !{!"../drivers/dma/imx-sdma.c", i32 526, i32 39}
!199 = !{ptr @sdma_imx7d, !200, !"sdma_imx7d", i1 false, i1 false}
!200 = !{!"../drivers/dma/imx-sdma.c", i32 630, i32 32}
!201 = !{ptr @sdma_script_imx7d, !202, !"sdma_script_imx7d", i1 false, i1 false}
!202 = !{!"../drivers/dma/imx-sdma.c", i32 618, i32 39}
!203 = !{ptr @sdma_imx6ul, !204, !"sdma_imx6ul", i1 false, i1 false}
!204 = !{!"../drivers/dma/imx-sdma.c", i32 611, i32 32}
!205 = !{ptr @sdma_imx8mq, !206, !"sdma_imx8mq", i1 false, i1 false}
!206 = !{!"../drivers/dma/imx-sdma.c", i32 636, i32 32}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{!"auto-init"}
!217 = distinct !{!217, !218}
!218 = !{!"llvm.loop.peeled.count", i32 1}
!219 = !{i64 3042969}
!220 = !{i64 3042551}
!221 = !{i32 0, i32 33}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{i64 2154541418, i64 2154541905, i64 2154541455, i64 2154541511, i64 2154541545, i64 2154541569, i64 2154541610, i64 2154541631, i64 2154541659, i64 2154541693}
!224 = !{i64 2148758161, i64 2148758166, i64 2148758179, i64 2148758223, i64 2148758257, i64 2148758278}
!225 = !{i64 2154601081}
!226 = !{i8 0, i8 2}
!227 = !{i64 2154542918}
!228 = !{i64 2154606163}
