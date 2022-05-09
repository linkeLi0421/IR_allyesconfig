; ModuleID = '/llk/IR_all_yes/drivers/dma/lgm/lgm-dma.c_pt.bc'
source_filename = "../drivers/dma/lgm/lgm-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ldma_inst_data = type { i8, i8, i8, i8, i32, ptr, i32 }
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
%struct.ldma_dev = type { ptr, ptr, ptr, ptr, %struct.dma_device, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ldma_port = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ldma_chan = type { %struct.virt_dma_chan, ptr, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.work_struct, %struct.dma_slave_config }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dw2_desc_sw = type { %struct.virt_dma_desc, ptr, i32, i32, i32, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.dw2_desc = type { i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_lgm_dma__418_1739_intel_ldma_init6 = internal global ptr @intel_ldma_init, section ".initcall6.init", align 4
@intel_ldma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @intel_ldma_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @intel_ldma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lgm-dma\00", [24 x i8] zeroinitializer }, align 32
@intel_ldma_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-cdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dma0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-dma2tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dma2tx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-dma1rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dma1rx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-dma1tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dma1tx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-dma0tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dma0tx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-dma3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dma3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-toe-dma30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @toe_dma30 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-toe-dma31\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @toe_dma31 }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No device match found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intel_ldma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/dma/lgm/lgm-dma.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry_ptr = internal global ptr @intel_ldma_probe._entry, section ".printk_index", align 4
@intel_ldma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1605, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to devm_add_action_or_reset, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry_ptr.8 = internal global ptr @intel_ldma_probe._entry.6, section ".printk_index", align 4
@intel_ldma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry_ptr.11 = internal global ptr @intel_ldma_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma-channel-mask\00", [47 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1703, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to register slave DMA engine device\0A\00", [52 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry_ptr.15 = internal global ptr @intel_ldma_probe._entry.13, section ".printk_index", align 4
@intel_ldma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register of DMA controller\0A\00", [58 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry_ptr.18 = internal global ptr @intel_ldma_probe._entry.16, section ".printk_index", align 4
@intel_ldma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1715, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Init done - rev: %x, ports: %d channels: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@intel_ldma_probe._entry_ptr.22 = internal global ptr @intel_ldma_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@ldma_init_v22._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to read dma-channels property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldma_init_v22\00", [18 x i8] zeroinitializer }, align 32
@ldma_init_v22._entry_ptr = internal global ptr @ldma_init_v22._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_wq\00", [25 x i8] zeroinitializer }, align 32
@dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dummy interrupt\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_interrupt\00", [18 x i8] zeroinitializer }, align 32
@dma_interrupt._entry_ptr = internal global ptr @dma_interrupt._entry, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel,dma-byte-en\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"intel,dma-dburst-wr\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intel,dma-drb\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel,dma-poll-cnt\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chan%d\00", [25 x i8] zeroinitializer }, align 32
@ldma_dma_init_v22.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&c->work)\00", [36 x i8] zeroinitializer }, align 32
@ldma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to allocate descriptor pool\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ldma_alloc_chan_resources\00", [38 x i8] zeroinitializer }, align 32
@ldma_alloc_chan_resources._entry_ptr = internal global ptr @ldma_alloc_chan_resources._entry, section ".printk_index", align 4
@ldma_chan_desc_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Channel %d must allocate descriptor first\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ldma_chan_desc_cfg\00", [45 x i8] zeroinitializer }, align 32
@ldma_chan_desc_cfg._entry_ptr = internal global ptr @ldma_chan_desc_cfg._entry, section ".printk_index", align 4
@ldma_chan_desc_cfg._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Channel %d descriptor number out of range %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ldma_chan_desc_cfg._entry_ptr.41 = internal global ptr @ldma_chan_desc_cfg._entry.39, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_alloc_desc_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 981, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sg num %d exceed max %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma_alloc_desc_resource\00", [40 x i8] zeroinitializer }, align 32
@dma_alloc_desc_resource._entry_ptr = internal global ptr @dma_alloc_desc_resource._entry, section ".printk_index", align 4
@dma_alloc_desc_resource.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 -8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lgm_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"out of memory for link descriptor\0A\00", [61 x i8] zeroinitializer }, align 32
@ldma_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&d->dev_lock\00", [19 x i8] zeroinitializer }, align 32
@ldma_dev_cfg.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -128, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldma_dev_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s Controller 0x%08x configuration done\0A\00", [55 x i8] zeroinitializer }, align 32
@ldma_port_cfg.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -43, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldma_port_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Port Control 0x%08x configuration done\0A\00", [56 x i8] zeroinitializer }, align 32
@dma0 = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 0, i8 0, i8 0, i8 0, i32 0, ptr @.str.51, i32 0 }, [16 x i8] zeroinitializer }, align 32
@dma2tx = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 1, i8 1, i8 1, i8 1, i32 16, ptr @.str.52, i32 0 }, [16 x i8] zeroinitializer }, align 32
@dma1rx = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 1, i8 0, i8 1, i8 0, i32 16, ptr @.str.53, i32 1 }, [16 x i8] zeroinitializer }, align 32
@dma1tx = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 1, i8 1, i8 1, i8 1, i32 16, ptr @.str.54, i32 0 }, [16 x i8] zeroinitializer }, align 32
@dma0tx = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 1, i8 1, i8 1, i8 1, i32 16, ptr @.str.55, i32 0 }, [16 x i8] zeroinitializer }, align 32
@dma3 = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 1, i8 0, i8 0, i8 0, i32 16, ptr @.str.56, i32 2 }, [16 x i8] zeroinitializer }, align 32
@toe_dma30 = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 1, i8 0, i8 0, i8 1, i32 16, ptr @.str.57, i32 2 }, [16 x i8] zeroinitializer }, align 32
@toe_dma31 = internal constant { %struct.ldma_inst_data, [16 x i8] } { %struct.ldma_inst_data { i8 1, i8 0, i8 0, i8 1, i32 16, ptr @.str.58, i32 2 }, [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma0\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma2tx\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma1rx\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma1tx\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma0tx\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma3\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"toe_dma30\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"toe_dma31\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"intel_ldma_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1720, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1723, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"intel_ldma_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1552, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1584, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1605, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1625, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1635, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1703, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1709, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1714, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1443, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1445, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1458, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1126, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 923, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 926, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 929, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 932, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1412, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1413, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1289, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 667, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 673, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 981, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 993, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 900, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 513, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 855, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [5 x i8] c"dma0\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1474, i32 36 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"dma2tx\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1482, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"dma1rx\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1492, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"dma1tx\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1502, i32 36 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"dma0tx\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1512, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant [5 x i8] c"dma3\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1522, i32 36 }
@___asan_gen_.242 = private unnamed_addr constant [10 x i8] c"toe_dma30\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1532, i32 36 }
@___asan_gen_.245 = private unnamed_addr constant [10 x i8] c"toe_dma31\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1542, i32 36 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1475, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1483, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1493, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1503, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1513, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1523, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1533, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [29 x i8] c"../drivers/dma/lgm/lgm-dma.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1543, i32 10 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__initcall__kmod_lgm_dma__418_1739_intel_ldma_init6, ptr @dma_alloc_desc_resource._entry, ptr @dma_alloc_desc_resource._entry_ptr, ptr @dma_interrupt._entry, ptr @dma_interrupt._entry_ptr, ptr @intel_ldma_probe._entry, ptr @intel_ldma_probe._entry.13, ptr @intel_ldma_probe._entry.16, ptr @intel_ldma_probe._entry.19, ptr @intel_ldma_probe._entry.6, ptr @intel_ldma_probe._entry.9, ptr @intel_ldma_probe._entry_ptr, ptr @intel_ldma_probe._entry_ptr.11, ptr @intel_ldma_probe._entry_ptr.15, ptr @intel_ldma_probe._entry_ptr.18, ptr @intel_ldma_probe._entry_ptr.22, ptr @intel_ldma_probe._entry_ptr.8, ptr @ldma_alloc_chan_resources._entry, ptr @ldma_alloc_chan_resources._entry_ptr, ptr @ldma_chan_desc_cfg._entry, ptr @ldma_chan_desc_cfg._entry.39, ptr @ldma_chan_desc_cfg._entry_ptr, ptr @ldma_chan_desc_cfg._entry_ptr.41, ptr @ldma_init_v22._entry, ptr @ldma_init_v22._entry_ptr, ptr @intel_ldma_driver, ptr @.str, ptr @intel_ldma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ldma_dma_init_v22.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @ldma_dev_init.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @dma0, ptr @dma2tx, ptr @dma1rx, ptr @dma1tx, ptr @dma0tx, ptr @dma3, ptr @toe_dma30, ptr @toe_dma31, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_ldma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldma_init_v22._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldma_dma_init_v22.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldma_chan_desc_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldma_chan_desc_cfg._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_alloc_desc_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldma_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma1rx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma1tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma0tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toe_dma30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toe_dma31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_ldma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intel_ldma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_ldma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ch_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_mask) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 468, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev1) #9
  %inst = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %inst, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef null) #9
  %core_clk = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %core_clk, align 4
  %cmp.i321 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call.i322 = tail call i32 @clk_prepare(ptr noundef %call16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool.not.i = icmp eq i32 %call.i322, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.clk_prepare_enable.exit_crit_edge

if.end22.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call16) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end22.clk_prepare_enable.exit_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %rst = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i323 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %if.then28, label %if.end31

if.then28:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end31:                                         ; preds = %clk_prepare_enable.exit
  %call33 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #9
  %call.i324 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @ldma_clk_disable, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool.not.i325 = icmp eq i32 %call.i324, 0
  br i1 %tobool.not.i325, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call.i.i326 = tail call i32 @reset_control_assert(ptr noundef %11) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call.i324) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !141
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %and = lshr i32 %15, 20
  %shr = and i32 %and, 127
  %chan_nrs = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %chan_nrs, align 4
  %and76 = lshr i32 %15, 16
  %shr77 = and i32 %and76, 15
  %port_nrs = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %port_nrs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr77, ptr %port_nrs, align 4
  %and94 = and i32 %15, 255
  %ver = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and94, ptr %ver, align 4
  %and96 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end40.if.end99_crit_edge, label %if.then98

if.end40.if.end99_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then98:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 13
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or = or i32 %20, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end40.if.end99_crit_edge
  %and100 = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.cond.end_crit_edge, label %if.then102

if.end99.cond.end_crit_edge:                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %flags103 = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 13
  %21 = ptrtoint ptr %flags103 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags103, align 4
  %or104 = or i32 %22, 2
  store i32 %or104, ptr %flags103, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then102, %if.end99.cond.end_crit_edge
  %call.i328 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %cmp.i329 = icmp eq i32 %call.i328, 0
  br i1 %cmp.i329, label %if.end112, label %do.end111

do.end111:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end112:                                        ; preds = %cond.end
  %call1.i330 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  %23 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp114 = icmp eq i32 %24, 10
  br i1 %cmp114, label %if.then115, label %if.end112.if.end120_crit_edge

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then115:                                       ; preds = %if.end112
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call.i.i333 = tail call i32 @device_property_read_u32_array(ptr noundef %26, ptr noundef nonnull @.str.23, ptr noundef %chan_nrs, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i333)
  %cmp.i334 = icmp slt i32 %call.i.i333, 0
  br i1 %cmp.i334, label %do.end.i, label %if.end.i335

do.end.i:                                         ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end.i335:                                      ; preds = %if.then115
  %call2.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq.i = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call2.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp4.i = icmp slt i32 %call2.i, 0
  br i1 %cmp4.i, label %if.end.i335.cleanup_crit_edge, label %if.end7.i

if.end.i335.cleanup_crit_edge:                    ; preds = %if.end.i335
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i335
  %call.i31.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call2.i, ptr noundef nonnull @dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i336 = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i336, label %if.end12.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end7.i
  %call13.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.26, i32 noundef 655386, i32 noundef 1) #9
  %wq.i = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call13.i, ptr %wq.i, align 4
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %if.end12.i.cleanup_crit_edge, label %if.end12.i.if.end120_crit_edge

if.end12.i.if.end120_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end120:                                        ; preds = %if.end12.i.if.end120_crit_edge, %if.end112.if.end120_crit_edge
  %channels_mask = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 12
  %call.i337 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %channels_mask, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %cmp122 = icmp slt i32 %call.i337, 0
  br i1 %cmp122, label %if.then123, label %if.end120.if.end130_crit_edge

if.end120.if.end130_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan_nrs, align 4
  %sub126 = sub i32 32, %32
  %shr127 = lshr i32 -1, %sub126
  %33 = ptrtoint ptr %channels_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr127, ptr %channels_mask, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then123, %if.end120.if.end130_crit_edge
  %dma_dev131 = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4
  %cap_mask = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  %channels = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 3, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %channels, ptr %prev.i, align 4
  %37 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port_nrs, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 28) #9
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !143

devm_kcalloc.exit.thread:                         ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %ports352 = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %ports352 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %ports352, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end130
  %42 = extractvalue { i32, i1 } %39, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %42, i32 noundef 3520) #9
  %ports = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i, ptr %ports, align 4
  %tobool136.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool136.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end138

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end138:                                        ; preds = %devm_kcalloc.exit
  %44 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chan_nrs, align 4
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 352) #9
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %devm_kcalloc.exit341.thread, label %devm_kcalloc.exit341, !prof !143

devm_kcalloc.exit341.thread:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %chans355 = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %chans355 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %chans355, align 4
  br label %cleanup

devm_kcalloc.exit341:                             ; preds = %if.end138
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %51 = extractvalue { i32, i1 } %46, 0
  %call5.i.i338 = tail call noalias ptr @devm_kmalloc(ptr noundef %50, i32 noundef %51, i32 noundef 3520) #9
  %chans = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 8
  %52 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i338, ptr %chans, align 4
  %tobool143.not = icmp eq ptr %call5.i.i338, null
  br i1 %tobool143.not, label %devm_kcalloc.exit341.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit341.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit341
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit341
  %53 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port_nrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp147357.not = icmp eq i32 %54, 0
  br i1 %cmp147357.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0358 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %55 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ldma_port, ptr %56, i32 %i.0358
  %portid = getelementptr %struct.ldma_port, ptr %56, i32 %i.0358, i32 1
  %57 = ptrtoint ptr %portid to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %i.0358, ptr %portid, align 4
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0358, 1
  %59 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port_nrs, align 4
  %cmp147 = icmp ult i32 %inc, %60
  br i1 %cmp147, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call149 = tail call fastcc i32 @ldma_cfg_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end152:                                        ; preds = %for.end
  %dev154 = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 15
  %61 = ptrtoint ptr %dev154 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dev1, ptr %dev154, align 4
  %62 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channels_mask, align 4
  %64 = ptrtoint ptr %ch_mask to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ch_mask, align 4
  %65 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chan_nrs, align 4
  %call157 = call i32 @_find_next_bit_be(ptr noundef nonnull %ch_mask, i32 noundef %66, i32 noundef 0) #9
  %67 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chan_nrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call157, i32 %68)
  %cmp160359 = icmp ult i32 %call157, %68
  br i1 %cmp160359, label %if.end152.for.body161_crit_edge, label %if.end152.for.end170_crit_edge

if.end152.for.end170_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end170

if.end152.for.body161_crit_edge:                  ; preds = %if.end152
  br label %for.body161

for.body161:                                      ; preds = %for.inc166.for.body161_crit_edge, %if.end152.for.body161_crit_edge
  %j.0360 = phi i32 [ %call169, %for.inc166.for.body161_crit_edge ], [ %call157, %if.end152.for.body161_crit_edge ]
  %69 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %70)
  %cmp163 = icmp eq i32 %70, 10
  %71 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chans, align 4
  %arrayidx.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360
  br i1 %cmp163, label %if.then164, label %if.else

