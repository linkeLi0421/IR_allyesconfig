; ModuleID = '/llk/IR_all_yes/drivers/dma/at_hdmac.c_pt.bc'
source_filename = "../drivers/dma/at_hdmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at_dma_platform_data = type { i32, %struct.dma_cap_mask_t }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.at_dma = type { %struct.dma_device, ptr, ptr, i32, i8, ptr, ptr, [0 x %struct.at_dma_chan] }
%struct.at_dma_chan = type { %struct.dma_chan, ptr, ptr, i8, i8, i8, i32, %struct.tasklet_struct, i32, i32, %struct.dma_slave_config, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.at_dma_slave = type { ptr, i32 }
%struct.at_desc = type { %struct.at_lli, %struct.list_head, %struct.dma_async_tx_descriptor, %struct.list_head, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.at_lli = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__param_str_init_nr_desc_per_channel = internal constant [34 x i8] c"at_hdmac.init_nr_desc_per_channel\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@init_nr_desc_per_channel = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_init_nr_desc_per_channel = internal constant %struct.kernel_param { ptr @__param_str_init_nr_desc_per_channel, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @init_nr_desc_per_channel } }, section "__param", align 4
@__UNIQUE_ID_init_nr_desc_per_channeltype236 = internal constant [48 x i8] c"at_hdmac.parmtype=init_nr_desc_per_channel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_init_nr_desc_per_channel237 = internal constant [85 x i8] c"at_hdmac.parm=init_nr_desc_per_channel:initial descriptors per channel (default: 64)\00", section ".modinfo", align 1
@__initcall__kmod_at_hdmac__279_2170_at_dma_init4 = internal global ptr @at_dma_init, section ".initcall4.init", align 4
@at_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @at_dma_remove, ptr @at_dma_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_dma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at_dma_dev_pm_ops, ptr null, ptr null }, ptr @atdma_devtypes, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at_dma_exit = internal global ptr @at_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description280 = internal constant [53 x i8] c"at_hdmac.description=Atmel AHB DMA Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [56 x i8] c"at_hdmac.author=Nicolas Ferre <nicolas.ferre@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file282 = internal constant [35 x i8] c"at_hdmac.file=drivers/dma/at_hdmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [21 x i8] c"at_hdmac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias284 = internal constant [33 x i8] c"at_hdmac.alias=platform:at_hdmac\00", section ".modinfo", align 1
@at91sam9rl_config = internal global { %struct.at_dma_platform_data, [24 x i8] } { %struct.at_dma_platform_data { i32 2, %struct.dma_cap_mask_t zeroinitializer }, [24 x i8] zeroinitializer }, align 32
@at91sam9g45_config = internal global { %struct.at_dma_platform_data, [24 x i8] } { %struct.at_dma_platform_data { i32 8, %struct.dma_cap_mask_t zeroinitializer }, [24 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at_hdmac\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at_hdmac_desc_pool\00", [45 x i8] zeroinitializer }, align 32
@at_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1876, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No memory for descriptors dma pool\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at_dma_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/at_hdmac.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at_dma_probe._entry_ptr = internal global ptr @at_dma_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at_hdmac_memset_pool\00", [43 x i8] zeroinitializer }, align 32
@at_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1885, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory for memset dma pool\0A\00", [33 x i8] zeroinitializer }, align 32
@at_dma_probe._entry_ptr.11 = internal global ptr @at_dma_probe._entry.9, section ".printk_index", align 4
@at_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&atchan->lock\00", [18 x i8] zeroinitializer }, align 32
@at_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 1959, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Atmel AHB DMA Controller ( %s%s%s), %d channels\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at_dma_probe._entry_ptr.16 = internal global ptr @at_dma_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpy \00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"set \00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"slave \00", [25 x i8] zeroinitializer }, align 32
@at_dma_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 1972, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not register of_dma_controller\0A\00", [58 x i8] zeroinitializer }, align 32
@at_dma_probe._entry_ptr.23 = internal global ptr @at_dma_probe._entry.21, section ".printk_index", align 4
@atmel_dma_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_config }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@at_dma_interrupt.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at_dma_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"interrupt: status = 0x%08x, 0x%08x, 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@atc_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 589, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Bad descriptor submitted for DMA!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atc_handle_error\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@atc_handle_error._entry_ptr = internal global ptr @atc_handle_error._entry, section ".printk_index", align 4
@atc_handle_error._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.5, i32 591, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  cookie: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atc_handle_error._entry_ptr.31 = internal global ptr @atc_handle_error._entry.29, section ".printk_index", align 4
@atc_dostart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BUG: Attempted to start non-idle channel\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atc_dostart\00", [20 x i8] zeroinitializer }, align 32
@atc_dostart._entry_ptr = internal global ptr @atc_dostart._entry, section ".printk_index", align 4
@atc_dostart._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 242, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  channel: s0x%x d0x%x ctrl0x%x:0x%x l0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@atc_dostart._entry_ptr.36 = internal global ptr @atc_dostart._entry.34, section ".printk_index", align 4
@vdbg_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"  channel %d : imr = 0x%x, chsr = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdbg_dump_regs\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/dma/at_hdmac_regs.h\00", [36 x i8] zeroinitializer }, align 32
@vdbg_dump_regs._entry_ptr = internal global ptr @vdbg_dump_regs._entry, section ".printk_index", align 4
@vdbg_dump_regs._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.39, i32 395, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"  channel: s0x%x d0x%x ctrl0x%x:0x%x cfg0x%x l0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@vdbg_dump_regs._entry_ptr.42 = internal global ptr @vdbg_dump_regs._entry.40, section ".printk_index", align 4
@atc_dump_lli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.39, i32 406, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"desc: s%pad d%pad ctrl0x%x:0x%x l%pad\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atc_dump_lli\00", [19 x i8] zeroinitializer }, align 32
@atc_dump_lli._entry_ptr = internal global ptr @atc_dump_lli._entry, section ".printk_index", align 4
@atc_chain_complete.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atc_chain_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"descriptor %u complete\0A\00", [40 x i8] zeroinitializer }, align 32
@atc_handle_cyclic.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc_handle_cyclic\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"new cyclic period llp 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@atc_advance_work.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 0, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atc_advance_work\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"advance_work\0A\00", [18 x i8] zeroinitializer }, align 32
@atc_complete_all.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.5, ptr @.str.52, i8 0, i8 125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atc_complete_all\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"complete all\0A\00", [18 x i8] zeroinitializer }, align 32
@atc_alloc_chan_resources.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.54, i8 1, i8 -122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atc_alloc_chan_resources\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alloc_chan_resources\0A\00", [42 x i8] zeroinitializer }, align 32
@atc_alloc_chan_resources.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.55, i8 1, i8 -121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA channel not idle ?\0A\00", [40 x i8] zeroinitializer }, align 32
@atc_alloc_chan_resources.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.56, i8 1, i8 -120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"can't allocate channel resources (channel not freed from a previous use)\0A\00", [54 x i8] zeroinitializer }, align 32
@atc_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.5, i32 1594, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Only %d initial descriptors\0A\00", [35 x i8] zeroinitializer }, align 32
@atc_alloc_chan_resources._entry_ptr = internal global ptr @atc_alloc_chan_resources._entry, section ".printk_index", align 4
@atc_alloc_chan_resources.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.5, ptr @.str.58, i8 1, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"alloc_chan_resources: allocated %d descriptors\0A\00", [48 x i8] zeroinitializer }, align 32
@atc_tx_submit.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 -82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atc_tx_submit\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_submit: started %u\0A\00", [41 x i8] zeroinitializer }, align 32
@atc_tx_submit.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.5, ptr @.str.61, i8 0, i8 -81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_submit: queued %u\0A\00", [42 x i8] zeroinitializer }, align 32
@atc_free_chan_resources.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.5, ptr @.str.63, i8 1, i8 -105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atc_free_chan_resources\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  freeing descriptor %p\0A\00", [39 x i8] zeroinitializer }, align 32
@atc_free_chan_resources.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.5, ptr @.str.64, i8 1, i8 -102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"free_chan_resources: done\0A\00", [37 x i8] zeroinitializer }, align 32
@atc_tx_status.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.5, ptr @.str.66, i8 1, i8 123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atc_tx_status\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"get residual bytes error\0A\00", [38 x i8] zeroinitializer }, align 32
@atc_tx_status.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.5, ptr @.str.67, i8 1, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tx_status %d: cookie = %d residue = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@atc_issue_pending.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.5, ptr @.str.69, i8 1, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc_issue_pending\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"issue_pending\0A\00", [17 x i8] zeroinitializer }, align 32
@atc_prep_dma_interleaved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 739, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: src=%pad, dest=%pad, numf=%d, frame_size=%d, flags=0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atc_prep_dma_interleaved\00", [39 x i8] zeroinitializer }, align 32
@atc_prep_dma_interleaved._entry_ptr = internal global ptr @atc_prep_dma_interleaved._entry, section ".printk_index", align 4
@atc_prep_dma_interleaved._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.5, i32 755, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: the controller can transfer only identical chunks\0A\00", [41 x i8] zeroinitializer }, align 32
@atc_prep_dma_interleaved._entry_ptr.74 = internal global ptr @atc_prep_dma_interleaved._entry.72, section ".printk_index", align 4
@atc_prep_dma_interleaved._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.5, i32 767, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: buffer is too big\0A\00", [41 x i8] zeroinitializer }, align 32
@atc_prep_dma_interleaved._entry_ptr.77 = internal global ptr @atc_prep_dma_interleaved._entry.75, section ".printk_index", align 4
@atc_prep_dma_interleaved._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.5, i32 785, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: couldn't allocate our descriptor\0A\00", [58 x i8] zeroinitializer }, align 32
@atc_prep_dma_interleaved._entry_ptr.80 = internal global ptr @atc_prep_dma_interleaved._entry.78, section ".printk_index", align 4
@atc_desc_get.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.5, ptr @.str.82, i8 0, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atc_desc_get\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"desc %p not ACKed\0A\00", [45 x i8] zeroinitializer }, align 32
@atc_desc_get.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.5, ptr @.str.83, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"scanned %u descriptors on freelist\0A\00", [60 x i8] zeroinitializer }, align 32
@atc_prep_dma_memcpy.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.5, ptr @.str.85, i8 0, i8 -48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atc_prep_dma_memcpy\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"prep_dma_memcpy: d%pad s%pad l0x%zx f0x%lx\0A\00", [52 x i8] zeroinitializer }, align 32
@atc_prep_dma_memcpy.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.5, ptr @.str.86, i8 0, i8 -47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"prep_dma_memcpy: length is zero!\0A\00", [62 x i8] zeroinitializer }, align 32
@atc_desc_put.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.87, ptr @.str.5, ptr @.str.88, i8 0, i8 47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atc_desc_put\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"moving child desc %p to freelist\0A\00", [62 x i8] zeroinitializer }, align 32
@atc_desc_put.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.87, ptr @.str.5, ptr @.str.89, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"moving desc %p to freelist\0A\00", [36 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.5, ptr @.str.91, i8 0, i8 -20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atc_prep_dma_memset\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: d%pad v0x%x l0x%zx f0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.5, ptr @.str.92, i8 0, i8 -19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: length is zero!\0A\00", [43 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.5, ptr @.str.93, i8 0, i8 -17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: buffer is not aligned\0A\00", [37 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.90, ptr @.str.5, i32 963, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: couldn't allocate buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset._entry_ptr = internal global ptr @atc_prep_dma_memset._entry, section ".printk_index", align 4
@atc_prep_dma_memset._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.90, ptr @.str.5, i32 971, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: couldn't get a descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset._entry_ptr.97 = internal global ptr @atc_prep_dma_memset._entry.95, section ".printk_index", align 4
@atc_create_memset_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.98, ptr @.str.5, i32 907, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atc_create_memset_desc\00", [41 x i8] zeroinitializer }, align 32
@atc_create_memset_desc._entry_ptr = internal global ptr @atc_create_memset_desc._entry, section ".printk_index", align 4
@atc_create_memset_desc._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.5, i32 914, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: can't get a descriptor\0A\00", [36 x i8] zeroinitializer }, align 32
@atc_create_memset_desc._entry_ptr.101 = internal global ptr @atc_create_memset_desc._entry.99, section ".printk_index", align 4
@atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.5, ptr @.str.103, i8 0, i8 -4, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atc_prep_dma_memset_sg\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: v0x%x l0x%zx f0x%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.5, ptr @.str.104, i8 0, i8 -3, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: scatterlist is empty!\0A\00", [37 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.102, ptr @.str.5, i32 1021, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset_sg._entry_ptr = internal global ptr @atc_prep_dma_memset_sg._entry, section ".printk_index", align 4
@atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.5, ptr @.str.105, i8 1, i8 1, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: d%pad, l0x%zx\0A\00", [45 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset_sg._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.102, ptr @.str.5, i32 1035, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@atc_prep_dma_memset_sg._entry_ptr.107 = internal global ptr @atc_prep_dma_memset_sg._entry.106, section ".printk_index", align 4
@atc_prep_slave_sg.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.5, ptr @.str.109, i8 1, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc_prep_slave_sg\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"prep_slave_sg (%d): %s f0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TO DEVICE\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FROM DEVICE\00", [20 x i8] zeroinitializer }, align 32
@atc_prep_slave_sg.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.5, ptr @.str.112, i8 1, i8 20, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"prep_slave_sg: sg length is zero!\0A\00", [61 x i8] zeroinitializer }, align 32
@atc_prep_slave_sg.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.5, ptr @.str.113, i8 1, i8 27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"prep_slave_sg: sg(%d) data length is zero\0A\00", [53 x i8] zeroinitializer }, align 32
@atc_prep_slave_sg.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.5, ptr @.str.113, i8 1, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@atc_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.108, ptr @.str.5, i32 1212, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"not enough descriptors available\0A\00", [62 x i8] zeroinitializer }, align 32
@atc_prep_slave_sg._entry_ptr = internal global ptr @atc_prep_slave_sg._entry, section ".printk_index", align 4
@atc_prep_dma_cyclic.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.115, ptr @.str.5, ptr @.str.116, i8 1, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atc_prep_dma_cyclic\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"prep_dma_cyclic: %s buf@%pad - %d (%d/%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@atc_prep_dma_cyclic.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.115, ptr @.str.5, ptr @.str.117, i8 1, i8 74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"prep_dma_cyclic: length is zero!\0A\00", [62 x i8] zeroinitializer }, align 32
@atc_prep_dma_cyclic.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.115, ptr @.str.5, ptr @.str.118, i8 1, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"prep_dma_cyclic: channel in use!\0A\00", [62 x i8] zeroinitializer }, align 32
@atc_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.5, i32 1368, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@atc_prep_dma_cyclic._entry_ptr = internal global ptr @atc_prep_dma_cyclic._entry, section ".printk_index", align 4
@atc_config.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.119, ptr @.str.5, ptr @.str.120, i8 1, i8 89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atc_config\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@atc_pause.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.121, ptr @.str.5, ptr @.str.120, i8 1, i8 94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atc_pause\00", [22 x i8] zeroinitializer }, align 32
@atc_resume.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.122, ptr @.str.5, ptr @.str.120, i8 1, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atc_resume\00", [21 x i8] zeroinitializer }, align 32
@atc_terminate_all.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.123, ptr @.str.5, ptr @.str.120, i8 1, i8 105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc_terminate_all\00", [46 x i8] zeroinitializer }, align 32
@at_dma_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @at_dma_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at_dma_suspend_noirq, ptr @at_dma_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atdma_devtypes = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"at91sam9rl_dma\00\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9rl_config to i32) }, %struct.platform_device_id { [20 x i8] c"at91sam9g45_dma\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9g45_config to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@atc_suspend_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.5, i32 2071, ptr @.str.126, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"cyclic channel not paused, should be done by channel user\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atc_suspend_cyclic\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atc_suspend_cyclic._entry_ptr = internal global ptr @atc_suspend_cyclic._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@___asan_gen_.129 = private unnamed_addr constant [25 x i8] c"init_nr_desc_per_channel\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 52, i32 21 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"at_dma_driver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2155, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"at91sam9rl_config\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1734, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"at91sam9g45_config\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1737, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1853, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1865, i32 46 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1872, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1876, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1882, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1885, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1907, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1955, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1972, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"atmel_dma_dt_ids\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1742, i32 34 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 649, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 588, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 590, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 234, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 236, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 382, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 388, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [31 x i8] c"../drivers/dma/at_hdmac_regs.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 403, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 456, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 611, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 533, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 503, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1561, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1565, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1570, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1593, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1605, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 695, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 700, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1628, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1642, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1517, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1523, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1537, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 736, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 753, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 767, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 784, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 160, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 164, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 832, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 836, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 187, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 191, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 946, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 950, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 955, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 962, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 970, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 906, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 913, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1009, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1013, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1020, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1030, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1034, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1099, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1105, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1134, i32 5 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1212, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1315, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1321, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1327, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1368, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1380, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1401, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1420, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1445, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [18 x i8] c"at_dma_dev_pm_ops\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2149, i32 32 }
@___asan_gen_.522 = private unnamed_addr constant [15 x i8] c"atdma_devtypes\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1757, i32 40 }
@___asan_gen_.525 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.535 = private constant [26 x i8] c"../drivers/dma/at_hdmac.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2070, i32 3 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_alias284, ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_init_nr_desc_per_channel237, ptr @__UNIQUE_ID_init_nr_desc_per_channeltype236, ptr @__UNIQUE_ID_license283, ptr @__exitcall_at_dma_exit, ptr @__initcall__kmod_at_hdmac__279_2170_at_dma_init4, ptr @__param_init_nr_desc_per_channel, ptr @at_dma_exit, ptr @at_dma_probe._entry, ptr @at_dma_probe._entry.13, ptr @at_dma_probe._entry.21, ptr @at_dma_probe._entry.9, ptr @at_dma_probe._entry_ptr, ptr @at_dma_probe._entry_ptr.11, ptr @at_dma_probe._entry_ptr.16, ptr @at_dma_probe._entry_ptr.23, ptr @atc_alloc_chan_resources._entry, ptr @atc_alloc_chan_resources._entry_ptr, ptr @atc_create_memset_desc._entry, ptr @atc_create_memset_desc._entry.99, ptr @atc_create_memset_desc._entry_ptr, ptr @atc_create_memset_desc._entry_ptr.101, ptr @atc_dostart._entry, ptr @atc_dostart._entry.34, ptr @atc_dostart._entry_ptr, ptr @atc_dostart._entry_ptr.36, ptr @atc_dump_lli._entry, ptr @atc_dump_lli._entry_ptr, ptr @atc_handle_error._entry, ptr @atc_handle_error._entry.29, ptr @atc_handle_error._entry_ptr, ptr @atc_handle_error._entry_ptr.31, ptr @atc_prep_dma_cyclic._entry, ptr @atc_prep_dma_cyclic._entry_ptr, ptr @atc_prep_dma_interleaved._entry, ptr @atc_prep_dma_interleaved._entry.72, ptr @atc_prep_dma_interleaved._entry.75, ptr @atc_prep_dma_interleaved._entry.78, ptr @atc_prep_dma_interleaved._entry_ptr, ptr @atc_prep_dma_interleaved._entry_ptr.74, ptr @atc_prep_dma_interleaved._entry_ptr.77, ptr @atc_prep_dma_interleaved._entry_ptr.80, ptr @atc_prep_dma_memset._entry, ptr @atc_prep_dma_memset._entry.95, ptr @atc_prep_dma_memset._entry_ptr, ptr @atc_prep_dma_memset._entry_ptr.97, ptr @atc_prep_dma_memset_sg._entry, ptr @atc_prep_dma_memset_sg._entry.106, ptr @atc_prep_dma_memset_sg._entry_ptr, ptr @atc_prep_dma_memset_sg._entry_ptr.107, ptr @atc_prep_slave_sg._entry, ptr @atc_prep_slave_sg._entry_ptr, ptr @atc_suspend_cyclic._entry, ptr @atc_suspend_cyclic._entry_ptr, ptr @vdbg_dump_regs._entry, ptr @vdbg_dump_regs._entry.40, ptr @vdbg_dump_regs._entry_ptr, ptr @vdbg_dump_regs._entry_ptr.42, ptr @init_nr_desc_per_channel, ptr @at_dma_driver, ptr @at91sam9rl_config, ptr @at91sam9g45_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @at_dma_probe.__key, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @atmel_dma_dt_ids, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @at_dma_dev_pm_ops, ptr @atdma_devtypes, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nr_desc_per_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9rl_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_dma_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_dma_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_handle_error._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_dostart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_dostart._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdbg_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdbg_dump_regs._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_dump_lli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_interleaved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_interleaved._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_interleaved._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_interleaved._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_memset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_memset._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_create_memset_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_create_memset_desc._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_memset_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_memset_sg._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_dma_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atdma_devtypes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_suspend_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at_dma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at_dma_driver, ptr noundef nonnull @at_dma_probe, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at_dma_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @at_dma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at_dma_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9rl_config, i32 0, i32 1)) #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #10
  tail call void @_set_bit(i32 noundef 6, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #10
  tail call void @_set_bit(i32 noundef 7, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #10
  tail call void @_set_bit(i32 noundef 9, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #10
  tail call void @_set_bit(i32 noundef 11, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #10
  %call = tail call fastcc ptr @at_dma_get_driver_data(ptr noundef %pdev) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end8.i.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %mul = mul i32 %1, 228
  %add = add i32 %mul, 388
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end11

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i.i
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 6
  %cap_mask12 = getelementptr inbounds %struct.at_dma_platform_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cap_mask12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap_mask12, align 4
  %4 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cap_mask, align 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %notmask = shl nsw i32 -1, %6
  %7 = trunc i32 %notmask to i8
  %conv = xor i8 %7, -1
  %all_chan_mask = getelementptr inbounds %struct.at_dma, ptr %call9.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %all_chan_mask, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 4
  %sub.i = add i32 %10, 1
  %add.i = sub i32 %sub.i, %12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call15 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %add.i, ptr noundef %16, i32 noundef 0) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end11.err_kfree_crit_edge, label %if.end18

if.end11.err_kfree_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree

if.end18:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call1, align 4
  %call20 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %add.i) #10
  %regs = getelementptr inbounds %struct.at_dma, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call20, ptr %regs, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end18.err_release_r_crit_edge, label %if.end24

if.end18.err_release_r_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_release_r

if.end24:                                         ; preds = %if.end18
  %call26 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str) #10
  %clk = getelementptr inbounds %struct.at_dma, ptr %call9.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call26, ptr %clk, align 16
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call26 to i32
  br label %err_clk

if.end32:                                         ; preds = %if.end24
  %call.i = tail call i32 @clk_prepare(ptr noundef %call26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.err_clk_prepare_crit_edge

if.end32.err_clk_prepare_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_prepare

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %call26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end37, label %if.end.i.err_clk_prepare.sink.split_crit_edge

if.end.i.err_clk_prepare.sink.split_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_prepare.sink.split

if.end37:                                         ; preds = %if.end.i
  tail call fastcc void @at_dma_off(ptr noundef nonnull %call9.i.i)
  %call.i302 = tail call i32 @request_threaded_irq(i32 noundef %call5, ptr noundef nonnull @at_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %tobool39.not = icmp eq i32 %call.i302, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.err_irq_crit_edge

if.end37.err_irq_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_irq

if.end41:                                         ; preds = %if.end37
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  %call43 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.2, ptr noundef %dev, i32 noundef 168, i32 noundef 4, i32 noundef 0) #10
  %dma_desc_pool = getelementptr inbounds %struct.at_dma, ptr %call9.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call43, ptr %dma_desc_pool, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %do.end, label %if.end48

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #15
  br label %err_desc_pool_create

if.end48:                                         ; preds = %if.end41
  %call50 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.8, ptr noundef %dev, i32 noundef 4, i32 noundef 4, i32 noundef 0) #10
  %memset_pool = getelementptr inbounds %struct.at_dma, ptr %call9.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %memset_pool to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call50, ptr %memset_pool, align 128
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %do.end56, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end48
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr330 = getelementptr i8, ptr %26, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #10, !srcloc !304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool61.not331 = icmp eq i32 %27, 0
  br i1 %tobool61.not331, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.do.end66_crit_edge

while.cond.preheader.do.end66_crit_edge:          ; preds = %while.cond.preheader
  br label %do.end66

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #15
  br label %err_memset_pool_create

do.end66:                                         ; preds = %do.end66.do.end66_crit_edge, %while.cond.preheader.do.end66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !305
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !306
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !304
  %tobool61.not = icmp eq i32 %30, 0
  br i1 %tobool61.not, label %do.end66.while.end_crit_edge, label %do.end66.do.end66_crit_edge

do.end66.do.end66_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66

do.end66.while.end_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end66.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %channels = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %channels, ptr %prev.i, align 16
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp73332.not = icmp eq i32 %34, 0
  br i1 %cmp73332.not, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %while.end.for.body_crit_edge
  %i.0333 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %while.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333
  %mem_if = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 5
  %35 = ptrtoint ptr %mem_if to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %mem_if, align 2
  %per_if = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 4
  %36 = ptrtoint ptr %per_if to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %per_if, align 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 2
  %38 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 3
  %39 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %completed_cookie.i, align 4
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 16
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %41, ptr noundef %channels) #10
  br i1 %call.i.i, label %if.end.i.i304, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i304:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %device_node, ptr %prev.i, align 16
  %43 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %device_node, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i304, %for.body.list_add_tail.exit_crit_edge
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %mul81 = mul i32 %i.0333, 40
  %add82 = add i32 %mul81, 60
  %add.ptr83 = getelementptr i8, ptr %47, i32 %add82
  %ch_regs = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 2
  %48 = ptrtoint ptr %ch_regs to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr83, ptr %ch_regs, align 4
  %lock = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @at_dma_probe.__key, i16 noundef signext 3) #10
  %shl88 = shl nuw i32 1, %i.0333
  %conv89 = trunc i32 %shl88 to i8
  %mask = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 3
  %49 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv89, ptr %mask, align 4
  %active_list = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 12
  %50 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i305 = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 12, i32 1
  %51 = ptrtoint ptr %prev.i305 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %active_list, ptr %prev.i305, align 4
  %queue = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 13
  %52 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i306 = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 13, i32 1
  %53 = ptrtoint ptr %prev.i306 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %queue, ptr %prev.i306, align 4
  %free_list = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 14
  %54 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i307 = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 14, i32 1
  %55 = ptrtoint ptr %prev.i307 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %free_list, ptr %prev.i307, align 4
  %tasklet = getelementptr %struct.at_dma, ptr %call9.i.i, i32 0, i32 7, i32 %i.0333, i32 7
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @atc_tasklet) #10
  %add.i.i = add i32 %i.0333, 16
  %shl1.i.i = shl nuw i32 1, %add.i.i
  %or.i.i = or i32 %shl1.i.i, %shl88
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i.i) #10, !srcloc !307
  %inc = add nuw i32 %i.0333, 1
  %58 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call, align 4
  %cmp73 = icmp ult i32 %inc, %59
  br i1 %cmp73, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %while.end.for.end_crit_edge
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 27
  %60 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @atc_alloc_chan_resources, ptr %device_alloc_chan_resources, align 128
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 29
  %61 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @atc_free_chan_resources, ptr %device_free_chan_resources, align 8
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 49
  %62 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @atc_tx_status, ptr %device_tx_status, align 8
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 50
  %63 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @atc_issue_pending, ptr %device_issue_pending, align 4
  %dev96 = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 15
  %64 = ptrtoint ptr %dev96 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dev, ptr %dev96, align 8
  %65 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %cap_mask, align 8
  %67 = and i32 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool100.not = icmp eq i32 %67, 0
  br i1 %tobool100.not, label %for.end.if.end103_crit_edge, label %if.then101

