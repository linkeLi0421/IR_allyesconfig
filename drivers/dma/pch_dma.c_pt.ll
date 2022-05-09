; ModuleID = '/llk/IR_all_yes/drivers/dma/pch_dma.c_pt.bc'
source_filename = "../drivers/dma/pch_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.pch_dma = type { %struct.dma_device, ptr, ptr, %struct.pch_dma_regs, [12 x %struct.pch_dma_desc_regs], [12 x %struct.pch_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pch_dma_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [12 x %struct.pch_dma_desc_regs] }
%struct.pch_dma_desc_regs = type { i32, i32, i32, i32 }
%struct.pch_dma_chan = type { %struct.dma_chan, ptr, i32, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.pch_dma_desc = type { %struct.pch_dma_desc_regs, %struct.dma_async_tx_descriptor, %struct.list_head, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.pch_dma_slave = type { ptr, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__param_str_init_nr_desc_per_channel = internal constant [33 x i8] c"pch_dma.init_nr_desc_per_channel\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@init_nr_desc_per_channel = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_init_nr_desc_per_channel = internal constant %struct.kernel_param { ptr @__param_str_init_nr_desc_per_channel, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @init_nr_desc_per_channel } }, section "__param", align 4
@__UNIQUE_ID_init_nr_desc_per_channeltype238 = internal constant [47 x i8] c"pch_dma.parmtype=init_nr_desc_per_channel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_init_nr_desc_per_channel239 = internal constant [84 x i8] c"pch_dma.parm=init_nr_desc_per_channel:initial descriptors per channel (default: 64)\00", section ".modinfo", align 1
@__initcall__kmod_pch_dma__251_989_pch_dma_driver_init6 = internal global ptr @pch_dma_driver_init, section ".initcall6.init", align 4
@pch_dma_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pch_dma_id_table, ptr @pch_dma_probe, ptr @pch_dma_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_dma_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pch_dma_driver_exit = internal global ptr @pch_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description252 = internal constant [99 x i8] c"pch_dma.description=Intel EG20T PCH / LAPIS Semicon ML7213/ML7223/ML7831 IOH DMA controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [49 x i8] c"pch_dma.author=Yong Wang <yong.y.wang@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [33 x i8] c"pch_dma.file=drivers/dma/pch_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [23 x i8] c"pch_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch-dma\00", [24 x i8] zeroinitializer }, align 32
@pch_dma_id_table = internal constant { [13 x %struct.pci_device_id], [96 x i8] } { [13 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34832, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 34837, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 32806, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4315, i32 32811, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4315, i32 32820, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 32818, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4315, i32 32779, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 32782, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 32791, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 32827, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 34832, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4315, i32 34837, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@pch_dma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_dma_suspend, ptr @pch_dma_resume, ptr @pch_dma_suspend, ptr @pch_dma_resume, ptr @pch_dma_suspend, ptr @pch_dma_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/pch_dma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr = internal global ptr @pch_dma_probe._entry, section ".printk_index", align 4
@pch_dma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 827, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot find proper base address\0A\00", [63 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr.9 = internal global ptr @pch_dma_probe._entry.7, section ".printk_index", align 4
@pch_dma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr.12 = internal global ptr @pch_dma_probe._entry.10, section ".printk_index", align 4
@pch_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 840, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot set proper DMA config\0A\00", [34 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr.15 = internal global ptr @pch_dma_probe._entry.13, section ".printk_index", align 4
@pch_dma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot map MMIO registers\0A\00", [37 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr.18 = internal global ptr @pch_dma_probe._entry.16, section ".printk_index", align 4
@pch_dma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 856, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr.21 = internal global ptr @pch_dma_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_dma_desc_pool\00", [46 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 863, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to alloc DMA descriptors\0A\00", [63 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr.25 = internal global ptr @pch_dma_probe._entry.23, section ".printk_index", align 4
@pch_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pd_chan->lock\00", [17 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register DMA device\0A\00", [33 x i8] zeroinitializer }, align 32
@pch_dma_probe._entry_ptr.29 = internal global ptr @pch_dma_probe._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pd_irq.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 -80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pd_irq\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pd_irq sts0: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@pdc_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 680, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BUG: handle non-idle channel in tasklet\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc_tasklet\00", [20 x i8] zeroinitializer }, align 32
@pdc_tasklet._entry_ptr = internal global ptr @pdc_tasklet._entry, section ".printk_index", align 4
@pdc_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 390, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad descriptor submitted\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pdc_handle_error\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@pdc_handle_error._entry_ptr = internal global ptr @pdc_handle_error._entry, section ".printk_index", align 4
@pdc_handle_error._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.4, i32 392, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"descriptor cookie: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pdc_handle_error._entry_ptr.39 = internal global ptr @pdc_handle_error._entry.37, section ".printk_index", align 4
@pdc_dostart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BUG: Attempt to start non-idle channel\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc_dostart\00", [20 x i8] zeroinitializer }, align 32
@pdc_dostart._entry_ptr = internal global ptr @pdc_dostart._entry, section ".printk_index", align 4
@pdc_dostart.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chan %d -> dev_addr: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@pdc_dostart.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.43, i8 0, i8 82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chan %d -> mem_addr: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@pdc_dostart.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.44, i8 0, i8 83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chan %d -> size: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@pdc_dostart.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.45, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chan %d -> next: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@pdc_set_mode.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pdc_set_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pdc_set_mode: chan %d -> %x\0A\00", [35 x i8] zeroinitializer }, align 32
@pd_alloc_chan_resources.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 0, i8 124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pd_alloc_chan_resources\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA channel not idle ?\0A\00", [40 x i8] zeroinitializer }, align 32
@pd_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 509, ptr @.str.51, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Only allocated %d initial descriptors\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pd_alloc_chan_resources._entry_ptr = internal global ptr @pd_alloc_chan_resources._entry, section ".printk_index", align 4
@pdc_enable_irq.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pdc_enable_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pdc_enable_irq: chan %d -> %x\0A\00", [33 x i8] zeroinitializer }, align 32
@pd_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 581, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"prep_slave_sg: length is zero!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pd_prep_slave_sg\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pd_prep_slave_sg._entry_ptr = internal global ptr @pd_prep_slave_sg._entry, section ".printk_index", align 4
@pd_prep_slave_sg._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get desc or wrong parameters\0A\00", [56 x i8] zeroinitializer }, align 32
@pd_prep_slave_sg._entry_ptr.59 = internal global ptr @pd_prep_slave_sg._entry.57, section ".printk_index", align 4
@pdc_set_dir.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc_set_dir\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pdc_set_dir: chan %d -> %x\0A\00", [36 x i8] zeroinitializer }, align 32
@pdc_desc_get.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pdc_desc_get\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"desc %p not ACKed\0A\00", [45 x i8] zeroinitializer }, align 32
@pdc_desc_get.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.4, ptr @.str.64, i8 0, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scanned %d descriptors\0A\00", [40 x i8] zeroinitializer }, align 32
@pdc_desc_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.4, i32 471, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to alloc desc\0A\00", [42 x i8] zeroinitializer }, align 32
@pdc_desc_get._entry_ptr = internal global ptr @pdc_desc_get._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.67 = private unnamed_addr constant [25 x i8] c"init_nr_desc_per_channel\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 59, i32 21 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"pch_dma_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 981, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 989, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 982, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"pch_dma_id_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 963, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"pch_dma_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 979, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 822, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 827, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 834, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 840, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 846, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 856, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 860, i32 29 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 863, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 879, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 902, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 705, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 679, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 390, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 391, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 322, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 327, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 329, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 331, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 333, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 279, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 497, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 508, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 197, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 581, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 647, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 245, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 458, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 461, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [25 x i8] c"../drivers/dma/pch_dma.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 470, i32 4 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_init_nr_desc_per_channel239, ptr @__UNIQUE_ID_init_nr_desc_per_channeltype238, ptr @__UNIQUE_ID_license255, ptr @__exitcall_pch_dma_driver_exit, ptr @__initcall__kmod_pch_dma__251_989_pch_dma_driver_init6, ptr @__param_init_nr_desc_per_channel, ptr @pch_dma_driver_exit, ptr @pch_dma_probe._entry, ptr @pch_dma_probe._entry.10, ptr @pch_dma_probe._entry.13, ptr @pch_dma_probe._entry.16, ptr @pch_dma_probe._entry.19, ptr @pch_dma_probe._entry.23, ptr @pch_dma_probe._entry.27, ptr @pch_dma_probe._entry.7, ptr @pch_dma_probe._entry_ptr, ptr @pch_dma_probe._entry_ptr.12, ptr @pch_dma_probe._entry_ptr.15, ptr @pch_dma_probe._entry_ptr.18, ptr @pch_dma_probe._entry_ptr.21, ptr @pch_dma_probe._entry_ptr.25, ptr @pch_dma_probe._entry_ptr.29, ptr @pch_dma_probe._entry_ptr.9, ptr @pd_alloc_chan_resources._entry, ptr @pd_alloc_chan_resources._entry_ptr, ptr @pd_prep_slave_sg._entry, ptr @pd_prep_slave_sg._entry.57, ptr @pd_prep_slave_sg._entry_ptr, ptr @pd_prep_slave_sg._entry_ptr.59, ptr @pdc_desc_get._entry, ptr @pdc_desc_get._entry_ptr, ptr @pdc_dostart._entry, ptr @pdc_dostart._entry_ptr, ptr @pdc_handle_error._entry, ptr @pdc_handle_error._entry.37, ptr @pdc_handle_error._entry_ptr, ptr @pdc_handle_error._entry_ptr.39, ptr @pdc_tasklet._entry, ptr @pdc_tasklet._entry_ptr, ptr @init_nr_desc_per_channel, ptr @pch_dma_driver, ptr @.str, ptr @.str.1, ptr @pch_dma_id_table, ptr @pch_dma_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @pch_dma_probe.__key, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nr_desc_per_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_id_table to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_dma_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_handle_error._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_dostart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd_prep_slave_sg._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_desc_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_dma_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_dma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_dma_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2852) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %err_free_mem

if.end4:                                          ; preds = %if.end
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.8) #11
  br label %err_disable_pdev

if.end11:                                         ; preds = %if.end4
  %call12 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.11) #11
  br label %err_disable_pdev

if.end19:                                         ; preds = %if.end11
  %call21 = tail call i32 @dma_set_mask(ptr noundef %dev20, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.14) #11
  br label %err_free_res

if.end28:                                         ; preds = %if.end19
  %call29 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #7
  %membase = getelementptr inbounds %struct.pch_dma, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call29, ptr %membase, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.17) #11
  br label %err_free_res

if.end37:                                         ; preds = %if.end28
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %dev39 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 15
  %7 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev20, ptr %dev39, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @pd_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.20) #11
  br label %err_iounmap