if.then164:                                       ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #11
  %nr.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 3
  %73 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %j.0360, ptr %nr.i, align 4
  %rst.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 9
  %74 = ptrtoint ptr %rst.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %rst.i, align 4
  %desc_num.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 22
  %75 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %desc_num.i, align 4
  %name.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 2
  %call.i342 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 8, ptr noundef nonnull @.str.33, i32 noundef %j.0360) #9
  %work.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 24
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #9
  %76 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 24, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @ldma_dma_init_v22.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry5.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 24, i32 1
  %77 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 24, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 24, i32 2
  %79 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @dma_work, ptr %func.i, align 4
  br label %for.inc166

if.else:                                          ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #11
  %data_endian.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 13
  %80 = ptrtoint ptr %data_endian.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %data_endian.i, align 4
  %desc_endian.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 14
  %81 = ptrtoint ptr %desc_endian.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %desc_endian.i, align 4
  %data_endian_en.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 17
  %82 = ptrtoint ptr %data_endian_en.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %data_endian_en.i, align 2
  %desc_endian_en.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 18
  %83 = ptrtoint ptr %desc_endian_en.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %desc_endian_en.i, align 1
  %desc_rx_np.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 16
  %84 = ptrtoint ptr %desc_rx_np.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %desc_rx_np.i, align 1
  %flags.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 4
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %86, 4
  store i32 %or.i, ptr %flags.i, align 4
  %onoff.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 5
  %87 = ptrtoint ptr %onoff.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %onoff.i, align 4
  %rst.i345 = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 9
  %88 = ptrtoint ptr %rst.i345 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %rst.i345, align 4
  %abc_en.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 19
  %89 = ptrtoint ptr %abc_en.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %abc_en.i, align 4
  %hdrm_csum.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 11
  %90 = ptrtoint ptr %hdrm_csum.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %hdrm_csum.i, align 4
  %boff_len.i = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 12
  %91 = ptrtoint ptr %boff_len.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %boff_len.i, align 4
  %nr.i346 = getelementptr %struct.ldma_chan, ptr %72, i32 %j.0360, i32 3
  %92 = ptrtoint ptr %nr.i346 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %j.0360, ptr %nr.i346, align 4
  br label %for.inc166

for.inc166:                                       ; preds = %if.else, %if.then164
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx.i, i32 0, i32 2
  %93 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @dma_free_desc_resource, ptr %desc_free.i, align 4
  call void @vchan_init(ptr noundef %arrayidx.i, ptr noundef %dma_dev131) #9
  %94 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chan_nrs, align 4
  %add168 = add nuw i32 %j.0360, 1
  %call169 = call i32 @_find_next_bit_be(ptr noundef nonnull %ch_mask, i32 noundef %95, i32 noundef %add168) #9
  %96 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %chan_nrs, align 4
  %cmp160 = icmp ult i32 %call169, %97
  br i1 %cmp160, label %for.inc166.for.body161_crit_edge, label %for.inc166.for.end170_crit_edge

for.inc166.for.end170_crit_edge:                  ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end170

for.inc166.for.body161_crit_edge:                 ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body161

for.end170:                                       ; preds = %for.inc166.for.end170_crit_edge, %if.end152.for.end170_crit_edge
  %device_alloc_chan_resources = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 27
  %98 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @ldma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 29
  %99 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @ldma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_terminate_all = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 47
  %100 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @ldma_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 50
  %101 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @ldma_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 49
  %102 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @ldma_tx_status, ptr %device_tx_status, align 4
  %device_resume = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 46
  %103 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @ldma_resume_chan, ptr %device_resume, align 4
  %device_pause = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 45
  %104 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @ldma_pause_chan, ptr %device_pause, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 39
  %105 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @ldma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %106 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %107)
  %cmp172 = icmp eq i32 %107, 10
  br i1 %cmp172, label %if.then173, label %for.end170.if.end174_crit_edge

for.end170.if.end174_crit_edge:                   ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174

if.then173:                                       ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #11
  %device_config = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 44
  %108 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @ldma_slave_config, ptr %device_config, align 4
  %device_synchronize = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 48
  %109 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @ldma_synchronize, ptr %device_synchronize, align 4
  %src_addr_widths = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 19
  %110 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 20
  %111 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 21
  %112 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.ldma_dev, ptr %call.i, i32 0, i32 4, i32 26
  %113 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %residue_granularity, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %for.end170.if.end174_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call fastcc void @ldma_dev_init(ptr noundef nonnull %call.i)
  %call175 = call i32 @dma_async_device_register(ptr noundef %dma_dev131) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end181, label %do.end180

do.end180:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end181:                                        ; preds = %if.end174
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %115 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %of_node, align 8
  %call183 = call i32 @of_dma_controller_register(ptr noundef %116, ptr noundef nonnull @ldma_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %do.end192, label %do.end188

do.end188:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  call void @dma_async_device_unregister(ptr noundef %dma_dev131) #9
  br label %cleanup

do.end192:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ver, align 4
  %119 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port_nrs, align 4
  %121 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %chan_nrs, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %118, i32 noundef %120, i32 noundef %122) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end192, %do.end188, %do.end180, %for.end.cleanup_crit_edge, %devm_kcalloc.exit341.cleanup_crit_edge, %devm_kcalloc.exit341.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end12.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i335.cleanup_crit_edge, %do.end.i, %do.end111, %do.end39, %if.then28, %if.then19, %if.then12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then12 ], [ %5, %if.then19 ], [ %7, %if.then28 ], [ %call.i324, %do.end39 ], [ %call.i328, %do.end111 ], [ %call175, %do.end180 ], [ %call183, %do.end188 ], [ 0, %do.end192 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit341.cleanup_crit_edge ], [ %call149, %for.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit341.thread ], [ %call.i31.i, %if.end7.i.cleanup_crit_edge ], [ %call2.i, %if.end.i335.cleanup_crit_edge ], [ %call.i.i333, %do.end.i ], [ -12, %if.end12.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_mask) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ldma_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %core_clk = getelementptr inbounds %struct.ldma_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #9
  tail call void @clk_unprepare(ptr noundef %1) #9
  %rst = getelementptr inbounds %struct.ldma_dev, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %3) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ldma_cfg_init(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %call = tail call ptr @dev_fwnode(ptr noundef %1) #9
  %call.i = tail call zeroext i1 @fwnode_property_present(ptr noundef %call, ptr noundef nonnull @.str.29) #9
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i74 = tail call zeroext i1 @fwnode_property_present(ptr noundef %call, ptr noundef nonnull @.str.30) #9
  br i1 %call.i74, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags4 = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags4, align 4
  %or5 = or i32 %5, 64
  store i32 %or5, ptr %flags4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call.i75 = tail call zeroext i1 @fwnode_property_present(ptr noundef %call, ptr noundef nonnull @.str.31) #9
  br i1 %call.i75, label %if.then8, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %flags9 = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags9, align 4
  %or10 = or i32 %7, 256
  store i32 %or10, ptr %flags9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %pollcnt = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 14
  %call.i76 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %call, ptr noundef nonnull @.str.32, ptr noundef %pollcnt, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not = icmp eq i32 %call.i76, 0
  br i1 %tobool.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pollcnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %pollcnt, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %inst = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 15
  %9 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inst, align 4
  %chan_fc = getelementptr inbounds %struct.ldma_inst_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %chan_fc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chan_fc, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %flags18 = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %13 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags18, align 4
  %or19 = or i32 %14, 4
  store i32 %or19, ptr %flags18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %desc_fod = getelementptr inbounds %struct.ldma_inst_data, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %desc_fod to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %desc_fod, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %flags24 = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %17 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags24, align 4
  %or25 = or i32 %18, 8
  store i32 %or25, ptr %flags24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %10, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool28.not = icmp eq i8 %20, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %flags30 = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %21 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags30, align 4
  %or31 = or i32 %22, 16
  store i32 %or31, ptr %flags30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %valid_desc_fetch_ack = getelementptr inbounds %struct.ldma_inst_data, ptr %10, i32 0, i32 3
  %23 = ptrtoint ptr %valid_desc_fetch_ack to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %valid_desc_fetch_ack, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool34.not = icmp eq i8 %24, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %flags36 = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %25 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags36, align 4
  %or37 = or i32 %26, 128
  store i32 %or37, ptr %flags36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %ver = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 5
  %27 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %28)
  %cmp = icmp ugt i32 %28, 10
  br i1 %cmp, label %if.then39, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %if.end38
  %port_nrs = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 11
  %29 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_nrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool40.not = icmp eq i32 %30, 0
  br i1 %tobool40.not, label %if.then39.cleanup_crit_edge, label %for.cond.preheader

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then39
  %31 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_nrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp4477.not = icmp eq i32 %32, 0
  br i1 %cmp4477.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ports = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %33 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ports, align 4
  %rxendi = getelementptr %struct.ldma_port, ptr %34, i32 %i.078, i32 4
  %35 = ptrtoint ptr %rxendi to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %rxendi, align 4
  %txendi = getelementptr %struct.ldma_port, ptr %34, i32 %i.078, i32 5
  %36 = ptrtoint ptr %txendi to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %txendi, align 4
  %rxbl = getelementptr %struct.ldma_port, ptr %34, i32 %i.078, i32 2
  %37 = ptrtoint ptr %rxbl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %rxbl, align 4
  %txbl = getelementptr %struct.ldma_port, ptr %34, i32 %i.078, i32 3
  %38 = ptrtoint ptr %txbl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16, ptr %txbl, align 4
  %pkt_drop = getelementptr %struct.ldma_port, ptr %34, i32 %i.078, i32 6
  %39 = ptrtoint ptr %pkt_drop to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pkt_drop, align 4
  %inc = add nuw i32 %i.078, 1
  %40 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_nrs, align 4
  %cmp44 = icmp ult i32 %inc, %41
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then39.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ldma_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev6 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  %ver = getelementptr i8, ptr %1, i32 364
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp = icmp ugt i32 %5, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 8
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc_pool = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 21
  %8 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %9, null
  %desc_num9 = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 22
  %10 = ptrtoint ptr %desc_num9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_num9, align 4
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %11, 3
  %name = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 2
  %call10 = tail call ptr @dma_pool_create(ptr noundef %name, ptr noundef %3, i32 noundef %mul, i32 noundef 8, i32 noundef 0) #9
  %12 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %desc_pool, align 4
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %desc_num9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %desc_num9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %14, %if.end15 ], [ -12, %do.end ], [ %11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ldma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %ver = getelementptr i8, ptr %1, i32 364
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %desc_pool = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 21
  %4 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %5) #9
  %6 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %desc_pool, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %7 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %head.i, ptr %head.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head.i, ptr %7, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %10 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %11, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %13, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %head.i, ptr %15, align 4
  store ptr %15, ptr %7, align 4
  %19 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.then.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %20 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %21, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i12.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %21, ptr %23, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %head.i, ptr %25, align 4
  store ptr %25, ptr %7, align 4
  %29 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %30 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %31, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i18.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %31, ptr %33, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %head.i, ptr %35, align 4
  store ptr %35, ptr %7, align 4
  %39 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %40 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %41, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i24.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %41, ptr %43, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %head.i, ptr %45, align 4
  store ptr %45, ptr %7, align 4
  %49 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %50 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %51, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %7, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i30.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %51, ptr %53, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %head.i, ptr %55, align 4
  store ptr %55, ptr %7, align 4
  %59 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %60 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %60)
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
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %62, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %63 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %63)
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
  %call5 = call fastcc i32 @ldma_chan_reset(ptr noundef %chan)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 4
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and = and i32 %65, -9
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %vchan_free_chan_resources.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ldma_terminate_all(ptr noundef %chan) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
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
  store ptr %head, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %14, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %24, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %34, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %44, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  %call10 = call fastcc i32 @ldma_chan_reset(ptr noundef %chan)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ldma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %ver = getelementptr i8, ptr %1, i32 364
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %do.body3, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body3:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %do.body3.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

do.body3.vchan_issue_pending.exit_crit_edge:      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc_issued.i, ptr %9, align 4
  store ptr %9, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %do.body3.vchan_issue_pending.exit_crit_edge
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %15, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end22_crit_edge, label %if.then12

vchan_issue_pending.exit.if.end22_crit_edge:      ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then12:                                        ; preds = %vchan_issue_pending.exit
  %16 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %17, %desc_issued.i
  %add.ptr.i48 = getelementptr i8, ptr %17, i32 -108
  %tobool.not51 = icmp eq ptr %add.ptr.i48, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not51
  br i1 %tobool.not, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %ds = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 23
  %18 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ds, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup27

if.end:                                           ; preds = %if.then12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i49 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i49, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ds19 = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 23
  %27 = ptrtoint ptr %ds19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i48, ptr %ds19, align 4
  %desc_phys = getelementptr i8, ptr %17, i32 12
  %28 = ptrtoint ptr %desc_phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_phys, align 4
  %desc_cnt = getelementptr i8, ptr %17, i32 16
  %30 = ptrtoint ptr %desc_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %desc_cnt, align 4
  tail call fastcc void @ldma_chan_desc_hw_cfg(ptr noundef %chan, i32 noundef %29, i32 noundef %31)
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan, align 4
  %dev_lock.i = getelementptr i8, ptr %33, i32 380
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %nr.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 3
  %34 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %base.i = getelementptr i8, ptr %33, i32 -12
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %36) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 33554432) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr.i, align 4
  %shl.i = shl nuw i32 1, %42
  %43 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %45, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %43) #9, !srcloc !146
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call3.i) #9
  br label %if.end22

if.end22:                                         ; preds = %list_del.exit, %vchan_issue_pending.exit.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %entry.if.end25_crit_edge
  tail call fastcc void @ldma_chan_on(ptr noundef %chan)
  br label %cleanup27

cleanup27:                                        ; preds = %if.end25, %if.then15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ldma_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %ver = getelementptr i8, ptr %1, i32 364
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %9 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %10 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %11 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i.i = icmp sgt i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %7, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %5, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.if.end_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.if.end_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.end8.i.i, %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.if.end_crit_edge ], [ 0, %if.else.i.i.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ldma_resume_chan(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ldma_chan_on(ptr noundef %chan)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ldma_pause_chan(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @ldma_chan_off(ptr noundef %chan)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ldma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sglen, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %tobool.not = icmp eq ptr %sgl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ver = getelementptr i8, ptr %1, i32 364
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp ugt i32 %3, 10
  br i1 %cmp, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen)
  %cmp6388.not = icmp eq i32 %sglen, 0
  br i1 %cmp6388.not, label %for.end.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then3:                                         ; preds = %if.end
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen)
  %tobool.not.i = icmp eq i32 %sglen, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %nr.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 3
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef %9) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %sglen)
  %cmp.i = icmp sgt i32 %sglen, 8191
  br i1 %cmp.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %nr8.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %nr8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef %13, i32 noundef %sglen) #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  tail call fastcc void @ldma_chan_desc_hw_cfg(ptr noundef %chan, i32 noundef %5, i32 noundef %sglen) #9
  %flags.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %15, 16
  store i32 %or.i, ptr %flags.i, align 4
  %desc_cnt.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 8
  %16 = ptrtoint ptr %desc_cnt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sglen, ptr %desc_cnt.i, align 4
  %desc_phys.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 6
  %17 = ptrtoint ptr %desc_phys.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %5, ptr %desc_phys.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2304, i32 noundef 136) #13
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end13.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %sg.0391 = phi ptr [ %call12, %for.body.for.body_crit_edge ], [ %sgl, %for.cond.preheader.for.body_crit_edge ]
  %num.0390 = phi i32 [ %num.1, %for.body.for.body_crit_edge ], [ %sglen, %for.cond.preheader.for.body_crit_edge ]
  %i.0389 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0391, i32 0, i32 4
  %19 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %20)
  %cmp7 = icmp ugt i32 %20, 65535
  %sub = add i32 %20, 65534
  %div = udiv i32 %sub, 65535
  %sub9 = add nsw i32 %div, -1
  %add10 = select i1 %cmp7, i32 %sub9, i32 0
  %num.1 = add i32 %add10, %num.0390
  %inc = add nuw i32 %i.0389, 1
  %call12 = tail call ptr @sg_next(ptr noundef %sg.0391) #9
  %exitcond.not = icmp eq i32 %inc, %sglen
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %call13 = tail call fastcc ptr @dma_alloc_desc_resource(i32 noundef %num.1, ptr noundef %chan)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.end16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.thread:                                   ; preds = %for.cond.preheader
  %call13400 = tail call fastcc ptr @dma_alloc_desc_resource(i32 noundef 0, ptr noundef %chan)
  %tobool14.not401 = icmp eq ptr %call13400, null
  br i1 %tobool14.not401, label %for.end.thread.cleanup_crit_edge, label %if.end16.thread

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.thread:                                  ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %ds17405 = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 23
  %21 = ptrtoint ptr %ds17405 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call13400, ptr %ds17405, align 4
  br label %for.end302