for.end.if.end103_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then101:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %device_prep_interleaved_dma = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 41
  %68 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @atc_prep_dma_interleaved, ptr %device_prep_interleaved_dma, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %for.end.if.end103_crit_edge
  %69 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %cap_mask, align 8
  %and1.i.i308 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i308)
  %tobool107.not = icmp eq i32 %and1.i.i308, 0
  br i1 %tobool107.not, label %if.end103.if.end110_crit_edge, label %if.then108

if.end103.if.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 30
  %71 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @atc_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end103.if.end110_crit_edge
  %72 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %cap_mask, align 8
  %74 = and i32 %73, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool114.not = icmp eq i32 %74, 0
  br i1 %tobool114.not, label %if.end110.if.end119_crit_edge, label %if.then115

if.end110.if.end119_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %device_prep_dma_memset = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 36
  %75 = ptrtoint ptr %device_prep_dma_memset to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @atc_prep_dma_memset, ptr %device_prep_dma_memset, align 4
  %device_prep_dma_memset_sg = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 37
  %76 = ptrtoint ptr %device_prep_dma_memset_sg to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @atc_prep_dma_memset_sg, ptr %device_prep_dma_memset_sg, align 8
  %fill_align = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 13
  %77 = ptrtoint ptr %fill_align to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %fill_align, align 64
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %if.end110.if.end119_crit_edge
  %78 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %cap_mask, align 8
  %80 = and i32 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool123.not = icmp eq i32 %80, 0
  br i1 %tobool123.not, label %if.end119.if.end137_crit_edge, label %if.then124

if.end119.if.end137_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 39
  %81 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @atc_prep_slave_sg, ptr %device_prep_slave_sg, align 16
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 40
  %82 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @atc_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 44
  %83 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @atc_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 45
  %84 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @atc_pause, ptr %device_pause, align 8
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 46
  %85 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @atc_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 47
  %86 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @atc_terminate_all, ptr %device_terminate_all, align 16
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 19
  %87 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 23, ptr %src_addr_widths, align 32
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 20
  %88 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 23, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 21
  %89 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 6, ptr %directions, align 8
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 26
  %90 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %residue_granularity, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then124, %if.end119.if.end137_crit_edge
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %add.ptr139 = getelementptr i8, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 1) #10, !srcloc !307
  %93 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %cap_mask, align 8
  %and1.i.i313 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i313)
  %tobool147.not = icmp eq i32 %and1.i.i313, 0
  %cond = select i1 %tobool147.not, ptr @.str.18, ptr @.str.17
  %95 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %cap_mask, align 8
  %97 = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool151.not = icmp eq i32 %97, 0
  %cond152 = select i1 %tobool151.not, ptr @.str.18, ptr @.str.19
  %98 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %cap_mask, align 8
  %100 = and i32 %99, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool156.not = icmp eq i32 %100, 0
  %cond157 = select i1 %tobool156.not, ptr @.str.18, ptr @.str.20
  %101 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond, ptr noundef nonnull %cond152, ptr noundef nonnull %cond157, i32 noundef %102) #15
  %call160 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call9.i.i) #10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %103 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %of_node, align 8
  %tobool162.not = icmp eq ptr %104, null
  br i1 %tobool162.not, label %if.end137.cleanup_crit_edge, label %if.then163

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then163:                                       ; preds = %if.end137
  %call166 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %104, ptr noundef nonnull @at_dma_xlate, ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.then163.cleanup_crit_edge, label %do.end171

if.then163.cleanup_crit_edge:                     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end171:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #15
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call9.i.i) #10
  %105 = ptrtoint ptr %memset_pool to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %memset_pool, align 128
  tail call void @dma_pool_destroy(ptr noundef %106) #10
  br label %err_memset_pool_create

err_memset_pool_create:                           ; preds = %do.end171, %do.end56
  %err.0 = phi i32 [ %call166, %do.end171 ], [ -12, %do.end56 ]
  %107 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %108) #10
  br label %err_desc_pool_create

err_desc_pool_create:                             ; preds = %err_memset_pool_create, %do.end
  %err.1 = phi i32 [ %err.0, %err_memset_pool_create ], [ -12, %do.end ]
  %call178 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %call179 = tail call ptr @free_irq(i32 noundef %call178, ptr noundef nonnull %call9.i.i) #10
  br label %err_irq

err_irq:                                          ; preds = %err_desc_pool_create, %if.end37.err_irq_crit_edge
  %err.2 = phi i32 [ %call.i302, %if.end37.err_irq_crit_edge ], [ %err.1, %err_desc_pool_create ]
  %109 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk, align 16
  tail call void @clk_disable(ptr noundef %110) #10
  br label %err_clk_prepare.sink.split

err_clk_prepare.sink.split:                       ; preds = %err_irq, %if.end.i.err_clk_prepare.sink.split_crit_edge
  %call26.sink = phi ptr [ %110, %err_irq ], [ %call26, %if.end.i.err_clk_prepare.sink.split_crit_edge ]
  %err.3.ph = phi i32 [ %err.2, %err_irq ], [ %call1.i, %if.end.i.err_clk_prepare.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %call26.sink) #10
  br label %err_clk_prepare

err_clk_prepare:                                  ; preds = %err_clk_prepare.sink.split, %if.end32.err_clk_prepare_crit_edge
  %err.3 = phi i32 [ %call.i, %if.end32.err_clk_prepare_crit_edge ], [ %err.3.ph, %err_clk_prepare.sink.split ]
  %111 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clk, align 16
  tail call void @clk_put(ptr noundef %112) #10
  br label %err_clk

err_clk:                                          ; preds = %err_clk_prepare, %if.then29
  %err.4 = phi i32 [ %21, %if.then29 ], [ %err.3, %err_clk_prepare ]
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %114) #10
  %115 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %regs, align 4
  br label %err_release_r

err_release_r:                                    ; preds = %err_clk, %if.end18.err_release_r_crit_edge
  %err.5 = phi i32 [ %err.4, %err_clk ], [ -12, %if.end18.err_release_r_crit_edge ]
  %116 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %call1, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %117, i32 noundef %add.i) #10
  br label %err_kfree

err_kfree:                                        ; preds = %err_release_r, %if.end11.err_kfree_crit_edge
  %err.6 = phi i32 [ %err.5, %err_release_r ], [ -16, %if.end11.err_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %if.then163.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.6, %err_kfree ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %if.then163.cleanup_crit_edge ], [ 0, %if.end137.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at_dma_get_driver_data(ptr nocapture noundef readonly %pdev) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @atmel_dma_dt_ids, ptr noundef nonnull %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %8 = inttoptr i32 %7 to ptr
  br label %return

return:                                           ; preds = %if.end4, %if.end, %if.then.return_crit_edge
  %retval.1 = phi ptr [ %8, %if.end4 ], [ %3, %if.end ], [ null, %if.then.return_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at_dma_off(ptr nocapture noundef readonly %atdma) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.at_dma, ptr %atdma, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !307
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1) #10, !srcloc !307
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr412 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr412) #10, !srcloc !304
  %all_chan_mask = getelementptr inbounds %struct.at_dma, ptr %atdma, i32 0, i32 4
  %7 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %all_chan_mask, align 4
  %conv13 = zext i8 %8 to i32
  %and14 = and i32 %6, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not15 = icmp eq i32 %and14, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !309
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !304
  %12 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %all_chan_mask, align 4
  %conv = zext i8 %13 to i32
  %and = and i32 %11, %conv
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.at_dma, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr57 = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #10, !srcloc !304
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr258 = getelementptr i8, ptr %4, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr258) #10, !srcloc !304
  %and59 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool.not60 = icmp eq i32 %and59, 0
  br i1 %tobool.not60, label %entry.do.end32_crit_edge, label %do.body4.lr.ph

entry.do.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.body4.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 1
  br label %do.body4

do.body.loopexit:                                 ; preds = %for.inc.do.body.loopexit_crit_edge, %do.end.do.body.loopexit_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.061, %do.end.do.body.loopexit_crit_edge ], [ %ret.2, %for.inc.do.body.loopexit_crit_edge ]
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !304
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %10, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !304
  %and = and i32 %11, %8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.loopexit.do.end32_crit_edge, label %do.body.loopexit.do.body4_crit_edge

do.body.loopexit.do.body4_crit_edge:              ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.body.loopexit.do.end32_crit_edge:              ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.body4:                                         ; preds = %do.body.loopexit.do.body4_crit_edge, %do.body4.lr.ph
  %and62 = phi i32 [ %and59, %do.body4.lr.ph ], [ %and, %do.body.loopexit.do.body4_crit_edge ]
  %12 = phi i32 [ %5, %do.body4.lr.ph ], [ %11, %do.body.loopexit.do.body4_crit_edge ]
  %13 = phi i32 [ %2, %do.body4.lr.ph ], [ %8, %do.body.loopexit.do.body4_crit_edge ]
  %ret.061 = phi i32 [ 0, %do.body4.lr.ph ], [ %ret.1.lcssa, %do.body.loopexit.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_dma_interrupt.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_dma_interrupt, %do.end)) #10
          to label %if.then10 [label %do.end], !srcloc !310

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_dma_interrupt.__UNIQUE_ID_ddebug246, ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef %12, i32 noundef %13, i32 noundef %and62) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body4
  %16 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chancnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp53.not = icmp eq i32 %17, 0
  br i1 %cmp53.not, label %do.end.do.body.loopexit_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.body.loopexit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.loopexit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %ret.156 = phi i32 [ %ret.2, %for.inc.for.body_crit_edge ], [ %ret.061, %do.end.for.body_crit_edge ]
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.054
  %add = add i32 %i.054, 16
  %shl13 = shl nuw i32 1, %add
  %or = or i32 %shl13, %shl
  %and14 = and i32 %or, %and62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %and19 = and i32 %shl13, %and62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then16.if.end28_crit_edge, label %if.then21

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %add22 = add i32 %i.054, 8
  %shl23 = shl nuw i32 1, %add22
  %mask = getelementptr %struct.at_dma, ptr %dev_id, i32 0, i32 7, i32 %i.054, i32 3
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask, align 4
  %conv = zext i8 %19 to i32
  %or24 = or i32 %shl23, %conv
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or24) #10, !srcloc !307
  %status27 = getelementptr %struct.at_dma, ptr %dev_id, i32 0, i32 7, i32 %i.054, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status27) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.then16.if.end28_crit_edge
  %state.i = getelementptr %struct.at_dma, ptr %dev_id, i32 0, i32 7, i32 %i.054, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr %struct.at_dma, ptr %dev_id, i32 0, i32 7, i32 %i.054, i32 7
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.156, %for.body.for.inc_crit_edge ], [ 1, %if.end28.for.inc_crit_edge ], [ 1, %if.then.i ]
  %inc = add nuw i32 %i.054, 1
  %22 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chancnt, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body.loopexit_crit_edge

for.inc.do.body.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end32:                                         ; preds = %do.body.loopexit.do.end32_crit_edge, %entry.do.end32_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.do.end32_crit_edge ], [ %ret.1.lcssa, %do.body.loopexit.do.end32_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atc_tasklet(ptr noundef %t) #4 align 64 {
entry:
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -80
  %status = getelementptr i8, ptr %t, i32 -4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr i8, ptr %t, i32 80
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %active_list.i.i = getelementptr i8, ptr %t, i32 124
  %0 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_list.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del_init.exit.i_crit_edge

if.then.list_del_init.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %queue.i = getelementptr i8, ptr %t, i32 132
  %prev.i = getelementptr i8, ptr %t, i32 128
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %12 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %queue.i
  br i1 %cmp.i.not.i.i, label %list_del_init.exit.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

list_del_init.exit.i.list_splice_init.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev2.i.i.i = getelementptr i8, ptr %t, i32 136
  %16 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %11, ptr %prev3.i.i.i, align 4
  store ptr %13, ptr %11, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %17, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev6.i.i.i, align 4
  %21 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  store ptr %queue.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %list_del_init.exit.i.list_splice_init.exit.i_crit_edge
  %22 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %active_list.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %active_list.i.i
  br i1 %cmp.i.not.i, label %list_splice_init.exit.i.do.end11.i_crit_edge, label %if.then.i

list_splice_init.exit.i.do.end11.i_crit_edge:     ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

if.then.i:                                        ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i50.i = getelementptr i8, ptr %23, i32 -128
  tail call fastcc void @atc_dostart(ptr noundef %add.ptr, ptr noundef %add.ptr.i50.i) #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %list_splice_init.exit.i.do.end11.i_crit_edge
  %dev.i.i = getelementptr i8, ptr %t, i32 -60
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i.i, ptr noundef nonnull @.str.26) #15
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %device.i52.i = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  %txd.i = getelementptr i8, ptr %1, i32 -100
  %28 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %txd.i, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i52.i, ptr noundef nonnull @.str.30, i32 noundef %29) #15
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1
  %daddr.i.i = getelementptr i8, ptr %1, i32 -124
  %ctrla.i.i = getelementptr i8, ptr %1, i32 -120
  %32 = ptrtoint ptr %ctrla.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrla.i.i, align 4
  %ctrlb.i.i = getelementptr i8, ptr %1, i32 -116
  %34 = ptrtoint ptr %ctrlb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrlb.i.i, align 4
  %dscr.i.i = getelementptr i8, ptr %1, i32 -112
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i.i.i, ptr noundef nonnull @.str.43, ptr noundef %add.ptr.i.i, ptr noundef %daddr.i.i, i32 noundef %33, i32 noundef %35, ptr noundef %dscr.i.i) #15
  %tx_list.i = getelementptr i8, ptr %1, i32 -108
  %36 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn59.i = load ptr, ptr %tx_list.i, align 4
  %cmp21.not60.i = icmp eq ptr %.pn59.i, %tx_list.i
  br i1 %cmp21.not60.i, label %do.end11.i.atc_handle_error.exit_crit_edge, label %do.end11.i.for.body.i_crit_edge

do.end11.i.for.body.i_crit_edge:                  ; preds = %do.end11.i
  br label %for.body.i

do.end11.i.atc_handle_error.exit_crit_edge:       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_handle_error.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end11.i.for.body.i_crit_edge
  %.pn61.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn59.i, %do.end11.i.for.body.i_crit_edge ]
  %child.0.i = getelementptr i8, ptr %.pn61.i, i32 -128
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %device.i.i54.i = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  %daddr.i55.i = getelementptr i8, ptr %.pn61.i, i32 -124
  %ctrla.i56.i = getelementptr i8, ptr %.pn61.i, i32 -120
  %39 = ptrtoint ptr %ctrla.i56.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrla.i56.i, align 4
  %ctrlb.i57.i = getelementptr i8, ptr %.pn61.i, i32 -116
  %41 = ptrtoint ptr %ctrlb.i57.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrlb.i57.i, align 4
  %dscr.i58.i = getelementptr i8, ptr %.pn61.i, i32 -112
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i.i54.i, ptr noundef nonnull @.str.43, ptr noundef %child.0.i, ptr noundef %daddr.i55.i, i32 noundef %40, i32 noundef %42, ptr noundef %dscr.i58.i) #15
  %43 = ptrtoint ptr %.pn61.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn61.i, align 4
  %cmp21.not.i = icmp eq ptr %.pn.i, %tx_list.i
  br i1 %cmp21.not.i, label %for.body.i.atc_handle_error.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.atc_handle_error.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_handle_error.exit

atc_handle_error.exit:                            ; preds = %for.body.i.atc_handle_error.exit_crit_edge, %do.end11.i.atc_handle_error.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  tail call fastcc void @atc_chain_complete(ptr noundef %add.ptr, ptr noundef %add.ptr.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %status, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool2.not = icmp eq i32 %46, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %active_list.i.i9 = getelementptr i8, ptr %t, i32 124
  %47 = ptrtoint ptr %active_list.i.i9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_list.i.i9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_handle_cyclic.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_tasklet, %do.end.i)) #10
          to label %if.then.i12 [label %do.end.i], !srcloc !310

if.then.i12:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i10 = getelementptr i8, ptr %t, i32 -60
  %49 = ptrtoint ptr %dev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i10, align 4
  %device.i.i11 = getelementptr inbounds %struct.dma_chan_dev, ptr %50, i32 0, i32 1
  %ch_regs.i = getelementptr i8, ptr %t, i32 -12
  %51 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !304
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_handle_cyclic.__UNIQUE_ID_ddebug245, ptr noundef %device.i.i11, ptr noundef nonnull @.str.48, i32 noundef %53) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i12, %if.then3
  %callback.i.i.i = getelementptr i8, ptr %48, i32 -76
  %54 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr i8, ptr %48, i32 -72
  %56 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr i8, ptr %48, i32 -68
  %58 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %callback_param.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #10
  %60 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %57(ptr noundef %59, ptr noundef nonnull %dummy_result.i.i.i) #10
  br label %atc_handle_cyclic.exit

if.else.i.i.i:                                    ; preds = %do.end.i
  %tobool4.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.atc_handle_cyclic.exit_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.atc_handle_cyclic.exit_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_handle_cyclic.exit

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %55(ptr noundef %59) #10
  br label %atc_handle_cyclic.exit

atc_handle_cyclic.exit:                           ; preds = %if.then5.i.i.i, %if.else.i.i.i.atc_handle_cyclic.exit_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atc_advance_work(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %atc_handle_cyclic.exit, %atc_handle_error.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_alloc_chan_resources(ptr noundef %chan) #4 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_alloc_chan_resources, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_alloc_chan_resources.__UNIQUE_ID_ddebug273, ptr noundef %device.i, ptr noundef nonnull @.str.54) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !304
  %mask.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask.i, align 4
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %8, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end29, label %do.body10

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_alloc_chan_resources, %cleanup)) #10
          to label %if.then24 [label %cleanup], !srcloc !310

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i147 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i147 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i147, align 4
  %device.i148 = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_alloc_chan_resources.__UNIQUE_ID_ddebug274, ptr noundef %device.i148, ptr noundef nonnull @.str.55) #10
  br label %cleanup

if.end29:                                         ; preds = %do.end
  %free_list = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 14
  %13 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %14, %free_list
  br i1 %cmp.i.not, label %if.end52, label %do.body33

do.body33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_alloc_chan_resources, %cleanup)) #10
          to label %if.then47 [label %cleanup], !srcloc !310

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i150 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i150 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i150, align 4
  %device.i151 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_alloc_chan_resources.__UNIQUE_ID_ddebug275, ptr noundef %device.i151, ptr noundef nonnull @.str.56) #10
  br label %cleanup

if.end52:                                         ; preds = %if.end29
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %tobool53.not = icmp eq ptr %18, null
  br i1 %tobool53.not, label %if.end52.if.end79_crit_edge, label %do.body55

if.end52.if.end79_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.body55:                                        ; preds = %if.end52
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool56.not = icmp eq ptr %20, null
  br i1 %tobool56.not, label %do.body55.do.body65_crit_edge, label %lor.rhs, !prof !311

do.body55.do.body65_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

lor.rhs:                                          ; preds = %do.body55
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %cmp.not = icmp eq ptr %20, %22
  br i1 %cmp.not, label %do.end73, label %lor.rhs.do.body65_crit_edge, !prof !312

lor.rhs.do.body65_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

do.body65:                                        ; preds = %lor.rhs.do.body65_crit_edge, %do.body55.do.body65_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1582, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