if.end47:                                         ; preds = %if.end37
  %call49 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.22, ptr noundef %dev20, i32 noundef 132, i32 noundef 4, i32 noundef 0) #7
  %pool = getelementptr inbounds %struct.pch_dma, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call49, ptr %pool, align 8
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.24) #11
  br label %err_free_irq

if.end57:                                         ; preds = %if.end47
  %channels = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %channels, ptr %prev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp166.not = icmp eq i32 %1, 0
  br i1 %cmp166.not, label %if.end57.for.end_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  br label %for.body

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end57.for.body_crit_edge
  %i.0167 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %if.end57.for.body_crit_edge ]
  %arrayidx60 = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167
  %13 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %arrayidx60, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx60, i32 0, i32 2
  %14 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx60, i32 0, i32 3
  %15 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %completed_cookie.i, align 4
  %arrayidx63 = getelementptr %struct.pch_dma_regs, ptr %call29, i32 0, i32 8, i32 %i.0167
  %membase64 = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 1
  %16 = ptrtoint ptr %membase64 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx63, ptr %membase64, align 4
  %lock = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @pch_dma_probe.__key, i16 noundef signext 3) #7
  %active_list = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 6
  %17 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i162 = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i162 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active_list, ptr %prev.i162, align 4
  %queue = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 7
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i163 = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 7, i32 1
  %20 = ptrtoint ptr %prev.i163 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %queue, ptr %prev.i163, align 4
  %free_list = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 8
  %21 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i164 = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 8, i32 1
  %22 = ptrtoint ptr %prev.i164 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %free_list, ptr %prev.i164, align 4
  %tasklet = getelementptr %struct.pch_dma, ptr %call7.i.i, i32 0, i32 5, i32 %i.0167, i32 3
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @pdc_tasklet) #7
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx60, i32 0, i32 8
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %24, ptr noundef %channels) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %device_node, ptr %prev.i, align 8
  %26 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx60, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %device_node, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end57.for.end_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cap_mask, align 8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #7
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 27
  %30 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pd_alloc_chan_resources, ptr %device_alloc_chan_resources, align 8
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 29
  %31 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @pd_free_chan_resources, ptr %device_free_chan_resources, align 8
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 49
  %32 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pd_tx_status, ptr %device_tx_status, align 8
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 50
  %33 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pd_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 39
  %34 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pd_prep_slave_sg, ptr %device_prep_slave_sg, align 8
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 47
  %35 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pd_device_terminate_all, ptr %device_terminate_all, align 8
  %call84 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %for.end.cleanup_crit_edge, label %do.end89

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end89:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.28) #11
  %36 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %37) #7
  br label %err_free_irq

err_free_irq:                                     ; preds = %do.end89, %do.end55
  %err.0 = phi i32 [ %call84, %do.end89 ], [ -12, %do.end55 ]
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call94 = tail call ptr @free_irq(i32 noundef %39, ptr noundef nonnull %call7.i.i) #7
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_free_irq, %do.end45
  %err.1 = phi i32 [ %call.i, %do.end45 ], [ %err.0, %err_free_irq ]
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %41) #7
  br label %err_free_res

err_free_res:                                     ; preds = %err_iounmap, %do.end35, %do.end26
  %err.2 = phi i32 [ %call21, %do.end26 ], [ %err.1, %err_iounmap ], [ -12, %do.end35 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_free_res, %do.end17, %do.end9
  %err.3 = phi i32 [ %call12, %do.end17 ], [ %err.2, %err_free_res ], [ -19, %do.end9 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_disable_pdev, %do.end
  %err.4 = phi i32 [ %call1, %do.end ], [ %err.3, %err_disable_pdev ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_free_mem ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_dma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @dma_async_device_unregister(ptr noundef nonnull %1) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef nonnull %1) #7
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %cmp.not31 = icmp eq ptr %5, %channels
  br i1 %cmp.not31, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in32 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %5, %if.then.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in32, align 4
  %tasklet = getelementptr i8, ptr %.pn.in32, i32 40
  tail call void @tasklet_kill(ptr noundef %tasklet) #7
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %pool = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %8) #7
  %membase = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %10) #7
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.pch_dma, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !155
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !155
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd_irq.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pd_irq, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dma_device, ptr %devid, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd_irq.__UNIQUE_ID_ddebug250, ptr noundef %9, ptr noundef nonnull @.str.31, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %devid, i32 0, i32 1
  %10 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chancnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp83.not = icmp eq i32 %11, 0
  br i1 %cmp83.not, label %do.end.if.end53_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end53_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %ret0.085 = phi i32 [ %ret0.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %ret2.084 = phi i32 [ %ret2.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.086)
  %cmp15 = icmp slt i32 %i.086, 8
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body
  %shl = shl nuw nsw i32 1, %i.086
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then16.for.inc_crit_edge, label %if.then18

if.then16.for.inc_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %if.then16
  %add = add nsw i32 %i.086, 8
  %shl19 = shl nuw nsw i32 1, %add
  %and20 = and i32 %shl19, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then18.if.end23_crit_edge, label %if.then22

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %err_status = getelementptr %struct.pch_dma, ptr %devid, i32 0, i32 5, i32 %i.086, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %err_status) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then18.if.end23_crit_edge
  %state.i = getelementptr %struct.pch_dma, ptr %devid, i32 0, i32 5, i32 %i.086, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23.for.inc.sink.split_crit_edge, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end23.for.inc.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %sub = add nsw i32 %i.086, -8
  %shl25 = shl nuw i32 1, %sub
  %and26 = and i32 %shl25, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else.for.inc_crit_edge, label %if.then28

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then28:                                        ; preds = %if.else
  %shl29 = shl nuw i32 1, %i.086
  %and30 = and i32 %shl29, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then28.if.end34_crit_edge, label %if.then32

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %err_status33 = getelementptr %struct.pch_dma, ptr %devid, i32 0, i32 5, i32 %i.086, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %err_status33) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then28.if.end34_crit_edge
  %state.i77 = getelementptr %struct.pch_dma, ptr %devid, i32 0, i32 5, i32 %i.086, i32 3, i32 1
  %call.i78 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %if.end34.for.inc.sink.split_crit_edge, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end34.for.inc.sink.split_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end34.for.inc.sink.split_crit_edge, %if.end23.for.inc.sink.split_crit_edge
  %ret2.1.ph = phi i32 [ %ret2.084, %if.end23.for.inc.sink.split_crit_edge ], [ 1, %if.end34.for.inc.sink.split_crit_edge ]
  %ret0.1.ph = phi i32 [ 1, %if.end23.for.inc.sink.split_crit_edge ], [ %ret0.085, %if.end34.for.inc.sink.split_crit_edge ]
  %tasklet35 = getelementptr %struct.pch_dma, ptr %devid, i32 0, i32 5, i32 %i.086, i32 3
  tail call void @__tasklet_schedule(ptr noundef %tasklet35) #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end34.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.end23.for.inc_crit_edge, %if.then16.for.inc_crit_edge
  %ret2.1 = phi i32 [ %ret2.084, %if.then16.for.inc_crit_edge ], [ %ret2.084, %if.else.for.inc_crit_edge ], [ %ret2.084, %if.end23.for.inc_crit_edge ], [ 1, %if.end34.for.inc_crit_edge ], [ %ret2.1.ph, %for.inc.sink.split ]
  %ret0.1 = phi i32 [ %ret0.085, %if.then16.for.inc_crit_edge ], [ %ret0.085, %if.else.for.inc_crit_edge ], [ 1, %if.end23.for.inc_crit_edge ], [ %ret0.085, %if.end34.for.inc_crit_edge ], [ %ret0.1.ph, %for.inc.sink.split ]
  %inc = add nuw i32 %i.086, 1
  %12 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chancnt, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret0.1)
  %tobool38.not = icmp eq i32 %ret0.1, 0
  br i1 %tobool38.not, label %for.end.if.end45_crit_edge, label %do.body40

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.body40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr44 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %2) #7, !srcloc !160
  br label %if.end45

if.end45:                                         ; preds = %do.body40, %for.end.if.end45_crit_edge
  %ret0.0.lcssa93 = phi i32 [ %ret0.1, %do.body40 ], [ 0, %for.end.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret2.1)
  %tobool46.not = icmp eq i32 %ret2.1, 0
  br i1 %tobool46.not, label %if.end45.if.end53_crit_edge, label %do.body48

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.body48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr52 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %6) #7, !srcloc !160
  br label %if.end53

if.end53:                                         ; preds = %do.body48, %if.end45.if.end53_crit_edge, %do.end.if.end53_crit_edge
  %ret2.0.lcssa9298 = phi i32 [ %ret2.1, %do.body48 ], [ 0, %if.end45.if.end53_crit_edge ], [ 0, %do.end.if.end53_crit_edge ]
  %ret0.0.lcssa9397 = phi i32 [ %ret0.0.lcssa93, %do.body48 ], [ %ret0.0.lcssa93, %if.end45.if.end53_crit_edge ], [ 0, %do.end.if.end53_crit_edge ]
  %or = or i32 %ret0.0.lcssa9397, %ret2.0.lcssa9298
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -72
  %chan_id.i = getelementptr i8, ptr %t, i32 -56
  %0 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp slt i32 %1, 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %membase.i.i = getelementptr inbounds %struct.pch_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !155
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %8 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id.i, align 4
  %mul.i.i = shl i32 %9, 1
  %add.i.i = add i32 %mul.i.i, 16
  %shr.i.i = lshr i32 %7, %add.i.i
  br label %pdc_is_idle.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i8.i = getelementptr i8, ptr %5, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !155
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %12 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id.i, align 4
  %sub.i.i = shl i32 %13, 1
  %shr.i10.i = lshr i32 %11, %sub.i.i
  br label %pdc_is_idle.exit

pdc_is_idle.exit:                                 ; preds = %if.else.i, %if.then.i
  %sts.0.in.i = phi i32 [ %shr.i.i, %if.then.i ], [ %shr.i10.i, %if.else.i ]
  %sts.0.i = and i32 %sts.0.in.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0.i)
  %cmp2.i = icmp eq i32 %sts.0.i, 0
  br i1 %cmp2.i, label %do.body3, label %do.end