if.end16:                                         ; preds = %for.end
  %ds17 = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 23
  %22 = ptrtoint ptr %ds17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call13, ptr %ds17, align 4
  br i1 %cmp6388.not, label %if.end16.for.end302_crit_edge, label %for.body20.lr.ph

if.end16.for.end302_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end302

for.body20.lr.ph:                                 ; preds = %if.end16
  %desc_hw = getelementptr inbounds %struct.dw2_desc_sw, ptr %call13, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sglen)
  %cond315 = icmp eq i32 %sglen, 1
  %sub102 = add i32 %sglen, -1
  br label %for.body20

for.body20:                                       ; preds = %for.inc299.for.body20_crit_edge, %for.body20.lr.ph
  %total.0396 = phi i32 [ 0, %for.body20.lr.ph ], [ %add23, %for.inc299.for.body20_crit_edge ]
  %sg.1395 = phi ptr [ %sgl, %for.body20.lr.ph ], [ %call301, %for.inc299.for.body20_crit_edge ]
  %num.2394 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc293, %for.inc299.for.body20_crit_edge ]
  %i.1393 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc300, %for.inc299.for.body20_crit_edge ]
  %dma_address21 = getelementptr inbounds %struct.scatterlist, ptr %sg.1395, i32 0, i32 3
  %23 = ptrtoint ptr %dma_address21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address21, align 4
  %dma_length22 = getelementptr inbounds %struct.scatterlist, ptr %sg.1395, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length22, align 4
  br label %do.body

do.body:                                          ; preds = %do.end211.do.body_crit_edge, %for.body20
  %addr.0 = phi i32 [ %24, %for.body20 ], [ %add294, %do.end211.do.body_crit_edge ]
  %num.3 = phi i32 [ %num.2394, %for.body20 ], [ %inc293, %do.end211.do.body_crit_edge ]
  %avail.0 = phi i32 [ %26, %for.body20 ], [ %sub295, %do.end211.do.body_crit_edge ]
  %27 = tail call i32 @llvm.umin.i32(i32 %avail.0, i32 65535)
  %28 = ptrtoint ptr %desc_hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc_hw, align 4
  %arrayidx = getelementptr %struct.dw2_desc, ptr %29, i32 %num.3
  br i1 %cond315, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 8
  %or59 = or i32 %31, 805306368
  br label %do.end211

sw.default:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.3)
  %cmp60 = icmp eq i32 %num.3, 0
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 8
  %or81 = and i32 %33, -805306369
  %and83 = or i32 %or81, 536870912
  br label %do.end211

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %num.3, i32 %sub102)
  %cmp103 = icmp eq i32 %num.3, %sub102
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 8
  %and126 = and i32 %35, -805306369
  %or144 = or i32 %and126, 268435456
  %spec.select = select i1 %cmp103, i32 %or144, i32 %and126
  br label %do.end211

do.end211:                                        ; preds = %if.else, %if.then61, %sw.bb
  %or59.sink = phi i32 [ %or59, %sw.bb ], [ %and83, %if.then61 ], [ %spec.select, %if.else ]
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or59.sink, ptr %arrayidx, align 8
  %addr188 = getelementptr %struct.dw2_desc, ptr %29, i32 %num.3, i32 1
  %37 = ptrtoint ptr %addr188 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %addr.0, ptr %addr188, align 4
  %.masked = and i32 %or59.sink, -1132527616
  %and245 = shl i32 %addr.0, 23
  %shl263 = and i32 %and245, 25165824
  %and217 = or i32 %27, %shl263
  %or266 = or i32 %and217, %.masked
  store i32 %or266, ptr %arrayidx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 8
  %or289 = or i32 %39, -2147483648
  store i32 %or289, ptr %arrayidx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %inc293 = add i32 %num.3, 1
  %add294 = add i32 %27, %addr.0
  %sub295 = sub i32 %avail.0, %27
  %tobool297.not = icmp eq i32 %sub295, 0
  br i1 %tobool297.not, label %for.inc299, label %do.end211.do.body_crit_edge

do.end211.do.body_crit_edge:                      ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc299:                                       ; preds = %do.end211
  %add23 = add i32 %26, %total.0396
  %inc300 = add nuw i32 %i.1393, 1
  %call301 = tail call ptr @sg_next(ptr noundef %sg.1395) #9
  %exitcond398.not = icmp eq i32 %inc300, %sglen
  br i1 %exitcond398.not, label %for.inc299.for.end302_crit_edge, label %for.inc299.for.body20_crit_edge

for.inc299.for.body20_crit_edge:                  ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.inc299.for.end302_crit_edge:                  ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end302

for.end302:                                       ; preds = %for.inc299.for.end302_crit_edge, %if.end16.for.end302_crit_edge, %if.end16.thread
  %call13402406 = phi ptr [ %call13, %if.end16.for.end302_crit_edge ], [ %call13400, %if.end16.thread ], [ %call13, %for.inc299.for.end302_crit_edge ]
  %total.0.lcssa = phi i32 [ 0, %if.end16.for.end302_crit_edge ], [ 0, %if.end16.thread ], [ %add23, %for.inc299.for.end302_crit_edge ]
  %size = getelementptr inbounds %struct.dw2_desc_sw, ptr %call13402406, i32 0, i32 4
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %total.0.lcssa, ptr %size, align 4
  %port.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 1
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 25, i32 6
  %43 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dst_maxburst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i385 = icmp eq i32 %44, 0
  br i1 %tobool.not.i385, label %for.end302.prep_slave_burst_len.exit_crit_edge, label %if.then.i

for.end302.prep_slave_burst_len.exit_crit_edge:   ; preds = %for.end302
  call void @__sanitizer_cov_trace_pc() #11
  br label %prep_slave_burst_len.exit

if.then.i:                                        ; preds = %for.end302
  call void @__sanitizer_cov_trace_pc() #11
  %src_maxburst.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 25, i32 5
  %45 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %src_maxburst.i, align 4
  br label %prep_slave_burst_len.exit

prep_slave_burst_len.exit:                        ; preds = %if.then.i, %for.end302.prep_slave_burst_len.exit_crit_edge
  %src_maxburst2.i = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 25, i32 5
  %46 = ptrtoint ptr %src_maxburst2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_maxburst2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  %48 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 true) #9, !range !152
  %sub.i.op.i.i = xor i32 %48, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %txbl.i = getelementptr inbounds %struct.ldma_port, ptr %42, i32 0, i32 3
  %49 = ptrtoint ptr %txbl.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i.i, ptr %txbl.i, align 4
  %rxbl.i = getelementptr inbounds %struct.ldma_port, ptr %42, i32 0, i32 2
  %50 = ptrtoint ptr %rxbl.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i.i, ptr %rxbl.i, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call13402406, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call13402406, i32 0, i32 1
  %51 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call13402406, i32 0, i32 4
  %52 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call13402406, i32 0, i32 5
  %53 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13402406, i32 0, i32 1
  %54 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13402406, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13402406, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %57, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %prep_slave_burst_len.exit.vchan_tx_prep.exit_crit_edge

prep_slave_burst_len.exit.vchan_tx_prep.exit_crit_edge: ; preds = %prep_slave_burst_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %prep_slave_burst_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %node.i, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13402406, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %node.i, ptr %57, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %prep_slave_burst_len.exit.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %for.end.thread.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end13.i, %if.end9.i.cleanup_crit_edge, %do.end6.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call13402406, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %do.end6.i ], [ %call7.i.i.i, %if.end13.i ], [ null, %do.end.i ], [ null, %if.end9.i.cleanup_crit_edge ], [ null, %for.end.thread.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ldma_slave_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %cfg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 25
  %0 = call ptr @memcpy(ptr %config, ptr %cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ldma_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 24
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %ds = getelementptr inbounds %struct.ldma_chan, ptr %chan, i32 0, i32 23
  %13 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %vchan_synchronize.exit.if.end_crit_edge, label %if.then

vchan_synchronize.exit.if.end_crit_edge:          ; preds = %vchan_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %vchan_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #11
  %chan.i = getelementptr inbounds %struct.dw2_desc_sw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan.i, align 4
  %desc_pool.i = getelementptr inbounds %struct.ldma_chan, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_pool.i, align 4
  %desc_hw.i = getelementptr inbounds %struct.dw2_desc_sw, ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %desc_hw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc_hw.i, align 4
  %desc_phys.i = getelementptr inbounds %struct.dw2_desc_sw, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %desc_phys.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc_phys.i, align 4
  call void @dma_pool_free(ptr noundef %18, ptr noundef %20, i32 noundef %22) #9
  call void @kfree(ptr noundef nonnull %14) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %vchan_synchronize.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ldma_dev_init(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  %ch_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_mask) #9
  %channels_mask = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 12
  %0 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels_mask, align 4
  %2 = ptrtoint ptr %ch_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ch_mask, align 4
  %dev_lock = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %dev_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @ldma_dev_init.__key, i16 noundef signext 3) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %base.i.i = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !141
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %or.i.i = or i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %6)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %6
  br i1 %cmp.not.i.i, label %entry.ldma_dev_reset.exit_crit_edge, label %do.body.i.i

entry.ldma_dev_reset.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_reset.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %7) #9, !srcloc !146
  br label %ldma_dev_reset.exit

ldma_dev_reset.exit:                              ; preds = %do.body.i.i, %entry.ldma_dev_reset.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i) #9
  tail call fastcc void @ldma_dev_cfg(ptr noundef %d)
  %port_nrs = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 11
  %10 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_nrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp28.not = icmp eq i32 %11, 0
  br i1 %cmp28.not, label %ldma_dev_reset.exit.for.end_crit_edge, label %for.body.lr.ph

ldma_dev_reset.exit.for.end_crit_edge:            ; preds = %ldma_dev_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %ldma_dev_reset.exit
  %ports = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ldma_port, ptr %13, i32 %i.029
  tail call fastcc void @ldma_port_cfg(ptr noundef %arrayidx)
  %inc = add nuw i32 %i.029, 1
  %14 = ptrtoint ptr %port_nrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_nrs, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ldma_dev_reset.exit.for.end_crit_edge
  %chan_nrs = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 10
  %16 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan_nrs, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %ch_mask, i32 noundef %17, i32 noundef 0) #9
  %18 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chan_nrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %19)
  %cmp630 = icmp ult i32 %call3, %19
  br i1 %cmp630, label %for.body7.lr.ph, label %for.end.for.end13_crit_edge

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

for.body7.lr.ph:                                  ; preds = %for.end
  %chans = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 8
  br label %for.body7

for.body7:                                        ; preds = %ldma_chan_cfg.exit.for.body7_crit_edge, %for.body7.lr.ph
  %j.031 = phi i32 [ %call3, %for.body7.lr.ph ], [ %call12, %ldma_chan_cfg.exit.for.body7_crit_edge ]
  %20 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chans, align 4
  %arrayidx8 = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8, align 4
  %pden.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 15
  %24 = ptrtoint ptr %pden.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pden.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8388608
  %onoff.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 5
  %26 = ptrtoint ptr %onoff.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %onoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp ne i32 %27, 0
  %cond2.i = zext i1 %tobool1.not.i to i32
  %or.i = or i32 %cond.i, %cond2.i
  %rst.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 9
  %28 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i = icmp eq i32 %29, 0
  %cond4.i = select i1 %tobool3.not.i, i32 0, i32 2
  %or5.i = or i32 %or.i, %cond4.i
  %dev_lock.i.i = getelementptr i8, ptr %23, i32 380
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #9
  %nr.i.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 3
  %30 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr.i.i, align 4
  %base.i.i.i = getelementptr i8, ptr %23, i32 -12
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %33, i32 24
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i.i) #9, !srcloc !141
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i.i = and i32 %35, -64
  %and2.i.i.i = and i32 %31, 63
  %or.i.i.i = or i32 %and.i.i.i, %and2.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %35)
  %cmp.not.i.i.i = icmp eq i32 %or.i.i.i, %35
  br i1 %cmp.not.i.i.i, label %for.body7.ldma_chan_cctrl_cfg.exit.i_crit_edge, label %do.body.i.i.i

for.body7.ldma_chan_cctrl_cfg.exit.i_crit_edge:   ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_cctrl_cfg.exit.i

do.body.i.i.i:                                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %36 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #9
  %37 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %38, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %36) #9, !srcloc !146
  br label %ldma_chan_cctrl_cfg.exit.i

ldma_chan_cctrl_cfg.exit.i:                       ; preds = %do.body.i.i.i, %for.body7.ldma_chan_cctrl_cfg.exit.i_crit_edge
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %40, i32 28
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #9, !srcloc !141
  %42 = call i32 @llvm.bswap.i32(i32 %41) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %and.i.i = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %flags10.i.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 4
  %43 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags10.i.i, align 4
  %..i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %or.i.i27 = or i32 %..i.i, %44
  store i32 %or.i.i27, ptr %flags10.i.i, align 4
  %shr.i.i = and i32 %42, 3584
  %shr46.i.i = and i32 %42, 786432
  %or69.i.i = or i32 %or5.i, %shr.i.i
  %or95.i.i = or i32 %or69.i.i, %shr46.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  call void @arm_heavy_mb() #9
  %45 = call i32 @llvm.bswap.i32(i32 %or95.i.i) #9
  %46 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr100.i.i = getelementptr i8, ptr %47, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i.i, i32 %45) #9, !srcloc !146
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call3.i.i) #9
  %48 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx8, align 4
  %50 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %51)
  %cmp.i.i = icmp slt i32 %51, 32
  %..i3.i = select i1 %cmp.i.i, i32 244, i32 232
  %and.i4.i = and i32 %51, 31
  %shl.i.i = shl nuw i32 1, %and.i4.i
  %dev_lock.i5.i = getelementptr i8, ptr %49, i32 380
  %call5.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i5.i) #9
  %52 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr.i.i, align 4
  %base.i.i6.i = getelementptr i8, ptr %49, i32 -12
  %54 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr.i34.i.i = getelementptr i8, ptr %55, i32 24
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i.i) #9, !srcloc !141
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i7.i = and i32 %57, -64
  %and2.i.i8.i = and i32 %53, 63
  %or.i.i9.i = or i32 %and.i.i7.i, %and2.i.i8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i9.i, i32 %57)
  %cmp.not.i.i10.i = icmp eq i32 %or.i.i9.i, %57
  br i1 %cmp.not.i.i10.i, label %ldma_chan_cctrl_cfg.exit.i.ldma_update_bits.exit.i.i_crit_edge, label %do.body.i.i12.i