do.end73:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %cfg74 = getelementptr inbounds %struct.at_dma_slave, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %cfg74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool75.not = icmp eq i32 %24, 0
  %spec.select = select i1 %tobool75.not, i32 268435456, i32 %24
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end52.if.end79_crit_edge
  %cfg.0 = phi i32 [ 268435456, %if.end52.if.end79_crit_edge ], [ %spec.select, %do.end73 ]
  %25 = load i32, ptr @init_nr_desc_per_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp80161.not = icmp eq i32 %25, 0
  br i1 %cmp80161.not, label %if.end79.for.end_crit_edge, label %for.body.lr.ph

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end79
  %prev.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 14, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #10
  %28 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %phys.i, align 4, !annotation !314
  %dma_desc_pool.i = getelementptr inbounds %struct.at_dma, ptr %27, i32 0, i32 5
  %29 = ptrtoint ptr %dma_desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %30, i32 noundef 3520, ptr noundef nonnull %phys.i) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end86, label %if.end89

do.end86:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #10
  %dev88 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.57, i32 noundef %i.0162) #15
  br label %for.end

if.end89:                                         ; preds = %for.body
  %tx_list.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tx_list.i, ptr %prev.i.i, align 4
  %txd.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %chan) #10
  %flags.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %flags.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @atc_tx_submit, ptr %tx_submit.i, align 4
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys.i, align 4
  %phys5.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %phys5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %phys5.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #10
  %desc_node = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %call.i.i152 = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %41, ptr noundef %free_list) #10
  br i1 %call.i.i152, label %if.end.i.i, label %if.end89.list_add_tail.exit_crit_edge

if.end89.list_add_tail.exit_crit_edge:            ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %desc_node, ptr %prev.i, align 4
  %43 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %free_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %desc_node, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end89.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.0162, 1
  %46 = load i32, ptr @init_nr_desc_per_channel, align 4
  %cmp80 = icmp ult i32 %inc, %46
  br i1 %cmp80, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %do.end86, %if.end79.for.end_crit_edge
  %i.0160 = phi i32 [ %i.0162, %do.end86 ], [ 0, %if.end79.for.end_crit_edge ], [ %inc, %list_add_tail.exit.for.end_crit_edge ]
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %47 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %48 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %completed_cookie.i, align 4
  %ch_regs = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 2
  %49 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ch_regs, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cfg.0) #10, !srcloc !307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_alloc_chan_resources, %cleanup)) #10
          to label %if.then105 [label %cleanup], !srcloc !310

if.then105:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i153 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %51 = ptrtoint ptr %dev.i153 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i153, align 4
  %device.i154 = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_alloc_chan_resources.__UNIQUE_ID_ddebug276, ptr noundef %device.i154, ptr noundef nonnull @.str.58, i32 noundef %i.0160) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %for.end, %if.then47, %do.body33, %if.then24, %do.body10
  %retval.0 = phi i32 [ -5, %if.then24 ], [ -5, %if.then47 ], [ %i.0160, %if.then105 ], [ -5, %do.body10 ], [ -5, %do.body33 ], [ %i.0160, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atc_free_chan_resources(ptr noundef %chan) #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %active_list = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 12
  %5 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %6, %active_list
  br i1 %cmp.i.not, label %do.body12, label %do.body6, !prof !312

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1623, 0\0A.popsection", ""() #10, !srcloc !315
  unreachable

do.body12:                                        ; preds = %entry
  %queue = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 13
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i126.not = icmp eq ptr %8, %queue
  br i1 %cmp.i126.not, label %do.body33, label %do.body24, !prof !312

do.body24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1624, 0\0A.popsection", ""() #10, !srcloc !316
  unreachable

do.body33:                                        ; preds = %do.body12
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 48
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !304
  %mask.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask.i, align 4
  %conv.i128 = zext i8 %13 to i32
  %and.i = and i32 %11, %conv.i128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end51, label %do.body43, !prof !312

do.body43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1625, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.end51:                                         ; preds = %do.body33
  %free_list = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 14
  %14 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_list, align 4
  %cmp.not135 = icmp eq ptr %15, %free_list
  br i1 %cmp.not135, label %do.end51.for.end_crit_edge, label %do.body61.lr.ph

do.end51.for.end_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body61.lr.ph:                                  ; preds = %do.end51
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %dma_desc_pool = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 5
  br label %do.body61

do.body61:                                        ; preds = %list_del.exit.do.body61_crit_edge, %do.body61.lr.ph
  %.pn.in136 = phi ptr [ %15, %do.body61.lr.ph ], [ %.pn140, %list_del.exit.do.body61_crit_edge ]
  %desc.0138 = getelementptr i8, ptr %.pn.in136, i32 -128
  %16 = ptrtoint ptr %.pn.in136 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn140 = load ptr, ptr %.pn.in136, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_free_chan_resources.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_free_chan_resources, %do.end77)) #10
          to label %if.then73 [label %do.end77], !srcloc !310

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_free_chan_resources.__UNIQUE_ID_ddebug277, ptr noundef %device.i, ptr noundef nonnull @.str.63, ptr noundef %desc.0138) #10
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %do.body61
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in136) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end77.list_del.exit_crit_edge

do.end77.list_del.exit_crit_edge:                 ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in136, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn.in136 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in136, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end77.list_del.exit_crit_edge
  %25 = ptrtoint ptr %.pn.in136 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in136, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in136, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %27 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_desc_pool, align 4
  %phys = getelementptr i8, ptr %.pn.in136, i32 -92
  %29 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys, align 4
  call void @dma_pool_free(ptr noundef %28, ptr noundef %desc.0138, i32 noundef %30) #10
  %cmp.not = icmp eq ptr %.pn140, %free_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.do.body61_crit_edge

list_del.exit.do.body61_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end51.for.end_crit_edge
  %31 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not.i = icmp eq ptr %32, %free_list
  br i1 %cmp.i.not.i, label %for.end.list_splice_init.exit_crit_edge, label %if.then.i

for.end.list_splice_init.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 14, i32 1
  %35 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %32, ptr %list, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %34, ptr %36, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev6.i.i, align 4
  %40 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %free_list, ptr %free_list, align 4
  store ptr %free_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %for.end.list_splice_init.exit_crit_edge
  %status = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 6
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status, align 4
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private, align 4
  call void @kfree(ptr noundef %43) #10
  %44 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_free_chan_resources.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_free_chan_resources, %do.end104)) #10
          to label %if.then100 [label %do.end104], !srcloc !310

if.then100:                                       ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i129 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %45 = ptrtoint ptr %dev.i129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i129, align 4
  %device.i130 = getelementptr inbounds %struct.dma_chan_dev, ptr %46, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_free_chan_resources.__UNIQUE_ID_ddebug278, ptr noundef %device.i130, ptr noundef nonnull @.str.64) #10
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %list_splice_init.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #4 align 64 {
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !318
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
  %brmerge89 = or i1 %tobool.not.i, %or.cond.i.i
  %.mux90 = select i1 %or.cond.i.i, i32 0, i32 3
  br i1 %brmerge89, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body4_crit_edge

if.then.i.i.do.body4_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge = or i1 %tobool.not.i, %or.cond16.i.i
  %.mux = select i1 %or.cond16.i.i, i32 0, i32 3
  br i1 %brmerge, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body4_crit_edge

if.else.i.i.do.body4_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.else.i.i.do.body4_crit_edge, %if.then.i.i.do.body4_crit_edge
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %active_list.i.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 12
  %8 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_list.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.body4
  %.pn.in.in.i.i = phi ptr [ %queue.i.i, %do.body4 ], [ %.pn.in.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.in.i.i = load ptr, ptr %.pn.in.in.i.i, align 4
  %cmp.not.i.i74 = icmp eq ptr %.pn.in.i.i, %queue.i.i
  br i1 %cmp.not.i.i74, label %for.cond.i.i.for.cond23.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.cond23.i.i_crit_edge:            ; preds = %for.cond.i.i
  br label %for.cond23.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %txd.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -100
  %11 = ptrtoint ptr %txd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txd.i.i, align 4
  %cmp8.i.i = icmp eq i32 %12, %cookie
  br i1 %cmp8.i.i, label %for.body.i.i.atc_get_desc_by_cookie.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.atc_get_desc_by_cookie.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_get_desc_by_cookie.exit.i

for.cond23.i.i:                                   ; preds = %for.body28.i.i.for.cond23.i.i_crit_edge, %for.cond.i.i.for.cond23.i.i_crit_edge
  %.pn56.in.in.i.i = phi ptr [ %.pn56.in.i.i, %for.body28.i.i.for.cond23.i.i_crit_edge ], [ %active_list.i.i, %for.cond.i.i.for.cond23.i.i_crit_edge ]
  %13 = ptrtoint ptr %.pn56.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn56.in.i.i = load ptr, ptr %.pn56.in.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %.pn56.in.i.i, %active_list.i.i
  br i1 %cmp26.not.i.i, label %for.cond23.i.i.atc_get_bytes_left.exit.thread_crit_edge, label %for.body28.i.i

for.cond23.i.i.atc_get_bytes_left.exit.thread_crit_edge: ; preds = %for.cond23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_get_bytes_left.exit.thread

for.body28.i.i:                                   ; preds = %for.cond23.i.i
  %txd29.i.i = getelementptr i8, ptr %.pn56.in.i.i, i32 -100
  %14 = ptrtoint ptr %txd29.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txd29.i.i, align 4
  %cmp31.i.i = icmp eq i32 %15, %cookie
  br i1 %cmp31.i.i, label %for.body28.i.i.atc_get_desc_by_cookie.exit.i_crit_edge, label %for.body28.i.i.for.cond23.i.i_crit_edge

for.body28.i.i.for.cond23.i.i_crit_edge:          ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.i.i

for.body28.i.i.atc_get_desc_by_cookie.exit.i_crit_edge: ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_get_desc_by_cookie.exit.i

atc_get_desc_by_cookie.exit.i:                    ; preds = %for.body28.i.i.atc_get_desc_by_cookie.exit.i_crit_edge, %for.body.i.i.atc_get_desc_by_cookie.exit.i_crit_edge
  %.pn.in.i.pn.i = phi ptr [ %.pn56.in.i.i, %for.body28.i.i.atc_get_desc_by_cookie.exit.i_crit_edge ], [ %.pn.in.i.i, %for.body.i.i.atc_get_desc_by_cookie.exit.i_crit_edge ]
  %retval.0.i.i75 = getelementptr i8, ptr %.pn.in.i.pn.i, i32 -128
  %cmp.i = icmp eq ptr %retval.0.i.i75, null
  br i1 %cmp.i, label %atc_get_desc_by_cookie.exit.i.atc_get_bytes_left.exit.thread_crit_edge, label %if.else.i

atc_get_desc_by_cookie.exit.i.atc_get_bytes_left.exit.thread_crit_edge: ; preds = %atc_get_desc_by_cookie.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_get_bytes_left.exit.thread

if.else.i:                                        ; preds = %atc_get_desc_by_cookie.exit.i
  %cmp3.not.i = icmp eq ptr %.pn.in.i.pn.i, %9
  br i1 %cmp3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %total_len.i = getelementptr i8, ptr %.pn.in.i.pn.i, i32 12
  %16 = ptrtoint ptr %total_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_len.i, align 4
  br label %atc_get_bytes_left.exit

if.end5.i:                                        ; preds = %if.else.i
  %total_len6.i = getelementptr i8, ptr %9, i32 12
  %18 = ptrtoint ptr %total_len6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_len6.i, align 4
  %dscr7.i = getelementptr i8, ptr %9, i32 -112
  %20 = ptrtoint ptr %dscr7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dscr7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i76 = icmp eq i32 %21, 0
  %ch_regs63.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 2
  %22 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_regs63.i, align 4
  br i1 %tobool.not.i76, label %if.else62.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  %25 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %28 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp17.i = icmp eq i32 %30, %24
  br i1 %cmp17.i, label %if.then8.i.if.end33.i_crit_edge, label %for.inc.i, !prof !312

if.then8.i.if.end33.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.i:                                        ; preds = %if.then8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %31 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %32, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %34 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.1.i = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.1.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %30)
  %cmp17.1.i = icmp eq i32 %36, %30
  br i1 %cmp17.1.i, label %for.inc.i.if.end33.i_crit_edge, label %for.inc.1.i, !prof !312

for.inc.i.if.end33.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.1.i:                                      ; preds = %for.inc.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %37 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.1.i = getelementptr i8, ptr %38, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.1.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %40 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.2.i = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.2.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %36)
  %cmp17.2.i = icmp eq i32 %42, %36
  br i1 %cmp17.2.i, label %for.inc.1.i.if.end33.i_crit_edge, label %for.inc.2.i, !prof !312

for.inc.1.i.if.end33.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %43 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.2.i = getelementptr i8, ptr %44, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.2.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %46 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.3.i = getelementptr i8, ptr %47, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.3.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %42)
  %cmp17.3.i = icmp eq i32 %48, %42
  br i1 %cmp17.3.i, label %for.inc.2.i.if.end33.i_crit_edge, label %for.inc.3.i, !prof !312

for.inc.2.i.if.end33.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %49 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.3.i = getelementptr i8, ptr %50, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.3.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %52 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.4.i = getelementptr i8, ptr %53, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.4.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %48)
  %cmp17.4.i = icmp eq i32 %54, %48
  br i1 %cmp17.4.i, label %for.inc.3.i.if.end33.i_crit_edge, label %for.inc.4.i, !prof !312

for.inc.3.i.if.end33.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %55 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.4.i = getelementptr i8, ptr %56, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.4.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %58 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.5.i = getelementptr i8, ptr %59, i32 8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.5.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %54)
  %cmp17.5.i = icmp eq i32 %60, %54
  br i1 %cmp17.5.i, label %for.inc.4.i.if.end33.i_crit_edge, label %for.inc.5.i, !prof !312

for.inc.4.i.if.end33.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %61 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.5.i = getelementptr i8, ptr %62, i32 12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.5.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %64 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.6.i = getelementptr i8, ptr %65, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.6.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %60)
  %cmp17.6.i = icmp eq i32 %66, %60
  br i1 %cmp17.6.i, label %for.inc.5.i.if.end33.i_crit_edge, label %for.inc.6.i, !prof !312

for.inc.5.i.if.end33.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %67 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.6.i = getelementptr i8, ptr %68, i32 12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.6.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %70 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.7.i = getelementptr i8, ptr %71, i32 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.7.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %66)
  %cmp17.7.i = icmp eq i32 %72, %66
  br i1 %cmp17.7.i, label %for.inc.6.i.if.end33.i_crit_edge, label %for.inc.7.i, !prof !312

for.inc.6.i.if.end33.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %73 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.7.i = getelementptr i8, ptr %74, i32 12
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.7.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %76 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.8.i = getelementptr i8, ptr %77, i32 8
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.8.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %72)
  %cmp17.8.i = icmp eq i32 %78, %72
  br i1 %cmp17.8.i, label %for.inc.7.i.if.end33.i_crit_edge, label %for.inc.8.i, !prof !312

for.inc.7.i.if.end33.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %79 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.8.i = getelementptr i8, ptr %80, i32 12
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.8.i) #10, !srcloc !304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  %82 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr15.9.i = getelementptr i8, ptr %83, i32 8
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.9.i) #10, !srcloc !304
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %78)
  %cmp17.9.i = icmp eq i32 %84, %78
  br i1 %cmp17.9.i, label %for.inc.8.i.if.end33.i_crit_edge, label %for.inc.9.i, !prof !312

for.inc.8.i.if.end33.i_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  %85 = ptrtoint ptr %ch_regs63.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ch_regs63.i, align 4
  %add.ptr23.9.i = getelementptr i8, ptr %86, i32 12
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.9.i) #10, !srcloc !304
  br label %atc_get_bytes_left.exit.thread

if.end33.i:                                       ; preds = %for.inc.8.i.if.end33.i_crit_edge, %for.inc.7.i.if.end33.i_crit_edge, %for.inc.6.i.if.end33.i_crit_edge, %for.inc.5.i.if.end33.i_crit_edge, %for.inc.4.i.if.end33.i_crit_edge, %for.inc.3.i.if.end33.i_crit_edge, %for.inc.2.i.if.end33.i_crit_edge, %for.inc.1.i.if.end33.i_crit_edge, %for.inc.i.if.end33.i_crit_edge, %if.then8.i.if.end33.i_crit_edge
  %dscr.0134.lcssa.i = phi i32 [ %24, %if.then8.i.if.end33.i_crit_edge ], [ %30, %for.inc.i.if.end33.i_crit_edge ], [ %36, %for.inc.1.i.if.end33.i_crit_edge ], [ %42, %for.inc.2.i.if.end33.i_crit_edge ], [ %48, %for.inc.3.i.if.end33.i_crit_edge ], [ %54, %for.inc.4.i.if.end33.i_crit_edge ], [ %60, %for.inc.5.i.if.end33.i_crit_edge ], [ %66, %for.inc.6.i.if.end33.i_crit_edge ], [ %72, %for.inc.7.i.if.end33.i_crit_edge ], [ %78, %for.inc.8.i.if.end33.i_crit_edge ]
  %ctrla.0133.lcssa.i = phi i32 [ %27, %if.then8.i.if.end33.i_crit_edge ], [ %33, %for.inc.i.if.end33.i_crit_edge ], [ %39, %for.inc.1.i.if.end33.i_crit_edge ], [ %45, %for.inc.2.i.if.end33.i_crit_edge ], [ %51, %for.inc.3.i.if.end33.i_crit_edge ], [ %57, %for.inc.4.i.if.end33.i_crit_edge ], [ %63, %for.inc.5.i.if.end33.i_crit_edge ], [ %69, %for.inc.6.i.if.end33.i_crit_edge ], [ %75, %for.inc.7.i.if.end33.i_crit_edge ], [ %81, %for.inc.8.i.if.end33.i_crit_edge ]
  %88 = ptrtoint ptr %dscr7.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dscr7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %dscr.0134.lcssa.i)
  %cmp36.i = icmp eq i32 %89, %dscr.0134.lcssa.i
  br i1 %cmp36.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %ctrla.0133.lcssa.i, 65535
  %shr.i.i = lshr i32 %ctrla.0133.lcssa.i, 24
  %and1.i.i = and i32 %shr.i.i, 3
  %shl.i.i = shl nuw nsw i32 %and.i.i, %and1.i.i
  %sub.i.i = sub i32 %19, %shl.i.i
  br label %atc_get_bytes_left.exit

if.end39.i:                                       ; preds = %if.end33.i
  %len.i = getelementptr i8, ptr %9, i32 8
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %19, %91
  %tx_list.i = getelementptr i8, ptr %9, i32 -108
  %92 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn136.i = load ptr, ptr %tx_list.i, align 4
  %cmp43.not137.i = icmp eq ptr %.pn136.i, %tx_list.i
  br i1 %cmp43.not137.i, label %if.end39.i.for.end60.i_crit_edge, label %if.end39.i.for.body46.i_crit_edge

if.end39.i.for.body46.i_crit_edge:                ; preds = %if.end39.i
  br label %for.body46.i

if.end39.i.for.end60.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end60.i

for.body46.i:                                     ; preds = %if.end51.i.for.body46.i_crit_edge, %if.end39.i.for.body46.i_crit_edge
  %.pn139.i = phi ptr [ %.pn.i, %if.end51.i.for.body46.i_crit_edge ], [ %.pn136.i, %if.end39.i.for.body46.i_crit_edge ]
  %ret.0138.i = phi i32 [ %sub53.i, %if.end51.i.for.body46.i_crit_edge ], [ %sub.i, %if.end39.i.for.body46.i_crit_edge ]
  %dscr48.i = getelementptr i8, ptr %.pn139.i, i32 -112
  %93 = ptrtoint ptr %dscr48.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dscr48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %dscr.0134.lcssa.i)
  %cmp49.i = icmp eq i32 %94, %dscr.0134.lcssa.i
  br i1 %cmp49.i, label %for.body46.i.for.end60.i_crit_edge, label %if.end51.i

for.body46.i.for.end60.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end60.i

if.end51.i:                                       ; preds = %for.body46.i
  %len52.i = getelementptr i8, ptr %.pn139.i, i32 8
  %95 = ptrtoint ptr %len52.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len52.i, align 4
  %sub53.i = sub i32 %ret.0138.i, %96
  %97 = ptrtoint ptr %.pn139.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn.i = load ptr, ptr %.pn139.i, align 4
  %cmp43.not.i = icmp eq ptr %.pn.i, %tx_list.i
  br i1 %cmp43.not.i, label %if.end51.i.for.end60.i_crit_edge, label %if.end51.i.for.body46.i_crit_edge

if.end51.i.for.body46.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46.i

if.end51.i.for.end60.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end60.i

for.end60.i:                                      ; preds = %if.end51.i.for.end60.i_crit_edge, %for.body46.i.for.end60.i_crit_edge, %if.end39.i.for.end60.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ %sub.i, %if.end39.i.for.end60.i_crit_edge ], [ %sub53.i, %if.end51.i.for.end60.i_crit_edge ], [ %ret.0138.i, %for.body46.i.for.end60.i_crit_edge ]
  %and.i106.i = and i32 %ctrla.0133.lcssa.i, 65535
  %shr.i107.i = lshr i32 %ctrla.0133.lcssa.i, 24
  %and1.i108.i = and i32 %shr.i107.i, 3
  %shl.i109.i = shl nuw nsw i32 %and.i106.i, %and1.i108.i
  %sub.i110.i = sub i32 %ret.0.lcssa.i, %shl.i109.i
  br label %atc_get_bytes_left.exit

if.else62.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr64.i = getelementptr i8, ptr %23, i32 12
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #10, !srcloc !304
  %and.i111.i = and i32 %98, 65535
  %shr.i112.i = lshr i32 %98, 24
  %and1.i113.i = and i32 %shr.i112.i, 3
  %shl.i114.i = shl nuw nsw i32 %and.i111.i, %and1.i113.i
  %sub.i115.i = sub i32 %19, %shl.i114.i
  br label %atc_get_bytes_left.exit

atc_get_bytes_left.exit.thread:                   ; preds = %for.inc.9.i, %atc_get_desc_by_cookie.exit.i.atc_get_bytes_left.exit.thread_crit_edge, %for.cond23.i.i.atc_get_bytes_left.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  br label %do.body17

atc_get_bytes_left.exit:                          ; preds = %if.else62.i, %for.end60.i, %if.then37.i, %if.then4.i
  %retval.0.i77 = phi i32 [ %17, %if.then4.i ], [ %sub.i.i, %if.then37.i ], [ %sub.i110.i, %for.end60.i ], [ %sub.i115.i, %if.else62.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i77)
  %cmp12 = icmp slt i32 %retval.0.i77, 0
  br i1 %cmp12, label %atc_get_bytes_left.exit.do.body17_crit_edge, label %dma_set_residue.exit, !prof !311

atc_get_bytes_left.exit.do.body17_crit_edge:      ; preds = %atc_get_bytes_left.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.body17:                                        ; preds = %atc_get_bytes_left.exit.do.body17_crit_edge, %atc_get_bytes_left.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_tx_status.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_tx_status, %cleanup)) #10
          to label %if.then29 [label %cleanup], !srcloc !310

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %100, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_tx_status.__UNIQUE_ID_ddebug270, ptr noundef %device.i, ptr noundef nonnull @.str.66) #10
  br label %cleanup

dma_set_residue.exit:                             ; preds = %atc_get_bytes_left.exit
  call void @__sanitizer_cov_trace_pc() #12
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %101 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i77, ptr %residue1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_tx_status.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_tx_status, %cleanup)) #10
          to label %if.then49 [label %cleanup], !srcloc !310