do.end:                                           ; preds = %pdc_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %t, i32 -52
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.32) #11
  br label %cleanup

do.body3:                                         ; preds = %pdc_is_idle.exit
  %lock = getelementptr i8, ptr %t, i32 28
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %err_status = getelementptr i8, ptr %t, i32 24
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %err_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.body3
  %active_list.i.i = getelementptr i8, ptr %t, i32 72
  %16 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active_list.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.list_del.exit.i_crit_edge

if.then12.list_del.exit.i_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then12.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %queue.i = getelementptr i8, ptr %t, i32 80
  %prev.i = getelementptr i8, ptr %t, i32 76
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %28 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %29, %queue.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

list_del.exit.i.list_splice_init.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev2.i.i.i = getelementptr i8, ptr %t, i32 84
  %32 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %27, ptr %prev3.i.i.i, align 4
  store ptr %29, ptr %27, align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %33, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev6.i.i.i, align 4
  %37 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  store ptr %queue.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %list_del.exit.i.list_splice_init.exit.i_crit_edge
  %38 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %active_list.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %39, %active_list.i.i
  br i1 %cmp.i.not.i, label %list_splice_init.exit.i.do.end.i_crit_edge, label %if.then.i22

list_splice_init.exit.i.do.end.i_crit_edge:       ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i22:                                      ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i21.i = getelementptr i8, ptr %39, i32 -116
  tail call fastcc void @pdc_dostart(ptr noundef %add.ptr, ptr noundef %add.ptr.i21.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i22, %list_splice_init.exit.i.do.end.i_crit_edge
  %dev.i.i = getelementptr i8, ptr %t, i32 -52
  %40 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i.i, ptr noundef nonnull @.str.34) #11
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 4
  %device.i23.i = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  %txd.i = getelementptr i8, ptr %17, i32 -100
  %44 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %txd.i, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i23.i, ptr noundef nonnull @.str.38, i32 noundef %45) #11
  %callback.i.i.i = getelementptr i8, ptr %17, i32 -76
  %46 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr i8, ptr %17, i32 -72
  %48 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr i8, ptr %17, i32 -68
  %50 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %callback_param.i.i.i, align 4
  %tx_list.i.i = getelementptr i8, ptr %17, i32 8
  %free_list.i.i = getelementptr i8, ptr %t, i32 88
  %52 = ptrtoint ptr %tx_list.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %tx_list.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %53, %tx_list.i.i
  br i1 %cmp.i.not.i.i.i, label %do.end.i.list_splice_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.end.i.list_splice_init.exit.i.i_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %free_list.i.i, align 4
  %prev2.i.i.i.i = getelementptr i8, ptr %17, i32 12
  %56 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %free_list.i.i, ptr %prev3.i.i.i.i, align 4
  store ptr %53, ptr %free_list.i.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %55, ptr %57, align 4
  %prev6.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev6.i.i.i.i, align 4
  %61 = ptrtoint ptr %tx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %tx_list.i.i, ptr %tx_list.i.i, align 4
  store ptr %tx_list.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_init.exit.i.i

list_splice_init.exit.i.i:                        ; preds = %if.then.i.i.i, %do.end.i.list_splice_init.exit.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_splice_init.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge

list_splice_init.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %list_splice_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %list_splice_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %list_splice_init.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %68 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %free_list.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %17, ptr noundef %free_list.i.i, ptr noundef %69) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge

__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %17, ptr %prev1.i.i2.i.i.i, align 4
  %71 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %17, align 4
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %free_list.i.i, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %17, ptr %free_list.i.i, align 4
  br label %list_move.exit.i.i

list_move.exit.i.i:                               ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  %74 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i8.i.i

if.then.i8.i.i:                                   ; preds = %list_move.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %49(ptr noundef %51, ptr noundef nonnull %dummy_result.i.i.i) #7
  br label %pdc_handle_error.exit

if.else.i.i.i:                                    ; preds = %list_move.exit.i.i
  %tobool4.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.pdc_handle_error.exit_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.pdc_handle_error.exit_crit_edge:    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pdc_handle_error.exit

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %47(ptr noundef %51) #7
  br label %pdc_handle_error.exit

pdc_handle_error.exit:                            ; preds = %if.then5.i.i.i, %if.else.i.i.i.pdc_handle_error.exit_crit_edge, %if.then.i8.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  br label %if.end13

if.else:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pdc_advance_work(ptr noundef %add.ptr)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %pdc_handle_error.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %addr.i = alloca i32, align 4
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.i = icmp slt i32 %4, 8
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan, align 4
  %membase.i.i = getelementptr inbounds %struct.pch_dma, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 16
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !155
  %10 = call i32 @llvm.bswap.i32(i32 %9) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %11 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan_id.i, align 4
  %mul.i.i = shl i32 %12, 1
  %add.i.i = add i32 %mul.i.i, 16
  %shr.i.i = lshr i32 %10, %add.i.i
  br label %pdc_is_idle.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i8.i = getelementptr i8, ptr %8, i32 24
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !155
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %15 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan_id.i, align 4
  %sub.i.i = shl i32 %16, 1
  %shr.i10.i = lshr i32 %14, %sub.i.i
  br label %pdc_is_idle.exit

pdc_is_idle.exit:                                 ; preds = %if.else.i, %if.then.i
  %sts.0.in.i = phi i32 [ %shr.i.i, %if.then.i ], [ %shr.i10.i, %if.else.i ]
  %sts.0.i = and i32 %sts.0.in.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0.i)
  %cmp2.i = icmp eq i32 %sts.0.i, 0
  br i1 %cmp2.i, label %if.end8, label %do.body

do.body:                                          ; preds = %pdc_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd_alloc_chan_resources.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pd_alloc_chan_resources, %cleanup)) #7
          to label %if.then6 [label %cleanup], !srcloc !158

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd_alloc_chan_resources.__UNIQUE_ID_ddebug249, ptr noundef %device.i, ptr noundef nonnull @.str.49) #7
  br label %cleanup

if.end8:                                          ; preds = %pdc_is_idle.exit
  %free_list = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 8
  %19 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %free_list, align 4
  %cmp.i44.not = icmp eq ptr %20, %free_list
  br i1 %cmp.i44.not, label %for.cond.preheader, label %if.then11

for.cond.preheader:                               ; preds = %if.end8
  %21 = load i32, ptr @init_nr_desc_per_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp56.not = icmp eq i32 %21, 0
  br i1 %cmp56.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %descs_allocated = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 9
  %22 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %descs_allocated, align 4
  br label %cleanup

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #7
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %addr.i, align 4, !annotation !164
  %pool.i = getelementptr inbounds %struct.pch_dma, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef 3520, ptr noundef nonnull %addr.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end18, label %if.end20

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %dev.i46 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %29 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i46, align 4
  %device.i47 = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i47, ptr noundef nonnull @.str.50, i32 noundef %i.057) #11
  br label %for.end

if.end20:                                         ; preds = %for.body
  %tx_list.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tx_list.i, ptr %prev.i.i, align 4
  %txd.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 1
  call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %chan) #7
  %tx_submit.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pd_tx_submit, ptr %tx_submit.i, align 4
  %flags4.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %flags4.i, align 4
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i, align 4
  %phys.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %phys.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %desc_node = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %0, align 4
  %call.i.i48 = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %39, ptr noundef nonnull %tmp_list) #7
  br i1 %call.i.i48, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %desc_node, ptr %0, align 4
  %41 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tmp_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %desc_node, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.057, 1
  %44 = load i32, ptr @init_nr_desc_per_channel, align 4
  %cmp = icmp ult i32 %inc, %44
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %do.end18, %for.cond.preheader.for.end_crit_edge
  %i.055 = phi i32 [ %i.057, %do.end18 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %list_add_tail.exit.for.end_crit_edge ]
  %lock = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %45 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %tmp_list, align 4
  %cmp.i.not.i = icmp eq ptr %46, %tmp_list
  br i1 %cmp.i.not.i, label %for.end.list_splice.exit_crit_edge, label %if.then.i50

for.end.list_splice.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice.exit

if.then.i50:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free_list, align 4
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %0, align 4
  %prev3.i.i49 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %free_list, ptr %prev3.i.i49, align 4
  store ptr %46, ptr %free_list, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %50, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i50, %for.end.list_splice.exit_crit_edge
  %descs_allocated22 = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 9
  %54 = ptrtoint ptr %descs_allocated22 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %i.055, ptr %descs_allocated22, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %55 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %56 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %completed_cookie.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %57 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan, align 4
  %59 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp.i52 = icmp slt i32 %60, 8
  %add.i = add i32 %60, 8
  %pos.0.i = select i1 %cmp.i52, i32 %60, i32 %add.i
  %membase.i = getelementptr inbounds %struct.pch_dma, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 8
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !155
  %64 = call i32 @llvm.bswap.i32(i32 %63) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %shl7.i = shl nuw i32 1, %pos.0.i
  %or.i = or i32 %64, %shl7.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  call void @arm_heavy_mb() #7
  %65 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %66 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %67, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %65) #7, !srcloc !160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_enable_irq.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pd_alloc_chan_resources, %pdc_enable_irq.exit)) #7
          to label %if.then18.i [label %pdc_enable_irq.exit], !srcloc !158

if.then18.i:                                      ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %chan_id.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_enable_irq.__UNIQUE_ID_ddebug240, ptr noundef %device.i.i, ptr noundef nonnull @.str.53, i32 noundef %71, i32 noundef %or.i) #7
  br label %pdc_enable_irq.exit

pdc_enable_irq.exit:                              ; preds = %if.then18.i, %list_splice.exit
  %72 = ptrtoint ptr %descs_allocated22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %descs_allocated22, align 4
  br label %cleanup