ldma_chan_cctrl_cfg.exit.i.ldma_update_bits.exit.i.i_crit_edge: ; preds = %ldma_chan_cctrl_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i.i

do.body.i.i12.i:                                  ; preds = %ldma_chan_cctrl_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %58 = call i32 @llvm.bswap.i32(i32 %or.i.i9.i) #9
  %59 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr4.i.i11.i = getelementptr i8, ptr %60, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i11.i, i32 %58) #9, !srcloc !146
  br label %ldma_update_bits.exit.i.i

ldma_update_bits.exit.i.i:                        ; preds = %do.body.i.i12.i, %ldma_chan_cctrl_cfg.exit.i.ldma_update_bits.exit.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %62, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %64, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 1040187392) #9, !srcloc !146
  %65 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr.i36.i.i = getelementptr i8, ptr %66, i32 %..i3.i
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i.i) #9, !srcloc !141
  %68 = call i32 @llvm.bswap.i32(i32 %67) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %and.i37.i.i = and i32 %68, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i37.i.i, i32 %68)
  %cmp.not.i38.i.i = icmp eq i32 %and.i37.i.i, %68
  br i1 %cmp.not.i38.i.i, label %ldma_update_bits.exit.i.i.ldma_chan_irq_init.exit.i_crit_edge, label %do.body.i40.i.i

ldma_update_bits.exit.i.i.ldma_chan_irq_init.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_irq_init.exit.i

do.body.i40.i.i:                                  ; preds = %ldma_update_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %69 = call i32 @llvm.bswap.i32(i32 %and.i37.i.i) #9
  %70 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr4.i39.i.i = getelementptr i8, ptr %71, i32 %..i3.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i39.i.i, i32 %69) #9, !srcloc !146
  br label %ldma_chan_irq_init.exit.i

ldma_chan_irq_init.exit.i:                        ; preds = %do.body.i40.i.i, %ldma_update_bits.exit.i.i.ldma_chan_irq_init.exit.i_crit_edge
  %.33.i.i = select i1 %cmp.i.i, i32 248, i32 236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @arm_heavy_mb() #9
  %72 = call i32 @llvm.bswap.i32(i32 %shl.i.i) #9
  %73 = ptrtoint ptr %base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i6.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %74, i32 %.33.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %72) #9, !srcloc !146
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i5.i, i32 noundef %call5.i.i) #9
  %ver.i = getelementptr i8, ptr %23, i32 364
  %75 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %76)
  %cmp.i = icmp ult i32 %76, 11
  br i1 %cmp.i, label %ldma_chan_irq_init.exit.i.ldma_chan_cfg.exit_crit_edge, label %do.body7.i

ldma_chan_irq_init.exit.i.ldma_chan_cfg.exit_crit_edge: ; preds = %ldma_chan_irq_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_cfg.exit

do.body7.i:                                       ; preds = %ldma_chan_irq_init.exit.i
  %call10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #9
  %77 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr.i.i, align 4
  %79 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx8, align 4
  %inst.i.i = getelementptr i8, ptr %80, i32 444
  %81 = ptrtoint ptr %inst.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %inst.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.ldma_inst_data, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i14.i = icmp eq i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %78)
  %cmp1.i.i = icmp ugt i32 %78, 31
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i14.i
  br i1 %or.cond.i.i, label %do.body7.i.ldma_chan_set_class.exit.i_crit_edge, label %do.body5.i.i

do.body7.i.ldma_chan_set_class.exit.i_crit_edge:  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_set_class.exit.i

do.body5.i.i:                                     ; preds = %do.body7.i
  %and.i15.i = shl nuw nsw i32 %78, 9
  %shl.i16.i = and i32 %and.i15.i, 3584
  %85 = shl nuw nsw i32 %78, 15
  %base.i.i18.i = getelementptr i8, ptr %80, i32 -12
  %86 = ptrtoint ptr %base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i18.i, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %87, i32 24
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i.i) #9, !srcloc !141
  %89 = call i32 @llvm.bswap.i32(i32 %88) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i19.i = and i32 %89, -64
  %or.i.i21.i = or i32 %and.i.i19.i, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i21.i, i32 %89)
  %cmp.not.i.i22.i = icmp eq i32 %or.i.i21.i, %89
  br i1 %cmp.not.i.i22.i, label %do.body5.i.i.ldma_update_bits.exit.i25.i_crit_edge, label %do.body.i.i24.i

do.body5.i.i.ldma_update_bits.exit.i25.i_crit_edge: ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i25.i

do.body.i.i24.i:                                  ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %90 = call i32 @llvm.bswap.i32(i32 %or.i.i21.i) #9
  %91 = ptrtoint ptr %base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i18.i, align 4
  %add.ptr4.i.i23.i = getelementptr i8, ptr %92, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i23.i, i32 %90) #9, !srcloc !146
  br label %ldma_update_bits.exit.i25.i

ldma_update_bits.exit.i25.i:                      ; preds = %do.body.i.i24.i, %do.body5.i.i.ldma_update_bits.exit.i25.i_crit_edge
  %93 = ptrtoint ptr %base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i.i18.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %94, i32 28
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i.i) #9, !srcloc !141
  %96 = call i32 @llvm.bswap.i32(i32 %95) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i63.i.i = and i32 %96, -790017
  %.masked.i.i = and i32 %85, 786432
  %and2.i64.i.i = or i32 %shl.i16.i, %.masked.i.i
  %or.i65.i.i = or i32 %and2.i64.i.i, %and.i63.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i65.i.i, i32 %96)
  %cmp.not.i66.i.i = icmp eq i32 %or.i65.i.i, %96
  br i1 %cmp.not.i66.i.i, label %ldma_update_bits.exit.i25.i.ldma_chan_set_class.exit.i_crit_edge, label %do.body.i68.i.i

ldma_update_bits.exit.i25.i.ldma_chan_set_class.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_set_class.exit.i

do.body.i68.i.i:                                  ; preds = %ldma_update_bits.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %97 = call i32 @llvm.bswap.i32(i32 %or.i65.i.i) #9
  %98 = ptrtoint ptr %base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i18.i, align 4
  %add.ptr4.i67.i.i = getelementptr i8, ptr %99, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i67.i.i, i32 %97) #9, !srcloc !146
  br label %ldma_chan_set_class.exit.i

ldma_chan_set_class.exit.i:                       ; preds = %do.body.i68.i.i, %ldma_update_bits.exit.i25.i.ldma_chan_set_class.exit.i_crit_edge, %do.body7.i.ldma_chan_set_class.exit.i_crit_edge
  %boff_len.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 12
  %100 = ptrtoint ptr %boff_len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %boff_len.i, align 4
  %102 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx8, align 4
  %104 = add i32 %101, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %104)
  %105 = icmp ult i32 %104, 255
  %or.i26.i = and i32 %101, 255
  %phi.bo.i.i = or i32 %or.i26.i, -2147483648
  %val.0.i.i = select i1 %105, i32 %phi.bo.i.i, i32 0
  %106 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nr.i.i, align 4
  %base.i.i28.i = getelementptr i8, ptr %103, i32 -12
  %108 = ptrtoint ptr %base.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i.i28.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %109, i32 24
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #9, !srcloc !141
  %111 = call i32 @llvm.bswap.i32(i32 %110) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i29.i = and i32 %111, -64
  %and2.i.i30.i = and i32 %107, 63
  %or.i.i31.i = or i32 %and.i.i29.i, %and2.i.i30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i31.i, i32 %111)
  %cmp.not.i.i32.i = icmp eq i32 %or.i.i31.i, %111
  br i1 %cmp.not.i.i32.i, label %ldma_chan_set_class.exit.i.ldma_update_bits.exit.i35.i_crit_edge, label %do.body.i.i34.i

ldma_chan_set_class.exit.i.ldma_update_bits.exit.i35.i_crit_edge: ; preds = %ldma_chan_set_class.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i35.i

do.body.i.i34.i:                                  ; preds = %ldma_chan_set_class.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %112 = call i32 @llvm.bswap.i32(i32 %or.i.i31.i) #9
  %113 = ptrtoint ptr %base.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i28.i, align 4
  %add.ptr4.i.i33.i = getelementptr i8, ptr %114, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i33.i, i32 %112) #9, !srcloc !146
  br label %ldma_update_bits.exit.i35.i

ldma_update_bits.exit.i35.i:                      ; preds = %do.body.i.i34.i, %ldma_chan_set_class.exit.i.ldma_update_bits.exit.i35.i_crit_edge
  %115 = ptrtoint ptr %base.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i.i28.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %116, i32 288
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.i) #9, !srcloc !141
  %118 = call i32 @llvm.bswap.i32(i32 %117) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i27.i.i = and i32 %118, 2147483392
  %or.i29.i.i = or i32 %and.i27.i.i, %val.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i29.i.i, i32 %118)
  %cmp.not.i30.i.i = icmp eq i32 %or.i29.i.i, %118
  br i1 %cmp.not.i30.i.i, label %ldma_update_bits.exit.i35.i.ldma_chan_byte_offset_cfg.exit.i_crit_edge, label %do.body.i32.i.i

ldma_update_bits.exit.i35.i.ldma_chan_byte_offset_cfg.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_byte_offset_cfg.exit.i

do.body.i32.i.i:                                  ; preds = %ldma_update_bits.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %119 = call i32 @llvm.bswap.i32(i32 %or.i29.i.i) #9
  %120 = ptrtoint ptr %base.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i.i28.i, align 4
  %add.ptr4.i31.i.i = getelementptr i8, ptr %121, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i31.i.i, i32 %119) #9, !srcloc !146
  br label %ldma_chan_byte_offset_cfg.exit.i

ldma_chan_byte_offset_cfg.exit.i:                 ; preds = %do.body.i32.i.i, %ldma_update_bits.exit.i35.i.ldma_chan_byte_offset_cfg.exit.i_crit_edge
  %data_endian_en.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 17
  %122 = ptrtoint ptr %data_endian_en.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %data_endian_en.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool13.not.i = icmp eq i8 %123, 0
  %data_endian.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 13
  %124 = ptrtoint ptr %data_endian.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %data_endian.i, align 4
  %126 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx8, align 4
  %and15.i.i = and i32 %125, 3
  %or.i36.i = or i32 %and15.i.i, 128
  %val.0.i37.i = select i1 %tobool13.not.i, i32 0, i32 %or.i36.i
  %128 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nr.i.i, align 4
  %base.i.i39.i = getelementptr i8, ptr %127, i32 -12
  %130 = ptrtoint ptr %base.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i39.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %131, i32 24
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #9, !srcloc !141
  %133 = call i32 @llvm.bswap.i32(i32 %132) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i40.i = and i32 %133, -64
  %and2.i.i41.i = and i32 %129, 63
  %or.i.i42.i = or i32 %and.i.i40.i, %and2.i.i41.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i42.i, i32 %133)
  %cmp.not.i.i43.i = icmp eq i32 %or.i.i42.i, %133
  br i1 %cmp.not.i.i43.i, label %ldma_chan_byte_offset_cfg.exit.i.ldma_update_bits.exit.i46.i_crit_edge, label %do.body.i.i45.i

ldma_chan_byte_offset_cfg.exit.i.ldma_update_bits.exit.i46.i_crit_edge: ; preds = %ldma_chan_byte_offset_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i46.i

do.body.i.i45.i:                                  ; preds = %ldma_chan_byte_offset_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %134 = call i32 @llvm.bswap.i32(i32 %or.i.i42.i) #9
  %135 = ptrtoint ptr %base.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i39.i, align 4
  %add.ptr4.i.i44.i = getelementptr i8, ptr %136, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i44.i, i32 %134) #9, !srcloc !146
  br label %ldma_update_bits.exit.i46.i

ldma_update_bits.exit.i46.i:                      ; preds = %do.body.i.i45.i, %ldma_chan_byte_offset_cfg.exit.i.ldma_update_bits.exit.i46.i_crit_edge
  %137 = ptrtoint ptr %base.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base.i.i39.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %138, i32 512
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i.i) #9, !srcloc !141
  %140 = call i32 @llvm.bswap.i32(i32 %139) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i24.i.i = and i32 %140, -132
  %or.i26.i.i = or i32 %and.i24.i.i, %val.0.i37.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i26.i.i, i32 %140)
  %cmp.not.i27.i.i = icmp eq i32 %or.i26.i.i, %140
  br i1 %cmp.not.i27.i.i, label %ldma_update_bits.exit.i46.i.ldma_chan_data_endian_cfg.exit.i_crit_edge, label %do.body.i29.i.i

ldma_update_bits.exit.i46.i.ldma_chan_data_endian_cfg.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_data_endian_cfg.exit.i

do.body.i29.i.i:                                  ; preds = %ldma_update_bits.exit.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %141 = call i32 @llvm.bswap.i32(i32 %or.i26.i.i) #9
  %142 = ptrtoint ptr %base.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i39.i, align 4
  %add.ptr4.i28.i.i = getelementptr i8, ptr %143, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i28.i.i, i32 %141) #9, !srcloc !146
  br label %ldma_chan_data_endian_cfg.exit.i

ldma_chan_data_endian_cfg.exit.i:                 ; preds = %do.body.i29.i.i, %ldma_update_bits.exit.i46.i.ldma_chan_data_endian_cfg.exit.i_crit_edge
  %desc_endian_en.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 18
  %144 = ptrtoint ptr %desc_endian_en.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %desc_endian_en.i, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool14.not.i = icmp eq i8 %145, 0
  %desc_endian.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 14
  %146 = ptrtoint ptr %desc_endian.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %desc_endian.i, align 4
  %148 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx8, align 4
  %shl.i50.i = shl i32 %147, 8
  %and15.i51.i = and i32 %shl.i50.i, 768
  %or.i52.i = or i32 %and15.i51.i, 65536
  %val.0.i54.i = select i1 %tobool14.not.i, i32 0, i32 %or.i52.i
  %150 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %nr.i.i, align 4
  %base.i.i56.i = getelementptr i8, ptr %149, i32 -12
  %152 = ptrtoint ptr %base.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i56.i, align 4
  %add.ptr.i21.i57.i = getelementptr i8, ptr %153, i32 24
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i57.i) #9, !srcloc !141
  %155 = call i32 @llvm.bswap.i32(i32 %154) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i58.i = and i32 %155, -64
  %and2.i.i59.i = and i32 %151, 63
  %or.i.i60.i = or i32 %and.i.i58.i, %and2.i.i59.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i60.i, i32 %155)
  %cmp.not.i.i61.i = icmp eq i32 %or.i.i60.i, %155
  br i1 %cmp.not.i.i61.i, label %ldma_chan_data_endian_cfg.exit.i.ldma_update_bits.exit.i69.i_crit_edge, label %do.body.i.i64.i

ldma_chan_data_endian_cfg.exit.i.ldma_update_bits.exit.i69.i_crit_edge: ; preds = %ldma_chan_data_endian_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i69.i

do.body.i.i64.i:                                  ; preds = %ldma_chan_data_endian_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %156 = call i32 @llvm.bswap.i32(i32 %or.i.i60.i) #9
  %157 = ptrtoint ptr %base.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i.i56.i, align 4
  %add.ptr4.i.i63.i = getelementptr i8, ptr %158, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i63.i, i32 %156) #9, !srcloc !146
  br label %ldma_update_bits.exit.i69.i