if.then49:                                        ; preds = %dma_set_residue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i81 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %102 = ptrtoint ptr %dev.i81 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i81, align 4
  %device.i82 = getelementptr inbounds %struct.dma_chan_dev, ptr %103, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_tx_status.__UNIQUE_ID_ddebug271, ptr noundef %device.i82, ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef %cookie, i32 noundef %retval.0.i77) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %dma_set_residue.exit, %if.then29, %do.body17, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then29 ], [ 1, %if.then49 ], [ %.mux90, %if.then.i.i.cleanup_crit_edge ], [ %.mux, %if.else.i.i.cleanup_crit_edge ], [ 3, %do.body17 ], [ 1, %dma_set_residue.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atc_issue_pending(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_issue_pending.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_issue_pending, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_issue_pending.__UNIQUE_ID_ddebug272, ptr noundef %device.i, ptr noundef nonnull @.str.69) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atc_advance_work(ptr noundef %chan)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_interleaved(ptr noundef %chan, ptr noundef %xt, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xt, null
  br i1 %tobool.not, label %entry.cleanup70_crit_edge, label %lor.lhs.false, !prof !311

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

lor.lhs.false:                                    ; preds = %entry
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %0 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %lor.rhs, label %lor.lhs.false.cleanup70_crit_edge, !prof !312

lor.lhs.false.cleanup70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

lor.rhs:                                          ; preds = %lor.lhs.false
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %2 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.rhs.cleanup70_crit_edge, label %if.end, !prof !311

lor.rhs.cleanup70_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.end:                                           ; preds = %lor.rhs
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef nonnull %xt, ptr noundef %dst_start, i32 noundef 1, i32 noundef %3, i32 noundef %flags) #15
  %6 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9221.not = icmp eq i32 %7, 0
  br i1 %cmp9221.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %8 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sgl, align 4
  %dst_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %dst_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %dst_icg.i138 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 2
  %icg.i139 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %src_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %src_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %src_icg.i160 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0223 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.data_chunk, ptr %sgl, i32 %i.0223
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp15.not = icmp eq i32 %11, %9
  br i1 %cmp15.not, label %lor.lhs.false16, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false16:                                  ; preds = %for.body
  %12 = ptrtoint ptr %dst_inc.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dst_inc.i, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %lor.lhs.false16.if.end7.i.i146_crit_edge, label %if.then.i.i

lor.lhs.false16.if.end7.i.i146_crit_edge:         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i146

if.then.i.i:                                      ; preds = %lor.lhs.false16
  %dst_icg.i = getelementptr %struct.data_chunk, ptr %sgl, i32 %i.0223, i32 2
  %14 = ptrtoint ptr %dst_icg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_icg.i, align 4
  %icg.i = getelementptr %struct.data_chunk, ptr %sgl, i32 %i.0223, i32 1
  %16 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %icg.i, align 4
  %18 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dst_sgl.i, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.i = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp ne i32 %15, 0
  %brmerge.i.i = or i1 %tobool2.not.i.i, %tobool1.i
  %dir_icg.mux.i.i = select i1 %tobool2.not.i.i, i32 %15, i32 %17
  %spec.select = select i1 %brmerge.i.i, i32 %dir_icg.mux.i.i, i32 0
  %20 = ptrtoint ptr %dst_icg.i138 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_icg.i138, align 4
  %22 = ptrtoint ptr %icg.i139 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %icg.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i.i142 = icmp ne i32 %21, 0
  %brmerge.i.i143 = or i1 %tobool2.not.i.i142, %tobool1.i
  %dir_icg.mux.i.i144 = select i1 %tobool2.not.i.i142, i32 %21, i32 %23
  br i1 %brmerge.i.i143, label %if.then.i.i.dmaengine_get_dst_icg.exit148_crit_edge, label %if.then.i.i.if.end7.i.i146_crit_edge

if.then.i.i.if.end7.i.i146_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i146

if.then.i.i.dmaengine_get_dst_icg.exit148_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_get_dst_icg.exit148

if.end7.i.i146:                                   ; preds = %if.then.i.i.if.end7.i.i146_crit_edge, %lor.lhs.false16.if.end7.i.i146_crit_edge
  %retval.0.i.i207 = phi i32 [ %spec.select, %if.then.i.i.if.end7.i.i146_crit_edge ], [ 0, %lor.lhs.false16.if.end7.i.i146_crit_edge ]
  br label %dmaengine_get_dst_icg.exit148

dmaengine_get_dst_icg.exit148:                    ; preds = %if.end7.i.i146, %if.then.i.i.dmaengine_get_dst_icg.exit148_crit_edge
  %retval.0.i.i208 = phi i32 [ %retval.0.i.i207, %if.end7.i.i146 ], [ %spec.select, %if.then.i.i.dmaengine_get_dst_icg.exit148_crit_edge ]
  %retval.0.i.i147 = phi i32 [ 0, %if.end7.i.i146 ], [ %dir_icg.mux.i.i144, %if.then.i.i.dmaengine_get_dst_icg.exit148_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i208, i32 %retval.0.i.i147)
  %cmp19.not = icmp eq i32 %retval.0.i.i208, %retval.0.i.i147
  br i1 %cmp19.not, label %lor.lhs.false20, label %dmaengine_get_dst_icg.exit148.cleanup_crit_edge

dmaengine_get_dst_icg.exit148.cleanup_crit_edge:  ; preds = %dmaengine_get_dst_icg.exit148
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false20:                                  ; preds = %dmaengine_get_dst_icg.exit148
  %24 = ptrtoint ptr %src_inc.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %src_inc.i, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i149 = icmp eq i8 %25, 0
  br i1 %tobool.not.i149, label %lor.lhs.false20.if.end7.i.i168_crit_edge, label %if.then.i.i155

lor.lhs.false20.if.end7.i.i168_crit_edge:         ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i168

if.then.i.i155:                                   ; preds = %lor.lhs.false20
  %src_icg.i = getelementptr %struct.data_chunk, ptr %sgl, i32 %i.0223, i32 3
  %26 = ptrtoint ptr %src_icg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_icg.i, align 4
  %icg.i150 = getelementptr %struct.data_chunk, ptr %sgl, i32 %i.0223, i32 1
  %28 = ptrtoint ptr %icg.i150 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %icg.i150, align 4
  %30 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %src_sgl.i, align 2, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.i151 = icmp ne i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.i.i152 = icmp ne i32 %27, 0
  %brmerge.i.i153 = or i1 %tobool2.not.i.i152, %tobool1.i151
  %dir_icg.mux.i.i154 = select i1 %tobool2.not.i.i152, i32 %27, i32 %29
  %spec.select219 = select i1 %brmerge.i.i153, i32 %dir_icg.mux.i.i154, i32 0
  %32 = ptrtoint ptr %src_icg.i160 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_icg.i160, align 4
  %34 = ptrtoint ptr %icg.i139 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %icg.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i.i164 = icmp ne i32 %33, 0
  %brmerge.i.i165 = or i1 %tobool2.not.i.i164, %tobool1.i151
  %dir_icg.mux.i.i166 = select i1 %tobool2.not.i.i164, i32 %33, i32 %35
  br i1 %brmerge.i.i165, label %if.then.i.i155.dmaengine_get_src_icg.exit170_crit_edge, label %if.then.i.i155.if.end7.i.i168_crit_edge

if.then.i.i155.if.end7.i.i168_crit_edge:          ; preds = %if.then.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i168

if.then.i.i155.dmaengine_get_src_icg.exit170_crit_edge: ; preds = %if.then.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_get_src_icg.exit170

if.end7.i.i168:                                   ; preds = %if.then.i.i155.if.end7.i.i168_crit_edge, %lor.lhs.false20.if.end7.i.i168_crit_edge
  %retval.0.i.i157212 = phi i32 [ %spec.select219, %if.then.i.i155.if.end7.i.i168_crit_edge ], [ 0, %lor.lhs.false20.if.end7.i.i168_crit_edge ]
  br label %dmaengine_get_src_icg.exit170

dmaengine_get_src_icg.exit170:                    ; preds = %if.end7.i.i168, %if.then.i.i155.dmaengine_get_src_icg.exit170_crit_edge
  %retval.0.i.i157213 = phi i32 [ %retval.0.i.i157212, %if.end7.i.i168 ], [ %spec.select219, %if.then.i.i155.dmaengine_get_src_icg.exit170_crit_edge ]
  %retval.0.i.i169 = phi i32 [ 0, %if.end7.i.i168 ], [ %dir_icg.mux.i.i166, %if.then.i.i155.dmaengine_get_src_icg.exit170_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i157213, i32 %retval.0.i.i169)
  %cmp23.not = icmp eq i32 %retval.0.i.i157213, %retval.0.i.i169
  br i1 %cmp23.not, label %for.inc, label %dmaengine_get_src_icg.exit170.cleanup_crit_edge

dmaengine_get_src_icg.exit170.cleanup_crit_edge:  ; preds = %dmaengine_get_src_icg.exit170
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_get_src_icg.exit170.cleanup_crit_edge, %dmaengine_get_dst_icg.exit148.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %device.i172 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i172, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71) #15
  br label %cleanup70

for.inc:                                          ; preds = %dmaengine_get_src_icg.exit170
  %add = add i32 %9, %len.0222
  %inc = add nuw i32 %i.0223, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %38 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xt, align 4
  %40 = ptrtoint ptr %dst_start to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_start, align 4
  %or.i = or i32 %39, %len.0.lcssa
  %or1.i = or i32 %or.i, %41
  %and.i = and i32 %or1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i173 = icmp eq i32 %and.i, 0
  %and4.i = and i32 %or1.i, 1
  %42 = xor i32 %and4.i, 1
  %width.0.i = select i1 %tobool.not.i173, i32 2, i32 %42
  %shr = lshr i32 %len.0.lcssa, %width.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr)
  %cmp34 = icmp ugt i32 %shr, 65535
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %device.i175 = getelementptr inbounds %struct.dma_chan_dev, ptr %44, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i175, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.71) #15
  br label %cleanup70

if.end40:                                         ; preds = %for.end
  %call42 = tail call fastcc ptr @atc_desc_get(ptr noundef %chan)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end47, label %if.end49

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %device.i177 = getelementptr inbounds %struct.dma_chan_dev, ptr %46, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i177, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.71) #15
  br label %cleanup70

if.end49:                                         ; preds = %if.end40
  %or = mul nuw nsw i32 %width.0.i, 285212672
  %47 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %xt, align 4
  %49 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %call42, align 4
  %50 = ptrtoint ptr %dst_start to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dst_start, align 4
  %daddr = getelementptr inbounds %struct.at_lli, ptr %call42, i32 0, i32 1
  %52 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %daddr, align 4
  %or53 = or i32 %or, %shr
  %ctrla55 = getelementptr inbounds %struct.at_lli, ptr %call42, i32 0, i32 2
  %53 = ptrtoint ptr %ctrla55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or53, ptr %ctrla55, align 4
  %ctrlb57 = getelementptr inbounds %struct.at_lli, ptr %call42, i32 0, i32 3
  %54 = ptrtoint ptr %ctrlb57 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1073746176, ptr %ctrlb57, align 4
  %55 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sgl, align 4
  %shr59 = lshr i32 %56, %width.0.i
  %boundary = getelementptr inbounds %struct.at_desc, ptr %call42, i32 0, i32 6
  %57 = ptrtoint ptr %boundary to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr59, ptr %boundary, align 4
  %dst_inc.i178 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %58 = ptrtoint ptr %dst_inc.i178 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dst_inc.i178, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i179 = icmp eq i8 %59, 0
  br i1 %tobool.not.i179, label %if.end49.if.end7.i.i188_crit_edge, label %if.then.i.i187

if.end49.if.end7.i.i188_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i188

if.then.i.i187:                                   ; preds = %if.end49
  %dst_icg.i180 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 2
  %60 = ptrtoint ptr %dst_icg.i180 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dst_icg.i180, align 4
  %icg.i181 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %62 = ptrtoint ptr %icg.i181 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %icg.i181, align 4
  %dst_sgl.i182 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %64 = ptrtoint ptr %dst_sgl.i182 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dst_sgl.i182, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool1.i183 = icmp ne i8 %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool2.not.i.i184 = icmp ne i32 %61, 0
  %brmerge.i.i185 = or i1 %tobool2.not.i.i184, %tobool1.i183
  %dir_icg.mux.i.i186 = select i1 %tobool2.not.i.i184, i32 %61, i32 %63
  br i1 %brmerge.i.i185, label %if.then.i.i187.dmaengine_get_dst_icg.exit190_crit_edge, label %if.then.i.i187.if.end7.i.i188_crit_edge

if.then.i.i187.if.end7.i.i188_crit_edge:          ; preds = %if.then.i.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i188

if.then.i.i187.dmaengine_get_dst_icg.exit190_crit_edge: ; preds = %if.then.i.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_get_dst_icg.exit190

if.end7.i.i188:                                   ; preds = %if.then.i.i187.if.end7.i.i188_crit_edge, %if.end49.if.end7.i.i188_crit_edge
  br label %dmaengine_get_dst_icg.exit190

dmaengine_get_dst_icg.exit190:                    ; preds = %if.end7.i.i188, %if.then.i.i187.dmaengine_get_dst_icg.exit190_crit_edge
  %retval.0.i.i189 = phi i32 [ 0, %if.end7.i.i188 ], [ %dir_icg.mux.i.i186, %if.then.i.i187.dmaengine_get_dst_icg.exit190_crit_edge ]
  %shr61 = lshr i32 %retval.0.i.i189, %width.0.i
  %add62 = add i32 %shr61, 1
  %dst_hole = getelementptr inbounds %struct.at_desc, ptr %call42, i32 0, i32 7
  %66 = ptrtoint ptr %dst_hole to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add62, ptr %dst_hole, align 4
  %src_inc.i191 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %67 = ptrtoint ptr %src_inc.i191 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %src_inc.i191, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i192 = icmp eq i8 %68, 0
  br i1 %tobool.not.i192, label %dmaengine_get_dst_icg.exit190.if.end7.i.i201_crit_edge, label %if.then.i.i200

dmaengine_get_dst_icg.exit190.if.end7.i.i201_crit_edge: ; preds = %dmaengine_get_dst_icg.exit190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i201

if.then.i.i200:                                   ; preds = %dmaengine_get_dst_icg.exit190
  %src_icg.i193 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 3
  %69 = ptrtoint ptr %src_icg.i193 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %src_icg.i193, align 4
  %icg.i194 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %71 = ptrtoint ptr %icg.i194 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %icg.i194, align 4
  %src_sgl.i195 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %73 = ptrtoint ptr %src_sgl.i195 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %src_sgl.i195, align 2, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool1.i196 = icmp ne i8 %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool2.not.i.i197 = icmp ne i32 %70, 0
  %brmerge.i.i198 = or i1 %tobool2.not.i.i197, %tobool1.i196
  %dir_icg.mux.i.i199 = select i1 %tobool2.not.i.i197, i32 %70, i32 %72
  br i1 %brmerge.i.i198, label %if.then.i.i200.dmaengine_get_src_icg.exit203_crit_edge, label %if.then.i.i200.if.end7.i.i201_crit_edge

if.then.i.i200.if.end7.i.i201_crit_edge:          ; preds = %if.then.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i201

if.then.i.i200.dmaengine_get_src_icg.exit203_crit_edge: ; preds = %if.then.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_get_src_icg.exit203

if.end7.i.i201:                                   ; preds = %if.then.i.i200.if.end7.i.i201_crit_edge, %dmaengine_get_dst_icg.exit190.if.end7.i.i201_crit_edge
  br label %dmaengine_get_src_icg.exit203

dmaengine_get_src_icg.exit203:                    ; preds = %if.end7.i.i201, %if.then.i.i200.dmaengine_get_src_icg.exit203_crit_edge
  %retval.0.i.i202 = phi i32 [ 0, %if.end7.i.i201 ], [ %dir_icg.mux.i.i199, %if.then.i.i200.dmaengine_get_src_icg.exit203_crit_edge ]
  %shr64 = lshr i32 %retval.0.i.i202, %width.0.i
  %add65 = add i32 %shr64, 1
  %src_hole = getelementptr inbounds %struct.at_desc, ptr %call42, i32 0, i32 8
  %75 = ptrtoint ptr %src_hole to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add65, ptr %src_hole, align 4
  %txd = getelementptr inbounds %struct.at_desc, ptr %call42, i32 0, i32 2
  %76 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -16, ptr %txd, align 4
  %len66 = getelementptr inbounds %struct.at_desc, ptr %call42, i32 0, i32 4
  %77 = ptrtoint ptr %len66 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %len.0.lcssa, ptr %len66, align 4
  %total_len = getelementptr inbounds %struct.at_desc, ptr %call42, i32 0, i32 5
  %78 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %len.0.lcssa, ptr %total_len, align 4
  %79 = ptrtoint ptr %ctrlb57 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1118464, ptr %ctrlb57, align 4
  %dscr.i = getelementptr inbounds %struct.at_lli, ptr %call42, i32 0, i32 4
  %80 = ptrtoint ptr %dscr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %dscr.i, align 4
  %flags68 = getelementptr inbounds %struct.at_desc, ptr %call42, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %flags68 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %flags, ptr %flags68, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %dmaengine_get_src_icg.exit203, %do.end47, %do.end38, %cleanup, %lor.rhs.cleanup70_crit_edge, %lor.lhs.false.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.2 = phi ptr [ null, %cleanup ], [ null, %do.end38 ], [ %txd, %dmaengine_get_src_icg.exit203 ], [ null, %do.end47 ], [ null, %lor.rhs.cleanup70_crit_edge ], [ null, %lor.lhs.false.cleanup70_crit_edge ], [ null, %entry.cleanup70_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #4 align 64 {
entry:
  %dest.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  %1 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src, ptr %src.addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memcpy.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memcpy, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memcpy.__UNIQUE_ID_ddebug249, ptr noundef %device.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %dest.addr, ptr noundef nonnull %src.addr, i32 noundef %len, i32 noundef %flags) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not = icmp eq i32 %len, 0
  br i1 %tobool6.not, label %do.body16, label %for.body.preheader, !prof !311

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memcpy.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memcpy, %cleanup)) #10
          to label %if.then30 [label %cleanup], !srcloc !310

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i100 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i100 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i100, align 4
  %device.i101 = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memcpy.__UNIQUE_ID_ddebug250, ptr noundef %device.i101, ptr noundef nonnull @.str.86) #10
  br label %cleanup

for.body.preheader:                               ; preds = %do.end
  %6 = ptrtoint ptr %src.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src.addr, align 4
  %8 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dest.addr, align 4
  %or.i = or i32 %7, %len
  %or1.i = or i32 %or.i, %9
  %and.i = and i32 %or1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %or1.i, 1
  %10 = xor i32 %and4.i, 1
  %width.0.i = select i1 %tobool.not.i, i32 2, i32 %10
  %or = mul nuw nsw i32 %width.0.i, 285212672
  br label %for.body

for.body:                                         ; preds = %atc_desc_chain.exit.for.body_crit_edge, %for.body.preheader
  %offset.0117 = phi i32 [ %add54, %atc_desc_chain.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %prev.0116 = phi ptr [ %call40, %atc_desc_chain.exit.for.body_crit_edge ], [ null, %for.body.preheader ]
  %first.0115 = phi ptr [ %first.1, %atc_desc_chain.exit.for.body_crit_edge ], [ null, %for.body.preheader ]
  %call40 = call fastcc ptr @atc_desc_get(ptr noundef %chan)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %err_desc_get, label %if.end43

if.end43:                                         ; preds = %for.body
  %sub = sub i32 %len, %offset.0117
  %shr = lshr i32 %sub, %width.0.i
  %11 = call i32 @llvm.umin.i32(i32 %shr, i32 65535)
  %12 = ptrtoint ptr %src.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src.addr, align 4
  %add = add i32 %13, %offset.0117
  %14 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %call40, align 4
  %15 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dest.addr, align 4
  %add44 = add i32 %16, %offset.0117
  %daddr = getelementptr inbounds %struct.at_lli, ptr %call40, i32 0, i32 1
  %17 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add44, ptr %daddr, align 4
  %or46 = or i32 %11, %or
  %ctrla48 = getelementptr inbounds %struct.at_lli, ptr %call40, i32 0, i32 2
  %18 = ptrtoint ptr %ctrla48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or46, ptr %ctrla48, align 4
  %ctrlb50 = getelementptr inbounds %struct.at_lli, ptr %call40, i32 0, i32 3
  %19 = ptrtoint ptr %ctrlb50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1073741824, ptr %ctrlb50, align 4
  %txd = getelementptr inbounds %struct.at_desc, ptr %call40, i32 0, i32 2
  %20 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %txd, align 4
  %shl51 = shl i32 %11, %width.0.i
  %len52 = getelementptr inbounds %struct.at_desc, ptr %call40, i32 0, i32 4
  %21 = ptrtoint ptr %len52 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl51, ptr %len52, align 4
  %tobool.not.i102 = icmp eq ptr %first.0115, null
  br i1 %tobool.not.i102, label %if.end43.atc_desc_chain.exit_crit_edge, label %if.else.i

if.end43.atc_desc_chain.exit_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_desc_chain.exit

if.else.i:                                        ; preds = %if.end43
  %phys.i = getelementptr inbounds %struct.at_desc, ptr %call40, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys.i, align 4
  %dscr.i = getelementptr inbounds %struct.at_lli, ptr %prev.0116, i32 0, i32 4
  %24 = ptrtoint ptr %dscr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dscr.i, align 4
  %desc_node.i = getelementptr inbounds %struct.at_desc, ptr %call40, i32 0, i32 3
  %tx_list.i = getelementptr inbounds %struct.at_desc, ptr %first.0115, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.at_desc, ptr %first.0115, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node.i, ptr noundef %26, ptr noundef %tx_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.atc_desc_chain.exit_crit_edge

if.else.i.atc_desc_chain.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_desc_chain.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %desc_node.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %desc_node.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx_list.i, ptr %desc_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.at_desc, ptr %call40, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %desc_node.i, ptr %26, align 4
  br label %atc_desc_chain.exit

atc_desc_chain.exit:                              ; preds = %if.end.i.i.i, %if.else.i.atc_desc_chain.exit_crit_edge, %if.end43.atc_desc_chain.exit_crit_edge
  %first.1 = phi ptr [ %first.0115, %if.end.i.i.i ], [ %first.0115, %if.else.i.atc_desc_chain.exit_crit_edge ], [ %call40, %if.end43.atc_desc_chain.exit_crit_edge ]
  %add54 = add i32 %shl51, %offset.0117
  %cmp = icmp ult i32 %add54, %len
  br i1 %cmp, label %atc_desc_chain.exit.for.body_crit_edge, label %for.end

atc_desc_chain.exit.for.body_crit_edge:           ; preds = %atc_desc_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %atc_desc_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  %txd55 = getelementptr inbounds %struct.at_desc, ptr %first.1, i32 0, i32 2
  %31 = ptrtoint ptr %txd55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -16, ptr %txd55, align 4
  %total_len = getelementptr inbounds %struct.at_desc, ptr %first.1, i32 0, i32 5
  %32 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %len, ptr %total_len, align 4
  %ctrlb1.i = getelementptr inbounds %struct.at_lli, ptr %call40, i32 0, i32 3
  %33 = ptrtoint ptr %ctrlb1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrlb1.i, align 4
  %and.i103 = and i32 %34, -1074855937
  %or.i104 = or i32 %and.i103, 1114112
  store i32 %or.i104, ptr %ctrlb1.i, align 4
  %dscr.i105 = getelementptr inbounds %struct.at_lli, ptr %call40, i32 0, i32 4
  %35 = ptrtoint ptr %dscr.i105 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %dscr.i105, align 4
  %flags58 = getelementptr inbounds %struct.at_desc, ptr %first.1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %flags58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %flags, ptr %flags58, align 4
  br label %cleanup

err_desc_get:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @atc_desc_put(ptr noundef %chan, ptr noundef %first.0115)
  br label %cleanup

cleanup:                                          ; preds = %err_desc_get, %for.end, %if.then30, %do.body16
  %retval.0 = phi ptr [ null, %err_desc_get ], [ %txd55, %for.end ], [ null, %if.then30 ], [ null, %do.body16 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_memset(ptr noundef %chan, i32 noundef %dest, i32 noundef %value, i32 noundef %len, i32 noundef %flags) #4 align 64 {
entry:
  %dest.addr = alloca i32, align 4
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #10
  %3 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %paddr, align 4, !annotation !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memset.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memset, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memset.__UNIQUE_ID_ddebug253, ptr noundef %device.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, ptr noundef nonnull %dest.addr, i32 noundef %value, i32 noundef %len, i32 noundef %flags) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not = icmp eq i32 %len, 0
  br i1 %tobool6.not, label %do.body16, label %if.end35, !prof !311

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memset.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memset, %cleanup)) #10
          to label %if.then30 [label %cleanup], !srcloc !310

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i113 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i113, align 4
  %device.i114 = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memset.__UNIQUE_ID_ddebug254, ptr noundef %device.i114, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90) #10
  br label %cleanup

