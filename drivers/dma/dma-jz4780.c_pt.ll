; ModuleID = '/llk/IR_all_yes/drivers/dma/dma-jz4780.c_pt.bc'
source_filename = "../drivers/dma/dma-jz4780.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.jz4780_dma_soc_data = type { i32, i32, i32 }
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
%struct.jz4780_dma_dev = type { %struct.dma_device, ptr, ptr, ptr, i32, ptr, i32, [0 x %struct.jz4780_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.jz4780_dma_chan = type { %struct.virt_dma_chan, i32, ptr, i32, i32, i32, %struct.dma_slave_config, ptr, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.jz4780_dma_desc = type { %struct.virt_dma_desc, ptr, i32, i32, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.jz4780_dma_hwdesc = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.jz4780_dma_filter_data = type { i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_dma_jz4780__236_1122_jz4780_dma_init4 = internal global ptr @jz4780_dma_init, section ".initcall4.init", align 4
@jz4780_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jz4780_dma_probe, ptr @jz4780_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4780_dma_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4780_dma_exit = internal global ptr @jz4780_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [53 x i8] c"dma_jz4780.author=Alex Smith <alex@alex-smith.me.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [60 x i8] c"dma_jz4780.description=Ingenic JZ4780 DMA controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [39 x i8] c"dma_jz4780.file=drivers/dma/dma-jz4780\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"dma_jz4780.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jz4780-dma\00", [21 x i8] zeroinitializer }, align 32
@jz4780_dma_dt_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_dma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_dma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_dma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-mdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_mdma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-bdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_bdma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760b-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760b_dma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760b-mdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760b_mdma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760b-bdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760b_bdma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4770_dma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_dma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_dma_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1830-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1830_dma_soc_data }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"This driver must be probed from devicetree\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jz4780_dma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/dma/dma-jz4780.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry_ptr = internal global ptr @jz4780_dma_probe._entry, section ".printk_index", align 4
@jz4780_dma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry_ptr.8 = internal global ptr @jz4780_dma_probe._entry.6, section ".printk_index", align 4
@jz4780_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 901, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry_ptr.11 = internal global ptr @jz4780_dma_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ingenic,reserved-channels\00", [38 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ %u!\0A\00", [37 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry_ptr.15 = internal global ptr @jz4780_dma_probe._entry.13, section ".printk_index", align 4
@jz4780_dma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 980, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry_ptr.18 = internal global ptr @jz4780_dma_probe._entry.16, section ".printk_index", align 4
@jz4780_dma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register OF DMA controller\0A\00", [58 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry_ptr.21 = internal global ptr @jz4780_dma_probe._entry.19, section ".printk_index", align 4
@jz4780_dma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 992, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"JZ4780 DMA controller initialised\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@jz4780_dma_probe._entry_ptr.25 = internal global ptr @jz4780_dma_probe._entry.22, section ".printk_index", align 4
@jz4780_dma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate descriptor pool\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"jz4780_dma_alloc_chan_resources\00", [32 x i8] zeroinitializer }, align 32
@jz4780_dma_alloc_chan_resources._entry_ptr = internal global ptr @jz4780_dma_alloc_chan_resources._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jz4780_dma_chan_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 691, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"address error (DCS=0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jz4780_dma_chan_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@jz4780_dma_chan_irq._entry_ptr = internal global ptr @jz4780_dma_chan_irq._entry, section ".printk_index", align 4
@jz4780_dma_chan_irq._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 696, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"channel halt (DCS=0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@jz4780_dma_chan_irq._entry_ptr.33 = internal global ptr @jz4780_dma_chan_irq._entry.31, section ".printk_index", align 4
@jz4780_dma_chan_irq._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.3, i32 725, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"channel IRQ with no active transfer\0A\00", [59 x i8] zeroinitializer }, align 32
@jz4780_dma_chan_irq._entry_ptr.36 = internal global ptr @jz4780_dma_chan_irq._entry.34, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma_jz4780\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@jz4780_of_dma_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device requested non-existent channel %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jz4780_of_dma_xlate\00", [44 x i8] zeroinitializer }, align 32
@jz4780_of_dma_xlate._entry_ptr = internal global ptr @jz4780_of_dma_xlate._entry, section ".printk_index", align 4
@jz4780_of_dma_xlate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"device requested unreserved channel %u\0A\00", [56 x i8] zeroinitializer }, align 32
@jz4780_of_dma_xlate._entry_ptr.45 = internal global ptr @jz4780_of_dma_xlate._entry.43, section ".printk_index", align 4
@jz4740_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 6, i32 5, i32 16 }, [20 x i8] zeroinitializer }, align 32
@jz4725b_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 6, i32 5, i32 28 }, [20 x i8] zeroinitializer }, align 32
@jz4760_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 5, i32 6, i32 12 }, [20 x i8] zeroinitializer }, align 32
@jz4760_mdma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 2, i32 6, i32 12 }, [20 x i8] zeroinitializer }, align 32
@jz4760_bdma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 3, i32 6, i32 12 }, [20 x i8] zeroinitializer }, align 32
@jz4760b_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 5, i32 6, i32 4 }, [20 x i8] zeroinitializer }, align 32
@jz4760b_mdma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 2, i32 6, i32 4 }, [20 x i8] zeroinitializer }, align 32
@jz4760b_bdma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 3, i32 6, i32 4 }, [20 x i8] zeroinitializer }, align 32
@jz4770_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 6, i32 6, i32 4 }, [20 x i8] zeroinitializer }, align 32
@jz4780_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 32, i32 7, i32 3 }, [20 x i8] zeroinitializer }, align 32
@x1000_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 8, i32 7, i32 2 }, [20 x i8] zeroinitializer }, align 32
@x1830_dma_soc_data = internal constant { %struct.jz4780_dma_soc_data, [20 x i8] } { %struct.jz4780_dma_soc_data { i32 32, i32 7, i32 2 }, [20 x i8] zeroinitializer }, align 32
@switch.table.jz4780_dma_prep_slave_sg = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 256, i32 512, i32 0, i32 1536, i32 768, i32 1024, i32 1280], [36 x i8] zeroinitializer }, align 32
@switch.table.jz4780_dma_prep_dma_cyclic = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 256, i32 512, i32 0, i32 1536, i32 768, i32 1024, i32 1280], [36 x i8] zeroinitializer }, align 32
@switch.table.jz4780_dma_prep_dma_memcpy = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 12583170, i32 12583426, i32 12582914, i32 12584450, i32 12583682, i32 12583938, i32 12584194], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"jz4780_dma_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1109, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1113, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"jz4780_dma_dt_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1092, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 862, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 895, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 901, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 909, i32 43 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 974, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 980, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 988, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 992, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 768, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 690, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 695, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 724, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 101, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 826, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 834, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"jz4740_dma_soc_data\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1019, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"jz4725b_dma_soc_data\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1025, i32 41 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"jz4760_dma_soc_data\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1032, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant [21 x i8] c"jz4760_mdma_soc_data\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1038, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"jz4760_bdma_soc_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1044, i32 41 }
@___asan_gen_.192 = private unnamed_addr constant [21 x i8] c"jz4760b_dma_soc_data\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1050, i32 41 }
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"jz4760b_mdma_soc_data\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1056, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"jz4760b_bdma_soc_data\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1062, i32 41 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"jz4770_dma_soc_data\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1068, i32 41 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"jz4780_dma_soc_data\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1074, i32 41 }
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c"x1000_dma_soc_data\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1080, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant [19 x i8] c"x1830_dma_soc_data\00", align 1
@___asan_gen_.211 = private constant [28 x i8] c"../drivers/dma/dma-jz4780.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1086, i32 41 }
@___asan_gen_.213 = private unnamed_addr constant [38 x i8] c"switch.table.jz4780_dma_prep_slave_sg\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [40 x i8] c"switch.table.jz4780_dma_prep_dma_cyclic\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [40 x i8] c"switch.table.jz4780_dma_prep_dma_memcpy\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_jz4780_dma_exit, ptr @__initcall__kmod_dma_jz4780__236_1122_jz4780_dma_init4, ptr @jz4780_dma_alloc_chan_resources._entry, ptr @jz4780_dma_alloc_chan_resources._entry_ptr, ptr @jz4780_dma_chan_irq._entry, ptr @jz4780_dma_chan_irq._entry.31, ptr @jz4780_dma_chan_irq._entry.34, ptr @jz4780_dma_chan_irq._entry_ptr, ptr @jz4780_dma_chan_irq._entry_ptr.33, ptr @jz4780_dma_chan_irq._entry_ptr.36, ptr @jz4780_dma_exit, ptr @jz4780_dma_probe._entry, ptr @jz4780_dma_probe._entry.13, ptr @jz4780_dma_probe._entry.16, ptr @jz4780_dma_probe._entry.19, ptr @jz4780_dma_probe._entry.22, ptr @jz4780_dma_probe._entry.6, ptr @jz4780_dma_probe._entry.9, ptr @jz4780_dma_probe._entry_ptr, ptr @jz4780_dma_probe._entry_ptr.11, ptr @jz4780_dma_probe._entry_ptr.15, ptr @jz4780_dma_probe._entry_ptr.18, ptr @jz4780_dma_probe._entry_ptr.21, ptr @jz4780_dma_probe._entry_ptr.25, ptr @jz4780_dma_probe._entry_ptr.8, ptr @jz4780_of_dma_xlate._entry, ptr @jz4780_of_dma_xlate._entry.43, ptr @jz4780_of_dma_xlate._entry_ptr, ptr @jz4780_of_dma_xlate._entry_ptr.45, ptr @jz4780_dma_driver, ptr @.str, ptr @jz4780_dma_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @jz4740_dma_soc_data, ptr @jz4725b_dma_soc_data, ptr @jz4760_dma_soc_data, ptr @jz4760_mdma_soc_data, ptr @jz4760_bdma_soc_data, ptr @jz4760b_dma_soc_data, ptr @jz4760b_mdma_soc_data, ptr @jz4760b_bdma_soc_data, ptr @jz4770_dma_soc_data, ptr @jz4780_dma_soc_data, ptr @x1000_dma_soc_data, ptr @x1830_dma_soc_data, ptr @switch.table.jz4780_dma_prep_slave_sg, ptr @switch.table.jz4780_dma_prep_dma_cyclic, ptr @switch.table.jz4780_dma_prep_dma_memcpy], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_dt_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_chan_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_chan_irq._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_chan_irq._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_of_dma_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_of_dma_xlate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_mdma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_bdma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760b_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760b_mdma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760b_bdma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1830_dma_soc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jz4780_dma_prep_slave_sg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jz4780_dma_prep_dma_cyclic to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jz4780_dma_prep_dma_memcpy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_dma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4780_dma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_dma_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4780_dma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #9
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 256) #9
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 388) #9
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %soc_data10 = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %soc_data10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %soc_data10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %chn_base = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %chn_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %chn_base, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call18) #9
  %ctrl_base = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %ctrl_base, align 4
  %cmp.i191 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then24, label %if.then20.if.end37_crit_edge