cleanup:                                          ; preds = %pdc_enable_irq.exit, %if.then11, %if.then6, %do.body
  %retval.0 = phi i32 [ %73, %pdc_enable_irq.exit ], [ %23, %if.then11 ], [ -5, %if.then6 ], [ -5, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pd_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %3 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmp_list, ptr %2, align 4
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i = icmp slt i32 %6, 8
  %membase.i.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 16
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !155
  %10 = call i32 @llvm.bswap.i32(i32 %9) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %11 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan_id.i, align 4
  %mul.i.i = shl i32 %12, 1
  %add.i.i = add i32 %mul.i.i, 16
  %shr.i.i = lshr i32 %10, %add.i.i
  br label %pdc_is_idle.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i8.i = getelementptr i8, ptr %8, i32 24
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !155
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %15 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan_id.i, align 4
  %sub.i.i = shl i32 %16, 1
  %shr.i10.i = lshr i32 %14, %sub.i.i
  br label %pdc_is_idle.exit

pdc_is_idle.exit:                                 ; preds = %if.else.i, %if.then.i
  %sts.0.in.i = phi i32 [ %shr.i.i, %if.then.i ], [ %shr.i10.i, %if.else.i ]
  %sts.0.i = and i32 %sts.0.in.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0.i)
  %cmp2.i = icmp eq i32 %sts.0.i, 0
  br i1 %cmp2.i, label %do.body11, label %do.body5, !prof !167

do.body5:                                         ; preds = %pdc_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pch_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #7, !srcloc !168
  unreachable

do.body11:                                        ; preds = %pdc_is_idle.exit
  %active_list = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 6
  %17 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %active_list, align 4
  %cmp.i80.not = icmp eq ptr %18, %active_list
  br i1 %cmp.i80.not, label %do.body32, label %do.body23, !prof !167

do.body23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pch_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 535, 0\0A.popsection", ""() #7, !srcloc !169
  unreachable

do.body32:                                        ; preds = %do.body11
  %queue = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 7
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue, align 4
  %cmp.i81.not = icmp eq ptr %20, %queue
  br i1 %cmp.i81.not, label %do.end52, label %do.body44, !prof !167

do.body44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pch_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 536, 0\0A.popsection", ""() #7, !srcloc !170
  unreachable

do.end52:                                         ; preds = %do.body32
  %lock = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %free_list = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 8
  %21 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not.i = icmp eq ptr %22, %free_list
  br i1 %cmp.i.not.i, label %do.end52.list_splice_init.exit_crit_edge, label %if.then.i83

do.end52.list_splice_init.exit_crit_edge:         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit

if.then.i83:                                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tmp_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tmp_list, ptr %prev3.i.i, align 4
  store ptr %22, ptr %tmp_list, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %26, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev6.i.i, align 4
  %30 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %free_list, ptr %free_list, align 4
  store ptr %free_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i83, %do.end52.list_splice_init.exit_crit_edge
  %descs_allocated = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 9
  %31 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %descs_allocated, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %32 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tmp_list, align 4
  %cmp.not86 = icmp eq ptr %33, %tmp_list
  br i1 %cmp.not86, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %pool = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn.in87 = phi ptr [ %33, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in87, i32 -116
  %34 = ptrtoint ptr %.pn.in87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn.in87, align 4
  %35 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pool, align 4
  %phys = getelementptr i8, ptr %.pn.in87, i32 -92
  %37 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys, align 4
  call void @dma_pool_free(ptr noundef %36, ptr noundef %desc.0, i32 noundef %38) #7
  %cmp.not = icmp eq ptr %.pn, %tmp_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %39 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan, align 4
  %41 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp.i85 = icmp slt i32 %42, 8
  %add.i = add i32 %42, 8
  %pos.0.i = select i1 %cmp.i85, i32 %42, i32 %add.i
  %membase.i = getelementptr inbounds %struct.pch_dma, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 8
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !155
  %46 = call i32 @llvm.bswap.i32(i32 %45) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %shl7.i = shl nuw i32 1, %pos.0.i
  %neg.i = xor i32 %shl7.i, -1
  %and.i = and i32 %46, %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  call void @arm_heavy_mb() #7
  %47 = call i32 @llvm.bswap.i32(i32 %and.i) #7
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %49, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %47) #7, !srcloc !160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_enable_irq.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pd_free_chan_resources, %pdc_enable_irq.exit)) #7
          to label %if.then18.i [label %pdc_enable_irq.exit], !srcloc !158

if.then18.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chan_id.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_enable_irq.__UNIQUE_ID_ddebug240, ptr noundef %device.i.i, ptr noundef nonnull @.str.53, i32 noundef %53, i32 noundef %and.i) #7
  br label %pdc_enable_irq.exit

pdc_enable_irq.exit:                              ; preds = %if.then18.i, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !171
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pd_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp slt i32 %1, 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %membase.i.i = getelementptr inbounds %struct.pch_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !155
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %8 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id.i, align 4
  %mul.i.i = shl i32 %9, 1
  %add.i.i = add i32 %mul.i.i, 16
  %shr.i.i = lshr i32 %7, %add.i.i
  br label %pdc_is_idle.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i8.i = getelementptr i8, ptr %5, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !155
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %12 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id.i, align 4
  %sub.i.i = shl i32 %13, 1
  %shr.i10.i = lshr i32 %11, %sub.i.i
  br label %pdc_is_idle.exit

pdc_is_idle.exit:                                 ; preds = %if.else.i, %if.then.i
  %sts.0.in.i = phi i32 [ %shr.i.i, %if.then.i ], [ %shr.i10.i, %if.else.i ]
  %sts.0.i = and i32 %sts.0.in.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0.i)
  %cmp2.i = icmp eq i32 %sts.0.i, 0
  br i1 %cmp2.i, label %if.then, label %pdc_is_idle.exit.if.end_crit_edge

pdc_is_idle.exit.if.end_crit_edge:                ; preds = %pdc_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pdc_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  tail call fastcc void @pdc_advance_work(ptr noundef %chan)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %pdc_is_idle.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pd_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool.not = icmp eq i32 %sg_len, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !172

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device.i, ptr noundef nonnull @.str.54) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %if.end.cleanup_crit_edge [
    i32 2, label %if.then5
    i32 1, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_reg = getelementptr inbounds %struct.pch_dma_slave, ptr %1, i32 0, i32 3
  br label %for.body.lr.ph

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_reg = getelementptr inbounds %struct.pch_dma_slave, ptr %1, i32 0, i32 2
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then7, %if.then5
  %reg.0.in = phi ptr [ %rx_reg, %if.then5 ], [ %tx_reg, %if.then7 ]
  %5 = ptrtoint ptr %reg.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %reg.0 = load i32, ptr %reg.0.in, align 4
  %dir = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %direction, ptr %dir, align 4
  tail call fastcc void @pdc_set_dir(ptr noundef %chan)
  %width = getelementptr inbounds %struct.pch_dma_slave, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end50.for.body_crit_edge ]
  %sg.0120 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call51, %if.end50.for.body_crit_edge ]
  %desc.0119 = phi ptr [ null, %for.body.lr.ph ], [ %call12, %if.end50.for.body_crit_edge ]
  %first.0117 = phi ptr [ null, %for.body.lr.ph ], [ %first.1, %if.end50.for.body_crit_edge ]
  %call12 = tail call fastcc ptr @pdc_desc_get(ptr noundef %chan)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.body.do.end66_crit_edge, label %if.end15

for.body.do.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

if.end15:                                         ; preds = %for.body
  %7 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %reg.0, ptr %call12, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0120, i32 0, i32 3
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_address, align 4
  %mem_addr = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %call12, i32 0, i32 1
  %10 = ptrtoint ptr %mem_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mem_addr, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0120, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  %size = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %call12, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size, align 4
  %next = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %call12, i32 0, i32 3
  %14 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %next, align 4
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %16, label %if.end15.do.end66_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb35
  ]

if.end15.do.end66_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %12)
  %cmp21 = icmp ugt i32 %12, 1023
  br i1 %cmp21, label %sw.bb.do.end66_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb.do.end66_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

sw.bb26:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %12)
  %cmp29 = icmp ugt i32 %12, 1023
  br i1 %cmp29, label %sw.bb26.do.end66_crit_edge, label %sw.bb26.sw.epilog.sink.split_crit_edge

sw.bb26.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb26.do.end66_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

sw.bb35:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %12)
  %cmp38 = icmp ugt i32 %12, 2047
  br i1 %cmp38, label %sw.bb35.do.end66_crit_edge, label %sw.bb35.sw.epilog_crit_edge

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb35.do.end66_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

sw.epilog.sink.split:                             ; preds = %sw.bb26.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink127 = phi i32 [ 12288, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 8192, %sw.bb26.sw.epilog.sink.split_crit_edge ]
  %or34 = or i32 %12, %.sink127
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or34, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb35.sw.epilog_crit_edge
  %tobool44.not = icmp eq ptr %first.0117, null
  br i1 %tobool44.not, label %sw.epilog.if.end50_crit_edge, label %if.else46

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.else46:                                        ; preds = %sw.epilog
  %phys = getelementptr inbounds %struct.pch_dma_desc, ptr %call12, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys, align 4
  %next48 = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %desc.0119, i32 0, i32 3
  %21 = ptrtoint ptr %next48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next48, align 4
  %or49 = or i32 %22, %20
  store i32 %or49, ptr %next48, align 4
  %desc_node = getelementptr inbounds %struct.pch_dma_desc, ptr %call12, i32 0, i32 2
  %tx_list = getelementptr inbounds %struct.pch_dma_desc, ptr %first.0117, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.pch_dma_desc, ptr %first.0117, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %24, ptr noundef %tx_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else46.if.end50_crit_edge

if.else46.if.end50_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end.i.i:                                       ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %desc_node, ptr %prev.i, align 4
  %26 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tx_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call12, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %desc_node, ptr %24, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end.i.i, %if.else46.if.end50_crit_edge, %sw.epilog.if.end50_crit_edge
  %first.1 = phi ptr [ %call12, %sw.epilog.if.end50_crit_edge ], [ %first.0117, %if.else46.if.end50_crit_edge ], [ %first.0117, %if.end.i.i ]
  %inc = add nuw i32 %i.0121, 1
  %call51 = tail call ptr @sg_next(ptr noundef %sg.0120) #7
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %flags, 1
  %29 = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %call12, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %29, align 4
  %txd60 = getelementptr inbounds %struct.pch_dma_desc, ptr %first.1, i32 0, i32 1
  %31 = ptrtoint ptr %txd60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -16, ptr %txd60, align 4
  %flags62 = getelementptr inbounds %struct.pch_dma_desc, ptr %call12, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %flags62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %flags, ptr %flags62, align 4
  br label %cleanup