ldma_update_bits.exit.i69.i:                      ; preds = %do.body.i.i64.i, %ldma_chan_data_endian_cfg.exit.i.ldma_update_bits.exit.i69.i_crit_edge
  %159 = ptrtoint ptr %base.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i.i56.i, align 4
  %add.ptr.i23.i65.i = getelementptr i8, ptr %160, i32 512
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i65.i) #9, !srcloc !141
  %162 = call i32 @llvm.bswap.i32(i32 %161) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i24.i66.i = and i32 %162, -66305
  %or.i26.i67.i = or i32 %and.i24.i66.i, %val.0.i54.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i26.i67.i, i32 %162)
  %cmp.not.i27.i68.i = icmp eq i32 %or.i26.i67.i, %162
  br i1 %cmp.not.i27.i68.i, label %ldma_update_bits.exit.i69.i.ldma_chan_desc_endian_cfg.exit.i_crit_edge, label %do.body.i29.i71.i

ldma_update_bits.exit.i69.i.ldma_chan_desc_endian_cfg.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_desc_endian_cfg.exit.i

do.body.i29.i71.i:                                ; preds = %ldma_update_bits.exit.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %163 = call i32 @llvm.bswap.i32(i32 %or.i26.i67.i) #9
  %164 = ptrtoint ptr %base.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i.i56.i, align 4
  %add.ptr4.i28.i70.i = getelementptr i8, ptr %165, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i28.i70.i, i32 %163) #9, !srcloc !146
  br label %ldma_chan_desc_endian_cfg.exit.i

ldma_chan_desc_endian_cfg.exit.i:                 ; preds = %do.body.i29.i71.i, %ldma_update_bits.exit.i69.i.ldma_chan_desc_endian_cfg.exit.i_crit_edge
  %hdrm_csum.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 11
  %166 = ptrtoint ptr %hdrm_csum.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %hdrm_csum.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool15.not.i = icmp eq i8 %167, 0
  %168 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx8, align 4
  br i1 %tobool15.not.i, label %land.lhs.true.i.i, label %ldma_chan_desc_endian_cfg.exit.i.if.end6.i.i_crit_edge

ldma_chan_desc_endian_cfg.exit.i.if.end6.i.i_crit_edge: ; preds = %ldma_chan_desc_endian_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

land.lhs.true.i.i:                                ; preds = %ldma_chan_desc_endian_cfg.exit.i
  %hdrm_len.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 10
  %170 = ptrtoint ptr %hdrm_len.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %hdrm_len.i, align 4
  %172 = add i32 %171, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16383, i32 %172)
  %173 = icmp ult i32 %172, -16383
  br i1 %173, label %land.lhs.true.i.i.ldma_chan_hdr_mode_cfg.exit.i_crit_edge, label %land.lhs.true.i.i.if.end6.i.i_crit_edge

land.lhs.true.i.i.if.end6.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

land.lhs.true.i.i.ldma_chan_hdr_mode_cfg.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_hdr_mode_cfg.exit.i

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i.if.end6.i.i_crit_edge, %ldma_chan_desc_endian_cfg.exit.i.if.end6.i.i_crit_edge
  %val.0.i72.i = phi i32 [ 1073741824, %ldma_chan_desc_endian_cfg.exit.i.if.end6.i.i_crit_edge ], [ %171, %land.lhs.true.i.i.if.end6.i.i_crit_edge ]
  %174 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %nr.i.i, align 4
  %base.i.i74.i = getelementptr i8, ptr %169, i32 -12
  %176 = ptrtoint ptr %base.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base.i.i74.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %177, i32 24
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #9, !srcloc !141
  %179 = call i32 @llvm.bswap.i32(i32 %178) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i75.i = and i32 %179, -64
  %and2.i.i76.i = and i32 %175, 63
  %or.i.i77.i = or i32 %and.i.i75.i, %and2.i.i76.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i77.i, i32 %179)
  %cmp.not.i.i78.i = icmp eq i32 %or.i.i77.i, %179
  br i1 %cmp.not.i.i78.i, label %if.end6.i.i.ldma_update_bits.exit.i81.i_crit_edge, label %do.body.i.i80.i

if.end6.i.i.ldma_update_bits.exit.i81.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i81.i

do.body.i.i80.i:                                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %180 = call i32 @llvm.bswap.i32(i32 %or.i.i77.i) #9
  %181 = ptrtoint ptr %base.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i.i74.i, align 4
  %add.ptr4.i.i79.i = getelementptr i8, ptr %182, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i79.i, i32 %180) #9, !srcloc !146
  br label %ldma_update_bits.exit.i81.i

ldma_update_bits.exit.i81.i:                      ; preds = %do.body.i.i80.i, %if.end6.i.i.ldma_update_bits.exit.i81.i_crit_edge
  %183 = ptrtoint ptr %base.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i.i74.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %184, i32 272
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i) #9, !srcloc !141
  %186 = call i32 @llvm.bswap.i32(i32 %185) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i18.i.i = and i32 %186, -1073741825
  %and2.i19.i.i = and i32 %val.0.i72.i, 1073741824
  %or.i20.i.i = or i32 %and.i18.i.i, %and2.i19.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i20.i.i, i32 %186)
  %cmp.not.i21.i.i = icmp eq i32 %or.i20.i.i, %186
  br i1 %cmp.not.i21.i.i, label %ldma_update_bits.exit.i81.i.ldma_chan_hdr_mode_cfg.exit.i_crit_edge, label %do.body.i23.i.i

ldma_update_bits.exit.i81.i.ldma_chan_hdr_mode_cfg.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_hdr_mode_cfg.exit.i

do.body.i23.i.i:                                  ; preds = %ldma_update_bits.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %187 = call i32 @llvm.bswap.i32(i32 %or.i20.i.i) #9
  %188 = ptrtoint ptr %base.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base.i.i74.i, align 4
  %add.ptr4.i22.i.i = getelementptr i8, ptr %189, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i22.i.i, i32 %187) #9, !srcloc !146
  br label %ldma_chan_hdr_mode_cfg.exit.i

ldma_chan_hdr_mode_cfg.exit.i:                    ; preds = %do.body.i23.i.i, %ldma_update_bits.exit.i81.i.ldma_chan_hdr_mode_cfg.exit.i_crit_edge, %land.lhs.true.i.i.ldma_chan_hdr_mode_cfg.exit.i_crit_edge
  %190 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags10.i.i, align 4
  %and.i.i82.i = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i82.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %ldma_chan_hdr_mode_cfg.exit.i.ldma_chan_rxwr_np_cfg.exit.i_crit_edge

ldma_chan_hdr_mode_cfg.exit.i.ldma_chan_rxwr_np_cfg.exit.i_crit_edge: ; preds = %ldma_chan_hdr_mode_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_rxwr_np_cfg.exit.i

if.end.i.i:                                       ; preds = %ldma_chan_hdr_mode_cfg.exit.i
  %desc_rx_np.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 16
  %192 = ptrtoint ptr %desc_rx_np.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %desc_rx_np.i, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool16.not.i = icmp eq i8 %193, 0
  %194 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx8, align 4
  %cond.i.i = select i1 %tobool16.not.i, i32 0, i32 2097152
  %196 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %nr.i.i, align 4
  %base.i.i84.i = getelementptr i8, ptr %195, i32 -12
  %198 = ptrtoint ptr %base.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base.i.i84.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %199, i32 24
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i.i) #9, !srcloc !141
  %201 = call i32 @llvm.bswap.i32(i32 %200) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i8.i.i = and i32 %201, -64
  %and2.i.i85.i = and i32 %197, 63
  %or.i.i86.i = or i32 %and.i8.i.i, %and2.i.i85.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i86.i, i32 %201)
  %cmp.not.i.i87.i = icmp eq i32 %or.i.i86.i, %201
  br i1 %cmp.not.i.i87.i, label %if.end.i.i.ldma_update_bits.exit.i90.i_crit_edge, label %do.body.i.i89.i

if.end.i.i.ldma_update_bits.exit.i90.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i90.i

do.body.i.i89.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %202 = call i32 @llvm.bswap.i32(i32 %or.i.i86.i) #9
  %203 = ptrtoint ptr %base.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base.i.i84.i, align 4
  %add.ptr4.i.i88.i = getelementptr i8, ptr %204, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i88.i, i32 %202) #9, !srcloc !146
  br label %ldma_update_bits.exit.i90.i

ldma_update_bits.exit.i90.i:                      ; preds = %do.body.i.i89.i, %if.end.i.i.ldma_update_bits.exit.i90.i_crit_edge
  %205 = ptrtoint ptr %base.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i84.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %206, i32 28
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #9, !srcloc !141
  %208 = call i32 @llvm.bswap.i32(i32 %207) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i11.i.i = and i32 %208, -2097153
  %or.i12.i.i = or i32 %and.i11.i.i, %cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i12.i.i, i32 %208)
  %cmp.not.i13.i.i = icmp eq i32 %or.i12.i.i, %208
  br i1 %cmp.not.i13.i.i, label %ldma_update_bits.exit.i90.i.ldma_chan_rxwr_np_cfg.exit.i_crit_edge, label %do.body.i15.i.i

ldma_update_bits.exit.i90.i.ldma_chan_rxwr_np_cfg.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_rxwr_np_cfg.exit.i

do.body.i15.i.i:                                  ; preds = %ldma_update_bits.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %209 = call i32 @llvm.bswap.i32(i32 %or.i12.i.i) #9
  %210 = ptrtoint ptr %base.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base.i.i84.i, align 4
  %add.ptr4.i14.i.i = getelementptr i8, ptr %211, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i14.i.i, i32 %209) #9, !srcloc !146
  br label %ldma_chan_rxwr_np_cfg.exit.i

ldma_chan_rxwr_np_cfg.exit.i:                     ; preds = %do.body.i15.i.i, %ldma_update_bits.exit.i90.i.ldma_chan_rxwr_np_cfg.exit.i_crit_edge, %ldma_chan_hdr_mode_cfg.exit.i.ldma_chan_rxwr_np_cfg.exit.i_crit_edge
  %abc_en.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 19
  %212 = ptrtoint ptr %abc_en.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %abc_en.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool17.not.i = icmp eq i8 %213, 0
  %214 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx8, align 4
  %ver.i.i = getelementptr i8, ptr %215, i32 364
  %216 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %217)
  %cmp.i91.i = icmp ult i32 %217, 50
  br i1 %cmp.i91.i, label %ldma_chan_rxwr_np_cfg.exit.i.ldma_chan_abc_cfg.exit.i_crit_edge, label %lor.lhs.false.i.i

ldma_chan_rxwr_np_cfg.exit.i.ldma_chan_abc_cfg.exit.i_crit_edge: ; preds = %ldma_chan_rxwr_np_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_abc_cfg.exit.i

lor.lhs.false.i.i:                                ; preds = %ldma_chan_rxwr_np_cfg.exit.i
  %218 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %flags10.i.i, align 4
  %and.i.i93.i = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i93.i)
  %tobool.i.not.i94.i = icmp eq i32 %and.i.i93.i, 0
  br i1 %tobool.i.not.i94.i, label %if.end.i101.i, label %lor.lhs.false.i.i.ldma_chan_abc_cfg.exit.i_crit_edge

lor.lhs.false.i.i.ldma_chan_abc_cfg.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_abc_cfg.exit.i

if.end.i101.i:                                    ; preds = %lor.lhs.false.i.i
  %cond.i95.i = select i1 %tobool17.not.i, i32 0, i32 8
  %220 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %nr.i.i, align 4
  %base.i.i97.i = getelementptr i8, ptr %215, i32 -12
  %222 = ptrtoint ptr %base.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base.i.i97.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %223, i32 24
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #9, !srcloc !141
  %225 = call i32 @llvm.bswap.i32(i32 %224) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i9.i.i = and i32 %225, -64
  %and2.i.i98.i = and i32 %221, 63
  %or.i.i99.i = or i32 %and.i9.i.i, %and2.i.i98.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i99.i, i32 %225)
  %cmp.not.i.i100.i = icmp eq i32 %or.i.i99.i, %225
  br i1 %cmp.not.i.i100.i, label %if.end.i101.i.ldma_update_bits.exit.i104.i_crit_edge, label %do.body.i.i103.i

if.end.i101.i.ldma_update_bits.exit.i104.i_crit_edge: ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i104.i

do.body.i.i103.i:                                 ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %226 = call i32 @llvm.bswap.i32(i32 %or.i.i99.i) #9
  %227 = ptrtoint ptr %base.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %base.i.i97.i, align 4
  %add.ptr4.i.i102.i = getelementptr i8, ptr %228, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i102.i, i32 %226) #9, !srcloc !146
  br label %ldma_update_bits.exit.i104.i

ldma_update_bits.exit.i104.i:                     ; preds = %do.body.i.i103.i, %if.end.i101.i.ldma_update_bits.exit.i104.i_crit_edge
  %229 = ptrtoint ptr %base.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base.i.i97.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %230, i32 28
  %231 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #9, !srcloc !141
  %232 = call i32 @llvm.bswap.i32(i32 %231) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i12.i.i = and i32 %232, -9
  %or.i13.i.i = or i32 %and.i12.i.i, %cond.i95.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i13.i.i, i32 %232)
  %cmp.not.i14.i.i = icmp eq i32 %or.i13.i.i, %232
  br i1 %cmp.not.i14.i.i, label %ldma_update_bits.exit.i104.i.ldma_chan_abc_cfg.exit.i_crit_edge, label %do.body.i16.i.i

ldma_update_bits.exit.i104.i.ldma_chan_abc_cfg.exit.i_crit_edge: ; preds = %ldma_update_bits.exit.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_abc_cfg.exit.i

do.body.i16.i.i:                                  ; preds = %ldma_update_bits.exit.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @arm_heavy_mb() #9
  %233 = call i32 @llvm.bswap.i32(i32 %or.i13.i.i) #9
  %234 = ptrtoint ptr %base.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %base.i.i97.i, align 4
  %add.ptr4.i15.i.i = getelementptr i8, ptr %235, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i15.i.i, i32 %233) #9, !srcloc !146
  br label %ldma_chan_abc_cfg.exit.i

ldma_chan_abc_cfg.exit.i:                         ; preds = %do.body.i16.i.i, %ldma_update_bits.exit.i104.i.ldma_chan_abc_cfg.exit.i_crit_edge, %lor.lhs.false.i.i.ldma_chan_abc_cfg.exit.i_crit_edge, %ldma_chan_rxwr_np_cfg.exit.i.ldma_chan_abc_cfg.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call10.i) #9
  %236 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %flags10.i.i, align 4
  %and.i105.i = and i32 %237, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105.i)
  %tobool.i.not.i = icmp eq i32 %and.i105.i, 0
  br i1 %tobool.i.not.i, label %ldma_chan_abc_cfg.exit.i.ldma_chan_cfg.exit_crit_edge, label %if.then20.i

ldma_chan_abc_cfg.exit.i.ldma_chan_cfg.exit_crit_edge: ; preds = %ldma_chan_abc_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_chan_cfg.exit

if.then20.i:                                      ; preds = %ldma_chan_abc_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %desc_phys.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 6
  %238 = ptrtoint ptr %desc_phys.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %desc_phys.i, align 4
  %desc_cnt.i = getelementptr %struct.ldma_chan, ptr %21, i32 %j.031, i32 8
  %240 = ptrtoint ptr %desc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %desc_cnt.i, align 4
  call fastcc void @ldma_chan_desc_hw_cfg(ptr noundef %arrayidx8, i32 noundef %239, i32 noundef %241) #9
  br label %ldma_chan_cfg.exit