if.then20.if.end37_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %flags = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.end35, label %if.then29

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %chn_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chn_base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4096
  %ctrl_base31 = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %ctrl_base31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %ctrl_base31, align 4
  br label %if.end37

do.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end37:                                         ; preds = %if.then29, %if.then20.if.end37_crit_edge
  %call38 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call38, ptr %clk, align 4
  %cmp.i192 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %call.i193 = tail call i32 @clk_prepare(ptr noundef %call38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool.not.i = icmp eq i32 %call.i193, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.clk_prepare_enable.exit_crit_edge

if.end47.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end47
  %call1.i = tail call i32 @clk_enable(ptr noundef %call38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call38) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end47.clk_prepare_enable.exit_crit_edge
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %chan_reserved = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 6
  %call51 = tail call i32 @of_property_read_u32_index(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %chan_reserved) #9
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  %dev54 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %24 = ptrtoint ptr %dev54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev1, ptr %dev54, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %copy_align, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %26 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @jz4780_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %27 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @jz4780_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %28 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @jz4780_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %29 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @jz4780_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %30 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @jz4780_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %31 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @jz4780_dma_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %32 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @jz4780_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %33 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @jz4780_dma_synchronize, ptr %device_synchronize, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %34 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @jz4780_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %35 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @jz4780_dma_issue_pending, ptr %device_issue_pending, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %36 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 22, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %37 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 22, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %38 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %39 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %residue_granularity, align 4
  %max_sg_burst = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 24
  %40 = ptrtoint ptr %max_sg_burst to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 256, ptr %max_sg_burst, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %ctrl_base.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 16777352) #9, !srcloc !120
  %flags55 = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %call, i32 0, i32 2
  %43 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags55, align 4
  %and56 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %clk_prepare_enable.exit.if.end59_crit_edge, label %if.then58

clk_prepare_enable.exit.if.end59_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then58:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !120
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %clk_prepare_enable.exit.if.end59_crit_edge
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %channels, ptr %prev.i, align 4
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp206.not = icmp eq i32 %50, 0
  br i1 %cmp206.not, label %if.end59.for.end_crit_edge, label %if.end59.for.body_crit_edge

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  br label %for.body

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end59.for.body_crit_edge
  %i.0207 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end59.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 7, i32 %i.0207
  %id = getelementptr %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 7, i32 %i.0207, i32 1
  %51 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %i.0207, ptr %id, align 4
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %call.i) #9
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %52 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @jz4780_dma_desc_free, ptr %desc_free, align 4
  %inc = add nuw i32 %i.0207, 1
  %53 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end59.for.end_crit_edge
  %55 = ptrtoint ptr %soc_data10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc_data10, align 4
  %flags.i = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i195 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i195, label %for.end.jz4780_dma_chan_enable.exit_crit_edge, label %if.then.i

for.end.jz4780_dma_chan_enable.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_chan_enable.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 20, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #9, !srcloc !120
  br label %jz4780_dma_chan_enable.exit

jz4780_dma_chan_enable.exit:                      ; preds = %if.then.i, %for.end.jz4780_dma_chan_enable.exit_crit_edge
  %61 = ptrtoint ptr %soc_data10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %soc_data10, align 4
  %flags.i197 = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %flags.i197 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i197, align 4
  %65 = and i32 %64, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %if.then.i200, label %jz4780_dma_chan_enable.exit.jz4780_dma_chan_disable.exit_crit_edge

jz4780_dma_chan_enable.exit.jz4780_dma_chan_disable.exit_crit_edge: ; preds = %jz4780_dma_chan_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_chan_disable.exit

if.then.i200:                                     ; preds = %jz4780_dma_chan_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i199 = getelementptr i8, ptr %68, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i199, i32 33554432) #9, !srcloc !120
  br label %jz4780_dma_chan_disable.exit

jz4780_dma_chan_disable.exit:                     ; preds = %if.then.i200, %jz4780_dma_chan_enable.exit.jz4780_dma_chan_disable.exit_crit_edge
  %call62 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %jz4780_dma_chan_disable.exit.err_disable_clk_crit_edge, label %if.end65

jz4780_dma_chan_disable.exit.err_disable_clk_crit_edge: ; preds = %jz4780_dma_chan_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_clk

if.end65:                                         ; preds = %jz4780_dma_chan_disable.exit
  %irq = getelementptr inbounds %struct.jz4780_dma_dev, ptr %call.i, i32 0, i32 4
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call62, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i202 = icmp eq ptr %71, null
  br i1 %tobool.not.i202, label %if.end.i203, label %if.end65.dev_name.exit_crit_edge

if.end65.dev_name.exit_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i203:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i203, %if.end65.dev_name.exit_crit_edge
  %retval.0.i204 = phi ptr [ %73, %if.end.i203 ], [ %71, %if.end65.dev_name.exit_crit_edge ]
  %call.i205 = tail call i32 @request_threaded_irq(i32 noundef %call62, ptr noundef nonnull @jz4780_dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i204, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool69.not = icmp eq i32 %call.i205, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %75) #12
  br label %err_disable_clk

if.end75:                                         ; preds = %dev_name.exit
  %call76 = tail call i32 @dmaenginem_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end82, label %if.end75.err_free_irq_crit_edge

if.end75.err_free_irq_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_irq

if.end82:                                         ; preds = %if.end75
  %76 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %of_node, align 8
  %call84 = tail call i32 @of_dma_controller_register(ptr noundef %77, ptr noundef nonnull @jz4780_of_dma_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.end93, label %if.end82.err_free_irq_crit_edge

if.end82.err_free_irq_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_irq

do.end93:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23) #12
  br label %cleanup