do.end66:                                         ; preds = %sw.bb35.do.end66_crit_edge, %sw.bb26.do.end66_crit_edge, %sw.bb.do.end66_crit_edge, %if.end15.do.end66_crit_edge, %for.body.do.end66_crit_edge
  %dev.i112 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i112, align 4
  %device.i113 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i113, ptr noundef nonnull @.str.58) #11
  %tobool.not.i = icmp eq ptr %first.0117, null
  br i1 %tobool.not.i, label %do.end66.cleanup_crit_edge, label %if.then.i

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %do.end66
  %lock.i = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %tx_list.i = getelementptr inbounds %struct.pch_dma_desc, ptr %first.0117, i32 0, i32 3
  %free_list.i = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 8
  %35 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %36, %tx_list.i
  br i1 %cmp.i.not.i.i, label %if.then.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i.list_splice_init.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.pch_dma_desc, ptr %first.0117, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %36, ptr %free_list.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %40, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev6.i.i.i, align 4
  %44 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i.list_splice_init.exit.i_crit_edge
  %desc_node.i = getelementptr inbounds %struct.pch_dma_desc, ptr %first.0117, i32 0, i32 2
  %45 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node.i, ptr noundef %free_list.i, ptr noundef %46) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_init.exit.i.list_add.exit.i_crit_edge

list_splice_init.exit.i.list_add.exit.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %desc_node.i, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %desc_node.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %desc_node.i, align 4
  %prev3.i.i8.i = getelementptr inbounds %struct.pch_dma_desc, ptr %first.0117, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev3.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %free_list.i, ptr %prev3.i.i8.i, align 4
  %50 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %desc_node.i, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %list_splice_init.exit.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.i, %do.end66.cleanup_crit_edge, %for.end, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %txd60, %for.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %do.end66.cleanup_crit_edge ], [ null, %list_add.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_device_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %lock = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  call fastcc void @pdc_set_mode(ptr noundef %chan, i32 noundef 0)
  %active_list = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 6
  %3 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %active_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %active_list, ptr %active_list, align 4
  store ptr %active_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %queue = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 7
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i23 = icmp eq ptr %14, %queue
  br i1 %cmp.i.not.i23, label %list_splice_init.exit.list_splice_init.exit28_crit_edge, label %if.then.i27

list_splice_init.exit.list_splice_init.exit28_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit28

if.then.i27:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev2.i.i24 = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev2.i.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i24, align 4
  %prev3.i.i25 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev3.i.i25, align 4
  store ptr %14, ptr %list, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i26 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i26, align 4
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i24, align 4
  br label %list_splice_init.exit28

list_splice_init.exit28:                          ; preds = %if.then.i27, %list_splice_init.exit.list_splice_init.exit28_crit_edge
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list, align 4
  %cmp.not29 = icmp eq ptr %24, %list
  br i1 %cmp.not29, label %list_splice_init.exit28.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit28.for.end_crit_edge:        ; preds = %list_splice_init.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit28
  %free_list.i = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %pdc_chain_complete.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in30 = phi ptr [ %24, %for.body.lr.ph ], [ %.pn, %pdc_chain_complete.exit.for.body_crit_edge ]
  %25 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn.in30, align 4
  %callback.i.i = getelementptr i8, ptr %.pn.in30, i32 -76
  %26 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %.pn.in30, i32 -72
  %28 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %.pn.in30, i32 -68
  %30 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %callback_param.i.i, align 4
  %tx_list.i = getelementptr i8, ptr %.pn.in30, i32 8
  %32 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %33, %tx_list.i
  br i1 %cmp.i.not.i.i, label %for.body.list_splice_init.exit.i_crit_edge, label %if.then.i.i

for.body.list_splice_init.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i = getelementptr i8, ptr %.pn.in30, i32 12
  %36 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %33, ptr %free_list.i, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %35, ptr %37, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev6.i.i.i, align 4
  %41 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %for.body.list_splice_init.exit.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_init.exit.i.__list_del_entry.exit.i.i_crit_edge

list_splice_init.exit.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %.pn.in30, i32 4
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.pn.in30, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %list_splice_init.exit.i.__list_del_entry.exit.i.i_crit_edge
  %48 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in30, ptr noundef %free_list.i, ptr noundef %49) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %.pn.in30, ptr %prev1.i.i2.i.i, align 4
  %51 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %.pn.in30, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in30, i32 4
  %52 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %free_list.i, ptr %prev3.i.i.i.i, align 4
  %53 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %.pn.in30, ptr %free_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  %54 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %29(ptr noundef %31, ptr noundef nonnull %dummy_result.i.i) #7
  br label %pdc_chain_complete.exit

if.else.i.i:                                      ; preds = %list_move.exit.i
  %tobool4.not.i.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.pdc_chain_complete.exit_crit_edge, label %if.then5.i.i

if.else.i.i.pdc_chain_complete.exit_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pdc_chain_complete.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %27(ptr noundef %31) #7
  br label %pdc_chain_complete.exit

pdc_chain_complete.exit:                          ; preds = %if.then5.i.i, %if.else.i.i.pdc_chain_complete.exit_crit_edge, %if.then.i8.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %pdc_chain_complete.exit.for.end_crit_edge, label %pdc_chain_complete.exit.for.body_crit_edge

pdc_chain_complete.exit.for.body_crit_edge:       ; preds = %pdc_chain_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

pdc_chain_complete.exit.for.end_crit_edge:        ; preds = %pdc_chain_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %pdc_chain_complete.exit.for.end_crit_edge, %list_splice_init.exit28.for.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_advance_work(ptr noundef %pd_chan) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  %list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_list = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 6
  %0 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %1, %active_list
  br i1 %cmp.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, %active_list
  br i1 %cmp.i.not.i, label %lor.lhs.false.if.else_crit_edge, label %list_is_singular.exit

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

list_is_singular.exit:                            ; preds = %lor.lhs.false
  %prev.i = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i12.not = icmp eq ptr %3, %5
  br i1 %cmp.i12.not, label %list_is_singular.exit.if.then_crit_edge, label %list_is_singular.exit.if.else_crit_edge

list_is_singular.exit.if.else_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

list_is_singular.exit.if.then_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %list_is_singular.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #7
  %6 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list.i, ptr %list.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list.i, ptr %6, align 4
  %chan_id.i.i = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 4
  %9 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp.i.i = icmp slt i32 %10, 8
  %11 = ptrtoint ptr %pd_chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd_chan, align 4
  %membase.i.i.i = getelementptr inbounds %struct.pch_dma, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 16
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !155
  %16 = call i32 @llvm.bswap.i32(i32 %15) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %17 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan_id.i.i, align 4
  %mul.i.i.i = shl i32 %18, 1
  %add.i.i.i = add i32 %mul.i.i.i, 16
  %shr.i.i.i = lshr i32 %16, %add.i.i.i
  br label %pdc_is_idle.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i8.i.i = getelementptr i8, ptr %14, i32 24
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #7, !srcloc !155
  %20 = call i32 @llvm.bswap.i32(i32 %19) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %21 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_id.i.i, align 4
  %sub.i.i.i = shl i32 %22, 1
  %shr.i10.i.i = lshr i32 %20, %sub.i.i.i
  br label %pdc_is_idle.exit.i

pdc_is_idle.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %sts.0.in.i.i = phi i32 [ %shr.i.i.i, %if.then.i.i ], [ %shr.i10.i.i, %if.else.i.i ]
  %sts.0.i.i = and i32 %sts.0.in.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0.i.i)
  %cmp2.i.i = icmp eq i32 %sts.0.i.i, 0
  br i1 %cmp2.i.i, label %do.end8.i, label %do.body3.i, !prof !167

do.body3.i:                                       ; preds = %pdc_is_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pch_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #7, !srcloc !173
  unreachable

do.end8.i:                                        ; preds = %pdc_is_idle.exit.i
  %queue.i = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 7
  %23 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i40.not.i = icmp eq ptr %24, %queue.i
  br i1 %cmp.i40.not.i, label %do.end8.i.if.end13.i_crit_edge, label %if.then11.i

do.end8.i.if.end13.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 -116
  call fastcc void @pdc_dostart(ptr noundef %pd_chan, ptr noundef %add.ptr.i.i) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end8.i.if.end13.i_crit_edge
  %25 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %26, %active_list
  br i1 %cmp.i.not.i.i, label %if.end13.i.list_splice_init.exit.i_crit_edge, label %if.then.i41.i

if.end13.i.list_splice_init.exit.i_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i

if.then.i41.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list.i, ptr %prev3.i.i.i, align 4
  store ptr %26, ptr %list.i, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %30, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev6.i.i.i, align 4
  %34 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %active_list, ptr %active_list, align 4
  store ptr %active_list, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i41.i, %if.end13.i.list_splice_init.exit.i_crit_edge
  %35 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i42.i = icmp eq ptr %36, %queue.i
  br i1 %cmp.i.not.i42.i, label %list_splice_init.exit.i.list_splice_init.exit47.i_crit_edge, label %if.then.i46.i

list_splice_init.exit.i.list_splice_init.exit47.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit47.i

if.then.i46.i:                                    ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %active_list, align 4
  %prev2.i.i43.i = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %prev2.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i43.i, align 4
  %prev3.i.i44.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %active_list, ptr %prev3.i.i44.i, align 4
  store ptr %36, ptr %active_list, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %40, align 4
  %prev6.i.i45.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev6.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev6.i.i45.i, align 4
  %44 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  store ptr %queue.i, ptr %prev2.i.i43.i, align 4
  br label %list_splice_init.exit47.i

list_splice_init.exit47.i:                        ; preds = %if.then.i46.i, %list_splice_init.exit.i.list_splice_init.exit47.i_crit_edge
  %45 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %list.i, align 4
  %cmp.not48.i = icmp eq ptr %46, %list.i
  br i1 %cmp.not48.i, label %list_splice_init.exit47.i.pdc_complete_all.exit_crit_edge, label %for.body.lr.ph.i

list_splice_init.exit47.i.pdc_complete_all.exit_crit_edge: ; preds = %list_splice_init.exit47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pdc_complete_all.exit