if.end35:                                         ; preds = %do.end
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %10 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dest.addr, align 4
  %fill_align.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 13
  %12 = ptrtoint ptr %fill_align.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fill_align.i, align 4
  %notmask.i.i = shl nsw i32 -1, %13
  %sub.i.i = xor i32 %notmask.i.i, -1
  %or1.i.i = or i32 %11, %len
  %and.i.i = and i32 %or1.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end58, label %do.body39

do.body39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memset.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memset, %cleanup)) #10
          to label %if.then53 [label %cleanup], !srcloc !310

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i115 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i115, align 4
  %device.i116 = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memset.__UNIQUE_ID_ddebug255, ptr noundef %device.i116, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.90) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end35
  %memset_pool = getelementptr inbounds %struct.at_dma, ptr %2, i32 0, i32 6
  %16 = ptrtoint ptr %memset_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memset_pool, align 4
  %call59 = call ptr @dma_pool_alloc(ptr noundef %17, i32 noundef 2048, ptr noundef nonnull %paddr) #10
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i117 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %18 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i117, align 4
  %device.i118 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i118, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.90) #15
  br label %cleanup

if.end66:                                         ; preds = %if.end58
  %20 = ptrtoint ptr %call59 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %value, ptr %call59, align 4
  %21 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %paddr, align 4
  %23 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dest.addr, align 4
  %shr.i = lshr i32 %len, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %len)
  %cmp.i = icmp ugt i32 %len, 262143
  br i1 %cmp.i, label %if.end66.do.end72_crit_edge, label %if.end.i

if.end66.do.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

if.end.i:                                         ; preds = %if.end66
  %call2.i = call fastcc ptr @atc_desc_get(ptr noundef %chan) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.do.end72_crit_edge, label %if.end74

if.end.i.do.end72_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

do.end72:                                         ; preds = %if.end.i.do.end72_crit_edge, %if.end66.do.end72_crit_edge
  %.str.76.sink = phi ptr [ @.str.76, %if.end66.do.end72_crit_edge ], [ @.str.100, %if.end.i.do.end72_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull %.str.76.sink, ptr noundef nonnull @.str.98) #15
  %dev.i120 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %dev.i120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i120, align 4
  %device.i121 = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i121, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.90) #15
  %29 = ptrtoint ptr %memset_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memset_pool, align 4
  %31 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr, align 4
  call void @dma_pool_free(ptr noundef %30, ptr noundef nonnull %call59, i32 noundef %32) #10
  br label %cleanup

if.end74:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %22, ptr %call2.i, align 4
  %daddr.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 1
  %34 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %24, ptr %daddr.i, align 4
  %or.i = or i32 %shr.i, 570425344
  %ctrla11.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 2
  %35 = ptrtoint ptr %ctrla11.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %ctrla11.i, align 4
  %ctrlb13.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 3
  %txd.i = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 2
  %len14.i = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 4
  %36 = ptrtoint ptr %len14.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %len, ptr %len14.i, align 4
  %37 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %paddr, align 4
  %memset_paddr = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 10
  %39 = ptrtoint ptr %memset_paddr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %memset_paddr, align 4
  %memset_vaddr = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 11
  %40 = ptrtoint ptr %memset_vaddr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call59, ptr %memset_vaddr, align 4
  %memset_buffer = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 9
  %41 = ptrtoint ptr %memset_buffer to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %memset_buffer, align 4
  %42 = ptrtoint ptr %txd.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -16, ptr %txd.i, align 4
  %total_len = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 5
  %43 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %len, ptr %total_len, align 4
  %44 = ptrtoint ptr %ctrlb13.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 34668544, ptr %ctrlb13.i, align 4
  %dscr.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 4
  %45 = ptrtoint ptr %dscr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %dscr.i, align 4
  %flags76 = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %flags76 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %flags, ptr %flags76, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end72, %do.end64, %if.then53, %do.body39, %if.then30, %do.body16
  %retval.0 = phi ptr [ %txd.i, %if.end74 ], [ null, %do.end72 ], [ null, %do.end64 ], [ null, %if.then30 ], [ null, %if.then53 ], [ null, %do.body16 ], [ null, %do.body39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_memset_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %value, i32 noundef %flags) #4 align 64 {
entry:
  %paddr = alloca i32, align 4
  %dest = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #10
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %paddr, align 4, !annotation !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memset_sg, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug256, ptr noundef %device.i, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i32 noundef %value, i32 noundef %sg_len, i32 noundef %flags) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool7.not = icmp eq ptr %sgl, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool8.not = icmp eq i32 %sg_len, 0
  %spec.select = or i1 %tobool7.not, %tobool8.not
  br i1 %spec.select, label %do.body18, label %if.end37, !prof !311

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memset_sg, %cleanup83)) #10
          to label %if.then32 [label %cleanup83], !srcloc !310

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i126 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i126 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i126, align 4
  %device.i127 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug257, ptr noundef %device.i127, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102) #10
  br label %cleanup83

if.end37:                                         ; preds = %do.end
  %memset_pool = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %memset_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memset_pool, align 4
  %call38 = call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 2048, ptr noundef nonnull %paddr) #10
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end43, label %for.body.lr.ph

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i128 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %9 = ptrtoint ptr %dev.i128 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i128, align 4
  %device.i129 = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i129, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.102) #15
  br label %cleanup83

for.body.lr.ph:                                   ; preds = %if.end37
  %11 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %value, ptr %call38, align 4
  %dev.i130 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sg.0170 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call78, %for.inc.for.body_crit_edge ]
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %total_len.0168 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %prev.0167 = phi ptr [ null, %for.body.lr.ph ], [ %call2.i, %for.inc.for.body_crit_edge ]
  %first.0166 = phi ptr [ null, %for.body.lr.ph ], [ %first.1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dest) #10
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0170, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_address, align 4
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dest, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0170, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_memset_sg, %do.end64)) #10
          to label %if.then60 [label %do.end64], !srcloc !310

if.then60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i130, align 4
  %device.i131 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug258, ptr noundef %device.i131, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.102, ptr noundef nonnull %dest, i32 noundef %16) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %for.body
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan, align 4
  %21 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dest, align 4
  %fill_align.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 13
  %23 = ptrtoint ptr %fill_align.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fill_align.i, align 4
  %notmask.i.i = shl nsw i32 -1, %24
  %sub.i.i = xor i32 %notmask.i.i, -1
  %or1.i.i = or i32 %22, %16
  %and.i.i = and i32 %or1.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end72, label %do.end70

do.end70:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i130, align 4
  %device.i133 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i133, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.102) #15
  br label %err_put_desc

if.end72:                                         ; preds = %do.end64
  %27 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %paddr, align 4
  %shr.i = lshr i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %16)
  %cmp.i = icmp ugt i32 %16, 262143
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i130, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.98) #15
  br label %err_put_desc

if.end.i:                                         ; preds = %if.end72
  %call2.i = call fastcc ptr @atc_desc_get(ptr noundef %chan) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end6.i, label %if.end76

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i130, align 4
  %device.i31.i = getelementptr inbounds %struct.dma_chan_dev, ptr %32, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i31.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98) #15
  br label %err_put_desc

if.end76:                                         ; preds = %if.end.i
  %33 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %call2.i, align 4
  %daddr.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 1
  %34 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %22, ptr %daddr.i, align 4
  %or.i = or i32 %shr.i, 570425344
  %ctrla11.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 2
  %35 = ptrtoint ptr %ctrla11.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %ctrla11.i, align 4
  %ctrlb13.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 3
  %36 = ptrtoint ptr %ctrlb13.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1107296256, ptr %ctrlb13.i, align 4
  %txd.i = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 2
  %37 = ptrtoint ptr %txd.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %txd.i, align 4
  %len14.i = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 4
  %38 = ptrtoint ptr %len14.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %16, ptr %len14.i, align 4
  %tobool.not.i135 = icmp eq ptr %first.0166, null
  br i1 %tobool.not.i135, label %if.end76.for.inc_crit_edge, label %if.else.i

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i:                                        ; preds = %if.end76
  %phys.i = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys.i, align 4
  %dscr.i = getelementptr inbounds %struct.at_lli, ptr %prev.0167, i32 0, i32 4
  %41 = ptrtoint ptr %dscr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dscr.i, align 4
  %desc_node.i = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 3
  %tx_list.i = getelementptr inbounds %struct.at_desc, ptr %first.0166, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.at_desc, ptr %first.0166, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node.i, ptr noundef %43, ptr noundef %tx_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %desc_node.i, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %desc_node.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tx_list.i, ptr %desc_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %desc_node.i, ptr %43, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.else.i.for.inc_crit_edge, %if.end76.for.inc_crit_edge
  %first.1 = phi ptr [ %first.0166, %if.end.i.i.i ], [ %first.0166, %if.else.i.for.inc_crit_edge ], [ %call2.i, %if.end76.for.inc_crit_edge ]
  %add = add i32 %16, %total_len.0168
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dest) #10
  %inc = add nuw i32 %i.0169, 1
  %call78 = call ptr @sg_next(ptr noundef %sg.0170) #10
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %paddr, align 4
  %memset_paddr = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 10
  %50 = ptrtoint ptr %memset_paddr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %memset_paddr, align 4
  %memset_vaddr = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 11
  %51 = ptrtoint ptr %memset_vaddr to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call38, ptr %memset_vaddr, align 4
  %memset_buffer = getelementptr inbounds %struct.at_desc, ptr %call2.i, i32 0, i32 9
  %52 = ptrtoint ptr %memset_buffer to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %memset_buffer, align 4
  %txd = getelementptr inbounds %struct.at_desc, ptr %first.1, i32 0, i32 2
  %53 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -16, ptr %txd, align 4
  %total_len79 = getelementptr inbounds %struct.at_desc, ptr %first.1, i32 0, i32 5
  %54 = ptrtoint ptr %total_len79 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add, ptr %total_len79, align 4
  %ctrlb1.i = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 3
  %55 = ptrtoint ptr %ctrlb1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ctrlb1.i, align 4
  %and.i = and i32 %56, -1074855937
  %or.i137 = or i32 %and.i, 1114112
  store i32 %or.i137, ptr %ctrlb1.i, align 4
  %dscr.i138 = getelementptr inbounds %struct.at_lli, ptr %call2.i, i32 0, i32 4
  %57 = ptrtoint ptr %dscr.i138 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %dscr.i138, align 4
  %flags81 = getelementptr inbounds %struct.at_desc, ptr %first.1, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %flags81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %flags, ptr %flags81, align 4
  br label %cleanup83

err_put_desc:                                     ; preds = %do.end6.i, %do.end.i, %do.end70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dest) #10
  call fastcc void @atc_desc_put(ptr noundef %chan, ptr noundef %first.0166)
  br label %cleanup83

cleanup83:                                        ; preds = %err_put_desc, %for.end, %do.end43, %if.then32, %do.body18
  %retval.0 = phi ptr [ null, %err_put_desc ], [ %txd, %for.end ], [ null, %do.end43 ], [ null, %if.then32 ], [ null, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atc_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_slave_sg, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %cond = select i1 %cmp, ptr @.str.110, ptr @.str.111
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_slave_sg.__UNIQUE_ID_ddebug259, ptr noundef %device.i, ptr noundef nonnull @.str.109, i32 noundef %sg_len, ptr noundef nonnull %cond, i32 noundef %flags) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool7.not = icmp eq i32 %sg_len, 0
  %spec.select = or i1 %tobool7.not, %tobool6.not
  br i1 %spec.select, label %do.body17, label %if.end36, !prof !311

do.body17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_slave_sg, %cleanup215)) #10
          to label %if.then31 [label %cleanup215], !srcloc !310

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i309 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i309 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i309, align 4
  %device.i310 = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_slave_sg.__UNIQUE_ID_ddebug260, ptr noundef %device.i310, ptr noundef nonnull @.str.112) #10
  br label %cleanup215

if.end36:                                         ; preds = %do.end
  %src_maxburst = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_maxburst, align 4
  %shl = shl i32 %7, 16
  %and = and i32 %shl, 458752
  %dst_maxburst = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 6
  %8 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_maxburst, align 4
  %shl37 = shl i32 %9, 20
  %and38 = and i32 %shl37, 7340032
  %or = or i32 %and38, %and
  %10 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %if.end36.cleanup215_crit_edge [
    i32 1, label %for.body.preheader
    i32 2, label %for.body130.preheader
  ]

if.end36.cleanup215_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup215

for.body.preheader:                               ; preds = %if.end36
  %dst_addr_width = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 4
  %11 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch.selectcmp.i = icmp eq i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch.selectcmp2.i = icmp eq i32 %12, 2
  %13 = select i1 %switch.selectcmp.i, i32 536870912, i32 0
  %conv = select i1 %switch.selectcmp2.i, i32 268435456, i32 %13
  %or41 = or i32 %or, %conv
  %mem_if = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %mem_if to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mem_if, align 2
  %16 = and i8 %15, 3
  %per_if = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 4
  %17 = ptrtoint ptr %per_if to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %per_if, align 1
  %19 = shl i8 %18, 4
  %20 = and i8 %19, 48
  %or44299 = or i8 %20, %16
  %or44 = zext i8 %or44299 to i32
  %or49 = or i32 %or44, 1612709888
  %dst_addr = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_addr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %total_len.0401 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0400 = phi ptr [ %call111, %for.inc.for.body_crit_edge ], [ %sgl, %for.body.preheader ]
  %i.0399 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %prev.0398 = phi ptr [ %call52, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %first.0397 = phi ptr [ %first.1, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %call52 = tail call fastcc ptr @atc_desc_get(ptr noundef %chan)
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %for.body.do.end213_crit_edge, label %if.end55

for.body.do.end213_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end213

if.end55:                                         ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0400, i32 0, i32 3
  %23 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0400, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool56.not = icmp eq i32 %26, 0
  br i1 %tobool56.not, label %do.body66, label %if.end85, !prof !311

do.body66:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_slave_sg, %err)) #10
          to label %if.then80 [label %err], !srcloc !310

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i311 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %dev.i311 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i311, align 4
  %device.i312 = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_slave_sg.__UNIQUE_ID_ddebug261, ptr noundef %device.i312, ptr noundef nonnull @.str.113, i32 noundef %i.0399) #10
  br label %err

if.end85:                                         ; preds = %if.end55
  %and86 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp ne i32 %and86, 0
  %and89 = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90 = icmp ne i32 %and89, 0
  %29 = select i1 %tobool87.not, i1 true, i1 %tobool90
  br i1 %29, label %if.then98, label %if.end85.if.end99_crit_edge, !prof !311

if.end85.if.end99_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then98:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end85.if.end99_crit_edge
  %mem_width.0 = phi i32 [ 0, %if.then98 ], [ 2, %if.end85.if.end99_crit_edge ]
  %30 = ptrtoint ptr %call52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %24, ptr %call52, align 4
  %daddr = getelementptr inbounds %struct.at_lli, ptr %call52, i32 0, i32 1
  %31 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %22, ptr %daddr, align 4
  %shl101 = shl nuw nsw i32 %mem_width.0, 24
  %or102 = or i32 %shl101, %or41
  %shr = lshr i32 %26, %mem_width.0
  %or103 = or i32 %or102, %shr
  %ctrla105 = getelementptr inbounds %struct.at_lli, ptr %call52, i32 0, i32 2
  %32 = ptrtoint ptr %ctrla105 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or103, ptr %ctrla105, align 4
  %ctrlb107 = getelementptr inbounds %struct.at_lli, ptr %call52, i32 0, i32 3
  %33 = ptrtoint ptr %ctrlb107 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or49, ptr %ctrlb107, align 4
  %len108 = getelementptr inbounds %struct.at_desc, ptr %call52, i32 0, i32 4
  %34 = ptrtoint ptr %len108 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %len108, align 4
  %tobool.not.i = icmp eq ptr %first.0397, null
  br i1 %tobool.not.i, label %if.end99.for.inc_crit_edge, label %if.else.i

if.end99.for.inc_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i:                                        ; preds = %if.end99
  %phys.i = getelementptr inbounds %struct.at_desc, ptr %call52, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys.i, align 4
  %dscr.i = getelementptr inbounds %struct.at_lli, ptr %prev.0398, i32 0, i32 4
  %37 = ptrtoint ptr %dscr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %dscr.i, align 4
  %desc_node.i = getelementptr inbounds %struct.at_desc, ptr %call52, i32 0, i32 3
  %tx_list.i = getelementptr inbounds %struct.at_desc, ptr %first.0397, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.at_desc, ptr %first.0397, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node.i, ptr noundef %39, ptr noundef %tx_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %desc_node.i, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %desc_node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tx_list.i, ptr %desc_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.at_desc, ptr %call52, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %desc_node.i, ptr %39, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.else.i.for.inc_crit_edge, %if.end99.for.inc_crit_edge
  %first.1 = phi ptr [ %first.0397, %if.end.i.i.i ], [ %first.0397, %if.else.i.for.inc_crit_edge ], [ %call52, %if.end99.for.inc_crit_edge ]
  %add = add i32 %26, %total_len.0401
  %inc = add nuw i32 %i.0399, 1
  %call111 = tail call ptr @sg_next(ptr noundef %sg.0400) #10
  %exitcond419.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond419.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body130.preheader:                            ; preds = %if.end36
  %src_addr_width = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 3
  %44 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %switch.selectcmp.i313 = icmp eq i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %switch.selectcmp2.i315 = icmp eq i32 %45, 2
  %46 = select i1 %switch.selectcmp.i313, i32 2, i32 0
  %conv114 = select i1 %switch.selectcmp2.i315, i32 1, i32 %46
  %shl115 = shl nuw nsw i32 %conv114, 24
  %or116 = or i32 %shl115, %or
  %per_if117 = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 4
  %47 = ptrtoint ptr %per_if117 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %per_if117, align 1
  %49 = and i8 %48, 3
  %mem_if121 = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 5
  %50 = ptrtoint ptr %mem_if121 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mem_if121, align 2
  %52 = shl i8 %51, 4
  %53 = and i8 %52, 48
  %or120298 = or i8 %53, %49
  %or120 = zext i8 %or120298 to i32
  %or126 = or i32 %or120, 1111490560
  %src_addr = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %src_addr, align 4
  br label %for.body130

for.body130:                                      ; preds = %for.inc203.for.body130_crit_edge, %for.body130.preheader
  %total_len.2393 = phi i32 [ %add197, %for.inc203.for.body130_crit_edge ], [ 0, %for.body130.preheader ]
  %sg.1392 = phi ptr [ %call205, %for.inc203.for.body130_crit_edge ], [ %sgl, %for.body130.preheader ]
  %i.1391 = phi i32 [ %inc204, %for.inc203.for.body130_crit_edge ], [ 0, %for.body130.preheader ]
  %prev.2390 = phi ptr [ %call134, %for.inc203.for.body130_crit_edge ], [ null, %for.body130.preheader ]
  %first.3389 = phi ptr [ %first.4, %for.inc203.for.body130_crit_edge ], [ null, %for.body130.preheader ]
  %call134 = tail call fastcc ptr @atc_desc_get(ptr noundef %chan)
  %tobool135.not = icmp eq ptr %call134, null
  br i1 %tobool135.not, label %for.body130.do.end213_crit_edge, label %if.end137

for.body130.do.end213_crit_edge:                  ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end213

if.end137:                                        ; preds = %for.body130
  %dma_address138 = getelementptr inbounds %struct.scatterlist, ptr %sg.1392, i32 0, i32 3
  %56 = ptrtoint ptr %dma_address138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_address138, align 4
  %dma_length139 = getelementptr inbounds %struct.scatterlist, ptr %sg.1392, i32 0, i32 4
  %58 = ptrtoint ptr %dma_length139 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_length139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool140.not = icmp eq i32 %59, 0
  br i1 %tobool140.not, label %do.body150, label %if.end169, !prof !311

do.body150:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_slave_sg, %err)) #10
          to label %if.then164 [label %err], !srcloc !310

if.then164:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i317 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %60 = ptrtoint ptr %dev.i317 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i317, align 4
  %device.i318 = getelementptr inbounds %struct.dma_chan_dev, ptr %61, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_slave_sg.__UNIQUE_ID_ddebug262, ptr noundef %device.i318, ptr noundef nonnull @.str.113, i32 noundef %i.1391) #10
  br label %err

if.end169:                                        ; preds = %if.end137
  %and170 = and i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp ne i32 %and170, 0
  %and173 = and i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174 = icmp ne i32 %and173, 0
  %62 = select i1 %tobool171.not, i1 true, i1 %tobool174
  br i1 %62, label %if.then182, label %if.end169.if.end183_crit_edge, !prof !311

if.end169.if.end183_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then182:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %if.end169.if.end183_crit_edge
  %mem_width.1 = phi i32 [ 0, %if.then182 ], [ 536870912, %if.end169.if.end183_crit_edge ]
  %63 = ptrtoint ptr %call134 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %55, ptr %call134, align 4
  %daddr187 = getelementptr inbounds %struct.at_lli, ptr %call134, i32 0, i32 1
  %64 = ptrtoint ptr %daddr187 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %57, ptr %daddr187, align 4
  %or189 = or i32 %mem_width.1, %or116
  %shr190 = lshr i32 %59, %conv114
  %or191 = or i32 %or189, %shr190
  %ctrla193 = getelementptr inbounds %struct.at_lli, ptr %call134, i32 0, i32 2
  %65 = ptrtoint ptr %ctrla193 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or191, ptr %ctrla193, align 4
  %ctrlb195 = getelementptr inbounds %struct.at_lli, ptr %call134, i32 0, i32 3
  %66 = ptrtoint ptr %ctrlb195 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or126, ptr %ctrlb195, align 4
  %len196 = getelementptr inbounds %struct.at_desc, ptr %call134, i32 0, i32 4
  %67 = ptrtoint ptr %len196 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %59, ptr %len196, align 4
  %tobool.not.i319 = icmp eq ptr %first.3389, null
  br i1 %tobool.not.i319, label %if.end183.for.inc203_crit_edge, label %if.else.i327

if.end183.for.inc203_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc203