err_free_irq:                                     ; preds = %if.end82.err_free_irq_crit_edge, %if.end75.err_free_irq_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %if.end75.err_free_irq_crit_edge ], [ @.str.20, %if.end82.err_free_irq_crit_edge ]
  %ret.0 = phi i32 [ %call76, %if.end75.err_free_irq_crit_edge ], [ %call84, %if.end82.err_free_irq_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.20.sink) #12
  %78 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq, align 4
  %call95 = tail call ptr @free_irq(i32 noundef %79, ptr noundef nonnull %call.i) #9
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_free_irq, %do.end73, %jz4780_dma_chan_disable.exit.err_disable_clk_crit_edge
  %ret.1 = phi i32 [ %call62, %jz4780_dma_chan_disable.exit.err_disable_clk_crit_edge ], [ %call.i205, %do.end73 ], [ %ret.0, %err_free_irq ]
  %80 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %81) #9
  tail call void @clk_unprepare(ptr noundef %81) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %do.end93, %do.end44, %do.end35, %if.then24, %if.then14, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %10, %if.then14 ], [ %12, %if.then24 ], [ %21, %do.end44 ], [ %ret.1, %err_disable_clk ], [ 0, %do.end93 ], [ -22, %do.end35 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_dma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  tail call void @of_dma_controller_free(ptr noundef %3) #9
  %clk = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %irq = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #9
  %soc_data = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not = icmp eq i32 %11, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %task = getelementptr %struct.jz4780_dma_dev, ptr %1, i32 0, i32 7, i32 %i.010, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #9
  %inc = add nuw i32 %i.010, 1
  %12 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_dma_alloc_chan_resources(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
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
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %dev3 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %call4 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i, ptr noundef %9, i32 noundef 4096, i32 noundef 4096, i32 noundef 0) #9
  %desc_pool = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 2
  %10 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %device7 = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device7, ptr noundef nonnull @.str.26) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
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
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
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
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %56 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %56)
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
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %desc_pool = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 2
  %57 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc_pool, align 4
  call void @dma_pool_destroy(ptr noundef %58) #9
  %59 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %desc_pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jz4780_dma_prep_slave_sg(ptr noundef %chan, ptr nocapture noundef readonly %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sg_len)
  %cmp.i = icmp ugt i32 %sg_len, 256
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 140) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %desc_pool.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 2
  %3 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_pool.i, align 4
  %desc_phys.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %call3.i = tail call ptr @dma_pool_alloc(ptr noundef %4, i32 noundef 2048, ptr noundef %desc_phys.i) #9
  %desc4.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %desc4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3.i, ptr %desc4.i, align 4
  %tobool6.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end2.i
  %count9.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %count9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sg_len, ptr %count9.i, align 4
  %type10.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %type10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %type10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp11.i = icmp eq i32 %direction, 2
  %transfer_type_rx.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 4
  %transfer_type_tx.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 3
  %.sink.in = select i1 %cmp11.i, ptr %transfer_type_rx.i, ptr %transfer_type_tx.i
  %8 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink = load i32, ptr %.sink.in, align 4
  %9 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp64.not = icmp eq i32 %sg_len, 0
  br i1 %cmp64.not, label %if.end8.i.for.end_crit_edge, label %for.body.lr.ph

if.end8.i.for.end_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i53 = icmp eq i32 %direction, 1
  %src_addr.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %src_addr_width.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 3
  %src_maxburst.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 5
  %dst_addr.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 2
  %dst_addr_width.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 4
  %dst_maxburst.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 6
  %transfer_shift.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 5
  %sub = add nsw i32 %sg_len, -1
  %soc_data = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc4.i, align 4
  %arrayidx = getelementptr %struct.jz4780_dma_hwdesc, ptr %12, i32 %i.065
  %dma_address = getelementptr %struct.scatterlist, ptr %sgl, i32 %i.065, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %sgl, i32 %i.065, i32 4
  %15 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length, align 4
  br i1 %cmp.i53, label %if.then.i, label %if.else.i54

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8388608, ptr %arrayidx, align 4
  %dsa.i = getelementptr %struct.jz4780_dma_hwdesc, ptr %12, i32 %i.065, i32 1
  %18 = ptrtoint ptr %dsa.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %dsa.i, align 4
  %19 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_addr.i, align 4
  br label %if.end.i55

if.else.i54:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4194304, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_addr.i, align 4
  %dsa3.i = getelementptr %struct.jz4780_dma_hwdesc, ptr %12, i32 %i.065, i32 1
  %24 = ptrtoint ptr %dsa3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dsa3.i, align 4
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.else.i54, %if.then.i
  %addr.sink.i = phi i32 [ %20, %if.then.i ], [ %14, %if.else.i54 ]
  %width.0.in.i = phi ptr [ %dst_addr_width.i, %if.then.i ], [ %src_addr_width.i, %if.else.i54 ]
  %maxburst.0.in.i = phi ptr [ %dst_maxburst.i, %if.then.i ], [ %src_maxburst.i, %if.else.i54 ]
  %25 = getelementptr %struct.jz4780_dma_hwdesc, ptr %12, i32 %i.065, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %addr.sink.i, ptr %25, align 4
  %27 = ptrtoint ptr %maxburst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %maxburst.0.i = load i32, ptr %maxburst.0.in.i, align 4
  %28 = ptrtoint ptr %width.0.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %width.0.i = load i32, ptr %width.0.in.i, align 4
  %or.i = or i32 %16, %14
  %mul.i = mul i32 %width.0.i, %maxburst.0.i
  %or5.i = or i32 %or.i, %mul.i
  %29 = tail call i32 @llvm.cttz.i32(i32 %or5.i, i1 true) #9, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %iszero.i.i = icmp eq i32 %or5.i, 0
  %sub.i.i = select i1 %iszero.i.i, i32 -1, i32 %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i.i = icmp eq i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %if.end5.thread.i.i, label %if.else.i.i

if.end5.thread.i.i:                               ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %transfer_shift.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %transfer_shift.i, align 4
  br label %jz4780_dma_transfer_size.exit.i

if.else.i.i:                                      ; preds = %if.end.i55
  %31 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan, align 4
  %soc_data.i.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %soc_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc_data.i.i, align 4
  %transfer_ord_max.i.i = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %transfer_ord_max.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %transfer_ord_max.i.i, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %36) #9
  %38 = ptrtoint ptr %transfer_shift.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %transfer_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %39 = icmp ult i32 %37, 7
  br i1 %39, label %switch.lookup, label %if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge

if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_transfer_size.exit.i

switch.lookup:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.jz4780_dma_prep_slave_sg, i32 0, i32 %37
  %40 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %jz4780_dma_transfer_size.exit.i

jz4780_dma_transfer_size.exit.i:                  ; preds = %switch.lookup, %if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge, %if.end5.thread.i.i
  %retval.0.i.i = phi i32 [ 0, %if.end5.thread.i.i ], [ %switch.load, %switch.lookup ], [ 1536, %if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge ]
  %41 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %width.0.i, label %if.then8 [
    i32 1, label %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge
    i32 2, label %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge67
    i32 4, label %sw.bb6.i
  ]

jz4780_dma_transfer_size.exit.i.if.end10_crit_edge67: ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

jz4780_dma_transfer_size.exit.i.if.end10_crit_edge: ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.bb6.i:                                         ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %desc9 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 7
  %42 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc9, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan.i, align 4
  %desc_pool.i57 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %desc_pool.i57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc_pool.i57, align 4
  %desc2.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc2.i, align 4
  %desc_phys.i58 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %43, i32 0, i32 2
  %50 = ptrtoint ptr %desc_phys.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %desc_phys.i58, align 4
  tail call void @dma_pool_free(ptr noundef %47, ptr noundef %49, i32 noundef %51) #9
  tail call void @kfree(ptr noundef %43) #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6.i, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge67
  %width.1.i = phi i32 [ 0, %sw.bb6.i ], [ %width.0.i, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge ], [ %width.0.i, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge67 ]
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %or8.i = or i32 %53, %retval.0.i.i
  %shl9.i = shl nuw nsw i32 %width.1.i, 14
  %or11.i = or i32 %or8.i, %shl9.i
  %shl12.i = shl nuw nsw i32 %width.1.i, 12
  %or14.i = or i32 %or11.i, %shl12.i
  store i32 %or14.i, ptr %arrayidx, align 4
  %54 = ptrtoint ptr %transfer_shift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %transfer_shift.i, align 4
  %shr.i = lshr i32 %16, %55
  %dtc.i = getelementptr %struct.jz4780_dma_hwdesc, ptr %12, i32 %i.065, i32 3
  %56 = ptrtoint ptr %dtc.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr.i, ptr %dtc.i, align 4
  %57 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc4.i, align 4
  %arrayidx12 = getelementptr %struct.jz4780_dma_hwdesc, ptr %58, i32 %i.065
  %59 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx12, align 4
  %or = or i32 %60, 2
  store i32 %or, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.065, i32 %sub)
  %cmp13.not = icmp eq i32 %i.065, %sub
  br i1 %cmp13.not, label %if.end10.for.inc_crit_edge, label %land.lhs.true

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end10
  %61 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %soc_data, align 4
  %flags14 = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags14, align 4
  %and = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %desc4.i, align 4
  %arrayidx18 = getelementptr %struct.jz4780_dma_hwdesc, ptr %66, i32 %i.065
  %67 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx18, align 4
  %or20 = or i32 %68, 1
  store i32 %or20, ptr %arrayidx18, align 4
  %69 = shl i32 %i.065, 24
  %shl = add i32 %69, 16777216
  %70 = load ptr, ptr %desc4.i, align 4
  %dtc = getelementptr %struct.jz4780_dma_hwdesc, ptr %70, i32 %i.065, i32 3
  %71 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dtc, align 4
  %or23 = or i32 %72, %shl
  store i32 %or23, ptr %dtc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %land.lhs.true.for.inc_crit_edge, %if.end10.for.inc_crit_edge
  %inc = add nuw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.i.for.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %75 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %79, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %node.i, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i.i, align 8
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %node.i, ptr %79, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then8, %if.then7.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then8 ], [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %if.then7.i ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jz4780_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %buf_len, %period_len
  %0 = mul i32 %div, %period_len
  %rem.decomposed = sub i32 %buf_len, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp ne i32 %rem.decomposed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div)
  %cmp.i = icmp ugt i32 %div, 256
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2304, i32 noundef 140) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %desc_pool.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_pool.i, align 4
  %desc_phys.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %call3.i = tail call ptr @dma_pool_alloc(ptr noundef %3, i32 noundef 2048, ptr noundef %desc_phys.i) #9
  %desc4.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %desc4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3.i, ptr %desc4.i, align 4
  %tobool6.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end2.i
  %count9.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %count9.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %count9.i, align 4
  %type10.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %type10.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %type10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp11.i = icmp eq i32 %direction, 2
  %transfer_type_rx.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 4
  %transfer_type_tx.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 3
  %.sink.in = select i1 %cmp11.i, ptr %transfer_type_rx.i, ptr %transfer_type_tx.i
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink = load i32, ptr %.sink.in, align 4
  %8 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp58.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp58.not, label %if.end8.i.for.end_crit_edge, label %for.body.lr.ph