for.body.lr.ph.i:                                 ; preds = %list_splice_init.exit47.i
  %free_list.i.i = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %pdc_chain_complete.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in49.i = phi ptr [ %46, %for.body.lr.ph.i ], [ %.pn.i, %pdc_chain_complete.exit.i.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %.pn.in49.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i = load ptr, ptr %.pn.in49.i, align 4
  %callback.i.i.i = getelementptr i8, ptr %.pn.in49.i, i32 -76
  %48 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr i8, ptr %.pn.in49.i, i32 -72
  %50 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr i8, ptr %.pn.in49.i, i32 -68
  %52 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %callback_param.i.i.i, align 4
  %tx_list.i.i = getelementptr i8, ptr %.pn.in49.i, i32 8
  %54 = ptrtoint ptr %tx_list.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %tx_list.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %55, %tx_list.i.i
  br i1 %cmp.i.not.i.i.i, label %for.body.i.list_splice_init.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.list_splice_init.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %free_list.i.i, align 4
  %prev2.i.i.i.i = getelementptr i8, ptr %.pn.in49.i, i32 12
  %58 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %free_list.i.i, ptr %prev3.i.i.i.i, align 4
  store ptr %55, ptr %free_list.i.i, align 4
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %57, ptr %59, align 4
  %prev6.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %prev6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev6.i.i.i.i, align 4
  %63 = ptrtoint ptr %tx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %tx_list.i.i, ptr %tx_list.i.i, align 4
  store ptr %tx_list.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_init.exit.i.i

list_splice_init.exit.i.i:                        ; preds = %if.then.i.i.i, %for.body.i.list_splice_init.exit.i.i_crit_edge
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in49.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_splice_init.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge

list_splice_init.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %list_splice_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %list_splice_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in49.i, i32 4
  %64 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i.i, align 4
  %66 = ptrtoint ptr %.pn.in49.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn.in49.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %list_splice_init.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %70 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %free_list.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in49.i, ptr noundef %free_list.i.i, ptr noundef %71) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge

__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.pn.in49.i, ptr %prev1.i.i2.i.i.i, align 4
  %73 = ptrtoint ptr %.pn.in49.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %.pn.in49.i, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %.pn.in49.i, i32 4
  %74 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %free_list.i.i, ptr %prev3.i.i.i.i.i, align 4
  %75 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %.pn.in49.i, ptr %free_list.i.i, align 4
  br label %list_move.exit.i.i

list_move.exit.i.i:                               ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  %76 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i8.i.i

if.then.i8.i.i:                                   ; preds = %list_move.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %51(ptr noundef %53, ptr noundef nonnull %dummy_result.i.i.i) #7
  br label %pdc_chain_complete.exit.i

if.else.i.i.i:                                    ; preds = %list_move.exit.i.i
  %tobool4.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.pdc_chain_complete.exit.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.pdc_chain_complete.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pdc_chain_complete.exit.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %49(ptr noundef %53) #7
  br label %pdc_chain_complete.exit.i

pdc_chain_complete.exit.i:                        ; preds = %if.then5.i.i.i, %if.else.i.i.i.pdc_chain_complete.exit.i_crit_edge, %if.then.i8.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp.not.i, label %pdc_chain_complete.exit.i.pdc_complete_all.exit_crit_edge, label %pdc_chain_complete.exit.i.for.body.i_crit_edge

pdc_chain_complete.exit.i.for.body.i_crit_edge:   ; preds = %pdc_chain_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

pdc_chain_complete.exit.i.pdc_complete_all.exit_crit_edge: ; preds = %pdc_chain_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pdc_complete_all.exit

pdc_complete_all.exit:                            ; preds = %pdc_chain_complete.exit.i.pdc_complete_all.exit_crit_edge, %list_splice_init.exit47.i.pdc_complete_all.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #7
  br label %if.end

if.else:                                          ; preds = %list_is_singular.exit.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %callback.i.i = getelementptr i8, ptr %3, i32 -76
  %77 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %3, i32 -72
  %79 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %3, i32 -68
  %81 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %callback_param.i.i, align 4
  %tx_list.i = getelementptr i8, ptr %3, i32 8
  %free_list.i = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 8
  %83 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i14 = icmp eq ptr %84, %tx_list.i
  br i1 %cmp.i.not.i.i14, label %if.else.list_splice_init.exit.i19_crit_edge, label %if.then.i.i18

if.else.list_splice_init.exit.i19_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit.i19

if.then.i.i18:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i15 = getelementptr i8, ptr %3, i32 12
  %87 = ptrtoint ptr %prev2.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev2.i.i.i15, align 4
  %prev3.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %free_list.i, ptr %prev3.i.i.i16, align 4
  store ptr %84, ptr %free_list.i, align 4
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %86, ptr %88, align 4
  %prev6.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %91 = ptrtoint ptr %prev6.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev6.i.i.i17, align 4
  %92 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i15, align 4
  br label %list_splice_init.exit.i19

list_splice_init.exit.i19:                        ; preds = %if.then.i.i18, %if.else.list_splice_init.exit.i19_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_init.exit.i19.__list_del_entry.exit.i.i_crit_edge

list_splice_init.exit.i19.__list_del_entry.exit.i.i_crit_edge: ; preds = %list_splice_init.exit.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %list_splice_init.exit.i19
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %3, i32 4
  %93 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i, align 4
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %list_splice_init.exit.i19.__list_del_entry.exit.i.i_crit_edge
  %99 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i.i20 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %free_list.i, ptr noundef %100) #7
  br i1 %call.i.i.i.i20, label %if.end.i.i.i.i22, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit.i

if.end.i.i.i.i22:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %3, ptr %prev1.i.i2.i.i, align 4
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %3, align 4
  %prev3.i.i.i.i21 = getelementptr i8, ptr %3, i32 4
  %103 = ptrtoint ptr %prev3.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %free_list.i, ptr %prev3.i.i.i.i21, align 4
  %104 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %3, ptr %free_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i22, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  %105 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i, label %if.else.i.i23, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %80(ptr noundef %82, ptr noundef nonnull %dummy_result.i.i) #7
  br label %pdc_chain_complete.exit

if.else.i.i23:                                    ; preds = %list_move.exit.i
  %tobool4.not.i.i = icmp eq ptr %78, null
  br i1 %tobool4.not.i.i, label %if.else.i.i23.pdc_chain_complete.exit_crit_edge, label %if.then5.i.i

if.else.i.i23.pdc_chain_complete.exit_crit_edge:  ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %pdc_chain_complete.exit

if.then5.i.i:                                     ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %78(ptr noundef %82) #7
  br label %pdc_chain_complete.exit

pdc_chain_complete.exit:                          ; preds = %if.then5.i.i, %if.else.i.i23.pdc_chain_complete.exit_crit_edge, %if.then.i8.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  %106 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %active_list, align 4
  %add.ptr.i25 = getelementptr i8, ptr %107, i32 -116
  call fastcc void @pdc_dostart(ptr noundef %pd_chan, ptr noundef %add.ptr.i25)
  br label %if.end

if.end:                                           ; preds = %pdc_chain_complete.exit, %pdc_complete_all.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_dostart(ptr nocapture noundef readonly %pd_chan, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp slt i32 %1, 8
  %2 = ptrtoint ptr %pd_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd_chan, align 4
  %membase.i.i = getelementptr inbounds %struct.pch_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !155
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %8 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id.i, align 4
  %mul.i.i = shl i32 %9, 1
  %add.i.i = add i32 %mul.i.i, 16
  %shr.i.i = lshr i32 %7, %add.i.i
  br label %pdc_is_idle.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i8.i = getelementptr i8, ptr %5, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !155
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %12 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id.i, align 4
  %sub.i.i = shl i32 %13, 1
  %shr.i10.i = lshr i32 %11, %sub.i.i
  br label %pdc_is_idle.exit

pdc_is_idle.exit:                                 ; preds = %if.else.i, %if.then.i
  %sts.0.in.i = phi i32 [ %shr.i.i, %if.then.i ], [ %shr.i10.i, %if.else.i ]
  %sts.0.i = and i32 %sts.0.in.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0.i)
  %cmp2.i = icmp eq i32 %sts.0.i, 0
  br i1 %cmp2.i, label %do.body2, label %do.end

do.end:                                           ; preds = %pdc_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.40) #11
  br label %if.end110

do.body2:                                         ; preds = %pdc_is_idle.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_dostart.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_dostart, %do.body13)) #7
          to label %if.then7 [label %do.body13], !srcloc !158

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i145 = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i145 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i145, align 4
  %device.i146 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chan_id.i, align 4
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_dostart.__UNIQUE_ID_ddebug243, ptr noundef %device.i146, ptr noundef nonnull @.str.42, i32 noundef %19, i32 noundef %21) #7
  br label %do.body13

do.body13:                                        ; preds = %if.then7, %do.body2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_dostart.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_dostart, %do.body35)) #7
          to label %if.then27 [label %do.body35], !srcloc !158

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i147 = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i147 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i147, align 4
  %device.i148 = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan_id.i, align 4
  %mem_addr = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %desc, i32 0, i32 1
  %26 = ptrtoint ptr %mem_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_dostart.__UNIQUE_ID_ddebug244, ptr noundef %device.i148, ptr noundef nonnull @.str.43, i32 noundef %25, i32 noundef %27) #7
  br label %do.body35

do.body35:                                        ; preds = %if.then27, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_dostart.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_dostart, %do.body57)) #7
          to label %if.then49 [label %do.body57], !srcloc !158

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i149 = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  %28 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i149, align 4
  %device.i150 = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan_id.i, align 4
  %size = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %desc, i32 0, i32 2
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_dostart.__UNIQUE_ID_ddebug245, ptr noundef %device.i150, ptr noundef nonnull @.str.44, i32 noundef %31, i32 noundef %33) #7
  br label %do.body57

do.body57:                                        ; preds = %if.then49, %do.body35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_dostart.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_dostart, %do.end78)) #7
          to label %if.then71 [label %do.end78], !srcloc !158

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i151 = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  %34 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i151, align 4
  %device.i152 = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan_id.i, align 4
  %next = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %desc, i32 0, i32 3
  %38 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %next, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_dostart.__UNIQUE_ID_ddebug246, ptr noundef %device.i152, ptr noundef nonnull @.str.45, i32 noundef %37, i32 noundef %39) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then71, %do.body57
  %tx_list = getelementptr inbounds %struct.pch_dma_desc, ptr %desc, i32 0, i32 3
  %40 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i153.not = icmp eq ptr %41, %tx_list
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i153.not, label %do.body82, label %do.body105