if.else.i327:                                     ; preds = %if.end183
  %phys.i321 = getelementptr inbounds %struct.at_desc, ptr %call134, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %phys.i321 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %phys.i321, align 4
  %dscr.i322 = getelementptr inbounds %struct.at_lli, ptr %prev.2390, i32 0, i32 4
  %70 = ptrtoint ptr %dscr.i322 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dscr.i322, align 4
  %desc_node.i323 = getelementptr inbounds %struct.at_desc, ptr %call134, i32 0, i32 3
  %tx_list.i324 = getelementptr inbounds %struct.at_desc, ptr %first.3389, i32 0, i32 1
  %prev.i.i325 = getelementptr inbounds %struct.at_desc, ptr %first.3389, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i.i325 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i325, align 4
  %call.i.i.i326 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node.i323, ptr noundef %72, ptr noundef %tx_list.i324) #10
  br i1 %call.i.i.i326, label %if.end.i.i.i329, label %if.else.i327.for.inc203_crit_edge

if.else.i327.for.inc203_crit_edge:                ; preds = %if.else.i327
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc203

if.end.i.i.i329:                                  ; preds = %if.else.i327
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %prev.i.i325 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %desc_node.i323, ptr %prev.i.i325, align 4
  %74 = ptrtoint ptr %desc_node.i323 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %tx_list.i324, ptr %desc_node.i323, align 4
  %prev3.i.i.i328 = getelementptr inbounds %struct.at_desc, ptr %call134, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i328 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i328, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %desc_node.i323, ptr %72, align 4
  br label %for.inc203

for.inc203:                                       ; preds = %if.end.i.i.i329, %if.else.i327.for.inc203_crit_edge, %if.end183.for.inc203_crit_edge
  %first.4 = phi ptr [ %first.3389, %if.end.i.i.i329 ], [ %first.3389, %if.else.i327.for.inc203_crit_edge ], [ %call134, %if.end183.for.inc203_crit_edge ]
  %add197 = add i32 %59, %total_len.2393
  %inc204 = add nuw i32 %i.1391, 1
  %call205 = tail call ptr @sg_next(ptr noundef %sg.1392) #10
  %exitcond.not = icmp eq i32 %inc204, %sg_len
  br i1 %exitcond.not, label %for.inc203.sw.epilog_crit_edge, label %for.inc203.for.body130_crit_edge

for.inc203.for.body130_crit_edge:                 ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body130

for.inc203.sw.epilog_crit_edge:                   ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc203.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge
  %first.6 = phi ptr [ %first.1, %for.inc.sw.epilog_crit_edge ], [ %first.4, %for.inc203.sw.epilog_crit_edge ]
  %prev.4 = phi ptr [ %call52, %for.inc.sw.epilog_crit_edge ], [ %call134, %for.inc203.sw.epilog_crit_edge ]
  %total_len.4 = phi i32 [ %add, %for.inc.sw.epilog_crit_edge ], [ %add197, %for.inc203.sw.epilog_crit_edge ]
  %ctrlb1.i = getelementptr inbounds %struct.at_lli, ptr %prev.4, i32 0, i32 3
  %77 = ptrtoint ptr %ctrlb1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctrlb1.i, align 4
  %and.i = and i32 %78, -1074855937
  %or.i = or i32 %and.i, 1114112
  store i32 %or.i, ptr %ctrlb1.i, align 4
  %dscr.i331 = getelementptr inbounds %struct.at_lli, ptr %prev.4, i32 0, i32 4
  %79 = ptrtoint ptr %dscr.i331 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %dscr.i331, align 4
  %txd = getelementptr inbounds %struct.at_desc, ptr %first.6, i32 0, i32 2
  %80 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -16, ptr %txd, align 4
  %total_len207 = getelementptr inbounds %struct.at_desc, ptr %first.6, i32 0, i32 5
  %81 = ptrtoint ptr %total_len207 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %total_len.4, ptr %total_len207, align 4
  %flags209 = getelementptr inbounds %struct.at_desc, ptr %first.6, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %flags209 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %flags, ptr %flags209, align 4
  br label %cleanup215

do.end213:                                        ; preds = %for.body130.do.end213_crit_edge, %for.body.do.end213_crit_edge
  %first.7 = phi ptr [ %first.0397, %for.body.do.end213_crit_edge ], [ %first.3389, %for.body130.do.end213_crit_edge ]
  %dev.i332 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %83 = ptrtoint ptr %dev.i332 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i332, align 4
  %device.i333 = getelementptr inbounds %struct.dma_chan_dev, ptr %84, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i333, ptr noundef nonnull @.str.114) #15
  br label %err

err:                                              ; preds = %do.end213, %if.then164, %do.body150, %if.then80, %do.body66
  %first.8 = phi ptr [ %first.7, %do.end213 ], [ %first.0397, %if.then80 ], [ %first.0397, %do.body66 ], [ %first.3389, %if.then164 ], [ %first.3389, %do.body150 ]
  tail call fastcc void @atc_desc_put(ptr noundef %chan, ptr noundef %first.8)
  br label %cleanup215

cleanup215:                                       ; preds = %err, %sw.epilog, %if.end36.cleanup215_crit_edge, %if.then31, %do.body17
  %retval.0 = phi ptr [ null, %err ], [ %txd, %sw.epilog ], [ null, %if.then31 ], [ null, %if.end36.cleanup215_crit_edge ], [ null, %do.body17 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #4 align 64 {
entry:
  %buf_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %buf_addr, ptr %buf_addr.addr, align 4
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 4
  %div = udiv i32 %buf_len, %period_len
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_cyclic, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %cond = select i1 %cmp, ptr @.str.110, ptr @.str.111
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug263, ptr noundef %device.i, ptr noundef nonnull @.str.116, ptr noundef nonnull %cond, ptr noundef nonnull %buf_addr.addr, i32 noundef %div, i32 noundef %buf_len, i32 noundef %period_len) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not = icmp eq ptr %2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool7.not = icmp eq i32 %buf_len, 0
  %or.cond = or i1 %tobool7.not, %tobool6.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool8.not = icmp eq i32 %period_len, 0
  %or.cond135 = or i1 %tobool8.not, %or.cond
  br i1 %or.cond135, label %do.body18, label %if.end37, !prof !323

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_cyclic, %cleanup99)) #10
          to label %if.then32 [label %cleanup99], !srcloc !310

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i142 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i142 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i142, align 4
  %device.i143 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug264, ptr noundef %device.i143, ptr noundef nonnull @.str.117) #10
  br label %cleanup99

if.end37:                                         ; preds = %do.end
  %status = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 6
  %call38 = call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end60, label %do.body41

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_prep_dma_cyclic, %cleanup99)) #10
          to label %if.then55 [label %cleanup99], !srcloc !310

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i144 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i144 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i144, align 4
  %device.i145 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug265, ptr noundef %device.i145, ptr noundef nonnull @.str.118) #10
  br label %cleanup99

if.end60:                                         ; preds = %if.end37
  %9 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %if.end71, label %if.end60.err_out_crit_edge, !prof !312

if.end60.err_out_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end71:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp72 = icmp eq i32 %direction, 1
  %src_addr_width = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 3
  %dst_addr_width = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 4
  %src_addr_width.sink = select i1 %cmp72, ptr %dst_addr_width, ptr %src_addr_width
  %11 = ptrtoint ptr %src_addr_width.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_addr_width.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch.selectcmp.i146 = icmp eq i32 %12, 4
  %switch.select.i147 = select i1 %switch.selectcmp.i146, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch.selectcmp2.i148 = icmp eq i32 %12, 2
  %switch.select3.i149 = select i1 %switch.selectcmp2.i148, i32 1, i32 %switch.select.i147
  %shl.i = shl nuw nsw i32 65535, %switch.select3.i149
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %period_len)
  %cmp.i = icmp ult i32 %shl.i, %period_len
  br i1 %cmp.i, label %if.end71.err_out_crit_edge, label %if.end.i

if.end71.err_out_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end.i:                                         ; preds = %if.end71
  %13 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_addr.addr, align 4
  %notmask.i = shl nsw i32 -1, %switch.select3.i149
  %sub.i = xor i32 %notmask.i, -1
  %15 = or i32 %14, %period_len
  %16 = and i32 %15, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %for.cond.preheader, label %if.end.i.err_out_crit_edge, !prof !324

if.end.i.err_out_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp82175.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp82175.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %src_maxburst.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 5
  %dst_maxburst.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 6
  %shl3.i = shl nuw nsw i32 %switch.select3.i149, 28
  %shl5.i = shl nuw nsw i32 %switch.select3.i149, 24
  %shr.i = lshr i32 %period_len, %switch.select3.i149
  %or6.i = or i32 %shr.i, %shl5.i
  %src_addr.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 1
  %per_if27.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 4
  %mem_if31.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 5
  %dst_addr.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %prev.0177 = phi ptr [ null, %for.body.lr.ph ], [ %call84, %for.inc.for.body_crit_edge ]
  %first.0176 = phi ptr [ null, %for.body.lr.ph ], [ %first.2.ph, %for.inc.for.body_crit_edge ]
  %call84 = call fastcc ptr @atc_desc_get(ptr noundef %chan)
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %for.body.do.end96_crit_edge, label %if.end87

for.body.do.end96_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

if.end87:                                         ; preds = %for.body
  %18 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_addr.addr, align 4
  %20 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_maxburst.i, align 4
  %shl.i151 = shl i32 %21, 16
  %and.i = and i32 %shl.i151, 458752
  %22 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst_maxburst.i, align 4
  %shl1.i = shl i32 %23, 20
  %and2.i = and i32 %shl1.i, 7340032
  %or.i = or i32 %and.i, %and2.i
  %or4.i = or i32 %or.i, %shl3.i
  %or7.i = or i32 %or6.i, %or4.i
  %24 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %direction, label %if.end87.do.end96_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb18.i
  ]

if.end87.do.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

sw.bb.i:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul i32 %i.0178, %period_len
  %add.i = add i32 %19, %mul.i
  %25 = ptrtoint ptr %call84 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %call84, align 4
  %26 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_addr.i, align 4
  br label %if.end91

sw.bb18.i:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_addr.i, align 4
  %30 = ptrtoint ptr %call84 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call84, align 4
  %mul21.i = mul i32 %i.0178, %period_len
  %add22.i = add i32 %19, %mul21.i
  br label %if.end91

if.end91:                                         ; preds = %sw.bb18.i, %sw.bb.i
  %.sink185 = phi i32 [ %27, %sw.bb.i ], [ %add22.i, %sw.bb18.i ]
  %.sink71.in.i = phi ptr [ %per_if27.i, %sw.bb.i ], [ %mem_if31.i, %sw.bb18.i ]
  %.sink69.in.in.i = phi ptr [ %mem_if31.i, %sw.bb.i ], [ %per_if27.i, %sw.bb18.i ]
  %.sink.i = phi i32 [ 538968064, %sw.bb.i ], [ 37748736, %sw.bb18.i ]
  %daddr.i = getelementptr inbounds %struct.at_lli, ptr %call84, i32 0, i32 1
  %31 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink185, ptr %daddr.i, align 4
  %ctrla10.i = getelementptr inbounds %struct.at_lli, ptr %call84, i32 0, i32 2
  %32 = ptrtoint ptr %ctrla10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or7.i, ptr %ctrla10.i, align 4
  %33 = ptrtoint ptr %.sink69.in.in.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %.sink69.in.i = load i8, ptr %.sink69.in.in.i, align 1
  %.sink69.i = and i8 %.sink69.in.i, 3
  %34 = ptrtoint ptr %.sink71.in.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %.sink71.i = load i8, ptr %.sink71.in.i, align 1
  %35 = shl i8 %.sink71.i, 4
  %36 = and i8 %35, 48
  %or1267.i = or i8 %36, %.sink69.i
  %or12.i = zext i8 %or1267.i to i32
  %or16.i = or i32 %.sink.i, %or12.i
  %ctrlb.i = getelementptr inbounds %struct.at_lli, ptr %call84, i32 0, i32 3
  %37 = ptrtoint ptr %ctrlb.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or16.i, ptr %ctrlb.i, align 4
  %len.i = getelementptr inbounds %struct.at_desc, ptr %call84, i32 0, i32 4
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %period_len, ptr %len.i, align 4
  %tobool.not.i = icmp eq ptr %first.0176, null
  br i1 %tobool.not.i, label %if.end91.for.inc_crit_edge, label %if.else.i

if.end91.for.inc_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i:                                        ; preds = %if.end91
  %phys.i = getelementptr inbounds %struct.at_desc, ptr %call84, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys.i, align 4
  %dscr.i = getelementptr inbounds %struct.at_lli, ptr %prev.0177, i32 0, i32 4
  %41 = ptrtoint ptr %dscr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dscr.i, align 4
  %desc_node.i = getelementptr inbounds %struct.at_desc, ptr %call84, i32 0, i32 3
  %tx_list.i = getelementptr inbounds %struct.at_desc, ptr %first.0176, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.at_desc, ptr %first.0176, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node.i, ptr noundef %43, ptr noundef %tx_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %desc_node.i, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %desc_node.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tx_list.i, ptr %desc_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.at_desc, ptr %call84, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %desc_node.i, ptr %43, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.else.i.for.inc_crit_edge, %if.end91.for.inc_crit_edge
  %first.2.ph = phi ptr [ %call84, %if.end91.for.inc_crit_edge ], [ %first.0176, %if.else.i.for.inc_crit_edge ], [ %first.0176, %if.end.i.i.i ]
  %inc = add nuw i32 %i.0178, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %first.2.ph, %for.inc.for.end_crit_edge ]
  %prev.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %call84, %for.inc.for.end_crit_edge ]
  %phys = getelementptr inbounds %struct.at_desc, ptr %first.0.lcssa, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phys, align 4
  %dscr = getelementptr inbounds %struct.at_lli, ptr %prev.0.lcssa, i32 0, i32 4
  %50 = ptrtoint ptr %dscr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dscr, align 4
  %txd92 = getelementptr inbounds %struct.at_desc, ptr %first.0.lcssa, i32 0, i32 2
  %51 = ptrtoint ptr %txd92 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -16, ptr %txd92, align 4
  %total_len = getelementptr inbounds %struct.at_desc, ptr %first.0.lcssa, i32 0, i32 5
  %52 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %buf_len, ptr %total_len, align 4
  br label %cleanup99

do.end96:                                         ; preds = %if.end87.do.end96_crit_edge, %for.body.do.end96_crit_edge
  %first.0176.lcssa = phi ptr [ %first.0176, %for.body.do.end96_crit_edge ], [ null, %if.end87.do.end96_crit_edge ]
  %dev.i154 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %53 = ptrtoint ptr %dev.i154 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i154, align 4
  %device.i155 = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i155, ptr noundef nonnull @.str.114) #15
  call fastcc void @atc_desc_put(ptr noundef %chan, ptr noundef %first.0176.lcssa)
  br label %err_out

err_out:                                          ; preds = %do.end96, %if.end.i.err_out_crit_edge, %if.end71.err_out_crit_edge, %if.end60.err_out_crit_edge
  call void @_clear_bit(i32 noundef 24, ptr noundef %status) #10
  br label %cleanup99

cleanup99:                                        ; preds = %err_out, %for.end, %if.then55, %do.body41, %if.then32, %do.body18
  %retval.0 = phi ptr [ null, %err_out ], [ %txd92, %for.end ], [ null, %if.then32 ], [ null, %if.then55 ], [ null, %do.body18 ], [ null, %do.body41 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %sconfig) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_config.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_config, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_config.__UNIQUE_ID_ddebug266, ptr noundef %device.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.119) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dma_sconfig = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10
  %4 = call ptr @memcpy(ptr %dma_sconfig, ptr %sconfig, i32 48)
  %src_maxburst = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 5
  %5 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp ugt i32 %6, 1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #10, !range !325
  %sub.i = sub nsw i32 30, %7
  %storemerge.i = select i1 %cmp.i, i32 %sub.i, i32 0
  %8 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 10, i32 6
  %9 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i15 = icmp ugt i32 %10, 1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #10, !range !325
  %sub.i16 = sub nsw i32 30, %11
  %storemerge.i17 = select i1 %cmp.i15, i32 %sub.i16, i32 0
  %12 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge.i17, ptr %dst_maxburst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_pause(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_id2 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_pause.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_pause, %do.body9)) #10
          to label %if.then [label %do.body9], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_pause.__UNIQUE_ID_ddebug267, ptr noundef %device.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #10
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 11
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %add = add i32 %3, 8
  %shl = shl nuw i32 1, %add
  %regs = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %shl) #10, !srcloc !307
  %status = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_resume(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_id2 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_resume.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_resume, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_resume.__UNIQUE_ID_ddebug268, ptr noundef %device.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.122) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 6
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %do.body13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 11
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %add = add i32 %3, 8
  %shl = shl nuw i32 1, %add
  %regs = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %shl) #10, !srcloc !307
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_terminate_all(ptr noundef %chan) #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_id2 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %chan_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %4 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_terminate_all.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_terminate_all, %do.body9)) #10
          to label %if.then [label %do.body9], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_terminate_all.__UNIQUE_ID_ddebug269, ptr noundef %device.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.123) #10
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 11
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %add = add i32 %3, 8
  %shl = shl nuw i32 1, %add
  %mask = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask, align 4
  %conv17 = zext i8 %10 to i32
  %or = or i32 %shl, %conv17
  %regs = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #10, !srcloc !307
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr1975 = getelementptr i8, ptr %14, i32 48
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1975) #10, !srcloc !304
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask, align 4
  %conv2276 = zext i8 %17 to i32
  %and77 = and i32 %15, %conv2276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool23.not78 = icmp eq i32 %and77, 0
  br i1 %tobool23.not78, label %do.body9.while.end_crit_edge, label %do.body9.do.end28_crit_edge

do.body9.do.end28_crit_edge:                      ; preds = %do.body9
  br label %do.end28

do.body9.while.end_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.body9.do.end28_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !326
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !327
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %19, i32 48
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !304
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mask, align 4
  %conv22 = zext i8 %22 to i32
  %and = and i32 %20, %conv22
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end28.while.end_crit_edge, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.body9.while.end_crit_edge
  %queue = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 13
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %24, %queue
  br i1 %cmp.i.not.i, label %while.end.list_splice_init.exit_crit_edge, label %if.then.i

while.end.list_splice_init.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %24, ptr %list, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %28, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev6.i.i, align 4
  %32 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.end.list_splice_init.exit_crit_edge
  %active_list = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 12
  %33 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not.i68 = icmp eq ptr %34, %active_list
  br i1 %cmp.i.not.i68, label %list_splice_init.exit.list_splice_init.exit73_crit_edge, label %if.then.i72

list_splice_init.exit.list_splice_init.exit73_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit73

if.then.i72:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %list, align 4
  %prev2.i.i69 = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %prev2.i.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i69, align 4
  %prev3.i.i70 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list, ptr %prev3.i.i70, align 4
  store ptr %34, ptr %list, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %36, ptr %38, align 4
  %prev6.i.i71 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev6.i.i71 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev6.i.i71, align 4
  %42 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %active_list, ptr %active_list, align 4
  store ptr %active_list, ptr %prev2.i.i69, align 4
  br label %list_splice_init.exit73

list_splice_init.exit73:                          ; preds = %if.then.i72, %list_splice_init.exit.list_splice_init.exit73_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #10
  %43 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %list, align 4
  %cmp42.not79 = icmp eq ptr %44, %list
  br i1 %cmp42.not79, label %list_splice_init.exit73.for.end_crit_edge, label %list_splice_init.exit73.for.body_crit_edge

list_splice_init.exit73.for.body_crit_edge:       ; preds = %list_splice_init.exit73
  br label %for.body

list_splice_init.exit73.for.end_crit_edge:        ; preds = %list_splice_init.exit73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit73.for.body_crit_edge
  %.pn.in80 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %44, %list_splice_init.exit73.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in80, i32 -128
  %45 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn.in80, align 4
  call fastcc void @atc_chain_complete(ptr noundef %chan, ptr noundef %desc.0)
  %cmp42.not = icmp eq ptr %.pn, %list
  br i1 %cmp42.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit73.for.end_crit_edge
  %status = getelementptr inbounds %struct.at_dma_chan, ptr %chan, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %status) #10
  call void @_clear_bit(i32 noundef 24, ptr noundef %status) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_dma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readnone %of_dma) #4 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_spec, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %3) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 8) #16
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void @put_device(ptr noundef %dev) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %cfg = getelementptr inbounds %struct.at_dma_slave, ptr %call7.i, i32 0, i32 1
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and7 = lshr i32 %7, 4
  %shr = and i32 %and7, 3
  %shl = shl nuw nsw i32 %shr, 14
  %and8 = and i32 %7, 15
  %shl9 = shl nuw nsw i32 %and8, 4
  %or = or i32 %shl, %shl9
  %shl12 = shl nuw nsw i32 %shr, 10
  %or13 = or i32 %or, %shl12
  %or15 = or i32 %or13, %and8
  %or17 = or i32 %or15, 8704
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or17, ptr %cfg, align 4
  %and20 = and i32 %7, 3840
  %9 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %and20, label %sw.default [
    i32 256, label %if.end6.sw.epilog_crit_edge
    i32 512, label %if.end6.sw.epilog.sink.split_crit_edge
  ]

if.end6.sw.epilog.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default, %if.end6.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 268444160, %sw.default ], [ 536879616, %if.end6.sw.epilog.sink.split_crit_edge ]
  %or28 = or i32 %or15, %.sink
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or28, ptr %cfg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end6.sw.epilog_crit_edge
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev29, ptr %call7.i, align 8
  %call30 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @at_dma_filter, ptr noundef nonnull %call7.i, ptr noundef null) #10
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @put_device(ptr noundef %dev29) #10
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end34:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %args, align 4
  %conv = trunc i32 %13 to i8
  %per_if = getelementptr inbounds %struct.at_dma_chan, ptr %call30, i32 0, i32 4
  %14 = ptrtoint ptr %per_if to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %per_if, align 1
  %15 = load i32, ptr %args, align 4
  %shr41 = lshr i32 %15, 16
  %conv43 = trunc i32 %shr41 to i8
  %mem_if = getelementptr inbounds %struct.at_dma_chan, ptr %call30, i32 0, i32 5
  %16 = ptrtoint ptr %mem_if to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv43, ptr %mem_if, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then32, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call30, %if.end34 ], [ null, %if.then32 ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_advance_work(ptr noundef %atchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_advance_work.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_advance_work, %do.body6)) #10
          to label %if.then [label %do.body6], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_advance_work.__UNIQUE_ID_ddebug244, ptr noundef %device.i, ptr noundef nonnull @.str.50) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 11
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atchan, align 4
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !304
  %mask.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 3
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mask.i, align 4
  %conv.i = zext i8 %8 to i32
  %and.i = and i32 %6, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  br i1 %tobool.i.not, label %if.end18, label %do.body6.cleanup_crit_edge

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %do.body6
  %active_list = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 12
  %9 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %10, %active_list
  br i1 %cmp.i.not, label %if.end18.if.then24_crit_edge, label %lor.lhs.false

if.end18.if.then24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end18
  %11 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not.i = icmp eq ptr %12, %active_list
  br i1 %cmp.i.not.i, label %lor.lhs.false.if.end25_crit_edge, label %list_is_singular.exit

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

list_is_singular.exit:                            ; preds = %lor.lhs.false
  %prev.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %cmp.i58.not = icmp eq ptr %12, %14
  br i1 %cmp.i58.not, label %list_is_singular.exit.if.then24_crit_edge, label %list_is_singular.exit.if.end25_crit_edge

list_is_singular.exit.if.end25_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

list_is_singular.exit.if.then24_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %list_is_singular.exit.if.then24_crit_edge, %if.end18.if.then24_crit_edge
  tail call fastcc void @atc_complete_all(ptr noundef %atchan)
  br label %cleanup