if.end8.i.for.end_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i47 = icmp eq i32 %direction, 1
  %src_addr.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %src_addr_width.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 3
  %src_maxburst.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 5
  %dst_addr.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 2
  %dst_addr_width.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 4
  %dst_maxburst.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6, i32 6
  %transfer_shift.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 5
  %sub = add nsw i32 %div, -1
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf_addr.addr.059 = phi i32 [ %buf_addr, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc4.i, align 4
  %arrayidx = getelementptr %struct.jz4780_dma_hwdesc, ptr %11, i32 %i.061
  br i1 %cmp.i47, label %if.then.i, label %if.else.i48

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8388608, ptr %arrayidx, align 4
  %dsa.i = getelementptr %struct.jz4780_dma_hwdesc, ptr %11, i32 %i.061, i32 1
  %13 = ptrtoint ptr %dsa.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %buf_addr.addr.059, ptr %dsa.i, align 4
  %14 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_addr.i, align 4
  br label %if.end.i49

if.else.i48:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4194304, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_addr.i, align 4
  %dsa3.i = getelementptr %struct.jz4780_dma_hwdesc, ptr %11, i32 %i.061, i32 1
  %19 = ptrtoint ptr %dsa3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dsa3.i, align 4
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.else.i48, %if.then.i
  %addr.sink.i = phi i32 [ %15, %if.then.i ], [ %buf_addr.addr.059, %if.else.i48 ]
  %width.0.in.i = phi ptr [ %dst_addr_width.i, %if.then.i ], [ %src_addr_width.i, %if.else.i48 ]
  %maxburst.0.in.i = phi ptr [ %dst_maxburst.i, %if.then.i ], [ %src_maxburst.i, %if.else.i48 ]
  %20 = getelementptr %struct.jz4780_dma_hwdesc, ptr %11, i32 %i.061, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %addr.sink.i, ptr %20, align 4
  %22 = ptrtoint ptr %maxburst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %maxburst.0.i = load i32, ptr %maxburst.0.in.i, align 4
  %23 = ptrtoint ptr %width.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %width.0.i = load i32, ptr %width.0.in.i, align 4
  %or.i = or i32 %buf_addr.addr.059, %period_len
  %mul.i = mul i32 %width.0.i, %maxburst.0.i
  %or5.i = or i32 %or.i, %mul.i
  %24 = tail call i32 @llvm.cttz.i32(i32 %or5.i, i1 true) #9, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %iszero.i.i = icmp eq i32 %or5.i, 0
  %sub.i.i = select i1 %iszero.i.i, i32 -1, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i.i = icmp eq i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %if.end5.thread.i.i, label %if.else.i.i

if.end5.thread.i.i:                               ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %transfer_shift.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %transfer_shift.i, align 4
  br label %jz4780_dma_transfer_size.exit.i

if.else.i.i:                                      ; preds = %if.end.i49
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan, align 4
  %soc_data.i.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %soc_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc_data.i.i, align 4
  %transfer_ord_max.i.i = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %transfer_ord_max.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_ord_max.i.i, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %31) #9
  %33 = ptrtoint ptr %transfer_shift.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %transfer_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %32)
  %34 = icmp ult i32 %32, 7
  br i1 %34, label %switch.lookup, label %if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge

if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_transfer_size.exit.i

switch.lookup:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.jz4780_dma_prep_dma_cyclic, i32 0, i32 %32
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %jz4780_dma_transfer_size.exit.i

jz4780_dma_transfer_size.exit.i:                  ; preds = %switch.lookup, %if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge, %if.end5.thread.i.i
  %retval.0.i.i = phi i32 [ 0, %if.end5.thread.i.i ], [ %switch.load, %switch.lookup ], [ 1536, %if.else.i.i.jz4780_dma_transfer_size.exit.i_crit_edge ]
  %36 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %width.0.i, label %if.then8 [
    i32 1, label %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge
    i32 2, label %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge63
    i32 4, label %sw.bb6.i
  ]

jz4780_dma_transfer_size.exit.i.if.end10_crit_edge63: ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

jz4780_dma_transfer_size.exit.i.if.end10_crit_edge: ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.bb6.i:                                         ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %jz4780_dma_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %desc9 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 7
  %37 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc9, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan.i, align 4
  %desc_pool.i51 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %desc_pool.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc_pool.i51, align 4
  %desc2.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc2.i, align 4
  %desc_phys.i52 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %38, i32 0, i32 2
  %45 = ptrtoint ptr %desc_phys.i52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc_phys.i52, align 4
  tail call void @dma_pool_free(ptr noundef %42, ptr noundef %44, i32 noundef %46) #9
  tail call void @kfree(ptr noundef %38) #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6.i, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge63
  %width.1.i = phi i32 [ 0, %sw.bb6.i ], [ %width.0.i, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge ], [ %width.0.i, %jz4780_dma_transfer_size.exit.i.if.end10_crit_edge63 ]
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %or8.i = or i32 %48, %retval.0.i.i
  %shl9.i = shl nuw nsw i32 %width.1.i, 14
  %or11.i = or i32 %or8.i, %shl9.i
  %shl12.i = shl nuw nsw i32 %width.1.i, 12
  %or14.i = or i32 %or11.i, %shl12.i
  store i32 %or14.i, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %transfer_shift.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %transfer_shift.i, align 4
  %shr.i = lshr i32 %period_len, %50
  %dtc.i = getelementptr %struct.jz4780_dma_hwdesc, ptr %11, i32 %i.061, i32 3
  %51 = ptrtoint ptr %dtc.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr.i, ptr %dtc.i, align 4
  %add = add i32 %buf_addr.addr.059, %period_len
  %52 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc4.i, align 4
  %arrayidx12 = getelementptr %struct.jz4780_dma_hwdesc, ptr %53, i32 %i.061
  %54 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx12, align 4
  %or = or i32 %55, 3
  store i32 %or, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.061, i32 %sub)
  %cmp13.not = icmp eq i32 %i.061, %sub
  br i1 %cmp13.not, label %if.end10.for.inc_crit_edge, label %if.then14

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %56 = shl i32 %i.061, 24
  %shl = add i32 %56, 16777216
  %57 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc4.i, align 4
  %dtc = getelementptr %struct.jz4780_dma_hwdesc, ptr %58, i32 %i.061, i32 3
  %59 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dtc, align 4
  %or18 = or i32 %60, %shl
  store i32 %or18, ptr %dtc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end10.for.inc_crit_edge
  %inc = add nuw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.i.for.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %67, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %node.i, ptr %prev.i.i, align 4
  %69 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i, align 8
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %node.i, ptr %67, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then8, %if.then7.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then8 ], [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then7.i ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jz4780_dma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2304, i32 noundef 140) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %entry
  %desc_pool.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 2
  %1 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_pool.i, align 4
  %desc_phys.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %call3.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 2048, ptr noundef %desc_phys.i) #9
  %desc4.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %desc4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3.i, ptr %desc4.i, align 4
  %tobool6.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end