ldma_chan_cfg.exit:                               ; preds = %if.then20.i, %ldma_chan_abc_cfg.exit.i.ldma_chan_cfg.exit_crit_edge, %ldma_chan_irq_init.exit.i.ldma_chan_cfg.exit_crit_edge
  %242 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %chan_nrs, align 4
  %add = add nuw i32 %j.031, 1
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %ch_mask, i32 noundef %243, i32 noundef %add) #9
  %244 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %chan_nrs, align 4
  %cmp6 = icmp ult i32 %call12, %245
  br i1 %cmp6, label %ldma_chan_cfg.exit.for.body7_crit_edge, label %ldma_chan_cfg.exit.for.end13_crit_edge

ldma_chan_cfg.exit.for.end13_crit_edge:           ; preds = %ldma_chan_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

ldma_chan_cfg.exit.for.body7_crit_edge:           ; preds = %ldma_chan_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.end13:                                        ; preds = %ldma_chan_cfg.exit.for.end13_crit_edge, %for.end.for.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_mask) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ldma_xlate(ptr nocapture noundef readonly %spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %arrayidx2.i = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %chan_nrs.i = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %chan_nrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_nrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp.not.i = icmp ult i32 %3, %11
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then2
  %port_nrs.i = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %port_nrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_nrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp5.not.i = icmp ult i32 %7, %13
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ports.i = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %arrayidx6.i = getelementptr %struct.ldma_port, ptr %15, i32 %7
  %chans.i = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chans.i, align 4
  %port.i = getelementptr %struct.ldma_chan, ptr %17, i32 %3, i32 1
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx6.i, ptr %port.i, align 4
  %ver.i = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp8.i = icmp eq i32 %20, 10
  %flags.i.i.i = getelementptr %struct.ldma_chan, ptr %17, i32 %3, i32 4
  %21 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i28.i.i = icmp eq i32 %9, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #9, !range !152
  %sub.i.op.i29.i.i = xor i32 %23, 31
  %sub.i30.i.i = select i1 %tobool.not.i.i28.i.i, i32 -1, i32 %sub.i.op.i29.i.i
  br i1 %tobool.i.not.i.i, label %cond.end18.i.i, label %cond.end4.i.i

cond.end4.i.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %txbl.i.i = getelementptr %struct.ldma_port, ptr %15, i32 %7, i32 3
  %24 = ptrtoint ptr %txbl.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i30.i.i, ptr %txbl.i.i, align 4
  br label %update_client_configs.exit

cond.end18.i.i:                                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %rxbl.i.i = getelementptr %struct.ldma_port, ptr %15, i32 %7, i32 2
  %25 = ptrtoint ptr %rxbl.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i30.i.i, ptr %rxbl.i.i, align 4
  br label %update_client_configs.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rxbl.i34.i = getelementptr %struct.ldma_port, ptr %15, i32 %7, i32 2
  %txbl.i35.i = getelementptr %struct.ldma_port, ptr %15, i32 %7, i32 3
  %rxbl.sink.i.i = select i1 %tobool.i.not.i.i, ptr %rxbl.i34.i, ptr %txbl.i35.i
  %26 = ptrtoint ptr %rxbl.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %9, ptr %rxbl.sink.i.i, align 4
  br label %update_client_configs.exit

update_client_configs.exit:                       ; preds = %if.else.i, %cond.end18.i.i, %cond.end4.i.i
  tail call fastcc void @ldma_port_cfg(ptr noundef %arrayidx6.i) #9
  br label %if.end6

if.end6:                                          ; preds = %update_client_configs.exit, %if.end.if.end6_crit_edge
  %chans = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chans, align 4
  %arrayidx7 = getelementptr %struct.ldma_chan, ptr %28, i32 %3
  %call8 = tail call ptr @dma_get_slave_channel(ptr noundef %arrayidx7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %if.end6 ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.then2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %irncr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irncr) #9
  %base = getelementptr inbounds %struct.ldma_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !141
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %4 = ptrtoint ptr %irncr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irncr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan_nrs = getelementptr inbounds %struct.ldma_dev, ptr %dev_id, i32 0, i32 10
  %7 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_nrs, align 4
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %irncr, i32 noundef %8, i32 noundef 0) #9
  %9 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan_nrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %10)
  %cmp47 = icmp ult i32 %call2, %10
  br i1 %cmp47, label %do.body4.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4.lr.ph:                                   ; preds = %if.end
  %chans = getelementptr inbounds %struct.ldma_dev, ptr %dev_id, i32 0, i32 8
  br label %do.body4

do.body4:                                         ; preds = %dma_chan_irq.exit.do.body4_crit_edge, %do.body4.lr.ph
  %cid.048 = phi i32 [ %call2, %do.body4.lr.ph ], [ %call30, %dma_chan_irq.exit.do.body4_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 244
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !141
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  %shl = shl nuw i32 1, %cid.048
  %neg = xor i32 %shl, -1
  %and = and i32 %14, %neg
  %15 = call i32 @llvm.bswap.i32(i32 %and)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 248
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !141
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %or = or i32 %21, %shl
  %22 = call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %24, i32 248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %22) #9, !srcloc !146
  %25 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chans, align 4
  %arrayidx = getelementptr %struct.ldma_chan, ptr %26, i32 %cid.048
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @arm_heavy_mb() #9
  %nr.i = getelementptr %struct.ldma_chan, ptr %26, i32 %cid.048, i32 3
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #9
  %base.i = getelementptr i8, ptr %28, i32 -12
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #9, !srcloc !146
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %35, i32 40
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %do.body4.dma_chan_irq.exit_crit_edge, label %do.body5.i

do.body4.dma_chan_irq.exit_crit_edge:             ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_chan_irq.exit

do.body5.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %38, i32 44
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %40 = and i32 %39, -1040187393
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %42, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %40) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %44, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %36) #9, !srcloc !146
  %wq.i = getelementptr i8, ptr %28, i32 448
  %45 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wq.i, align 4
  %work.i = getelementptr %struct.ldma_chan, ptr %26, i32 %cid.048, i32 24
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %work.i) #9
  br label %dma_chan_irq.exit

dma_chan_irq.exit:                                ; preds = %do.body5.i, %do.body4.dma_chan_irq.exit_crit_edge
  %47 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan_nrs, align 4
  %add = add nuw i32 %cid.048, 1
  %call30 = call i32 @_find_next_bit_be(ptr noundef nonnull %irncr, i32 noundef %48, i32 noundef %add) #9
  %49 = ptrtoint ptr %chan_nrs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chan_nrs, align 4
  %cmp = icmp ult i32 %call30, %50
  br i1 %cmp, label %dma_chan_irq.exit.do.body4_crit_edge, label %dma_chan_irq.exit.cleanup_crit_edge

dma_chan_irq.exit.cleanup_crit_edge:              ; preds = %dma_chan_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_chan_irq.exit.do.body4_crit_edge:             ; preds = %dma_chan_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

cleanup:                                          ; preds = %dma_chan_irq.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %dma_chan_irq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irncr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_work(ptr noundef %work) #2 align 64 {
entry:
  %dummy_result.i54 = alloca %struct.dmaengine_result, align 8
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %lock = getelementptr i8, ptr %work, i32 -168
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_completed = getelementptr i8, ptr %work, i32 -100
  %5 = ptrtoint ptr %desc_completed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_completed, align 4
  %cmp.i.not.i = icmp eq ptr %6, %desc_completed
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -96
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head, ptr %10, align 4
  store ptr %10, ptr %2, align 4
  %14 = ptrtoint ptr %desc_completed to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_completed, ptr %desc_completed, align 4
  store ptr %desc_completed, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %callback_param.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp slt i32 %22, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !143

do.body2.i:                                       ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/lgm/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !170
  unreachable

dma_cookie_complete.exit:                         ; preds = %list_splice_tail_init.exit
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %completed_cookie.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #9
  %27 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i42

if.then.i42:                                      ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %18(ptr noundef %20, ptr noundef nonnull %dummy_result.i) #9
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %dma_cookie_complete.exit
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %16(ptr noundef %20) #9
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #9
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head, align 4
  %cmp19.not74 = icmp eq ptr %29, %head
  br i1 %cmp19.not74, label %dmaengine_desc_callback_invoke.exit.for.end_crit_edge, label %dmaengine_desc_callback_invoke.exit.for.body_crit_edge

dmaengine_desc_callback_invoke.exit.for.body_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  br label %for.body

dmaengine_desc_callback_invoke.exit.for.end_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %vchan_vdesc_fini.exit.for.body_crit_edge, %dmaengine_desc_callback_invoke.exit.for.body_crit_edge
  %.pn.in75 = phi ptr [ %.pn, %vchan_vdesc_fini.exit.for.body_crit_edge ], [ %29, %dmaengine_desc_callback_invoke.exit.for.body_crit_edge ]
  %vd.0 = getelementptr i8, ptr %.pn.in75, i32 -108
  %30 = ptrtoint ptr %.pn.in75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn.in75, align 4
  %31 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %callback.i, align 4
  %33 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %callback_result.i, align 4
  %35 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %callback_param.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i48 = icmp slt i32 %38, 1
  br i1 %cmp.i48, label %do.body2.i49, label %dma_cookie_complete.exit52, !prof !143

do.body2.i49:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/lgm/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !170
  unreachable

dma_cookie_complete.exit52:                       ; preds = %for.body
  %39 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i51 = getelementptr inbounds %struct.dma_chan, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %completed_cookie.i51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %completed_cookie.i51, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %1, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in75) #9
  br i1 %call.i.i, label %if.end.i.i, label %dma_cookie_complete.exit52.list_del.exit_crit_edge

dma_cookie_complete.exit52.list_del.exit_crit_edge: ; preds = %dma_cookie_complete.exit52
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %dma_cookie_complete.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in75, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %.pn.in75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn.in75, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %dma_cookie_complete.exit52.list_del.exit_crit_edge
  %49 = ptrtoint ptr %.pn.in75 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in75, align 4
  %prev.i53 = getelementptr %struct.list_head, ptr %.pn.in75, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i53, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i54) #9
  %51 = ptrtoint ptr %dummy_result.i54 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %dummy_result.i54, align 8
  %tobool.not.i56 = icmp eq ptr %34, null
  br i1 %tobool.not.i56, label %if.else.i60, label %if.then.i58

if.then.i58:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %34(ptr noundef %36, ptr noundef nonnull %dummy_result.i54) #9
  br label %dmaengine_desc_callback_invoke.exit63

if.else.i60:                                      ; preds = %list_del.exit
  %tobool4.not.i59 = icmp eq ptr %32, null
  br i1 %tobool4.not.i59, label %if.else.i60.dmaengine_desc_callback_invoke.exit63_crit_edge, label %if.then5.i62

if.else.i60.dmaengine_desc_callback_invoke.exit63_crit_edge: ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_callback_invoke.exit63

if.then5.i62:                                     ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #11
  call void %32(ptr noundef %36) #9
  br label %dmaengine_desc_callback_invoke.exit63

dmaengine_desc_callback_invoke.exit63:            ; preds = %if.then5.i62, %if.else.i60.dmaengine_desc_callback_invoke.exit63_crit_edge, %if.then.i58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i54) #9
  %chan.i64 = getelementptr i8, ptr %.pn.in75, i32 -96
  %52 = ptrtoint ptr %chan.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan.i64, align 4
  %flags.i.i = getelementptr i8, ptr %.pn.in75, i32 -104
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i65 = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i65, label %if.else.i68, label %if.then.i66

if.then.i66:                                      ; preds = %dmaengine_desc_callback_invoke.exit63
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %53, i32 0, i32 3
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %53, i32 0, i32 4
  %56 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc_allocated.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in75, ptr noundef %desc_allocated.i, ptr noundef %57) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i66.list_add.exit.i_crit_edge

if.then.i66.list_add.exit.i_crit_edge:            ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i67 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %.pn.in75, ptr %prev1.i.i.i67, align 4
  %59 = ptrtoint ptr %.pn.in75 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %.pn.in75, align 4
  %60 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %desc_allocated.i, ptr %prev.i53, align 4
  %61 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %.pn.in75, ptr %desc_allocated.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i66.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  br label %vchan_vdesc_fini.exit

if.else.i68:                                      ; preds = %dmaengine_desc_callback_invoke.exit63
  call void @__sanitizer_cov_trace_pc() #11
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %53, i32 0, i32 2
  %62 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc_free.i, align 4
  call void %63(ptr noundef %vd.0) #9
  br label %vchan_vdesc_fini.exit

vchan_vdesc_fini.exit:                            ; preds = %if.else.i68, %list_add.exit.i
  %cmp19.not = icmp eq ptr %.pn, %head
  br i1 %cmp19.not, label %vchan_vdesc_fini.exit.for.end_crit_edge, label %vchan_vdesc_fini.exit.for.body_crit_edge

vchan_vdesc_fini.exit.for.body_crit_edge:         ; preds = %vchan_vdesc_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

vchan_vdesc_fini.exit.for.end_crit_edge:          ; preds = %vchan_vdesc_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %vchan_vdesc_fini.exit.for.end_crit_edge, %dmaengine_desc_callback_invoke.exit.for.end_crit_edge
  %64 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %ds, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_free_desc_resource(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dw2_desc_sw, ptr %vdesc, i32 0, i32 1
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %desc_pool = getelementptr inbounds %struct.ldma_chan, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_pool, align 4
  %desc_hw = getelementptr inbounds %struct.dw2_desc_sw, ptr %vdesc, i32 0, i32 5
  %4 = ptrtoint ptr %desc_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_hw, align 4
  %desc_phys = getelementptr inbounds %struct.dw2_desc_sw, ptr %vdesc, i32 0, i32 2
  %6 = ptrtoint ptr %desc_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_phys, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #9
  tail call void @kfree(ptr noundef %vdesc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ldma_chan_reset(ptr nocapture noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %call1 = tail call fastcc i32 @ldma_chan_off(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %dev_lock = getelementptr i8, ptr %1, i32 380
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %nr = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %base.i = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #9, !srcloc !141
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i = and i32 %7, -64
  %and2.i = and i32 %3, 63
  %or.i = or i32 %and.i, %and2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %7)
  %cmp.not.i = icmp eq i32 %or.i, %7
  br i1 %cmp.not.i, label %do.body2.ldma_update_bits.exit_crit_edge, label %do.body.i

do.body2.ldma_update_bits.exit_crit_edge:         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit

do.body.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #9, !srcloc !146
  br label %ldma_update_bits.exit

ldma_update_bits.exit:                            ; preds = %do.body.i, %do.body2.ldma_update_bits.exit_crit_edge
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #9, !srcloc !141
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %or.i69 = or i32 %14, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i69, i32 %14)
  %cmp.not.i70 = icmp eq i32 %or.i69, %14
  br i1 %cmp.not.i70, label %ldma_update_bits.exit.ldma_update_bits.exit73_crit_edge, label %do.body.i72

ldma_update_bits.exit.ldma_update_bits.exit73_crit_edge: ; preds = %ldma_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit73

do.body.i72:                                      ; preds = %ldma_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i69) #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr4.i71 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i71, i32 %15) #9, !srcloc !146
  br label %ldma_update_bits.exit73

ldma_update_bits.exit73:                          ; preds = %do.body.i72, %ldma_update_bits.exit.ldma_update_bits.exit73_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call4) #9
  %call8 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call8, 10000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %ldma_update_bits.exit73
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !141
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.cond.for.end_crit_edge, label %land.lhs.true

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call17 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then21, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr25 = getelementptr i8, ptr %23, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !141
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  br label %for.end