if.end25:                                         ; preds = %list_is_singular.exit.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  %add.ptr.i59 = getelementptr i8, ptr %12, i32 -128
  tail call fastcc void @atc_chain_complete(ptr noundef %atchan, ptr noundef %add.ptr.i59)
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %15 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_list, align 4
  %add.ptr.i61 = getelementptr i8, ptr %16, i32 -128
  tail call fastcc void @atc_dostart(ptr noundef %atchan, ptr noundef %add.ptr.i61)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call36) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %do.body6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_dostart(ptr nocapture noundef readonly %atchan, ptr nocapture noundef readonly %first) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atchan, align 4
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !304
  %mask.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 3
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mask.i, align 4
  %conv.i = zext i8 %6 to i32
  %and.i = and i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.32) #15
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %device.i66 = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  %ch_regs = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 2
  %11 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch_regs, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !304
  %14 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_regs, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !304
  %17 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ch_regs, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10, !srcloc !304
  %20 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !304
  %23 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i66, ptr noundef nonnull @.str.35, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %atchan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 4
  %30 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan_id.i, align 4
  %regs.i67 = getelementptr inbounds %struct.at_dma, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %regs.i67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #10, !srcloc !304
  %35 = ptrtoint ptr %regs.i67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i67, align 4
  %add.ptr6.i = getelementptr i8, ptr %36, i32 48
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.37, i32 noundef %31, i32 noundef %34, i32 noundef %37) #15
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  %device.i41.i = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  %ch_regs.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 2
  %40 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ch_regs.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !304
  %43 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %44, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !304
  %46 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %47, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #10, !srcloc !304
  %49 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %50, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #10, !srcloc !304
  %52 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %53, i32 20
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #10, !srcloc !304
  %55 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %56, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i41.i, ptr noundef nonnull @.str.41, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54, i32 noundef %57) #15
  %58 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ch_regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #10, !srcloc !307
  %60 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr25 = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #10, !srcloc !307
  %62 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr27 = getelementptr i8, ptr %63, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #10, !srcloc !307
  %64 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr29 = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #10, !srcloc !307
  %phys = getelementptr inbounds %struct.at_desc, ptr %first, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phys, align 4
  %68 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr31 = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %67) #10, !srcloc !307
  %src_hole = getelementptr inbounds %struct.at_desc, ptr %first, i32 0, i32 8
  %70 = ptrtoint ptr %src_hole to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src_hole, align 4
  %and = and i32 %71, 65535
  %boundary = getelementptr inbounds %struct.at_desc, ptr %first, i32 0, i32 6
  %72 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %boundary, align 4
  %and32 = shl i32 %73, 16
  %shl = and i32 %and32, 67043328
  %or = or i32 %shl, %and
  %74 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr34 = getelementptr i8, ptr %75, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %or) #10, !srcloc !307
  %dst_hole = getelementptr inbounds %struct.at_desc, ptr %first, i32 0, i32 7
  %76 = ptrtoint ptr %dst_hole to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dst_hole, align 4
  %and35 = and i32 %77, 65535
  %78 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %boundary, align 4
  %and37 = shl i32 %79, 16
  %shl38 = and i32 %and37, 67043328
  %or39 = or i32 %shl38, %and35
  %80 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr41 = getelementptr i8, ptr %81, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %or39) #10, !srcloc !307
  %82 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %mask.i, align 4
  %conv = zext i8 %83 to i32
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr42 = getelementptr i8, ptr %85, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %conv) #10, !srcloc !307
  %86 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %atchan, align 4
  %88 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i, align 4
  %device.i.i70 = getelementptr inbounds %struct.dma_chan_dev, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chan_id.i, align 4
  %regs.i72 = getelementptr inbounds %struct.at_dma, ptr %87, i32 0, i32 1
  %92 = ptrtoint ptr %regs.i72 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i72, align 4
  %add.ptr.i73 = getelementptr i8, ptr %93, i32 32
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #10, !srcloc !304
  %95 = ptrtoint ptr %regs.i72 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i72, align 4
  %add.ptr6.i74 = getelementptr i8, ptr %96, i32 48
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i74) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i70, ptr noundef nonnull @.str.37, i32 noundef %91, i32 noundef %94, i32 noundef %97) #15
  %98 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i.i, align 4
  %device.i41.i75 = getelementptr inbounds %struct.dma_chan_dev, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ch_regs.i, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #10, !srcloc !304
  %103 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr16.i77 = getelementptr i8, ptr %104, i32 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i77) #10, !srcloc !304
  %106 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr19.i78 = getelementptr i8, ptr %107, i32 12
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i78) #10, !srcloc !304
  %109 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr22.i79 = getelementptr i8, ptr %110, i32 16
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i79) #10, !srcloc !304
  %112 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr25.i80 = getelementptr i8, ptr %113, i32 20
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i80) #10, !srcloc !304
  %115 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr28.i81 = getelementptr i8, ptr %116, i32 8
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i81) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i41.i75, ptr noundef nonnull @.str.41, i32 noundef %102, i32 noundef %105, i32 noundef %108, i32 noundef %111, i32 noundef %114, i32 noundef %117) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_chain_complete(ptr noundef %atchan, ptr noundef %desc) unnamed_addr #4 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txd1 = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atchan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_chain_complete.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_chain_complete, %do.body9)) #10
          to label %if.then [label %do.body9], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %txd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txd1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_chain_complete.__UNIQUE_ID_ddebug242, ptr noundef %device.i, ptr noundef nonnull @.str.46, i32 noundef %5) #10
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 11
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %status.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 6
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  br i1 %tobool18.not, label %if.then19, label %do.body9.if.end20_crit_edge

do.body9.if.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %do.body9
  %9 = ptrtoint ptr %txd1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txd1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp slt i32 %10, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !311

do.body2.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !328
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %completed_cookie.i, align 4
  %14 = ptrtoint ptr %txd1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %txd1, align 4
  br label %if.end20

if.end20:                                         ; preds = %dma_cookie_complete.exit, %do.body9.if.end20_crit_edge
  %memset_buffer = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 9
  %15 = ptrtoint ptr %memset_buffer to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %memset_buffer, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %memset_pool = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %memset_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memset_pool, align 4
  %memset_vaddr = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 11
  %19 = ptrtoint ptr %memset_vaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memset_vaddr, align 4
  %memset_paddr = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 10
  %21 = ptrtoint ptr %memset_paddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %memset_paddr, align 4
  tail call void @dma_pool_free(ptr noundef %18, ptr noundef %20, i32 noundef %22) #10
  %23 = ptrtoint ptr %memset_buffer to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %memset_buffer, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %tx_list = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 1
  %free_list = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 14
  %24 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %25, %tx_list
  br i1 %cmp.i.not.i, label %if.end24.list_splice_init.exit_crit_edge, label %if.then.i

if.end24.list_splice_init.exit_crit_edge:         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %free_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %free_list, ptr %prev3.i.i, align 4
  store ptr %25, ptr %free_list, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %27, ptr %29, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev6.i.i, align 4
  %33 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end24.list_splice_init.exit_crit_edge
  %desc_node = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc_node) #10
  br i1 %call.i.i, label %if.end.i.i, label %list_splice_init.exit.__list_del_entry.exit.i_crit_edge

list_splice_init.exit.__list_del_entry.exit.i_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %desc_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %list_splice_init.exit.__list_del_entry.exit.i_crit_edge
  %40 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %free_list, ptr noundef %41) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %desc_node, ptr %prev1.i.i2.i, align 4
  %43 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %desc_node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %free_list, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %desc_node, ptr %free_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #10
  %unmap.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 2, i32 9
  %46 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %list_move.exit.dma_descriptor_unmap.exit_crit_edge, label %if.end.i

list_move.exit.dma_descriptor_unmap.exit_crit_edge: ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_descriptor_unmap.exit

if.end.i:                                         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %47) #10
  %48 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i, %list_move.exit.dma_descriptor_unmap.exit_crit_edge
  %49 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %status.i, align 4
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool28.not = icmp eq i32 %51, 0
  br i1 %tobool28.not, label %if.then29, label %dma_descriptor_unmap.exit.if.end30_crit_edge

dma_descriptor_unmap.exit.if.end30_crit_edge:     ; preds = %dma_descriptor_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %dma_descriptor_unmap.exit
  %callback.i.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 2, i32 6
  %52 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 2, i32 7
  %54 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 2, i32 8
  %56 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %callback_param.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #10
  %58 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  call void %55(ptr noundef %57, ptr noundef nonnull %dummy_result.i.i) #10
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %if.then29
  %tobool4.not.i.i = icmp eq ptr %53, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %53(ptr noundef %57) #10
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #10
  br label %if.end30

if.end30:                                         ; preds = %dmaengine_desc_get_callback_invoke.exit, %dma_descriptor_unmap.exit.if.end30_crit_edge
  call void @dma_run_dependencies(ptr noundef %txd1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_complete_all(ptr noundef %atchan) unnamed_addr #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_complete_all.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_complete_all, %do.body6)) #10
          to label %if.then [label %do.body6], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_complete_all.__UNIQUE_ID_ddebug243, ptr noundef %device.i, ptr noundef nonnull @.str.52) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 11
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 13
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %6, %queue
  br i1 %cmp.i.not, label %do.body6.if.end18_crit_edge, label %if.then16

do.body6.if.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %6, i32 -128
  call fastcc void @atc_dostart(ptr noundef %atchan, ptr noundef %add.ptr.i)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body6.if.end18_crit_edge
  %active_list = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 12
  %7 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not.i = icmp eq ptr %8, %active_list
  br i1 %cmp.i.not.i, label %if.end18.list_splice_init.exit_crit_edge, label %if.then.i

if.end18.list_splice_init.exit_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %8, ptr %list, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %12, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev6.i.i, align 4
  %16 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %active_list, ptr %active_list, align 4
  store ptr %active_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end18.list_splice_init.exit_crit_edge
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i51 = icmp eq ptr %18, %queue
  br i1 %cmp.i.not.i51, label %list_splice_init.exit.list_splice_init.exit56_crit_edge, label %if.then.i55

list_splice_init.exit.list_splice_init.exit56_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit56

if.then.i55:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %active_list, align 4
  %prev2.i.i52 = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %prev2.i.i52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i52, align 4
  %prev3.i.i53 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %active_list, ptr %prev3.i.i53, align 4
  store ptr %18, ptr %active_list, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %22, align 4
  %prev6.i.i54 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev6.i.i54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev6.i.i54, align 4
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i52, align 4
  br label %list_splice_init.exit56

list_splice_init.exit56:                          ; preds = %if.then.i55, %list_splice_init.exit.list_splice_init.exit56_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %cmp29.not58 = icmp eq ptr %28, %list
  br i1 %cmp29.not58, label %list_splice_init.exit56.for.end_crit_edge, label %list_splice_init.exit56.for.body_crit_edge

list_splice_init.exit56.for.body_crit_edge:       ; preds = %list_splice_init.exit56
  br label %for.body

list_splice_init.exit56.for.end_crit_edge:        ; preds = %list_splice_init.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit56.for.body_crit_edge
  %.pn.in59 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %28, %list_splice_init.exit56.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in59, i32 -128
  %29 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn.in59, align 4
  call fastcc void @atc_chain_complete(ptr noundef %atchan, ptr noundef %desc.0)
  %cmp29.not = icmp eq ptr %.pn, %list
  br i1 %cmp29.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit56.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc_tx_submit(ptr noundef %tx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %tx, i32 -28
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %1, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
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
  %active_list = getelementptr inbounds %struct.at_dma_chan, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %10, %active_list
  br i1 %cmp.i.not, label %do.body9, label %do.body23

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_tx_submit.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_tx_submit, %do.end21)) #10
          to label %if.then16 [label %do.end21], !srcloc !310

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_tx_submit.__UNIQUE_ID_ddebug247, ptr noundef %device.i, ptr noundef nonnull @.str.60, i32 noundef %16) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body9
  tail call fastcc void @atc_dostart(ptr noundef %1, ptr noundef %add.ptr.i)
  %desc_node = getelementptr i8, ptr %tx, i32 100
  %prev.i = getelementptr inbounds %struct.at_dma_chan, ptr %1, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %18, ptr noundef %active_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end21.if.end46_crit_edge

do.end21.if.end46_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end.i.i:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %desc_node, ptr %prev.i, align 4
  %20 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %active_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr i8, ptr %tx, i32 104
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_node, ptr %18, align 4
  br label %if.end46

do.body23:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_tx_submit.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_tx_submit, %do.end44)) #10
          to label %if.then37 [label %do.end44], !srcloc !310

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan, align 4
  %dev.i64 = getelementptr inbounds %struct.dma_chan, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev.i64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i64, align 4
  %device.i65 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_tx_submit.__UNIQUE_ID_ddebug248, ptr noundef %device.i65, ptr noundef nonnull @.str.61, i32 noundef %28) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %do.body23
  %desc_node45 = getelementptr i8, ptr %tx, i32 100
  %queue = getelementptr inbounds %struct.at_dma_chan, ptr %1, i32 0, i32 13
  %prev.i66 = getelementptr inbounds %struct.at_dma_chan, ptr %1, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i66, align 4
  %call.i.i67 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node45, ptr noundef %30, ptr noundef %queue) #10
  br i1 %call.i.i67, label %if.end.i.i69, label %do.end44.if.end46_crit_edge

do.end44.if.end46_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end.i.i69:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %desc_node45, ptr %prev.i66, align 4
  %32 = ptrtoint ptr %desc_node45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %queue, ptr %desc_node45, align 4
  %prev3.i.i68 = getelementptr i8, ptr %tx, i32 104
  %33 = ptrtoint ptr %prev3.i.i68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i68, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %desc_node45, ptr %30, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end.i.i69, %do.end44.if.end46_crit_edge, %if.end.i.i, %do.end21.if.end46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @atc_desc_get(ptr noundef %atchan) unnamed_addr #4 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %free_list = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 14
  %0 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_list, align 4
  %cmp12.not90 = icmp eq ptr %1, %free_list
  br i1 %cmp12.not90, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in92 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn94, %for.inc.for.body_crit_edge ]
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %desc.093 = getelementptr i8, ptr %.pn.in92, i32 -128
  %2 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn94 = load ptr, ptr %.pn.in92, align 4
  %inc = add i32 %i.091, 1
  %flags.i = getelementptr i8, ptr %.pn.in92, i32 -96
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %do.body16, label %if.then

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in92) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in92, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in92, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in92, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in92, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

do.body16:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_desc_get.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_desc_get, %for.inc)) #10
          to label %if.then23 [label %for.inc], !srcloc !310

if.then23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_desc_get.__UNIQUE_ID_ddebug238, ptr noundef %device.i, ptr noundef nonnull @.str.82, ptr noundef %desc.093) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %do.body16
  %cmp12.not = icmp eq ptr %.pn94, %free_list
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit, %entry.for.end_crit_edge
  %i.1 = phi i32 [ %inc, %list_del.exit ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %ret.0 = phi ptr [ %desc.093, %list_del.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_desc_get.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_desc_get, %do.end53)) #10
          to label %if.then48 [label %do.end53], !srcloc !310

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i77 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i77, align 4
  %device.i78 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_desc_get.__UNIQUE_ID_ddebug239, ptr noundef %device.i78, ptr noundef nonnull @.str.83, i32 noundef %i.1) #10
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %for.end
  %tobool54.not = icmp eq ptr %ret.0, null
  br i1 %tobool54.not, label %if.then55, label %do.end53.if.end58_crit_edge

do.end53.if.end58_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %do.end53
  %17 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %atchan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #10
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %phys.i, align 4, !annotation !314
  %dma_desc_pool.i = getelementptr inbounds %struct.at_dma, ptr %18, i32 0, i32 5
  %20 = ptrtoint ptr %dma_desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_desc_pool.i, align 4
  %call.i.i79 = call ptr @dma_pool_alloc(ptr noundef %21, i32 noundef 2304, ptr noundef nonnull %phys.i) #10
  %tobool.not.i = icmp eq ptr %call.i.i79, null
  br i1 %tobool.not.i, label %if.then55.atc_alloc_descriptor.exit_crit_edge, label %if.then.i

if.then55.atc_alloc_descriptor.exit_crit_edge:    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %atc_alloc_descriptor.exit

if.then.i:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %tx_list.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i79, i32 0, i32 1
  %22 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i80 = getelementptr inbounds %struct.at_desc, ptr %call.i.i79, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i80 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_list.i, ptr %prev.i.i80, align 4
  %txd.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i79, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %atchan) #10
  %flags.i81 = getelementptr inbounds %struct.at_desc, ptr %call.i.i79, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %flags.i81 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %flags.i81, align 4
  %tx_submit.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i79, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @atc_tx_submit, ptr %tx_submit.i, align 4
  %26 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phys.i, align 4
  %phys5.i = getelementptr inbounds %struct.at_desc, ptr %call.i.i79, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %phys5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %phys5.i, align 4
  br label %atc_alloc_descriptor.exit

atc_alloc_descriptor.exit:                        ; preds = %if.then.i, %if.then55.atc_alloc_descriptor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #10
  br label %if.end58

if.end58:                                         ; preds = %atc_alloc_descriptor.exit, %do.end53.if.end58_crit_edge
  %ret.1 = phi ptr [ %ret.0, %do.end53.if.end58_crit_edge ], [ %call.i.i79, %atc_alloc_descriptor.exit ]
  ret ptr %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_desc_put(ptr noundef %atchan, ptr noundef %desc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %entry.if.end50_crit_edge, label %if.then

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %tx_list = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn71 = load ptr, ptr %tx_list, align 4
  %cmp7.not73 = icmp eq ptr %.pn71, %tx_list
  br i1 %cmp7.not73, label %if.then.for.end_crit_edge, label %do.body9.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body9.lr.ph:                                   ; preds = %if.then
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  br label %do.body9

do.body9:                                         ; preds = %for.inc.do.body9_crit_edge, %do.body9.lr.ph
  %.pn74 = phi ptr [ %.pn71, %do.body9.lr.ph ], [ %.pn, %for.inc.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_desc_put.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_desc_put, %for.inc)) #10
          to label %if.then17 [label %for.inc], !srcloc !310

if.then17:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %child.075 = getelementptr i8, ptr %.pn74, i32 -128
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_desc_put.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.88, ptr noundef %child.075) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %do.body9
  %3 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn74, align 4
  %cmp7.not = icmp eq ptr %.pn, %tx_list
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body9_crit_edge

for.inc.do.body9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %free_list = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 14
  %4 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %5, %tx_list
  br i1 %cmp.i.not.i, label %for.end.list_splice_init.exit_crit_edge, label %if.then.i

for.end.list_splice_init.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free_list, ptr %prev3.i.i, align 4
  store ptr %5, ptr %free_list, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %9, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev6.i.i, align 4
  %13 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %for.end.list_splice_init.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_desc_put.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_desc_put, %do.end46)) #10
          to label %if.then41 [label %do.end46], !srcloc !310

if.then41:                                        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i66 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i66, align 4
  %device.i67 = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_desc_put.__UNIQUE_ID_ddebug241, ptr noundef %device.i67, ptr noundef nonnull @.str.89, ptr noundef nonnull %desc) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %list_splice_init.exit
  %desc_node47 = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node47, ptr noundef %free_list, ptr noundef %17) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end46.list_add.exit_crit_edge

do.end46.list_add.exit_crit_edge:                 ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %desc_node47, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %desc_node47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %desc_node47, align 4
  %prev3.i.i68 = getelementptr inbounds %struct.at_desc, ptr %desc, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev3.i.i68 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_list, ptr %prev3.i.i68, align 4
  %21 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %desc_node47, ptr %free_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end46.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  br label %if.end50

if.end50:                                         ; preds = %list_add.exit, %entry.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @at_dma_filter(ptr nocapture noundef %chan, ptr noundef %slave) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %cmp = icmp eq ptr %1, %5
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %slave, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_dma_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !307
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #10, !srcloc !307
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr412.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr412.i) #10, !srcloc !304
  %all_chan_mask.i = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %all_chan_mask.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %all_chan_mask.i, align 4
  %conv13.i = zext i8 %10 to i32
  %and14.i = and i32 %8, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool.not15.i = icmp eq i32 %and14.i, 0
  br i1 %tobool.not15.i, label %entry.at_dma_off.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.at_dma_off.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at_dma_off.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !309
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !304
  %14 = ptrtoint ptr %all_chan_mask.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %all_chan_mask.i, align 4
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %13, %conv.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.at_dma_off.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.at_dma_off.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at_dma_off.exit

at_dma_off.exit:                                  ; preds = %do.end.i.at_dma_off.exit_crit_edge, %entry.at_dma_off.exit_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %at_dma_off.exit.if.end_crit_edge, label %if.then

at_dma_off.exit.if.end_crit_edge:                 ; preds = %at_dma_off.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %at_dma_off.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_dma_controller_free(ptr noundef nonnull %17) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %at_dma_off.exit.if.end_crit_edge
  tail call void @dma_async_device_unregister(ptr noundef %1) #10
  %memset_pool = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %memset_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memset_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %19) #10
  %dma_desc_pool = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %21) #10
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %call4 = tail call ptr @free_irq(i32 noundef %call3, ptr noundef %1) #10
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channels, align 4
  %cmp.not47 = icmp eq ptr %23, %channels
  br i1 %cmp.not47, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in48 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %23, %if.end.for.body_crit_edge ]
  %24 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn.in48, align 4
  %chan_id = getelementptr i8, ptr %.pn.in48, i32 -16
  %25 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chan_id, align 4
  %shl.i.i = shl nuw i32 1, %26
  %add.i.i = add i32 %26, 16
  %shl1.i.i = shl nuw i32 1, %add.i.i
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %or.i.i) #10, !srcloc !307
  %tasklet = getelementptr i8, ptr %.pn.in48, i32 48
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn.in48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %35 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %clk = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %38) #10
  tail call void @clk_unprepare(ptr noundef %38) #10
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %40) #10
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  tail call void @iounmap(ptr noundef %42) #10
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %regs.i, align 4
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %44 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call22, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call22, i32 0, i32 1
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %45
  %add.i = add i32 %sub.i, %47
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %45, i32 noundef %add.i) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at_dma_shutdown(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !307
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #10, !srcloc !307
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr412.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr412.i) #10, !srcloc !304
  %all_chan_mask.i = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %all_chan_mask.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %all_chan_mask.i, align 4
  %conv13.i = zext i8 %10 to i32
  %and14.i = and i32 %8, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool.not15.i = icmp eq i32 %and14.i, 0
  br i1 %tobool.not15.i, label %entry.at_dma_off.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.at_dma_off.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at_dma_off.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !309
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !304
  %14 = ptrtoint ptr %all_chan_mask.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %all_chan_mask.i, align 4
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %13, %conv.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.at_dma_off.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.at_dma_off.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at_dma_off.exit