if.then7.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end2.i
  %count9.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %count9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %count9.i, align 4
  %type10.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %type10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type10.i, align 8
  %transfer_type_tx.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %transfer_type_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transfer_type_tx.i, align 4
  %transfer_type13.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %transfer_type13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %transfer_type13.i, align 4
  %or = or i32 %src, %dest
  %or2 = or i32 %or, %len
  %transfer_shift = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 5
  %9 = tail call i32 @llvm.cttz.i32(i32 %or2, i1 true) #9, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or2)
  %iszero.i = icmp eq i32 %or2, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 3
  br i1 %cmp.i, label %if.end5.thread.i, label %if.else.i

if.end5.thread.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %transfer_shift to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %transfer_shift, align 4
  br label %jz4780_dma_transfer_size.exit

if.else.i:                                        ; preds = %if.end
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %soc_data.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc_data.i, align 4
  %transfer_ord_max.i = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %transfer_ord_max.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_ord_max.i, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %16) #9
  %18 = ptrtoint ptr %transfer_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %transfer_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %19 = icmp ult i32 %17, 7
  br i1 %19, label %switch.lookup, label %if.else.i.jz4780_dma_transfer_size.exit_crit_edge

if.else.i.jz4780_dma_transfer_size.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_transfer_size.exit

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.jz4780_dma_prep_dma_memcpy, i32 0, i32 %17
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %jz4780_dma_transfer_size.exit

jz4780_dma_transfer_size.exit:                    ; preds = %switch.lookup, %if.else.i.jz4780_dma_transfer_size.exit_crit_edge, %if.end5.thread.i
  %retval.0.i31 = phi i32 [ 12582914, %if.end5.thread.i ], [ %switch.load, %switch.lookup ], [ 12584450, %if.else.i.jz4780_dma_transfer_size.exit_crit_edge ]
  %21 = ptrtoint ptr %transfer_type13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %transfer_type13.i, align 4
  %22 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc4.i, align 4
  %dsa = getelementptr inbounds %struct.jz4780_dma_hwdesc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dsa to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %src, ptr %dsa, align 4
  %25 = load ptr, ptr %desc4.i, align 4
  %dta = getelementptr inbounds %struct.jz4780_dma_hwdesc, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dta to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dest, ptr %dta, align 4
  %27 = load ptr, ptr %desc4.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i31, ptr %27, align 4
  %29 = ptrtoint ptr %transfer_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %transfer_shift, align 4
  %shr = lshr i32 %len, %30
  %31 = load ptr, ptr %desc4.i, align 4
  %dtc = getelementptr inbounds %struct.jz4780_dma_hwdesc, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dtc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr, ptr %dtc, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %39, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %jz4780_dma_transfer_size.exit.vchan_tx_prep.exit_crit_edge

jz4780_dma_transfer_size.exit.vchan_tx_prep.exit_crit_edge: ; preds = %jz4780_dma_transfer_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %jz4780_dma_transfer_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node.i, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 8
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node.i, ptr %39, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %jz4780_dma_transfer_size.exit.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then7.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %if.then7.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jz4780_dma_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %0 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %2 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1 = icmp eq i32 %3, 8
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %config2 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %config2, ptr %config, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_dma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %id = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void @arm_heavy_mb() #9
  %chn_base.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %mul.i = shl i32 %6, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #9, !srcloc !120
  %desc = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 7
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %14, ptr noundef %desc_terminated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node.i, ptr %14, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 9
  %19 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %20, %10
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %vchan_terminate_vdesc.exit, %entry.if.end_crit_edge
  %soc_data.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc_data.i, align 4
  %flags.i = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %27 = and i32 %26, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %if.then.i24, label %if.end.jz4780_dma_chan_disable.exit_crit_edge

if.end.jz4780_dma_chan_disable.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_chan_disable.exit

if.then.i24:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %shl.i = shl nuw i32 1, %30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %31 = call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %ctrl_base.i.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #9, !srcloc !120
  br label %jz4780_dma_chan_disable.exit

jz4780_dma_chan_disable.exit:                     ; preds = %if.then.i24, %if.end.jz4780_dma_chan_disable.exit_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %34 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %35, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %jz4780_dma_chan_disable.exit.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

jz4780_dma_chan_disable.exit.list_splice_tail_init.exit.i_crit_edge: ; preds = %jz4780_dma_chan_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %jz4780_dma_chan_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i26, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %35, ptr %37, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %head, ptr %39, align 4
  store ptr %39, ptr %2, align 4
  %43 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %jz4780_dma_chan_disable.exit.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %44 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %45, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i12.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %47, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %head, ptr %49, align 4
  store ptr %49, ptr %2, align 4
  %53 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %54 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %55, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i18.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %55, ptr %57, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %head, ptr %59, align 4
  store ptr %59, ptr %2, align 4
  %63 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %64 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %65, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %68 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i24.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %65, ptr %67, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %head, ptr %69, align 4
  store ptr %69, ptr %2, align 4
  %73 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i27 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %74 = ptrtoint ptr %desc_terminated.i27 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %desc_terminated.i27, align 4
  %cmp.i.not.i27.i = icmp eq ptr %75, %desc_terminated.i27
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %78 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i30.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %75, ptr %77, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %head, ptr %79, align 4
  store ptr %79, ptr %2, align 4
  %83 = ptrtoint ptr %desc_terminated.i27 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %desc_terminated.i27, ptr %desc_terminated.i27, align 4
  store ptr %desc_terminated.i27, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_dma_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head.i, ptr %head.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head.i, ptr %2, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %5 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %6, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head.i, ptr %10, align 4
  store ptr %10, ptr %2, align 4
  %14 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %entry.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %soc_data.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc_data.i, align 4
  %flags.i = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %19 = and i32 %18, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %if.then.i, label %vchan_synchronize.exit.jz4780_dma_chan_disable.exit_crit_edge

vchan_synchronize.exit.jz4780_dma_chan_disable.exit_crit_edge: ; preds = %vchan_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_chan_disable.exit

if.then.i:                                        ; preds = %vchan_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %shl.i = shl nuw i32 1, %22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %23 = call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %ctrl_base.i.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #9, !srcloc !120
  br label %jz4780_dma_chan_disable.exit

jz4780_dma_chan_disable.exit:                     ; preds = %if.then.i, %vchan_synchronize.exit.jz4780_dma_chan_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
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
  %brmerge95 = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  %.mux96 = zext i1 %not.or.cond.i.i to i32
  br i1 %brmerge95, label %if.then.i.i.out_unlock_irqrestore_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i.out_unlock_irqrestore_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock_irqrestore

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  %.mux = zext i1 %not.or.cond16.i.i to i32
  br i1 %brmerge, label %if.else.i.i.out_unlock_irqrestore_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i.i.out_unlock_irqrestore_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock_irqrestore

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %call12 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #9
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  %count1.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call12, i32 0, i32 3
  %8 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.i.not = icmp eq i32 %9, 0
  br i1 %cmp14.i.not, label %if.then13.dma_set_residue.exit_crit_edge, label %for.body.lr.ph.i

if.then13.dma_set_residue.exit_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

for.body.lr.ph.i:                                 ; preds = %if.then13
  %desc2.i = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call12, i32 0, i32 1
  %10 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %count.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %dtc.i = getelementptr %struct.jz4780_dma_hwdesc, ptr %11, i32 %i.016.i, i32 3
  %12 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dtc.i, align 4
  %and.i = and i32 %13, 16777215
  %add.i = add i32 %and.i, %count.015.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.body.i.dma_set_residue.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.dma_set_residue.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %for.body.i.dma_set_residue.exit_crit_edge, %if.then13.dma_set_residue.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.then13.dma_set_residue.exit_crit_edge ], [ %add.i, %for.body.i.dma_set_residue.exit_crit_edge ]
  %transfer_shift.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %transfer_shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_shift.i, align 4
  %shl.i = shl i32 %count.0.lcssa.i, %15
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %16 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl.i, ptr %residue1.i, align 4
  %desc26 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 7
  %17 = ptrtoint ptr %desc26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc26, align 4
  %tobool27.not = icmp ne ptr %18, null
  %cmp31 = icmp eq ptr %call12, %18
  %or.cond = select i1 %tobool27.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %land.lhs.true33, label %dma_set_residue.exit.out_unlock_irqrestore_crit_edge