for.end:                                          ; preds = %if.then21, %for.cond.for.end_crit_edge
  %val.0 = phi i32 [ %25, %if.then21 ], [ %21, %for.cond.for.end_crit_edge ]
  %and39 = and i32 %val.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end43, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %rst = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 9
  %26 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %rst, align 4
  %desc_init = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 20
  %27 = ptrtoint ptr %desc_init to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %desc_init, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call1, %entry.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ldma_chan_off(ptr nocapture noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %dev_lock = getelementptr i8, ptr %1, i32 380
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %nr = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %base.i = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #9, !srcloc !141
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i = and i32 %7, -64
  %and2.i = and i32 %3, 63
  %or.i = or i32 %and.i, %and2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %7)
  %cmp.not.i = icmp eq i32 %or.i, %7
  br i1 %cmp.not.i, label %entry.ldma_update_bits.exit_crit_edge, label %do.body.i

entry.ldma_update_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #9, !srcloc !146
  br label %ldma_update_bits.exit

ldma_update_bits.exit:                            ; preds = %do.body.i, %entry.ldma_update_bits.exit_crit_edge
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #9, !srcloc !141
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i60 = and i32 %14, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i60, i32 %14)
  %cmp.not.i61 = icmp eq i32 %and.i60, %14
  br i1 %cmp.not.i61, label %ldma_update_bits.exit.ldma_update_bits.exit64_crit_edge, label %do.body.i63

ldma_update_bits.exit.ldma_update_bits.exit64_crit_edge: ; preds = %ldma_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit64

do.body.i63:                                      ; preds = %ldma_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i60) #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr4.i62 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i62, i32 %15) #9, !srcloc !146
  br label %ldma_update_bits.exit64

ldma_update_bits.exit64:                          ; preds = %do.body.i63, %ldma_update_bits.exit.ldma_update_bits.exit64_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call3) #9
  %call7 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call7, 10000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %ldma_update_bits.exit64
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !141
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %land.lhs.true

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call13 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then17, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !141
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  br label %for.end

for.end:                                          ; preds = %if.then17, %for.cond.for.end_crit_edge
  %val.0 = phi i32 [ %25, %if.then17 ], [ %21, %for.cond.for.end_crit_edge ]
  %and35 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %onoff = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 5
  %26 = ptrtoint ptr %onoff to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %onoff, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ldma_chan_desc_hw_cfg(ptr nocapture noundef %c, i32 noundef %desc_base, i32 noundef %desc_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %dev_lock = getelementptr i8, ptr %1, i32 380
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %nr = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %base.i = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #9, !srcloc !141
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i = and i32 %7, -64
  %and2.i = and i32 %3, 63
  %or.i = or i32 %and.i, %and2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %7)
  %cmp.not.i = icmp eq i32 %or.i, %7
  br i1 %cmp.not.i, label %entry.ldma_update_bits.exit_crit_edge, label %do.body.i

entry.ldma_update_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #9, !srcloc !146
  br label %ldma_update_bits.exit

ldma_update_bits.exit:                            ; preds = %do.body.i, %entry.ldma_update_bits.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %desc_base)
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %desc_num)
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %14) #9, !srcloc !146
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call3) #9
  %desc_init = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 20
  %17 = ptrtoint ptr %desc_init to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %desc_init, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ldma_chan_on(ptr nocapture noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_init = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 20
  %0 = ptrtoint ptr %desc_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %desc_init, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !143

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 600, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

do.body25:                                        ; preds = %entry
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 4
  %dev_lock = getelementptr i8, ptr %3, i32 380
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %nr = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 3
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %base.i = getelementptr i8, ptr %3, i32 -12
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #9, !srcloc !141
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i = and i32 %9, -64
  %and2.i = and i32 %5, 63
  %or.i = or i32 %and.i, %and2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %9)
  %cmp.not.i = icmp eq i32 %or.i, %9
  br i1 %cmp.not.i, label %do.body25.ldma_update_bits.exit_crit_edge, label %do.body.i

do.body25.ldma_update_bits.exit_crit_edge:        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit

do.body.i:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #9, !srcloc !146
  br label %ldma_update_bits.exit

ldma_update_bits.exit:                            ; preds = %do.body.i, %do.body25.ldma_update_bits.exit_crit_edge
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %14, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #9, !srcloc !141
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %or.i5 = or i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i5, i32 %16)
  %cmp.not.i6 = icmp eq i32 %or.i5, %16
  br i1 %cmp.not.i6, label %ldma_update_bits.exit.ldma_update_bits.exit9_crit_edge, label %do.body.i8

ldma_update_bits.exit.ldma_update_bits.exit9_crit_edge: ; preds = %ldma_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit9

do.body.i8:                                       ; preds = %ldma_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i5) #9
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr4.i7 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i7, i32 %17) #9, !srcloc !146
  br label %ldma_update_bits.exit9

ldma_update_bits.exit9:                           ; preds = %do.body.i8, %ldma_update_bits.exit.ldma_update_bits.exit9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call28) #9
  %onoff = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 5
  %20 = ptrtoint ptr %onoff to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %onoff, align 4
  br label %cleanup

cleanup:                                          ; preds = %ldma_update_bits.exit9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_alloc_desc_resource(i32 noundef %num, ptr noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %desc_num = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 22
  %4 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %num)
  %cmp = icmp ult i32 %5, %num
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef %num, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 136) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %chan5 = getelementptr inbounds %struct.dw2_desc_sw, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %chan5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %c, ptr %chan5, align 4
  %desc_pool = getelementptr inbounds %struct.ldma_chan, ptr %c, i32 0, i32 21
  %8 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_pool, align 4
  %desc_phys = getelementptr inbounds %struct.dw2_desc_sw, ptr %call7.i.i, i32 0, i32 2
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %9, i32 noundef 2848, ptr noundef %desc_phys) #9
  %desc_hw = getelementptr inbounds %struct.dw2_desc_sw, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %desc_hw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %desc_hw, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %do.body10, label %if.end20

do.body10:                                        ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_alloc_desc_resource.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_alloc_desc_resource, %do.end19)) #9
          to label %if.then16 [label %do.end19], !srcloc !177

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_alloc_desc_resource.__UNIQUE_ID_ddebug340, ptr noundef %3, ptr noundef nonnull @.str.45) #9
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %desc_cnt = getelementptr inbounds %struct.dw2_desc_sw, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %desc_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num, ptr %desc_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end19, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %if.end20 ], [ null, %do.end19 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ldma_dev_cfg(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock.i = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %base.i.i = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !141
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %or.i.i = or i32 %3, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %3)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %3
  br i1 %cmp.not.i.i, label %entry.ldma_dev_pkt_arb_cfg.exit_crit_edge, label %do.body.i.i

entry.ldma_dev_pkt_arb_cfg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_pkt_arb_cfg.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %4) #9, !srcloc !146
  br label %ldma_dev_pkt_arb_cfg.exit

ldma_dev_pkt_arb_cfg.exit:                        ; preds = %do.body.i.i, %entry.ldma_dev_pkt_arb_cfg.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #9
  %pollcnt.i = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 14
  %7 = ptrtoint ptr %pollcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pollcnt.i, align 4
  %shl.i = shl i32 %8, 4
  %and15.i = and i32 %shl.i, 65520
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #9, !srcloc !141
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i = and i32 %12, 2147418127
  %or.i = or i32 %and15.i, %and.i.i
  %or.i.i4 = or i32 %or.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i4, i32 %12)
  %cmp.not.i.i5 = icmp eq i32 %or.i.i4, %12
  br i1 %cmp.not.i.i5, label %ldma_dev_pkt_arb_cfg.exit.ldma_dev_global_polling_enable.exit_crit_edge, label %do.body.i.i7

ldma_dev_pkt_arb_cfg.exit.ldma_dev_global_polling_enable.exit_crit_edge: ; preds = %ldma_dev_pkt_arb_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_global_polling_enable.exit

do.body.i.i7:                                     ; preds = %ldma_dev_pkt_arb_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i.i4) #9
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i6 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i6, i32 %13) #9, !srcloc !146
  br label %ldma_dev_global_polling_enable.exit

ldma_dev_global_polling_enable.exit:              ; preds = %do.body.i.i7, %ldma_dev_pkt_arb_cfg.exit.ldma_dev_global_polling_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call19.i) #9
  %flags = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 13
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %18 = and i32 %17, 256
  %call2.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #9, !srcloc !141
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i13 = and i32 %22, -257
  %or.i.i14 = or i32 %and.i.i13, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i14, i32 %22)
  %cmp.not.i.i15 = icmp eq i32 %or.i.i14, %22
  br i1 %cmp.not.i.i15, label %ldma_dev_global_polling_enable.exit.ldma_dev_drb_cfg.exit_crit_edge, label %do.body.i.i17

ldma_dev_global_polling_enable.exit.ldma_dev_drb_cfg.exit_crit_edge: ; preds = %ldma_dev_global_polling_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_drb_cfg.exit

do.body.i.i17:                                    ; preds = %ldma_dev_global_polling_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i.i14) #9
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i16 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i16, i32 %23) #9, !srcloc !146
  br label %ldma_dev_drb_cfg.exit

ldma_dev_drb_cfg.exit:                            ; preds = %do.body.i.i17, %ldma_dev_global_polling_enable.exit.ldma_dev_drb_cfg.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i10) #9
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and4 = shl i32 %27, 4
  %28 = and i32 %and4, 512
  %call2.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22) #9, !srcloc !141
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i23 = and i32 %32, -513
  %or.i.i24 = or i32 %and.i.i23, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i24, i32 %32)
  %cmp.not.i.i25 = icmp eq i32 %or.i.i24, %32
  br i1 %cmp.not.i.i25, label %ldma_dev_drb_cfg.exit.ldma_dev_byte_enable_cfg.exit_crit_edge, label %do.body.i.i27

ldma_dev_drb_cfg.exit.ldma_dev_byte_enable_cfg.exit_crit_edge: ; preds = %ldma_dev_drb_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_byte_enable_cfg.exit

do.body.i.i27:                                    ; preds = %ldma_dev_drb_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i24) #9
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i26 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i26, i32 %33) #9, !srcloc !146
  br label %ldma_dev_byte_enable_cfg.exit

ldma_dev_byte_enable_cfg.exit:                    ; preds = %do.body.i.i27, %ldma_dev_drb_cfg.exit.ldma_dev_byte_enable_cfg.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i20) #9
  %inst.i = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 15
  %36 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %inst.i, align 4
  %type.i = getelementptr inbounds %struct.ldma_inst_data, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %if.end.i, label %ldma_dev_byte_enable_cfg.exit.ldma_dev_chan_flow_ctl_cfg.exit_crit_edge

ldma_dev_byte_enable_cfg.exit.ldma_dev_chan_flow_ctl_cfg.exit_crit_edge: ; preds = %ldma_dev_byte_enable_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_chan_flow_ctl_cfg.exit

if.end.i:                                         ; preds = %ldma_dev_byte_enable_cfg.exit
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and11 = shl i32 %41, 4
  %42 = and i32 %and11, 64
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %44, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #9, !srcloc !141
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i32 = and i32 %46, -65
  %or.i.i33 = or i32 %and.i.i32, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i33, i32 %46)
  %cmp.not.i.i34 = icmp eq i32 %or.i.i33, %46
  br i1 %cmp.not.i.i34, label %if.end.i.ldma_update_bits.exit.i_crit_edge, label %do.body.i.i36

if.end.i.ldma_update_bits.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i

do.body.i.i36:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i.i33) #9
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i35 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i35, i32 %47) #9, !srcloc !146
  br label %ldma_update_bits.exit.i

ldma_update_bits.exit.i:                          ; preds = %do.body.i.i36, %if.end.i.ldma_update_bits.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call3.i) #9
  br label %ldma_dev_chan_flow_ctl_cfg.exit

ldma_dev_chan_flow_ctl_cfg.exit:                  ; preds = %ldma_update_bits.exit.i, %ldma_dev_byte_enable_cfg.exit.ldma_dev_chan_flow_ctl_cfg.exit_crit_edge
  %50 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %inst.i, align 4
  %type.i38 = getelementptr inbounds %struct.ldma_inst_data, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %type.i38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i = icmp eq i32 %53, 2
  br i1 %cmp.i, label %ldma_dev_chan_flow_ctl_cfg.exit.ldma_dev_desc_fetch_on_demand_cfg.exit_crit_edge, label %if.end.i47

ldma_dev_chan_flow_ctl_cfg.exit.ldma_dev_desc_fetch_on_demand_cfg.exit_crit_edge: ; preds = %ldma_dev_chan_flow_ctl_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_desc_fetch_on_demand_cfg.exit

if.end.i47:                                       ; preds = %ldma_dev_chan_flow_ctl_cfg.exit
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and18 = shl i32 %55, 4
  %56 = and i32 %and18, 128
  %call3.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %58, i32 16
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #9, !srcloc !141
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i44 = and i32 %60, -129
  %or.i.i45 = or i32 %and.i.i44, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i45, i32 %60)
  %cmp.not.i.i46 = icmp eq i32 %or.i.i45, %60
  br i1 %cmp.not.i.i46, label %if.end.i47.ldma_update_bits.exit.i50_crit_edge, label %do.body.i.i49

if.end.i47.ldma_update_bits.exit.i50_crit_edge:   ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i50

do.body.i.i49:                                    ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i.i45) #9
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i48 = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i48, i32 %61) #9, !srcloc !146
  br label %ldma_update_bits.exit.i50

ldma_update_bits.exit.i50:                        ; preds = %do.body.i.i49, %if.end.i47.ldma_update_bits.exit.i50_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call3.i41) #9
  br label %ldma_dev_desc_fetch_on_demand_cfg.exit

ldma_dev_desc_fetch_on_demand_cfg.exit:           ; preds = %ldma_update_bits.exit.i50, %ldma_dev_chan_flow_ctl_cfg.exit.ldma_dev_desc_fetch_on_demand_cfg.exit_crit_edge
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and25 = lshr i32 %65, 3
  %66 = and i32 %and25, 2
  %call2.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %68, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #9, !srcloc !141
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i56 = and i32 %70, -3
  %or.i.i57 = or i32 %and.i.i56, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i57, i32 %70)
  %cmp.not.i.i58 = icmp eq i32 %or.i.i57, %70
  br i1 %cmp.not.i.i58, label %ldma_dev_desc_fetch_on_demand_cfg.exit.ldma_dev_sram_desc_cfg.exit_crit_edge, label %do.body.i.i60

ldma_dev_desc_fetch_on_demand_cfg.exit.ldma_dev_sram_desc_cfg.exit_crit_edge: ; preds = %ldma_dev_desc_fetch_on_demand_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_sram_desc_cfg.exit

do.body.i.i60:                                    ; preds = %ldma_dev_desc_fetch_on_demand_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i.i57) #9
  %72 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i59 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i59, i32 %71) #9, !srcloc !146
  br label %ldma_dev_sram_desc_cfg.exit

ldma_dev_sram_desc_cfg.exit:                      ; preds = %do.body.i.i60, %ldma_dev_desc_fetch_on_demand_cfg.exit.ldma_dev_sram_desc_cfg.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i53) #9
  %74 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %inst.i, align 4
  %type.i63 = getelementptr inbounds %struct.ldma_inst_data, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %type.i63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i63, align 4
  %.off.i = add i32 %77, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i71, label %ldma_dev_sram_desc_cfg.exit.ldma_dev_dburst_wr_cfg.exit_crit_edge

ldma_dev_sram_desc_cfg.exit.ldma_dev_dburst_wr_cfg.exit_crit_edge: ; preds = %ldma_dev_sram_desc_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_dburst_wr_cfg.exit