at_dma_off.exit:                                  ; preds = %do.end.i.at_dma_off.exit_crit_edge, %entry.at_dma_off.exit_crit_edge
  %clk = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_dma_prepare(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %cmp.not27 = icmp eq ptr %3, %channels
  br i1 %cmp.not27, label %entry.cleanup17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn29, %for.inc.critedge.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn29 = load ptr, ptr %.pn.in28, align 4
  %chan.0 = getelementptr i8, ptr %.pn.in28, i32 -32
  %5 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan.0, align 4
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !304
  %mask.i = getelementptr i8, ptr %.pn.in28, i32 40
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mask.i, align 4
  %conv.i = zext i8 %11 to i32
  %and.i = and i32 %9, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc.critedge_crit_edge, label %land.lhs.true

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %status.i = getelementptr i8, ptr %.pn.in28, i32 44
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status.i, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup17_crit_edge, label %land.lhs.true.for.inc.critedge_crit_edge

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.critedge

land.lhs.true.cleanup17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

for.inc.critedge:                                 ; preds = %land.lhs.true.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %cmp.not = icmp eq ptr %.pn29, %channels
  br i1 %cmp.not, label %for.inc.critedge.cleanup17_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.critedge.cleanup17_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

cleanup17:                                        ; preds = %for.inc.critedge.cleanup17_crit_edge, %land.lhs.true.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup17_crit_edge ], [ 0, %for.inc.critedge.cleanup17_crit_edge ], [ -11, %land.lhs.true.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_dma_suspend_noirq(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %cmp.not32 = icmp eq ptr %3, %channels
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in33 = phi ptr [ %.pn34, %if.end.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn34 = load ptr, ptr %.pn.in33, align 4
  %status.i = getelementptr i8, ptr %.pn.in33, i32 44
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %chan.0 = getelementptr i8, ptr %.pn.in33, i32 -32
  tail call fastcc void @atc_suspend_cyclic(ptr noundef %chan.0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %ch_regs = getelementptr i8, ptr %.pn.in33, i32 36
  %8 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_regs, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !304
  %save_cfg = getelementptr i8, ptr %.pn.in33, i32 72
  %11 = ptrtoint ptr %save_cfg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %save_cfg, align 4
  %cmp.not = icmp eq ptr %.pn34, %channels
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %regs = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !304
  %save_imr = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %save_imr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %save_imr, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !307
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #10, !srcloc !307
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr412.i = getelementptr i8, ptr %21, i32 48
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr412.i) #10, !srcloc !304
  %all_chan_mask.i = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %all_chan_mask.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %all_chan_mask.i, align 4
  %conv13.i = zext i8 %24 to i32
  %and14.i = and i32 %22, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool.not15.i = icmp eq i32 %and14.i, 0
  br i1 %tobool.not15.i, label %for.end.at_dma_off.exit_crit_edge, label %for.end.do.end.i_crit_edge

for.end.do.end.i_crit_edge:                       ; preds = %for.end
  br label %do.end.i

for.end.at_dma_off.exit_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %at_dma_off.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %for.end.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !309
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !304
  %28 = ptrtoint ptr %all_chan_mask.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %all_chan_mask.i, align 4
  %conv.i = zext i8 %29 to i32
  %and.i = and i32 %27, %conv.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.at_dma_off.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.at_dma_off.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at_dma_off.exit

at_dma_off.exit:                                  ; preds = %do.end.i.at_dma_off.exit_crit_edge, %for.end.at_dma_off.exit_crit_edge
  %clk = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %31) #10
  tail call void @clk_unprepare(ptr noundef %31) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_dma_resume_noirq(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %regs = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #10, !srcloc !307
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr343 = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr343) #10, !srcloc !304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not44 = icmp eq i32 %8, 0
  br i1 %tobool.not44, label %clk_prepare_enable.exit.while.end_crit_edge, label %clk_prepare_enable.exit.do.end_crit_edge

clk_prepare_enable.exit.do.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  br label %do.end

clk_prepare_enable.exit.while.end_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %clk_prepare_enable.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !330
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !304
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %clk_prepare_enable.exit.while.end_crit_edge
  %save_imr = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %save_imr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %save_imr, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #10, !srcloc !307
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels, align 4
  %cmp.not46 = icmp eq ptr %17, %channels
  br i1 %cmp.not46, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %while.end.for.body_crit_edge
  %.pn.in47 = phi ptr [ %.pn48, %if.end.for.body_crit_edge ], [ %17, %while.end.for.body_crit_edge ]
  %18 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn48 = load ptr, ptr %.pn.in47, align 4
  %save_cfg = getelementptr i8, ptr %.pn.in47, i32 72
  %19 = ptrtoint ptr %save_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %save_cfg, align 4
  %ch_regs = getelementptr i8, ptr %.pn.in47, i32 36
  %21 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_regs, align 4
  %add.ptr22 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %20) #10, !srcloc !307
  %status.i = getelementptr i8, ptr %.pn.in47, i32 44
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status.i, align 4
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %chan.0 = getelementptr i8, ptr %.pn.in47, i32 -32
  %26 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan.0, align 4
  %28 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ch_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #10, !srcloc !307
  %30 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ch_regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #10, !srcloc !307
  %32 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ch_regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !307
  %34 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ch_regs, align 4
  %add.ptr6.i = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #10, !srcloc !307
  %save_dscr.i = getelementptr i8, ptr %.pn.in47, i32 76
  %36 = ptrtoint ptr %save_dscr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %save_dscr.i, align 4
  %38 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch_regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %37) #10, !srcloc !307
  %mask.i = getelementptr i8, ptr %.pn.in47, i32 40
  %40 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mask.i, align 4
  %conv.i = zext i8 %41 to i32
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %27, i32 0, i32 1
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %conv.i) #10, !srcloc !307
  %44 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan.0, align 4
  %dev.i.i.i = getelementptr i8, ptr %.pn.in47, i32 -12
  %46 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  %chan_id.i.i = getelementptr i8, ptr %.pn.in47, i32 -16
  %48 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan_id.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.at_dma, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 32
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !304
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %54, i32 48
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i.i, ptr noundef nonnull @.str.37, i32 noundef %49, i32 noundef %52, i32 noundef %55) #15
  %56 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i.i, align 4
  %device.i41.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ch_regs, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !304
  %61 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ch_regs, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #10, !srcloc !304
  %64 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ch_regs, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %65, i32 12
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i.i) #10, !srcloc !304
  %67 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ch_regs, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %68, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i) #10, !srcloc !304
  %70 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ch_regs, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %71, i32 20
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i) #10, !srcloc !304
  %73 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ch_regs, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %74, i32 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i41.i.i, ptr noundef nonnull @.str.41, i32 noundef %60, i32 noundef %63, i32 noundef %66, i32 noundef %69, i32 noundef %72, i32 noundef %75) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %cmp.not = icmp eq ptr %.pn48, %channels
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %while.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc_suspend_cyclic(ptr noundef %atchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 6
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.124) #15
  %5 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %atchan, align 4
  %chan_id2.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 4
  %7 = ptrtoint ptr %chan_id2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_id2.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc_pause.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atc_suspend_cyclic, %atc_pause.exit)) #10
          to label %if.then.i [label %atc_pause.exit], !srcloc !310

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc_pause.__UNIQUE_ID_ddebug267, ptr noundef %device.i.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #10
  br label %atc_pause.exit

atc_pause.exit:                                   ; preds = %if.then.i, %do.end
  %lock.i = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 11
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %add.i = add i32 %8, 8
  %shl.i = shl nuw i32 1, %add.i
  %regs.i = getelementptr inbounds %struct.at_dma, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shl.i) #10, !srcloc !307
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call12.i) #10
  br label %if.end

if.end:                                           ; preds = %atc_pause.exit, %entry.if.end_crit_edge
  %ch_regs = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 2
  %13 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !304
  %save_dscr = getelementptr inbounds %struct.at_dma_chan, ptr %atchan, i32 0, i32 9
  %16 = ptrtoint ptr %save_dscr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %save_dscr, align 4
  %17 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %atchan, align 4
  %dev.i.i10 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %19 = ptrtoint ptr %dev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i10, align 4
  %device.i.i11 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 4
  %21 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_id.i, align 4
  %regs.i12 = getelementptr inbounds %struct.at_dma, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %regs.i12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %24, i32 32
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #10, !srcloc !304
  %26 = ptrtoint ptr %regs.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i12, align 4
  %add.ptr6.i = getelementptr i8, ptr %27, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i11, ptr noundef nonnull @.str.37, i32 noundef %22, i32 noundef %25, i32 noundef %28) #15
  %29 = ptrtoint ptr %dev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i10, align 4
  %device.i41.i = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ch_regs, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !304
  %34 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ch_regs, align 4
  %add.ptr16.i = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !304
  %37 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ch_regs, align 4
  %add.ptr19.i = getelementptr i8, ptr %38, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #10, !srcloc !304
  %40 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ch_regs, align 4
  %add.ptr22.i = getelementptr i8, ptr %41, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #10, !srcloc !304
  %43 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ch_regs, align 4
  %add.ptr25.i = getelementptr i8, ptr %44, i32 20
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #10, !srcloc !304
  %46 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch_regs, align 4
  %add.ptr28.i = getelementptr i8, ptr %47, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #10, !srcloc !304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i41.i, ptr noundef nonnull @.str.41, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %48) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !243, !244, !245, !247, !248, !250, !251, !253, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !274, !276, !277, !279, !280, !282, !283, !285, !287, !289, !290, !291, !292, !293}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @__param_init_nr_desc_per_channel, !1, !"__param_init_nr_desc_per_channel", i1 false, i1 false}
!1 = !{!"../drivers/dma/at_hdmac.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_init_nr_desc_per_channeltype236, !1, !"__UNIQUE_ID_init_nr_desc_per_channeltype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_init_nr_desc_per_channel237, !4, !"__UNIQUE_ID_init_nr_desc_per_channel237", i1 false, i1 false}
!4 = !{!"../drivers/dma/at_hdmac.c", i32 54, i32 1}
!5 = !{ptr @__initcall__kmod_at_hdmac__279_2170_at_dma_init4, !6, !"__initcall__kmod_at_hdmac__279_2170_at_dma_init4", i1 false, i1 false}
!6 = !{!"../drivers/dma/at_hdmac.c", i32 2170, i32 1}
!7 = !{ptr @__exitcall_at_dma_exit, !8, !"__exitcall_at_dma_exit", i1 false, i1 false}
!8 = !{!"../drivers/dma/at_hdmac.c", i32 2176, i32 1}
!9 = !{ptr @__UNIQUE_ID_description280, !10, !"__UNIQUE_ID_description280", i1 false, i1 false}
!10 = !{!"../drivers/dma/at_hdmac.c", i32 2178, i32 1}
!11 = !{ptr @__UNIQUE_ID_author281, !12, !"__UNIQUE_ID_author281", i1 false, i1 false}
!12 = !{!"../drivers/dma/at_hdmac.c", i32 2179, i32 1}
!13 = !{ptr @__UNIQUE_ID_file282, !14, !"__UNIQUE_ID_file282", i1 false, i1 false}
!14 = !{!"../drivers/dma/at_hdmac.c", i32 2180, i32 1}
!15 = !{ptr @__UNIQUE_ID_license283, !14, !"__UNIQUE_ID_license283", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias284, !17, !"__UNIQUE_ID_alias284", i1 false, i1 false}
!17 = !{!"../drivers/dma/at_hdmac.c", i32 2181, i32 1}
!18 = !{ptr @__param_str_init_nr_desc_per_channel, !1, !"__param_str_init_nr_desc_per_channel", i1 false, i1 false}
!19 = !{ptr @init_nr_desc_per_channel, !20, !"init_nr_desc_per_channel", i1 false, i1 false}
!20 = !{!"../drivers/dma/at_hdmac.c", i32 52, i32 21}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/at_hdmac.c", i32 1853, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/at_hdmac.c", i32 1865, i32 46}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/at_hdmac.c", i32 1872, i32 41}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/at_hdmac.c", i32 1876, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @at_dma_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @at_dma_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/at_hdmac.c", i32 1882, i32 39}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/at_hdmac.c", i32 1885, i32 3}
!39 = !{ptr @at_dma_probe._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @at_dma_probe._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @at_dma_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/dma/at_hdmac.c", i32 1907, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/at_hdmac.c", i32 1955, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @at_dma_probe._entry.13, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @at_dma_probe._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/at_hdmac.c", i32 1972, i32 4}
!55 = !{ptr @at_dma_probe._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @at_dma_probe._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @at91sam9rl_config, !58, !"at91sam9rl_config", i1 false, i1 false}
!58 = !{!"../drivers/dma/at_hdmac.c", i32 1734, i32 36}
!59 = !{ptr @at91sam9g45_config, !60, !"at91sam9g45_config", i1 false, i1 false}
!60 = !{!"../drivers/dma/at_hdmac.c", i32 1737, i32 36}
!61 = !{ptr @atmel_dma_dt_ids, !62, !"atmel_dma_dt_ids", i1 false, i1 false}
!62 = !{!"../drivers/dma/at_hdmac.c", i32 1742, i32 34}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/at_hdmac.c", i32 649, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @at_dma_interrupt.__UNIQUE_ID_ddebug246, !64, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/at_hdmac.c", i32 588, i32 2}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @atc_handle_error._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @atc_handle_error._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/at_hdmac.c", i32 590, i32 2}
!75 = !{ptr @atc_handle_error._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @atc_handle_error._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/at_hdmac.c", i32 234, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @atc_dostart._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @atc_dostart._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/at_hdmac.c", i32 236, i32 3}
!84 = !{ptr @atc_dostart._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @atc_dostart._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/at_hdmac_regs.h", i32 382, i32 2}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vdbg_dump_regs._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @vdbg_dump_regs._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/at_hdmac_regs.h", i32 388, i32 2}
!94 = !{ptr @vdbg_dump_regs._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @vdbg_dump_regs._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/at_hdmac_regs.h", i32 403, i32 2}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @atc_dump_lli._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @atc_dump_lli._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dma/at_hdmac.c", i32 456, i32 2}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @atc_chain_complete.__UNIQUE_ID_ddebug242, !102, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/at_hdmac.c", i32 611, i32 2}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @atc_handle_cyclic.__UNIQUE_ID_ddebug245, !106, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/at_hdmac.c", i32 533, i32 2}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @atc_advance_work.__UNIQUE_ID_ddebug244, !110, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/dma/at_hdmac.c", i32 503, i32 2}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @atc_complete_all.__UNIQUE_ID_ddebug243, !114, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/at_hdmac.c", i32 1561, i32 2}
!119 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug273, !118, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/at_hdmac.c", i32 1565, i32 3}
!123 = !{ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug274, !122, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/at_hdmac.c", i32 1570, i32 3}
!126 = !{ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug275, !125, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/at_hdmac.c", i32 1593, i32 4}
!129 = !{ptr @atc_alloc_chan_resources._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @atc_alloc_chan_resources._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/dma/at_hdmac.c", i32 1605, i32 2}
!133 = !{ptr @atc_alloc_chan_resources.__UNIQUE_ID_ddebug276, !132, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/at_hdmac.c", i32 695, i32 3}
!136 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @atc_tx_submit.__UNIQUE_ID_ddebug247, !135, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/at_hdmac.c", i32 700, i32 3}
!140 = !{ptr @atc_tx_submit.__UNIQUE_ID_ddebug248, !139, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/dma/at_hdmac.c", i32 1628, i32 3}
!143 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @atc_free_chan_resources.__UNIQUE_ID_ddebug277, !142, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/dma/at_hdmac.c", i32 1642, i32 2}
!147 = !{ptr @atc_free_chan_resources.__UNIQUE_ID_ddebug278, !146, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/at_hdmac.c", i32 1517, i32 3}
!150 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @atc_tx_status.__UNIQUE_ID_ddebug270, !149, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/dma/at_hdmac.c", i32 1523, i32 2}
!154 = !{ptr @atc_tx_status.__UNIQUE_ID_ddebug271, !153, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dma/at_hdmac.c", i32 1537, i32 2}
!157 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @atc_issue_pending.__UNIQUE_ID_ddebug272, !156, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/dma/at_hdmac.c", i32 736, i32 2}
!161 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @atc_prep_dma_interleaved._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @atc_prep_dma_interleaved._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/dma/at_hdmac.c", i32 753, i32 4}
!166 = !{ptr @atc_prep_dma_interleaved._entry.72, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @atc_prep_dma_interleaved._entry_ptr.74, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/dma/at_hdmac.c", i32 767, i32 3}
!170 = !{ptr @atc_prep_dma_interleaved._entry.75, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @atc_prep_dma_interleaved._entry_ptr.77, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/dma/at_hdmac.c", i32 784, i32 3}
!174 = !{ptr @atc_prep_dma_interleaved._entry.78, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @atc_prep_dma_interleaved._entry_ptr.80, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/at_hdmac.c", i32 160, i32 3}
!178 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @atc_desc_get.__UNIQUE_ID_ddebug238, !177, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/dma/at_hdmac.c", i32 164, i32 2}
!182 = !{ptr @atc_desc_get.__UNIQUE_ID_ddebug239, !181, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/dma/at_hdmac.c", i32 832, i32 2}
!185 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @atc_prep_dma_memcpy.__UNIQUE_ID_ddebug249, !184, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/dma/at_hdmac.c", i32 836, i32 3}
!189 = !{ptr @atc_prep_dma_memcpy.__UNIQUE_ID_ddebug250, !188, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/dma/at_hdmac.c", i32 187, i32 4}
!192 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @atc_desc_put.__UNIQUE_ID_ddebug240, !191, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/dma/at_hdmac.c", i32 191, i32 3}
!196 = !{ptr @atc_desc_put.__UNIQUE_ID_ddebug241, !195, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/dma/at_hdmac.c", i32 946, i32 2}
!199 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @atc_prep_dma_memset.__UNIQUE_ID_ddebug253, !198, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/dma/at_hdmac.c", i32 950, i32 3}
!203 = !{ptr @atc_prep_dma_memset.__UNIQUE_ID_ddebug254, !202, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/dma/at_hdmac.c", i32 955, i32 3}
!206 = !{ptr @atc_prep_dma_memset.__UNIQUE_ID_ddebug255, !205, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/dma/at_hdmac.c", i32 962, i32 3}
!209 = !{ptr @atc_prep_dma_memset._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @atc_prep_dma_memset._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/dma/at_hdmac.c", i32 970, i32 3}
!213 = !{ptr @atc_prep_dma_memset._entry.95, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @atc_prep_dma_memset._entry_ptr.97, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/dma/at_hdmac.c", i32 906, i32 3}
!217 = !{ptr @atc_create_memset_desc._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @atc_create_memset_desc._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/dma/at_hdmac.c", i32 913, i32 3}
!221 = !{ptr @atc_create_memset_desc._entry.99, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @atc_create_memset_desc._entry_ptr.101, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/dma/at_hdmac.c", i32 1009, i32 2}
!225 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug256, !224, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/dma/at_hdmac.c", i32 1013, i32 3}
!229 = !{ptr @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug257, !228, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!230 = !{ptr @atc_prep_dma_memset_sg._entry, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/dma/at_hdmac.c", i32 1020, i32 3}
!232 = !{ptr @atc_prep_dma_memset_sg._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/dma/at_hdmac.c", i32 1030, i32 3}
!235 = !{ptr @atc_prep_dma_memset_sg.__UNIQUE_ID_ddebug258, !234, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!236 = !{ptr @atc_prep_dma_memset_sg._entry.106, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/dma/at_hdmac.c", i32 1034, i32 4}
!238 = !{ptr @atc_prep_dma_memset_sg._entry_ptr.107, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/dma/at_hdmac.c", i32 1099, i32 2}
!241 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug259, !240, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!243 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/dma/at_hdmac.c", i32 1105, i32 3}
!247 = !{ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug260, !246, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!248 = !{ptr @.str.113, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/dma/at_hdmac.c", i32 1134, i32 5}
!250 = !{ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug261, !249, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!251 = !{ptr @atc_prep_slave_sg.__UNIQUE_ID_ddebug262, !252, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!252 = !{!"../drivers/dma/at_hdmac.c", i32 1175, i32 5}
!253 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/dma/at_hdmac.c", i32 1212, i32 2}
!255 = !{ptr @atc_prep_slave_sg._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @atc_prep_slave_sg._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.115, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/dma/at_hdmac.c", i32 1315, i32 2}
!259 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug263, !258, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!261 = !{ptr @.str.117, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/dma/at_hdmac.c", i32 1321, i32 3}
!263 = !{ptr @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug264, !262, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!264 = !{ptr @.str.118, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/dma/at_hdmac.c", i32 1327, i32 3}
!266 = !{ptr @atc_prep_dma_cyclic.__UNIQUE_ID_ddebug265, !265, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!267 = !{ptr @atc_prep_dma_cyclic._entry, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../drivers/dma/at_hdmac.c", i32 1368, i32 2}
!269 = !{ptr @atc_prep_dma_cyclic._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/dma/at_hdmac.c", i32 1380, i32 2}
!272 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @atc_config.__UNIQUE_ID_ddebug266, !271, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!274 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/dma/at_hdmac.c", i32 1401, i32 2}
!276 = !{ptr @atc_pause.__UNIQUE_ID_ddebug267, !275, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!277 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/dma/at_hdmac.c", i32 1420, i32 2}
!279 = !{ptr @atc_resume.__UNIQUE_ID_ddebug268, !278, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!280 = !{ptr @.str.123, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/dma/at_hdmac.c", i32 1445, i32 2}
!282 = !{ptr @atc_terminate_all.__UNIQUE_ID_ddebug269, !281, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!283 = !{ptr @at_dma_driver, !284, !"at_dma_driver", i1 false, i1 false}
!284 = !{!"../drivers/dma/at_hdmac.c", i32 2155, i32 31}
!285 = !{ptr @at_dma_dev_pm_ops, !286, !"at_dma_dev_pm_ops", i1 false, i1 false}
!286 = !{!"../drivers/dma/at_hdmac.c", i32 2149, i32 32}
!287 = !{ptr @.str.124, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/dma/at_hdmac.c", i32 2070, i32 3}
!289 = !{ptr @.str.125, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.126, !288, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @atc_suspend_cyclic._entry, !288, !"_entry", i1 false, i1 false}
!292 = !{ptr @atc_suspend_cyclic._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @atdma_devtypes, !294, !"atdma_devtypes", i1 false, i1 false}
!294 = !{!"../drivers/dma/at_hdmac.c", i32 1757, i32 40}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{i64 6358840}
!305 = !{i64 2154702802}
!306 = !{i64 2154702644}
!307 = !{i64 6358422}
!308 = !{i64 2154698095}
!309 = !{i64 2154697937}
!310 = !{i64 2148781580, i64 2148781585, i64 2148781598, i64 2148781642, i64 2148781676, i64 2148781697}
!311 = !{!"branch_weights", i32 1, i32 2000}
!312 = !{!"branch_weights", i32 2000, i32 1}
!313 = !{i64 2154675823, i64 2154676311, i64 2154675860, i64 2154675916, i64 2154675950, i64 2154675974, i64 2154676015, i64 2154676036, i64 2154676064, i64 2154676098}
!314 = !{!"auto-init"}
!315 = !{i64 2154682003, i64 2154682491, i64 2154682040, i64 2154682096, i64 2154682130, i64 2154682154, i64 2154682195, i64 2154682216, i64 2154682244, i64 2154682278}
!316 = !{i64 2154683625, i64 2154684113, i64 2154683662, i64 2154683718, i64 2154683752, i64 2154683776, i64 2154683817, i64 2154683838, i64 2154683866, i64 2154683900}
!317 = !{i64 2154685247, i64 2154685735, i64 2154685284, i64 2154685340, i64 2154685374, i64 2154685398, i64 2154685439, i64 2154685460, i64 2154685488, i64 2154685522}
!318 = !{i64 2154457520}
!319 = !{i64 2154540721}
!320 = !{i64 2154540915}
!321 = !{i64 2154541148}
!322 = !{i8 0, i8 2}
!323 = !{!"branch_weights", i32 6003000, i32 -294967296}
!324 = !{!"branch_weights", i32 4000000, i32 4001}
!325 = !{i32 0, i32 33}
!326 = !{i64 2154655384}
!327 = !{i64 2154655226}
!328 = !{i64 2154456020, i64 2154456507, i64 2154456057, i64 2154456113, i64 2154456147, i64 2154456171, i64 2154456212, i64 2154456233, i64 2154456261, i64 2154456295}
!329 = !{i64 2154733009}
!330 = !{i64 2154732851}