dma_set_residue.exit.out_unlock_irqrestore_crit_edge: ; preds = %dma_set_residue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock_irqrestore

if.else:                                          ; preds = %if.end
  %desc = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 7
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %cookie)
  %cmp18 = icmp eq i32 %22, %cookie
  br i1 %cmp18, label %if.then20, label %dma_set_residue.exit92

if.then20:                                        ; preds = %if.else
  %curr_hwdesc = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 8
  %23 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %curr_hwdesc, align 4
  %add = add i32 %24, 1
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan, align 4
  %count1.i65 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %count1.i65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count1.i65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add)
  %cmp14.i66 = icmp ugt i32 %28, %add
  br i1 %cmp14.i66, label %for.body.lr.ph.i68, label %if.then20.for.end.i_crit_edge

if.then20.for.end.i_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i68:                               ; preds = %if.then20
  %desc2.i67 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %desc2.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc2.i67, align 4
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.body.i76.for.body.i76_crit_edge, %for.body.lr.ph.i68
  %i.016.i69 = phi i32 [ %add, %for.body.lr.ph.i68 ], [ %inc.i74, %for.body.i76.for.body.i76_crit_edge ]
  %count.015.i70 = phi i32 [ 0, %for.body.lr.ph.i68 ], [ %add.i73, %for.body.i76.for.body.i76_crit_edge ]
  %dtc.i71 = getelementptr %struct.jz4780_dma_hwdesc, ptr %30, i32 %i.016.i69, i32 3
  %31 = ptrtoint ptr %dtc.i71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dtc.i71, align 4
  %and.i72 = and i32 %32, 16777215
  %add.i73 = add i32 %and.i72, %count.015.i70
  %inc.i74 = add nuw i32 %i.016.i69, 1
  %exitcond.not.i75 = icmp eq i32 %inc.i74, %28
  br i1 %exitcond.not.i75, label %for.body.i76.for.end.i_crit_edge, label %for.body.i76.for.body.i76_crit_edge

for.body.i76.for.body.i76_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i76

for.body.i76.for.end.i_crit_edge:                 ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i76.for.end.i_crit_edge, %if.then20.for.end.i_crit_edge
  %count.0.lcssa.i77 = phi i32 [ 0, %if.then20.for.end.i_crit_edge ], [ %add.i73, %for.body.i76.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp3.not.i = icmp eq i32 %add, 0
  br i1 %cmp3.not.i, label %for.end.i.dma_set_residue.exit87_crit_edge, label %if.then.i78

for.end.i.dma_set_residue.exit87_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit87

if.then.i78:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %id.i = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 1
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i, align 4
  %chn_base.i.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %26, i32 0, i32 1
  %35 = ptrtoint ptr %chn_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chn_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 8
  %mul.i.i = shl i32 %34, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !124
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  %add5.i = add i32 %38, %count.0.lcssa.i77
  br label %dma_set_residue.exit87

dma_set_residue.exit87:                           ; preds = %if.then.i78, %for.end.i.dma_set_residue.exit87_crit_edge
  %count.1.i = phi i32 [ %add5.i, %if.then.i78 ], [ %count.0.lcssa.i77, %for.end.i.dma_set_residue.exit87_crit_edge ]
  %transfer_shift.i79 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 5
  %39 = ptrtoint ptr %transfer_shift.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %transfer_shift.i79, align 4
  %shl.i80 = shl i32 %count.1.i, %40
  %residue1.i84 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %41 = ptrtoint ptr %residue1.i84 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl.i80, ptr %residue1.i84, align 4
  br label %out_unlock_irqrestore

land.lhs.true33:                                  ; preds = %dma_set_residue.exit
  call void @__sanitizer_cov_trace_pc() #11
  %status35 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %call12, i32 0, i32 6
  %42 = ptrtoint ptr %status35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status35, align 4
  %and = and i32 %43, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool36.not, i32 1, i32 3
  br label %out_unlock_irqrestore

dma_set_residue.exit92:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %residue1.i89 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %44 = ptrtoint ptr %residue1.i89 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %residue1.i89, align 4
  br label %out_unlock_irqrestore

out_unlock_irqrestore:                            ; preds = %dma_set_residue.exit92, %land.lhs.true33, %dma_set_residue.exit87, %dma_set_residue.exit.out_unlock_irqrestore_crit_edge, %if.else.i.i.out_unlock_irqrestore_crit_edge, %if.then.i.i.out_unlock_irqrestore_crit_edge
  %status.0 = phi i32 [ 1, %dma_set_residue.exit.out_unlock_irqrestore_crit_edge ], [ 1, %dma_set_residue.exit92 ], [ 1, %dma_set_residue.exit87 ], [ %spec.select, %land.lhs.true33 ], [ %.mux96, %if.then.i.i.out_unlock_irqrestore_crit_edge ], [ %.mux, %if.else.i.i.out_unlock_irqrestore_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
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
  %desc = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 7
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @jz4780_dma_begin(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_dma_desc_free(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vdesc, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %desc_pool = getelementptr inbounds %struct.jz4780_dma_chan, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_pool, align 4
  %desc2 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %vdesc, i32 0, i32 1
  %4 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc2, align 4
  %desc_phys = getelementptr inbounds %struct.jz4780_dma_desc, ptr %vdesc, i32 0, i32 2
  %6 = ptrtoint ptr %desc_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_phys, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #9
  tail call void @kfree(ptr noundef %vdesc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_dma_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_data = getelementptr inbounds %struct.jz4780_dma_dev, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #9
  %ctrl_base.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !124
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pending, align 4
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %3)
  %cmp23 = icmp ult i32 %call2, %3
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %call4, %for.inc.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jz4780_dma_dev, ptr %data, i32 0, i32 7, i32 %i.024
  %call3 = call fastcc zeroext i1 @jz4780_dma_chan_irq(ptr noundef %data, ptr noundef %arrayidx)
  br i1 %call3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %i.024
  %neg = xor i32 %shl, -1
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pending, align 4
  %and = and i32 %10, %neg
  store i32 %and, ptr %pending, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %add = add nuw i32 %i.024, 1
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %3, i32 noundef %add) #9
  %cmp = icmp ult i32 %call4, %3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_base.i, align 4
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %14 = and i32 %13, -201326593
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !120
  %17 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pending, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %19 = call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %21, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %19) #9, !srcloc !120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jz4780_of_dma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %data = alloca %struct.jz4780_dma_filter_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap_mask, align 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #9
  %5 = getelementptr inbounds %struct.jz4780_dma_filter_data, ptr %data, i32 0, i32 1
  %6 = getelementptr inbounds %struct.jz4780_dma_filter_data, ptr %data, i32 0, i32 2
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %7 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args_count, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %5, align 4
  %arrayidx4 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  br label %if.end18

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %args8 = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %14 = ptrtoint ptr %args8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %args8, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %data, align 4
  %arrayidx12 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %5, align 4
  %arrayidx15 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %if.then
  %storemerge.in = phi ptr [ %arrayidx15, %if.then7 ], [ %arrayidx4, %if.then ]
  %20 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %storemerge)
  %cmp20 = icmp sgt i32 %storemerge, -1
  br i1 %cmp20, label %if.then21, label %if.else50

if.then21:                                        ; preds = %if.end18
  %soc_data = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc_data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %25)
  %cmp23.not = icmp ult i32 %storemerge, %25
  br i1 %cmp23.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.41, i32 noundef %storemerge) #12
  br label %cleanup

if.end27:                                         ; preds = %if.then21
  %chan_reserved = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %chan_reserved to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan_reserved, align 4
  %shl = shl nuw i32 1, %storemerge
  %and = and i32 %29, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %dev34 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.44, i32 noundef %storemerge) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  %transfer_type_tx40 = getelementptr %struct.jz4780_dma_dev, ptr %1, i32 0, i32 7, i32 %storemerge, i32 3
  %34 = ptrtoint ptr %transfer_type_tx40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %transfer_type_tx40, align 4
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %5, align 4
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %6, align 4
  %transfer_type_rx45 = getelementptr %struct.jz4780_dma_dev, ptr %1, i32 0, i32 7, i32 %38, i32 4
  %39 = ptrtoint ptr %transfer_type_rx45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %transfer_type_rx45, align 4
  %40 = load i32, ptr %6, align 4
  %arrayidx48 = getelementptr %struct.jz4780_dma_dev, ptr %1, i32 0, i32 7, i32 %40
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %arrayidx48) #9
  br label %cleanup