if.end.i71:                                       ; preds = %ldma_dev_sram_desc_cfg.exit
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %and32 = lshr i32 %79, 3
  %80 = and i32 %and32, 8
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %82, i32 16
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #9, !srcloc !141
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i68 = and i32 %84, -9
  %or.i.i69 = or i32 %and.i.i68, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i69, i32 %84)
  %cmp.not.i.i70 = icmp eq i32 %or.i.i69, %84
  br i1 %cmp.not.i.i70, label %if.end.i71.ldma_update_bits.exit.i74_crit_edge, label %do.body.i.i73

if.end.i71.ldma_update_bits.exit.i74_crit_edge:   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i74

do.body.i.i73:                                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i.i69) #9
  %86 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i72 = getelementptr i8, ptr %87, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i72, i32 %85) #9, !srcloc !146
  br label %ldma_update_bits.exit.i74

ldma_update_bits.exit.i74:                        ; preds = %do.body.i.i73, %if.end.i71.ldma_update_bits.exit.i74_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call6.i) #9
  br label %ldma_dev_dburst_wr_cfg.exit

ldma_dev_dburst_wr_cfg.exit:                      ; preds = %ldma_update_bits.exit.i74, %ldma_dev_sram_desc_cfg.exit.ldma_dev_dburst_wr_cfg.exit_crit_edge
  %88 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %inst.i, align 4
  %type.i76 = getelementptr inbounds %struct.ldma_inst_data, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %type.i76 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.not.i77 = icmp eq i32 %91, 0
  br i1 %cmp.not.i77, label %if.end.i86, label %ldma_dev_dburst_wr_cfg.exit.ldma_dev_vld_fetch_ack_cfg.exit_crit_edge

ldma_dev_dburst_wr_cfg.exit.ldma_dev_vld_fetch_ack_cfg.exit_crit_edge: ; preds = %ldma_dev_dburst_wr_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_vld_fetch_ack_cfg.exit

if.end.i86:                                       ; preds = %ldma_dev_dburst_wr_cfg.exit
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags, align 4
  %and39 = lshr i32 %93, 3
  %94 = and i32 %and39, 16
  %call3.i80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %95 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %96, i32 16
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #9, !srcloc !141
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i83 = and i32 %98, -17
  %or.i.i84 = or i32 %and.i.i83, %94
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i84, i32 %98)
  %cmp.not.i.i85 = icmp eq i32 %or.i.i84, %98
  br i1 %cmp.not.i.i85, label %if.end.i86.ldma_update_bits.exit.i89_crit_edge, label %do.body.i.i88

if.end.i86.ldma_update_bits.exit.i89_crit_edge:   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i89

do.body.i.i88:                                    ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i.i84) #9
  %100 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i87 = getelementptr i8, ptr %101, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i87, i32 %99) #9, !srcloc !146
  br label %ldma_update_bits.exit.i89

ldma_update_bits.exit.i89:                        ; preds = %do.body.i.i88, %if.end.i86.ldma_update_bits.exit.i89_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call3.i80) #9
  br label %ldma_dev_vld_fetch_ack_cfg.exit

ldma_dev_vld_fetch_ack_cfg.exit:                  ; preds = %ldma_update_bits.exit.i89, %ldma_dev_dburst_wr_cfg.exit.ldma_dev_vld_fetch_ack_cfg.exit_crit_edge
  %ver = getelementptr inbounds %struct.ldma_dev, ptr %d, i32 0, i32 5
  %102 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %103)
  %cmp = icmp ugt i32 %103, 10
  br i1 %cmp, label %if.then, label %ldma_dev_vld_fetch_ack_cfg.exit.do.body_crit_edge

ldma_dev_vld_fetch_ack_cfg.exit.do.body_crit_edge: ; preds = %ldma_dev_vld_fetch_ack_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %ldma_dev_vld_fetch_ack_cfg.exit
  %104 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %inst.i, align 4
  %type.i91 = getelementptr inbounds %struct.ldma_inst_data, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %type.i91 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i92 = icmp eq i32 %107, 1
  br i1 %cmp.i92, label %if.then.ldma_dev_orrc_cfg.exit_crit_edge, label %if.end.i101

if.then.ldma_dev_orrc_cfg.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_orrc_cfg.exit

if.end.i101:                                      ; preds = %if.then
  %orrc.i = getelementptr inbounds %struct.ldma_inst_data, ptr %105, i32 0, i32 4
  %108 = ptrtoint ptr %orrc.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %orrc.i, align 4
  %110 = add i32 %109, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %110)
  %111 = icmp ult i32 %110, 31
  %shl.i93 = shl nuw nsw i32 %109, 4
  %and27.i = and i32 %shl.i93, 496
  %or.i94 = or i32 %and27.i, -2147483648
  %val.0.i = select i1 %111, i32 %or.i94, i32 0
  %call33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %112 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %113, i32 400
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #9, !srcloc !141
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i98 = and i32 %115, 2147483151
  %or.i.i99 = or i32 %and.i.i98, %val.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i99, i32 %115)
  %cmp.not.i.i100 = icmp eq i32 %or.i.i99, %115
  br i1 %cmp.not.i.i100, label %if.end.i101.ldma_update_bits.exit.i104_crit_edge, label %do.body.i.i103

if.end.i101.ldma_update_bits.exit.i104_crit_edge: ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_update_bits.exit.i104

do.body.i.i103:                                   ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i.i99) #9
  %117 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i102 = getelementptr i8, ptr %118, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i102, i32 %116) #9, !srcloc !146
  br label %ldma_update_bits.exit.i104

ldma_update_bits.exit.i104:                       ; preds = %do.body.i.i103, %if.end.i101.ldma_update_bits.exit.i104_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call33.i) #9
  br label %ldma_dev_orrc_cfg.exit

ldma_dev_orrc_cfg.exit:                           ; preds = %ldma_update_bits.exit.i104, %if.then.ldma_dev_orrc_cfg.exit_crit_edge
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %119 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %120, i32 16
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #9, !srcloc !141
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and.i.i108 = and i32 %122, -268369921
  %or.i.i109 = or i32 %and.i.i108, 3276800
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i109, i32 %122)
  %cmp.not.i.i110 = icmp eq i32 %or.i.i109, %122
  br i1 %cmp.not.i.i110, label %ldma_dev_orrc_cfg.exit.ldma_dev_df_tout_cfg.exit_crit_edge, label %do.body.i.i112

ldma_dev_orrc_cfg.exit.ldma_dev_df_tout_cfg.exit_crit_edge: ; preds = %ldma_dev_orrc_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ldma_dev_df_tout_cfg.exit

do.body.i.i112:                                   ; preds = %ldma_dev_orrc_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %123 = tail call i32 @llvm.bswap.i32(i32 %or.i.i109) #9
  %124 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i111 = getelementptr i8, ptr %125, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i111, i32 %123) #9, !srcloc !146
  br label %ldma_dev_df_tout_cfg.exit

ldma_dev_df_tout_cfg.exit:                        ; preds = %do.body.i.i112, %ldma_dev_orrc_cfg.exit.ldma_dev_df_tout_cfg.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call20.i) #9
  br label %do.body

do.body:                                          ; preds = %ldma_dev_df_tout_cfg.exit, %ldma_dev_vld_fetch_ack_cfg.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ldma_dev_cfg.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ldma_dev_cfg, %do.end)) #9
          to label %if.then52 [label %do.end], !srcloc !177

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %d, align 4
  %128 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %inst.i, align 4
  %name = getelementptr inbounds %struct.ldma_inst_data, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %name, align 4
  %132 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %133, i32 16
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !141
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ldma_dev_cfg.__UNIQUE_ID_ddebug253, ptr noundef %127, ptr noundef nonnull @.str.48, ptr noundef %131, i32 noundef %135) #9
  br label %do.end

do.end:                                           ; preds = %if.then52, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ldma_port_cfg(ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %txendi = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %txendi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txendi, align 4
  %rxendi = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %rxendi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxendi, align 4
  %shl = shl i32 %3, 10
  %and15 = and i32 %shl, 3072
  %shl40 = shl i32 %5, 8
  %and41 = and i32 %shl40, 768
  %or = or i32 %and41, %and15
  %ver = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp = icmp eq i32 %7, 10
  br i1 %cmp, label %do.body49, label %do.end118

do.body49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %txbl = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %txbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txbl, align 4
  %rxbl = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %rxbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxbl, align 4
  %shl67 = shl i32 %9, 4
  %and68 = and i32 %shl67, 48
  %or69 = or i32 %and68, %or
  %shl94 = shl i32 %11, 2
  %and95 = and i32 %shl94, 12
  %or96 = or i32 %or69, %and95
  br label %do.body184

do.end118:                                        ; preds = %entry
  %pkt_drop = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 6
  %12 = ptrtoint ptr %pkt_drop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pkt_drop, align 4
  %shl121 = shl i32 %13, 6
  %and122 = and i32 %shl121, 64
  %or123 = or i32 %and122, %or
  %txbl124 = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 3
  %14 = ptrtoint ptr %txbl124 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txbl124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %switch.selectcmp = icmp eq i32 %15, 16
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %switch.selectcmp10 = icmp eq i32 %15, 32
  %switch.select11 = select i1 %switch.selectcmp10, i32 32768, i32 %switch.select
  %or132 = or i32 %or123, %switch.select11
  %rxbl153 = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 2
  %16 = ptrtoint ptr %rxbl153 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rxbl153, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end177 [
    i32 32, label %if.then155
    i32 16, label %if.then160
  ]

if.then155:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  %or156 = or i32 %or132, 128
  br label %do.body184

if.then160:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  %or161 = or i32 %or132, 1
  br label %do.body184

do.end177:                                        ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  %or179 = or i32 %or132, 12
  br label %do.body184

do.body184:                                       ; preds = %do.end177, %if.then160, %if.then155, %do.body49
  %reg.1 = phi i32 [ %or96, %do.body49 ], [ %or156, %if.then155 ], [ %or161, %if.then160 ], [ %or179, %do.end177 ]
  %dev_lock = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 9
  %call187 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %portid = getelementptr inbounds %struct.ldma_port, ptr %p, i32 0, i32 1
  %19 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %portid, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %base = getelementptr inbounds %struct.ldma_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr199 = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 %24) #9, !srcloc !146
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call187) #9
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr202 = getelementptr i8, ptr %28, i32 68
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr202) #9, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ldma_port_cfg.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ldma_port_cfg, %do.end216)) #9
          to label %if.then213 [label %do.end216], !srcloc !177

if.then213:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ldma_port_cfg.__UNIQUE_ID_ddebug339, ptr noundef %32, ptr noundef nonnull @.str.50, i32 noundef %30) #9
  br label %do.end216

do.end216:                                        ; preds = %if.then213, %do.body184
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_lgm_dma__418_1739_intel_ldma_init6, !1, !"__initcall__kmod_lgm_dma__418_1739_intel_ldma_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1739, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1723, i32 11}
!4 = !{ptr @intel_ldma_driver, !5, !"intel_ldma_driver", i1 false, i1 false}
!5 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1720, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1584, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @intel_ldma_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @intel_ldma_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1605, i32 3}
!16 = !{ptr @intel_ldma_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @intel_ldma_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1625, i32 3}
!20 = !{ptr @intel_ldma_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @intel_ldma_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1635, i32 38}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1703, i32 3}
!26 = !{ptr @intel_ldma_probe._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @intel_ldma_probe._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1709, i32 3}
!30 = !{ptr @intel_ldma_probe._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @intel_ldma_probe._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1714, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @intel_ldma_probe._entry.19, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @intel_ldma_probe._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1443, i32 41}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1445, i32 3}
!41 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ldma_init_v22._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ldma_init_v22._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1458, i32 10}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1126, i32 3}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dma_interrupt._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dma_interrupt._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 923, i32 40}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 926, i32 40}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 929, i32 40}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 932, i32 39}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1412, i32 37}
!61 = !{ptr @ldma_dma_init_v22.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1413, i32 2}
!63 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1289, i32 3}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ldma_alloc_chan_resources._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ldma_alloc_chan_resources._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 667, i32 3}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ldma_chan_desc_cfg._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ldma_chan_desc_cfg._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 673, i32 3}
!76 = !{ptr @ldma_chan_desc_cfg._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ldma_chan_desc_cfg._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 981, i32 3}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dma_alloc_desc_resource._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @dma_alloc_desc_resource._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 993, i32 3}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dma_alloc_desc_resource.__UNIQUE_ID_ddebug340, !84, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!87 = !{ptr @ldma_dev_init.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 900, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 513, i32 2}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ldma_dev_cfg.__UNIQUE_ID_ddebug253, !91, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 855, i32 2}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ldma_port_cfg.__UNIQUE_ID_ddebug339, !95, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!98 = !{ptr @intel_ldma_match, !99, !"intel_ldma_match", i1 false, i1 false}
!99 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1552, i32 34}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1475, i32 10}
!102 = !{ptr @dma0, !103, !"dma0", i1 false, i1 false}
!103 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1474, i32 36}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1483, i32 10}
!106 = !{ptr @dma2tx, !107, !"dma2tx", i1 false, i1 false}
!107 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1482, i32 36}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1493, i32 10}
!110 = !{ptr @dma1rx, !111, !"dma1rx", i1 false, i1 false}
!111 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1492, i32 36}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1503, i32 10}
!114 = !{ptr @dma1tx, !115, !"dma1tx", i1 false, i1 false}
!115 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1502, i32 36}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1513, i32 10}
!118 = !{ptr @dma0tx, !119, !"dma0tx", i1 false, i1 false}
!119 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1512, i32 36}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1523, i32 10}
!122 = !{ptr @dma3, !123, !"dma3", i1 false, i1 false}
!123 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1522, i32 36}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1533, i32 10}
!126 = !{ptr @toe_dma30, !127, !"toe_dma30", i1 false, i1 false}
!127 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1532, i32 36}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1543, i32 10}
!130 = !{ptr @toe_dma31, !131, !"toe_dma31", i1 false, i1 false}
!131 = !{!"../drivers/dma/lgm/lgm-dma.c", i32 1542, i32 36}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i64 6316212}
!142 = !{i64 2155679601}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{i8 0, i8 2}
!145 = !{i64 2155402199}
!146 = !{i64 6315794}
!147 = !{i64 2155402705}
!148 = !{i64 2155403278}
!149 = !{i64 2154477080}
!150 = !{i64 2155648739}
!151 = !{i64 2155664546}
!152 = !{i32 0, i32 33}
!153 = !{i64 2154533761}
!154 = !{i64 2154533975}
!155 = !{i64 2154680171}
!156 = !{i64 2154846183}
!157 = !{i64 2154848683}
!158 = !{i64 2154849701}
!159 = !{i64 2154850534}
!160 = !{i64 2155409103}
!161 = !{i64 2155412013}
!162 = !{i64 2155412972}
!163 = !{i64 2155414079}
!164 = !{i64 2155415034}
!165 = !{i64 2155404586}
!166 = !{i64 2155405255}
!167 = !{i64 2155406845}
!168 = !{i64 2155408048}
!169 = !{i64 2155408437}
!170 = !{i64 2154475573, i64 2154476067, i64 2154475610, i64 2154475666, i64 2154475700, i64 2154475724, i64 2154475765, i64 2154475786, i64 2154475814, i64 2154475848}
!171 = !{i64 2154993832}
!172 = !{i64 2154994314}
!173 = !{i64 2154942020}
!174 = !{i64 2154942502}
!175 = !{i64 2154944421}
!176 = !{i64 2154986576}
!177 = !{i64 2148793455, i64 2148793460, i64 2148793473, i64 2148793517, i64 2148793551, i64 2148793572}
!178 = !{i64 2154678645}
!179 = !{i64 2155392107}
!180 = !{i64 2155392519}
!181 = !{i64 2155393182}