do.body82:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %desc, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %membase = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 1
  %45 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %mem_addr89 = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %desc, i32 0, i32 1
  %47 = ptrtoint ptr %mem_addr89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mem_addr89, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr91 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %49) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  %size95 = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %desc, i32 0, i32 2
  %52 = ptrtoint ptr %size95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size95, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 4
  %add.ptr97 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %54) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  %next101 = getelementptr inbounds %struct.pch_dma_desc_regs, ptr %desc, i32 0, i32 3
  %57 = ptrtoint ptr %next101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %next101, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 4
  %add.ptr103 = getelementptr i8, ptr %61, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %59) #7, !srcloc !160
  tail call fastcc void @pdc_set_mode(ptr noundef %pd_chan, i32 noundef 2)
  br label %if.end110

do.body105:                                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  %phys = getelementptr inbounds %struct.pch_dma_desc, ptr %desc, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %phys, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %membase107 = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 1
  %65 = ptrtoint ptr %membase107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase107, align 4
  %add.ptr108 = getelementptr i8, ptr %66, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %64) #7, !srcloc !160
  tail call fastcc void @pdc_set_mode(ptr noundef %pd_chan, i32 noundef 1)
  br label %if.end110

if.end110:                                        ; preds = %do.body105, %do.body82, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_set_mode(ptr nocapture noundef readonly %chan, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp slt i32 %3, 8
  %mul = shl i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 3, %mul
  %neg = and i32 %shl, 858993459
  %and = xor i32 %neg, 858993459
  %add = or i32 %mul, 2
  %shl4 = shl nuw i32 1, %add
  %membase = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !155
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  %and7 = and i32 %7, %shl4
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 4
  %mul9 = shl i32 %9, 2
  %shl10 = shl i32 %mode, %mul9
  %or = or i32 %and7, %and
  %or11 = or i32 %or, %shl10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !160
  br label %do.body39

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul15 = add i32 %mul, -32
  %shl16 = shl i32 3, %mul15
  %neg17 = and i32 %shl16, 13107
  %and18 = xor i32 %neg17, 13107
  %add20 = add i32 %mul, -30
  %shl21 = shl nuw i32 1, %add20
  %membase24 = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %membase24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase24, align 4
  %add.ptr25 = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !155
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %and29 = and i32 %16, %shl21
  %shl31 = shl i32 %mode, %mul15
  %or32 = or i32 %and18, %shl31
  %or33 = or i32 %or32, %and29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %18 = ptrtoint ptr %membase24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase24, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %17) #7, !srcloc !160
  br label %do.body39

do.body39:                                        ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %or11, %if.then ], [ %or33, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_set_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_set_mode, %do.end50)) #7
          to label %if.then45 [label %do.end50], !srcloc !158

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chan_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_set_mode.__UNIQUE_ID_ddebug242, ptr noundef %device.i, ptr noundef nonnull @.str.47, i32 noundef %23, i32 noundef %val.0) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %do.body39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd_tx_submit(ptr noundef %txd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %txd, i32 -16
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.pch_dma_chan, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %active_list = getelementptr inbounds %struct.pch_dma_chan, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %3, %active_list
  %desc_node = getelementptr i8, ptr %txd, i32 100
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.pch_dma_chan, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %5, ptr noundef %active_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %desc_node, ptr %prev.i, align 4
  %7 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %active_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr i8, ptr %txd, i32 104
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %desc_node, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call fastcc void @pdc_dostart(ptr noundef %1, ptr noundef %add.ptr.i)
  br label %if.end

if.else:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.pch_dma_chan, ptr %1, i32 0, i32 7
  %prev.i14 = getelementptr inbounds %struct.pch_dma_chan, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i14, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %11, ptr noundef %queue) #7
  br i1 %call.i.i15, label %if.end.i.i17, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i17:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc_node, ptr %prev.i14, align 4
  %13 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %queue, ptr %desc_node, align 4
  %prev3.i.i16 = getelementptr i8, ptr %txd, i32 104
  %14 = ptrtoint ptr %prev3.i.i16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i16, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %desc_node, ptr %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i17, %if.else.if.end_crit_edge, %list_add_tail.exit
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_set_dir(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp slt i32 %3, 8
  %membase = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  br i1 %cmp, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !155
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 4
  %mul = shl i32 %9, 2
  %shl = shl i32 3, %mul
  %neg = and i32 %shl, 858993459
  %and = xor i32 %neg, 858993459
  %and8 = and i32 %shl, %7
  %dir = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 2
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp9 = icmp eq i32 %11, 1
  %add = or i32 %mul, 2
  %shl13 = shl nuw i32 1, %add
  %or = or i32 %and8, %shl13
  %neg18 = xor i32 %shl13, -1
  %and19 = and i32 %and8, %neg18
  %val.0 = select i1 %cmp9, i32 %or, i32 %and19
  %or20 = or i32 %val.0, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !160
  br label %do.body60

if.else23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr28 = getelementptr i8, ptr %5, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #7, !srcloc !155
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  %sub = shl i32 %3, 2
  %mul32 = add i32 %sub, -32
  %shl33 = shl i32 3, %mul32
  %neg36 = and i32 %shl33, 13107
  %and37 = xor i32 %neg36, 13107
  %and38 = and i32 %16, %shl33
  %dir39 = getelementptr inbounds %struct.pch_dma_chan, ptr %chan, i32 0, i32 2
  %17 = ptrtoint ptr %dir39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dir39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp40 = icmp eq i32 %18, 1
  %add43 = add i32 %sub, -30
  %shl44 = shl nuw i32 1, %add43
  %or45 = or i32 %and38, %shl44
  %neg50 = xor i32 %shl44, -1
  %and51 = and i32 %and38, %neg50
  %val.1 = select i1 %cmp40, i32 %or45, i32 %and51
  %or53 = or i32 %val.1, %and37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or53)
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr58 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %19) #7, !srcloc !160
  br label %do.body60

do.body60:                                        ; preds = %if.else23, %if.then
  %val.2 = phi i32 [ %or20, %if.then ], [ %or53, %if.else23 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_set_dir.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_set_dir, %do.end71)) #7
          to label %if.then66 [label %do.end71], !srcloc !158

if.then66:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_set_dir.__UNIQUE_ID_ddebug241, ptr noundef %device.i, ptr noundef nonnull @.str.61, i32 noundef %25, i32 noundef %val.2) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pdc_desc_get(ptr noundef %pd_chan) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %free_list = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 8
  %0 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_list, align 4
  %cmp.not96 = icmp eq ptr %1, %free_list
  br i1 %cmp.not96, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in98 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn100, %for.inc.for.body_crit_edge ]
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %desc.099 = getelementptr i8, ptr %.pn.in98, i32 -116
  %2 = ptrtoint ptr %.pn.in98 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn100 = load ptr, ptr %.pn.in98, align 4
  %inc = add i32 %i.097, 1
  %flags.i = getelementptr i8, ptr %.pn.in98, i32 -96
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %do.body, label %if.then

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in98) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in98, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in98 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in98, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in98 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in98, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in98, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_desc_get.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_desc_get, %for.inc)) #7
          to label %if.then14 [label %for.inc], !srcloc !158

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_desc_get.__UNIQUE_ID_ddebug247, ptr noundef %device.i, ptr noundef nonnull @.str.63, ptr noundef %desc.099) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %do.body
  %cmp.not = icmp eq ptr %.pn100, %free_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit, %entry.for.end_crit_edge
  %i.1 = phi i32 [ %inc, %list_del.exit ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %ret.0 = phi ptr [ %desc.099, %list_del.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_desc_get.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pdc_desc_get, %do.end42)) #7
          to label %if.then37 [label %do.end42], !srcloc !158

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i82 = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i82 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i82, align 4
  %device.i83 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_desc_get.__UNIQUE_ID_ddebug248, ptr noundef %device.i83, ptr noundef nonnull @.str.64, i32 noundef %i.1) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %for.end
  %tobool43.not = icmp eq ptr %ret.0, null
  br i1 %tobool43.not, label %if.then44, label %do.end42.if.end58_crit_edge

do.end42.if.end58_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then44:                                        ; preds = %do.end42
  %17 = ptrtoint ptr %pd_chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd_chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #7
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %addr.i, align 4, !annotation !164
  %pool.i = getelementptr inbounds %struct.pch_dma, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pool.i, align 4
  %call.i.i84 = call ptr @dma_pool_alloc(ptr noundef %21, i32 noundef 2848, ptr noundef nonnull %addr.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i84, null
  br i1 %tobool.not.i, label %do.end54, label %if.then48

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %tx_list.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i84, i32 0, i32 3
  %22 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i85 = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i84, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i.i85 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_list.i, ptr %prev.i.i85, align 4
  %txd.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i84, i32 0, i32 1
  call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %pd_chan) #7
  %tx_submit.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i84, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pd_tx_submit, ptr %tx_submit.i, align 4
  %flags4.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i84, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %flags4.i, align 4
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 4
  %phys.i = getelementptr inbounds %struct.pch_dma_desc, ptr %call.i.i84, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %phys.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %descs_allocated = getelementptr inbounds %struct.pch_dma_chan, ptr %pd_chan, i32 0, i32 9
  %29 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %descs_allocated, align 4
  %inc50 = add i32 %30, 1
  store i32 %inc50, ptr %descs_allocated, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %if.end58

do.end54:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %dev.i86 = getelementptr inbounds %struct.dma_chan, ptr %pd_chan, i32 0, i32 5
  %31 = ptrtoint ptr %dev.i86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i86, align 4
  %device.i87 = getelementptr inbounds %struct.dma_chan_dev, ptr %32, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i87, ptr noundef nonnull @.str.65) #11
  br label %if.end58