if.else50:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 4
  %call51 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @jz4780_dma_filter_fn, ptr noundef nonnull %data, ptr noundef %42) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.end36, %do.end32, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end36 ], [ null, %do.end32 ], [ %call51, %if.else50 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jz4780_dma_begin(ptr noundef %jzchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jzchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jzchan, align 4
  %desc = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 7
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %jzchan, i32 0, i32 6
  %4 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %5, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -108
  %tobool2.not88 = icmp eq ptr %add.ptr.i, null
  %tobool2.not = or i1 %cmp.not.i, %tobool2.not88
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
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

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
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
  %curr_hwdesc = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 8
  %15 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %curr_hwdesc, align 4
  %type = getelementptr i8, ptr %5, i32 20
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %cmp = icmp eq i32 %17, 12
  br i1 %cmp, label %land.lhs.true, label %list_del.exit.if.end18_crit_edge

list_del.exit.if.end18_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %list_del.exit
  %callback = getelementptr i8, ptr %5, i32 -84
  %18 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %callback, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %land.lhs.true.if.end18_crit_edge, label %for.cond.preheader

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.cond.preheader:                               ; preds = %land.lhs.true
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  %count89 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %count89 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1090.not = icmp eq i32 %23, 0
  br i1 %cmp1090.not, label %for.cond.preheader.if.end18_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end18_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %24 = phi ptr [ %30, %for.body.for.body_crit_edge ], [ %21, %for.cond.preheader.for.body_crit_edge ]
  %i.091 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %desc12 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %desc12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc12, align 4
  %arrayidx = getelementptr %struct.jz4780_dma_hwdesc, ptr %26, i32 %i.091
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %and = and i32 %28, -2
  store i32 %and, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.091, 1
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc, align 4
  %count = getelementptr inbounds %struct.jz4780_dma_desc, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  %cmp10 = icmp ult i32 %inc, %32
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %curr_hwdesc14 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 8
  %33 = ptrtoint ptr %curr_hwdesc14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %curr_hwdesc14, align 4
  %add = add i32 %34, 1
  %count16 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %count16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count16, align 4
  %rem = urem i32 %add, %36
  store i32 %rem, ptr %curr_hwdesc14, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %for.body.if.end18_crit_edge, %for.cond.preheader.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %list_del.exit.if.end18_crit_edge
  %id = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 1
  %soc_data.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soc_data.i, align 4
  %flags.i = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end18.jz4780_dma_chan_enable.exit_crit_edge, label %if.then.i

if.end18.jz4780_dma_chan_enable.exit_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_dma_chan_enable.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %and3.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 20, i32 16
  %shl.i = shl nuw i32 1, %42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %ctrl_base.i.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #9, !srcloc !120
  br label %jz4780_dma_chan_enable.exit

jz4780_dma_chan_enable.exit:                      ; preds = %if.then.i, %if.end18.jz4780_dma_chan_enable.exit_crit_edge
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %chn_base.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %49, i32 16
  %mul.i = shl i32 %47, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i70, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #9, !srcloc !120
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %52 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc, align 4
  %transfer_type = getelementptr inbounds %struct.jz4780_dma_desc, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %transfer_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %transfer_type, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  %57 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %58, i32 12
  %mul.i73 = shl i32 %51, 5
  %add.ptr1.i74 = getelementptr i8, ptr %add.ptr.i72, i32 %mul.i73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i74, i32 %56) #9, !srcloc !120
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 4
  %61 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %desc, align 4
  %desc24 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %desc24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc24, align 4
  %curr_hwdesc25 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 8
  %65 = ptrtoint ptr %curr_hwdesc25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %curr_hwdesc25, align 4
  %dtc = getelementptr %struct.jz4780_dma_hwdesc, ptr %64, i32 %66, i32 3
  %67 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dtc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %70 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %71, i32 8
  %mul.i77 = shl i32 %60, 5
  %add.ptr1.i78 = getelementptr i8, ptr %add.ptr.i76, i32 %mul.i77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i78, i32 %69) #9, !srcloc !120
  %72 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc, align 4
  %desc_phys28 = getelementptr inbounds %struct.jz4780_dma_desc, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %desc_phys28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %desc_phys28, align 4
  %76 = ptrtoint ptr %curr_hwdesc25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %curr_hwdesc25, align 4
  %mul = shl i32 %77, 4
  %add30 = add i32 %mul, %75
  %78 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %80 = tail call i32 @llvm.bswap.i32(i32 %add30) #9
  %81 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %82, i32 24
  %mul.i81 = shl i32 %79, 5
  %add.ptr1.i82 = getelementptr i8, ptr %add.ptr.i80, i32 %mul.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i82, i32 %80) #9, !srcloc !120
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %85 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %ctrl_base.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %1, i32 0, i32 2
  %86 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %87, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %85) #9, !srcloc !120
  %88 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %91, i32 16
  %mul.i86 = shl i32 %89, 5
  %add.ptr1.i87 = getelementptr i8, ptr %add.ptr.i85, i32 %mul.i86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i87, i32 16777216) #9, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %jz4780_dma_chan_enable.exit, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @jz4780_dma_chan_irq(ptr nocapture noundef readonly %jzdma, ptr noundef %jzchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_data = getelementptr inbounds %struct.jz4780_dma_dev, ptr %jzdma, i32 0, i32 5
  %0 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data, align 4
  %flags = getelementptr inbounds %struct.jz4780_dma_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %desc1 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 7
  %4 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc1, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %jzchan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %id = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %chn_base.i = getelementptr inbounds %struct.jz4780_dma_dev, ptr %jzdma, i32 0, i32 1
  %8 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 16
  %mul.i = shl i32 %7, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !124
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %15, i32 16
  %mul.i80 = shl i32 %13, 5
  %add.ptr1.i81 = getelementptr i8, ptr %add.ptr.i79, i32 %mul.i80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i81, i32 0) #9, !srcloc !120
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %jzchan, i32 0, i32 5
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.28, i32 noundef %11) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and4 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %do.end9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.dma_chan, ptr %jzchan, i32 0, i32 5
  %18 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12, align 4
  %device13 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device13, ptr noundef nonnull @.str.32, i32 noundef %11) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end9, %if.end.if.end14_crit_edge
  %20 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc1, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %do.end43, label %if.then17

if.then17:                                        ; preds = %if.end14
  %status = getelementptr inbounds %struct.jz4780_dma_desc, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %11, ptr %status, align 4
  %and19 = and i32 %11, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp = icmp eq i32 %and19, 0
  br i1 %cmp, label %if.then20, label %if.then17.if.end48_crit_edge

if.then17.if.end48_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then20:                                        ; preds = %if.then17
  %23 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc1, align 4
  %type = getelementptr inbounds %struct.jz4780_dma_desc, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %26)
  %cmp22 = icmp eq i32 %26, 12
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then23.vchan_cyclic_callback.exit_crit_edge

if.then23.vchan_cyclic_callback.exit_crit_edge:   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cyclic_callback.exit

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cyclic_callback.exit

vchan_cyclic_callback.exit:                       ; preds = %if.then.i.i, %if.then23.vchan_cyclic_callback.exit_crit_edge
  tail call fastcc void @jz4780_dma_begin(ptr noundef %jzchan)
  br label %if.end48

if.else:                                          ; preds = %if.then20
  %and25 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else35, label %if.then27

if.then27:                                        ; preds = %if.else
  %and28 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then27.if.then31_crit_edge, label %lor.lhs.false

if.then27.if.then31_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.then27
  %curr_hwdesc = getelementptr inbounds %struct.jz4780_dma_chan, ptr %jzchan, i32 0, i32 8
  %30 = ptrtoint ptr %curr_hwdesc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %curr_hwdesc, align 4
  %add = add i32 %31, 1
  %count = getelementptr inbounds %struct.jz4780_dma_desc, ptr %5, i32 0, i32 3
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %33)
  %cmp30 = icmp eq i32 %add, %33
  br i1 %cmp30, label %lor.lhs.false.if.then31_crit_edge, label %lor.lhs.false.if.end34_crit_edge

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.then27.if.then31_crit_edge
  %chan.i82 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %chan.i82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan.i82, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i.i = icmp slt i32 %37, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !127

do.body2.i.i:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then31
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %completed_cookie.i.i, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jz4780_dma_chan_irq, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !129

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %43, ptr noundef nonnull @.str.40, ptr noundef %5, i32 noundef %37) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %35, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %35, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %45, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %node.i, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %node.i, ptr %45, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i83 = getelementptr inbounds %struct.virt_dma_chan, ptr %35, i32 0, i32 1, i32 1
  %call.i.i84 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %call.i.i84, 0
  br i1 %tobool.not.i.i85, label %if.then.i.i87, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i87:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i86 = getelementptr inbounds %struct.virt_dma_chan, ptr %35, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i86) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i87, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %50 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %desc1, align 4
  br label %if.end34

if.end34:                                         ; preds = %vchan_cookie_complete.exit, %lor.lhs.false.if.end34_crit_edge
  tail call fastcc void @jz4780_dma_begin(ptr noundef %jzchan)
  br label %if.end48

if.else35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %54, i32 16
  %mul.i90 = shl i32 %52, 5
  %add.ptr1.i91 = getelementptr i8, ptr %add.ptr.i89, i32 %mul.i90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i91, i32 16777216) #9, !srcloc !120
  br label %if.end48

do.end43:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.dma_chan, ptr %jzchan, i32 0, i32 5
  %55 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev46, align 4
  %device47 = getelementptr inbounds %struct.dma_chan_dev, ptr %56, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device47, ptr noundef nonnull @.str.35) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end43, %if.else35, %if.end34, %vchan_cyclic_callback.exit, %if.then17.if.end48_crit_edge
  %ack.0.off0 = phi i1 [ true, %vchan_cyclic_callback.exit ], [ true, %if.end34 ], [ false, %if.else35 ], [ true, %if.then17.if.end48_crit_edge ], [ true, %do.end43 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i1 %ack.0.off0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @jz4780_dma_filter_fn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %param) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.jz4780_dma_filter_data, ptr %param, i32 0, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3.not = icmp eq i32 %1, %3
  br i1 %cmp3.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %chan_reserved = getelementptr inbounds %struct.jz4780_dma_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %chan_reserved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan_reserved, align 4
  %id5 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id5, align 4
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.if.end8_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param, align 4
  %transfer_type_tx9 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %transfer_type_tx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %transfer_type_tx9, align 4
  %transfer_type_rx = getelementptr inbounds %struct.jz4780_dma_filter_data, ptr %param, i32 0, i32 1
  %13 = ptrtoint ptr %transfer_type_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_type_rx, align 4
  %transfer_type_rx10 = getelementptr inbounds %struct.jz4780_dma_chan, ptr %chan, i32 0, i32 4
  %15 = ptrtoint ptr %transfer_type_rx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %transfer_type_rx10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %if.then.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_dma_jz4780__236_1122_jz4780_dma_init4, !1, !"__initcall__kmod_dma_jz4780__236_1122_jz4780_dma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/dma-jz4780.c", i32 1122, i32 1}
!2 = !{ptr @__exitcall_jz4780_dma_exit, !3, !"__exitcall_jz4780_dma_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/dma-jz4780.c", i32 1128, i32 1}
!4 = !{ptr @__UNIQUE_ID_author237, !5, !"__UNIQUE_ID_author237", i1 false, i1 false}
!5 = !{!"../drivers/dma/dma-jz4780.c", i32 1130, i32 1}
!6 = !{ptr @__UNIQUE_ID_description238, !7, !"__UNIQUE_ID_description238", i1 false, i1 false}
!7 = !{!"../drivers/dma/dma-jz4780.c", i32 1131, i32 1}
!8 = !{ptr @__UNIQUE_ID_file239, !9, !"__UNIQUE_ID_file239", i1 false, i1 false}
!9 = !{!"../drivers/dma/dma-jz4780.c", i32 1132, i32 1}
!10 = !{ptr @__UNIQUE_ID_license240, !9, !"__UNIQUE_ID_license240", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/dma-jz4780.c", i32 1113, i32 11}
!13 = !{ptr @jz4780_dma_driver, !14, !"jz4780_dma_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/dma-jz4780.c", i32 1109, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/dma-jz4780.c", i32 862, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @jz4780_dma_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @jz4780_dma_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/dma-jz4780.c", i32 895, i32 3}
!25 = !{ptr @jz4780_dma_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @jz4780_dma_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/dma-jz4780.c", i32 901, i32 3}
!29 = !{ptr @jz4780_dma_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @jz4780_dma_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/dma-jz4780.c", i32 909, i32 43}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/dma-jz4780.c", i32 974, i32 3}
!35 = !{ptr @jz4780_dma_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @jz4780_dma_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/dma-jz4780.c", i32 980, i32 3}
!39 = !{ptr @jz4780_dma_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @jz4780_dma_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/dma-jz4780.c", i32 988, i32 3}
!43 = !{ptr @jz4780_dma_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @jz4780_dma_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/dma-jz4780.c", i32 992, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @jz4780_dma_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @jz4780_dma_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/dma-jz4780.c", i32 768, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @jz4780_dma_alloc_chan_resources._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @jz4780_dma_alloc_chan_resources._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/dma-jz4780.c", i32 690, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @jz4780_dma_chan_irq._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @jz4780_dma_chan_irq._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/dma-jz4780.c", i32 695, i32 3}
!63 = !{ptr @jz4780_dma_chan_irq._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @jz4780_dma_chan_irq._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/dma-jz4780.c", i32 724, i32 3}
!67 = !{ptr @jz4780_dma_chan_irq._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @jz4780_dma_chan_irq._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !70, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/dma-jz4780.c", i32 826, i32 4}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @jz4780_of_dma_xlate._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @jz4780_of_dma_xlate._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/dma-jz4780.c", i32 834, i32 4}
!82 = !{ptr @jz4780_of_dma_xlate._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @jz4780_of_dma_xlate._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @jz4780_dma_dt_match, !85, !"jz4780_dma_dt_match", i1 false, i1 false}
!85 = !{!"../drivers/dma/dma-jz4780.c", i32 1092, i32 34}
!86 = !{ptr @jz4740_dma_soc_data, !87, !"jz4740_dma_soc_data", i1 false, i1 false}
!87 = !{!"../drivers/dma/dma-jz4780.c", i32 1019, i32 41}
!88 = !{ptr @jz4725b_dma_soc_data, !89, !"jz4725b_dma_soc_data", i1 false, i1 false}
!89 = !{!"../drivers/dma/dma-jz4780.c", i32 1025, i32 41}
!90 = !{ptr @jz4760_dma_soc_data, !91, !"jz4760_dma_soc_data", i1 false, i1 false}
!91 = !{!"../drivers/dma/dma-jz4780.c", i32 1032, i32 41}
!92 = !{ptr @jz4760_mdma_soc_data, !93, !"jz4760_mdma_soc_data", i1 false, i1 false}
!93 = !{!"../drivers/dma/dma-jz4780.c", i32 1038, i32 41}
!94 = !{ptr @jz4760_bdma_soc_data, !95, !"jz4760_bdma_soc_data", i1 false, i1 false}
!95 = !{!"../drivers/dma/dma-jz4780.c", i32 1044, i32 41}
!96 = !{ptr @jz4760b_dma_soc_data, !97, !"jz4760b_dma_soc_data", i1 false, i1 false}
!97 = !{!"../drivers/dma/dma-jz4780.c", i32 1050, i32 41}
!98 = !{ptr @jz4760b_mdma_soc_data, !99, !"jz4760b_mdma_soc_data", i1 false, i1 false}
!99 = !{!"../drivers/dma/dma-jz4780.c", i32 1056, i32 41}
!100 = !{ptr @jz4760b_bdma_soc_data, !101, !"jz4760b_bdma_soc_data", i1 false, i1 false}
!101 = !{!"../drivers/dma/dma-jz4780.c", i32 1062, i32 41}
!102 = !{ptr @jz4770_dma_soc_data, !103, !"jz4770_dma_soc_data", i1 false, i1 false}
!103 = !{!"../drivers/dma/dma-jz4780.c", i32 1068, i32 41}
!104 = !{ptr @jz4780_dma_soc_data, !105, !"jz4780_dma_soc_data", i1 false, i1 false}
!105 = !{!"../drivers/dma/dma-jz4780.c", i32 1074, i32 41}
!106 = !{ptr @x1000_dma_soc_data, !107, !"x1000_dma_soc_data", i1 false, i1 false}
!107 = !{!"../drivers/dma/dma-jz4780.c", i32 1080, i32 41}
!108 = !{ptr @x1830_dma_soc_data, !109, !"x1830_dma_soc_data", i1 false, i1 false}
!109 = !{!"../drivers/dma/dma-jz4780.c", i32 1086, i32 41}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2154429835}
!120 = !{i64 5847348}
!121 = !{i32 0, i32 33}
!122 = !{i64 2154428577}
!123 = !{i64 2154366987}
!124 = !{i64 5847766}
!125 = !{i64 2154428159}
!126 = !{i64 2154429447}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2154365487, i64 2154365974, i64 2154365524, i64 2154365580, i64 2154365614, i64 2154365638, i64 2154365679, i64 2154365700, i64 2154365728, i64 2154365762}
!129 = !{i64 2148751569, i64 2148751574, i64 2148751587, i64 2148751631, i64 2148751665, i64 2148751686}