if.end58:                                         ; preds = %do.end54, %if.then48, %do.end42.if.end58_crit_edge
  %ret.1 = phi ptr [ %ret.0, %do.end42.if.end58_crit_edge ], [ %call.i.i84, %if.then48 ], [ null, %do.end54 ]
  ret ptr %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_dma_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %membase.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !155
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  %regs.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %regs.i, align 4
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !155
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  %dma_ctl1.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %dma_ctl1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dma_ctl1.i, align 4
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !155
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  %dma_ctl2.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %dma_ctl2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma_ctl2.i, align 4
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !155
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  %dma_ctl3.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %dma_ctl3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dma_ctl3.i, align 4
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channels.i, align 4
  %cmp.not100.i = icmp eq ptr %23, %channels.i
  br i1 %cmp.not100.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in102.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %23, %if.then.for.body.i_crit_edge ]
  %i.0101.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %.pn.in102.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn.in102.i, align 4
  %membase38.i = getelementptr i8, ptr %.pn.in102.i, i32 32
  %25 = ptrtoint ptr %membase38.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase38.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !155
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %arrayidx.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.0101.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %membase38.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase38.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #7, !srcloc !155
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  %mem_addr.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.0101.i, i32 1
  %34 = ptrtoint ptr %mem_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mem_addr.i, align 4
  %35 = ptrtoint ptr %membase38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase38.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #7, !srcloc !155
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  %size.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.0101.i, i32 2
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %size.i, align 4
  %40 = ptrtoint ptr %membase38.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase38.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #7, !srcloc !155
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %next70.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.0101.i, i32 3
  %44 = ptrtoint ptr %next70.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %next70.i, align 4
  %inc.i = add i32 %i.0101.i, 1
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_dma_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regs.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %membase.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %dma_ctl1.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %dma_ctl1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_ctl1.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %9) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %dma_ctl2.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %dma_ctl2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_ctl2.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %14) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %dma_ctl3.i = getelementptr inbounds %struct.pch_dma, ptr %1, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %dma_ctl3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_ctl3.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %19) #7, !srcloc !160
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channels.i, align 4
  %cmp.not83.i = icmp eq ptr %23, %channels.i
  br i1 %cmp.not83.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in85.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %23, %if.then.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %.pn.in85.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn.in85.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.084.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %membase30.i = getelementptr i8, ptr %.pn.in85.i, i32 32
  %28 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase30.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %mem_addr.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.084.i, i32 1
  %30 = ptrtoint ptr %mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_addr.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %33 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase30.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %32) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  %size.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.084.i, i32 2
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %38 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase30.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %37) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %next51.i = getelementptr %struct.pch_dma, ptr %1, i32 0, i32 4, i32 %i.084.i, i32 3
  %40 = ptrtoint ptr %next51.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %next51.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase30.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %42) #7, !srcloc !160
  %inc.i = add i32 %i.084.i, 1
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__param_init_nr_desc_per_channel, !1, !"__param_init_nr_desc_per_channel", i1 false, i1 false}
!1 = !{!"../drivers/dma/pch_dma.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_init_nr_desc_per_channeltype238, !1, !"__UNIQUE_ID_init_nr_desc_per_channeltype238", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_init_nr_desc_per_channel239, !4, !"__UNIQUE_ID_init_nr_desc_per_channel239", i1 false, i1 false}
!4 = !{!"../drivers/dma/pch_dma.c", i32 61, i32 1}
!5 = !{ptr @__initcall__kmod_pch_dma__251_989_pch_dma_driver_init6, !6, !"__initcall__kmod_pch_dma__251_989_pch_dma_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/dma/pch_dma.c", i32 989, i32 1}
!7 = !{ptr @__exitcall_pch_dma_driver_exit, !6, !"__exitcall_pch_dma_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description252, !9, !"__UNIQUE_ID_description252", i1 false, i1 false}
!9 = !{!"../drivers/dma/pch_dma.c", i32 991, i32 1}
!10 = !{ptr @__UNIQUE_ID_author253, !11, !"__UNIQUE_ID_author253", i1 false, i1 false}
!11 = !{!"../drivers/dma/pch_dma.c", i32 993, i32 1}
!12 = !{ptr @__UNIQUE_ID_file254, !13, !"__UNIQUE_ID_file254", i1 false, i1 false}
!13 = !{!"../drivers/dma/pch_dma.c", i32 994, i32 1}
!14 = !{ptr @__UNIQUE_ID_license255, !13, !"__UNIQUE_ID_license255", i1 false, i1 false}
!15 = !{ptr @__param_str_init_nr_desc_per_channel, !1, !"__param_str_init_nr_desc_per_channel", i1 false, i1 false}
!16 = !{ptr @init_nr_desc_per_channel, !17, !"init_nr_desc_per_channel", i1 false, i1 false}
!17 = !{!"../drivers/dma/pch_dma.c", i32 59, i32 21}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/pch_dma.c", i32 982, i32 11}
!21 = !{ptr @pch_dma_driver, !22, !"pch_dma_driver", i1 false, i1 false}
!22 = !{!"../drivers/dma/pch_dma.c", i32 981, i32 26}
!23 = !{ptr @pch_dma_id_table, !24, !"pch_dma_id_table", i1 false, i1 false}
!24 = !{!"../drivers/dma/pch_dma.c", i32 963, i32 35}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/pch_dma.c", i32 822, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pch_dma_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @pch_dma_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/pch_dma.c", i32 827, i32 3}
!35 = !{ptr @pch_dma_probe._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pch_dma_probe._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/pch_dma.c", i32 834, i32 3}
!39 = !{ptr @pch_dma_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pch_dma_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/pch_dma.c", i32 840, i32 3}
!43 = !{ptr @pch_dma_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pch_dma_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/pch_dma.c", i32 846, i32 3}
!47 = !{ptr @pch_dma_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pch_dma_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/pch_dma.c", i32 856, i32 3}
!51 = !{ptr @pch_dma_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @pch_dma_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/pch_dma.c", i32 860, i32 29}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/pch_dma.c", i32 863, i32 3}
!57 = !{ptr @pch_dma_probe._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pch_dma_probe._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @pch_dma_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/dma/pch_dma.c", i32 879, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/pch_dma.c", i32 902, i32 3}
!64 = !{ptr @pch_dma_probe._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pch_dma_probe._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/pch_dma.c", i32 705, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pd_irq.__UNIQUE_ID_ddebug250, !67, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/pch_dma.c", i32 679, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pdc_tasklet._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pdc_tasklet._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/pch_dma.c", i32 390, i32 2}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pdc_handle_error._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @pdc_handle_error._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/pch_dma.c", i32 391, i32 2}
!83 = !{ptr @pdc_handle_error._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @pdc_handle_error._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/pch_dma.c", i32 322, i32 3}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @pdc_dostart._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @pdc_dostart._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/pch_dma.c", i32 327, i32 2}
!92 = !{ptr @pdc_dostart.__UNIQUE_ID_ddebug243, !91, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/pch_dma.c", i32 329, i32 2}
!95 = !{ptr @pdc_dostart.__UNIQUE_ID_ddebug244, !94, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/pch_dma.c", i32 331, i32 2}
!98 = !{ptr @pdc_dostart.__UNIQUE_ID_ddebug245, !97, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/pch_dma.c", i32 333, i32 2}
!101 = !{ptr @pdc_dostart.__UNIQUE_ID_ddebug246, !100, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/pch_dma.c", i32 279, i32 2}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pdc_set_mode.__UNIQUE_ID_ddebug242, !103, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/pch_dma.c", i32 497, i32 3}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pd_alloc_chan_resources.__UNIQUE_ID_ddebug249, !107, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/dma/pch_dma.c", i32 508, i32 4}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pd_alloc_chan_resources._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @pd_alloc_chan_resources._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/pch_dma.c", i32 197, i32 2}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @pdc_enable_irq.__UNIQUE_ID_ddebug240, !116, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/pch_dma.c", i32 581, i32 3}
!121 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @pd_prep_slave_sg._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @pd_prep_slave_sg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/pch_dma.c", i32 647, i32 2}
!127 = !{ptr @pd_prep_slave_sg._entry.57, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @pd_prep_slave_sg._entry_ptr.59, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/pch_dma.c", i32 245, i32 2}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @pdc_set_dir.__UNIQUE_ID_ddebug241, !130, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/pch_dma.c", i32 458, i32 3}
!135 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @pdc_desc_get.__UNIQUE_ID_ddebug247, !134, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/dma/pch_dma.c", i32 461, i32 2}
!139 = !{ptr @pdc_desc_get.__UNIQUE_ID_ddebug248, !138, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/dma/pch_dma.c", i32 470, i32 4}
!142 = !{ptr @pdc_desc_get._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @pdc_desc_get._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @pch_dma_pm_ops, !145, !"pch_dma_pm_ops", i1 false, i1 false}
!145 = !{!"../drivers/dma/pch_dma.c", i32 979, i32 8}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i64 6291120}
!156 = !{i64 2154660681}
!157 = !{i64 2154661251}
!158 = !{i64 2148356291, i64 2148356296, i64 2148356309, i64 2148356353, i64 2148356387, i64 2148356408}
!159 = !{i64 2154664056}
!160 = !{i64 6290702}
!161 = !{i64 2154664552}
!162 = !{i64 2154592892}
!163 = !{i64 2154593471}
!164 = !{!"auto-init"}
!165 = !{i64 2154580264}
!166 = !{i64 2154580563}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 2154638307, i64 2154638793, i64 2154638344, i64 2154638400, i64 2154638434, i64 2154638458, i64 2154638499, i64 2154638520, i64 2154638548, i64 2154638582}
!169 = !{i64 2154639937, i64 2154640423, i64 2154639974, i64 2154640030, i64 2154640064, i64 2154640088, i64 2154640129, i64 2154640150, i64 2154640178, i64 2154640212}
!170 = !{i64 2154641555, i64 2154642041, i64 2154641592, i64 2154641648, i64 2154641682, i64 2154641706, i64 2154641747, i64 2154641768, i64 2154641796, i64 2154641830}
!171 = !{i64 2154531542}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 2154608459, i64 2154608945, i64 2154608496, i64 2154608552, i64 2154608586, i64 2154608610, i64 2154608651, i64 2154608672, i64 2154608700, i64 2154608734}
!174 = !{i64 2154606078}
!175 = !{i64 2154606649}
!176 = !{i64 2154607208}
!177 = !{i64 2154588343}
!178 = !{i64 2154588644}
!179 = !{i64 2154589427}
!180 = !{i64 2154589728}
!181 = !{i64 2154583745}
!182 = !{i64 2154584075}
!183 = !{i64 2154584837}
!184 = !{i64 2154585167}
!185 = !{i64 2154665345}
!186 = !{i64 2154665915}
!187 = !{i64 2154666485}
!188 = !{i64 2154667055}
!189 = !{i64 2154672889}
!190 = !{i64 2154673485}
!191 = !{i64 2154674073}
!192 = !{i64 2154674661}
!193 = !{i64 2154675016}
!194 = !{i64 2154675577}
!195 = !{i64 2154676138}
!196 = !{i64 2154676699}
!197 = !{i64 2154682521}
!198 = !{i64 2154683128}
!199 = !{i64 2154683719}
!200 = !{i64 2154684298}
