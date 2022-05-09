; ModuleID = '/llk/IR_all_yes/drivers/dma/amba-pl08x.c_pt.bc'
source_filename = "../drivers/dma/amba-pl08x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pl08x_filter_id\22, \22a\22\09"
module asm "\09.weak\09__crc_pl08x_filter_id\09\09\09\09"
module asm "\09.long\09__crc_pl08x_filter_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl08x_filter_id:\09\09\09\09\09"
module asm "\09.asciz \09\22pl08x_filter_id\22\09\09\09\09\09"
module asm "__kstrtabns_pl08x_filter_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.burst_table = type { i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vendor_data = type { i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.pl08x_dma_chan = type { %struct.virt_dma_chan, ptr, ptr, ptr, %struct.dma_slave_config, ptr, ptr, i32, i8, i32, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.pl08x_driver_data = type { %struct.dma_device, %struct.dma_device, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl08x_platform_data = type { ptr, i32, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32 }
%struct.pl08x_phy_chan = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8 }
%struct.pl08x_txd = type { %struct.virt_dma_desc, %struct.list_head, i32, ptr, i32, i32, i8, i8 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.pl08x_sg = type { i32, i32, i32, %struct.list_head }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.pl08x_channel_data = type { ptr, i32, i32, i32, i32, i8, i8 }
%struct.pl08x_lli_build_data = type { ptr, %struct.pl08x_bus_data, %struct.pl08x_bus_data, i32, i32 }
%struct.pl08x_bus_data = type { i32, i8, i8 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@pl08x_amba_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl08x_probe, ptr null, ptr null, ptr @pl08x_ids }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pl08x_filter_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl08x_filter_id = external dso_local constant [0 x i8], align 1
@__ksymtab_pl08x_filter_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl08x_filter_id to i32), ptr @__kstrtab_pl08x_filter_id, ptr @__kstrtabns_pl08x_filter_id }, section "___ksymtab_gpl+pl08x_filter_id", align 4
@__initcall__kmod_amba_pl08x__320_3084_pl08x_init4 = internal global ptr @pl08x_init, section ".initcall4.init", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl08xdmac\00", [22 x i8] zeroinitializer }, align 32
@pl08x_ids = internal constant { [6 x %struct.amba_id], [56 x i8] } { [6 x %struct.amba_id] [%struct.amba_id { i32 169087104, i32 -1, ptr @vendor_pl080s }, %struct.amba_id { i32 266368, i32 1048575, ptr @vendor_pl080 }, %struct.amba_id { i32 266369, i32 1048575, ptr @vendor_pl081 }, %struct.amba_id { i32 2621568, i32 16777215, ptr @vendor_nomadik }, %struct.amba_id { i32 241792, i32 1048575, ptr @vendor_ftdmac020 }, %struct.amba_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@pl08x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FTDMAC020 %d.%d rel %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl08x_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/dma/amba-pl08x.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr = internal global ptr @pl08x_probe._entry, section ".printk_index", align 4
@pl08x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"FTDMAC020 %d channels, %s built-in bridge, %s, %s linked lists\0A\00", [32 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.8 = internal global ptr @pl08x_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"has\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AHB0 and AHB1\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AHB0\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"supports\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"does not support\00", [47 x i8] zeroinitializer }, align 32
@pl08x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2753, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"linked lists not supported, required\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.18 = internal global ptr @pl08x_probe._entry.15, section ".printk_index", align 4
@pl08x_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 2817, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.22 = internal global ptr @pl08x_probe._entry.19, section ".printk_index", align 4
@pl08x_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2864, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed to request interrupt %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.25 = internal global ptr @pl08x_probe._entry.23, section ".printk_index", align 4
@pl08x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ch->lock\00", [22 x i8] zeroinitializer }, align 32
@pl08x_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 2912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"physical channel %d reserved for secure access only\0A\00", [43 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.29 = internal global ptr @pl08x_probe._entry.27, section ".printk_index", align 4
@pl08x_probe.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.2, ptr @.str.3, ptr @.str.31, i8 2, i8 -39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"amba_pl08x\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"physical channel %d is %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUSY\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FREE\00", [27 x i8] zeroinitializer }, align 32
@pl08x_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 2927, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s failed to enumerate memcpy channels - %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.36 = internal global ptr @pl08x_probe._entry.34, section ".printk_index", align 4
@pl08x_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 2938, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s failed to enumerate slave channels - %d\0A\00", [52 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.39 = internal global ptr @pl08x_probe._entry.37, section ".printk_index", align 4
@pl08x_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 2947, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s failed to register memcpy as an async device - %d\0A\00", [42 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.42 = internal global ptr @pl08x_probe._entry.40, section ".printk_index", align 4
@pl08x_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 2956, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s failed to register slave as an async device - %d\0A\00", [43 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.45 = internal global ptr @pl08x_probe._entry.43, section ".printk_index", align 4
@pl08x_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 2965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DMA: PL%03x%s rev%u at 0x%08llx irq %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pl08x_probe._entry_ptr.48 = internal global ptr @pl08x_probe._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pl08x_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1902, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s no memory for descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl08x_prep_dma_memcpy\00", [42 x i8] zeroinitializer }, align 32
@pl08x_prep_dma_memcpy._entry_ptr = internal global ptr @pl08x_prep_dma_memcpy._entry, section ".printk_index", align 4
@pl08x_ftdmac020_memcpy_cctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1852, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"illegal bus width for memcpy, set to 8 bits\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pl08x_ftdmac020_memcpy_cctl\00", [36 x i8] zeroinitializer }, align 32
@pl08x_ftdmac020_memcpy_cctl._entry_ptr = internal global ptr @pl08x_ftdmac020_memcpy_cctl._entry, section ".printk_index", align 4
@pl08x_memcpy_cctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1769, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"illegal burst size for memcpy, set to 1\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pl08x_memcpy_cctl\00", [46 x i8] zeroinitializer }, align 32
@pl08x_memcpy_cctl._entry_ptr = internal global ptr @pl08x_memcpy_cctl._entry, section ".printk_index", align 4
@pl08x_memcpy_cctl._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.56, ptr @.str.3, i32 1808, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pl08x_memcpy_cctl._entry_ptr.58 = internal global ptr @pl08x_memcpy_cctl._entry.57, section ".printk_index", align 4
@pl08x_fill_llis_for_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1270, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s no memory for llis\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pl08x_fill_llis_for_desc\00", [39 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc._entry_ptr = internal global ptr @pl08x_fill_llis_for_desc._entry, section ".printk_index", align 4
@pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 1, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"src=0x%08llx%s/%u dst=0x%08llx%s/%u len=%zu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.60, ptr @.str.3, ptr @.str.63, i8 1, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mbus=%s sbus=%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dst\00", [28 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.60, ptr @.str.3, i32 1342, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s sg len can't be zero\00", [40 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc._entry_ptr.68 = internal global ptr @pl08x_fill_llis_for_desc._entry.66, section ".printk_index", align 4
@pl08x_fill_llis_for_desc._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.60, ptr @.str.3, i32 1351, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s src & dst address must be aligned to src & dst width if peripheral is flow controller\00", [39 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc._entry_ptr.71 = internal global ptr @pl08x_fill_llis_for_desc._entry.69, section ".printk_index", align 4
@pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.60, ptr @.str.3, ptr @.str.72, i8 1, i8 89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s byte width LLIs (remain 0x%08zx)\0A\00", [59 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.60, ptr @.str.3, ptr @.str.73, i8 1, i8 92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s set down bus width to one byte\0A\00", [61 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.60, ptr @.str.3, ptr @.str.74, i8 1, i8 95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s max bytes per lli = %zu\0A\00", [36 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.60, ptr @.str.3, ptr @.str.75, i8 1, i8 102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s fill lli with single lli chunk of size 0x%08zx (remainder 0x%08zx)\0A\00", [57 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.60, ptr @.str.3, ptr @.str.76, i8 1, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s align with boundary, send odd bytes (remain %zu)\0A\00", [43 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.60, ptr @.str.3, i32 1459, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s size of encoded lli:s don't match total txd, transferred 0x%08zx from size 0x%08zx\0A\00", [41 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc._entry_ptr.79 = internal global ptr @pl08x_fill_llis_for_desc._entry.77, section ".printk_index", align 4
@pl08x_fill_llis_for_desc._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.60, ptr @.str.3, i32 1466, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s need to increase MAX_NUM_TSFR_LLIS from 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@pl08x_fill_llis_for_desc._entry_ptr.82 = internal global ptr @pl08x_fill_llis_for_desc._entry.80, section ".printk_index", align 4
@pl08x_dump_lli.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 1, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl08x_dump_lli\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%-3s %-9s  %-10s %-10s %-10s %-10s %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lli\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csrc\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdst\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clli\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cctl\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cctl2\00", [26 x i8] zeroinitializer }, align 32
@pl08x_dump_lli.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.83, ptr @.str.3, ptr @.str.91, i8 1, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%3d @%p: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@pl08x_dump_lli.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.83, ptr @.str.3, ptr @.str.92, i8 1, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%-3s %-9s  %-10s %-10s %-10s %s\0A\00", [63 x i8] zeroinitializer }, align 32
@pl08x_dump_lli.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.83, ptr @.str.3, ptr @.str.93, i8 1, i8 54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%3d @%p: 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.94, ptr @.str.3, ptr @.str.95, i8 0, i8 -40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pl08x_phy_alloc_and_start\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no physical channel available for xfer on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.94, ptr @.str.3, ptr @.str.96, i8 0, i8 -38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"allocated physical channel %d for xfer on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@pl08x_write_lli.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.97, ptr @.str.3, ptr @.str.98, i8 0, i8 100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pl08x_write_lli\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"WRITE channel %d: csrc=0x%08x, cdst=0x%08x, clli=0x%08x, cctl=0x%08x, cctl2=0x%08x, ccfg=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@pl08x_write_lli.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.97, ptr @.str.3, ptr @.str.99, i8 0, i8 101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"WRITE channel %d: csrc=0x%08x, cdst=0x%08x, clli=0x%08x, cctl=0x%08x, ccfg=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@pl08x_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 2151, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: PL080S does not support peripheral flow control\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pl08x_config\00", [19 x i8] zeroinitializer }, align 32
@pl08x_config._entry_ptr = internal global ptr @pl08x_config._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pl08x_pause_phy_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pl08x: channel%u timeout waiting for pause\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pl08x_pause_phy_chan\00", [43 x i8] zeroinitializer }, align 32
@pl08x_pause_phy_chan._entry_ptr = internal global ptr @pl08x_pause_phy_chan._entry, section ".printk_index", align 4
@pl08x_phy_reassign_start.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pl08x_phy_reassign_start\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"reassigned physical channel %d for xfer on %s\0A\00", [49 x i8] zeroinitializer }, align 32
@pl08x_prep_slave_sg.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 2, i8 3, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl08x_prep_slave_sg\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s prepare transaction of %d bytes from %s\0A\00", [52 x i8] zeroinitializer }, align 32
@pl08x_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 2076, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s no mem for pl080 sg\0A\00", [40 x i8] zeroinitializer }, align 32
@pl08x_prep_slave_sg._entry_ptr = internal global ptr @pl08x_prep_slave_sg._entry, section ".printk_index", align 4
@pl08x_init_txd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 1951, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s no txd\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl08x_init_txd\00", [17 x i8] zeroinitializer }, align 32
@pl08x_init_txd._entry_ptr = internal global ptr @pl08x_init_txd._entry, section ".printk_index", align 4
@pl08x_init_txd._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.3, i32 1977, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s direction unsupported\0A\00", [38 x i8] zeroinitializer }, align 32
@pl08x_init_txd._entry_ptr.113 = internal global ptr @pl08x_init_txd._entry.111, section ".printk_index", align 4
@pl08x_init_txd._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.3, i32 1985, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMA slave configuration botched?\0A\00", [62 x i8] zeroinitializer }, align 32
@pl08x_init_txd._entry_ptr.116 = internal global ptr @pl08x_init_txd._entry.114, section ".printk_index", align 4
@pl08x_init_txd.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.110, ptr @.str.3, ptr @.str.117, i8 1, i8 -11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"unable to mux for transfer on %s due to platform restrictions\0A\00", [33 x i8] zeroinitializer }, align 32
@pl08x_init_txd.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.110, ptr @.str.3, ptr @.str.118, i8 1, i8 -9, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"allocated DMA request signal %d for xfer on %s\0A\00", [48 x i8] zeroinitializer }, align 32
@burst_sizes = internal constant { [8 x %struct.burst_table], [32 x i8] } { [8 x %struct.burst_table] [%struct.burst_table { i32 256, i32 7 }, %struct.burst_table { i32 128, i32 6 }, %struct.burst_table { i32 64, i32 5 }, %struct.burst_table { i32 32, i32 4 }, %struct.burst_table { i32 16, i32 3 }, %struct.burst_table { i32 8, i32 2 }, %struct.burst_table { i32 4, i32 1 }, %struct.burst_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pl08x_prep_dma_cyclic.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.119, ptr @.str.3, ptr @.str.120, i8 2, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl08x_prep_dma_cyclic\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s prepare cyclic transaction of %zd/%zd bytes %s %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"to\00", [29 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"from\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lli-bus-interface-ahb1\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lli-bus-interface-ahb2\00", [41 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 2592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no bus masters for LLIs stated, assume all\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl08x_of_probe\00", [17 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry_ptr = internal global ptr @pl08x_of_probe._entry, section ".printk_index", align 4
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mem-bus-interface-ahb1\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mem-bus-interface-ahb2\00", [41 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.126, ptr @.str.3, i32 2602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no bus masters for memory stated, assume all\0A\00", [50 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry_ptr.131 = internal global ptr @pl08x_of_probe._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"memcpy-burst-size\00", [46 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.3, i32 2609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no memcpy burst size specified, using 1 byte\0A\00", [50 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry_ptr.135 = internal global ptr @pl08x_of_probe._entry.133, section ".printk_index", align 4
@pl08x_of_probe._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.126, ptr @.str.3, i32 2614, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry_ptr.137 = internal global ptr @pl08x_of_probe._entry.136, section ".printk_index", align 4
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"memcpy-bus-width\00", [47 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.126, ptr @.str.3, i32 2644, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"no memcpy bus width specified, using 8 bits\0A\00", [51 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry_ptr.141 = internal global ptr @pl08x_of_probe._entry.139, section ".printk_index", align 4
@pl08x_of_probe._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.126, ptr @.str.3, i32 2649, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pl08x_of_probe._entry_ptr.143 = internal global ptr @pl08x_of_probe._entry.142, section ".printk_index", align 4
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slave%d\00", [24 x i8] zeroinitializer }, align 32
@pl08x_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 2551, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DMA channel translation requires two cells\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl08x_of_xlate\00", [17 x i8] zeroinitializer }, align 32
@pl08x_of_xlate._entry_ptr = internal global ptr @pl08x_of_xlate._entry, section ".printk_index", align 4
@pl08x_of_xlate._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.3, i32 2558, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA slave channel not found\0A\00", [35 x i8] zeroinitializer }, align 32
@pl08x_of_xlate._entry_ptr.149 = internal global ptr @pl08x_of_xlate._entry.147, section ".printk_index", align 4
@pl08x_of_xlate.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.146, ptr @.str.3, ptr @.str.150, i8 2, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"translated channel for signal %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pl08x_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 2301, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s error interrupt, register value 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl08x_irq\00", [22 x i8] zeroinitializer }, align 32
@pl08x_irq._entry_ptr = internal global ptr @pl08x_irq._entry, section ".printk_index", align 4
@pl08x_irq._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.3, i32 2321, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s Error TC interrupt on unused channel: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@pl08x_irq._entry_ptr.155 = internal global ptr @pl08x_irq._entry.153, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.156, ptr @.str.157, ptr @.str.158, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memcpy\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memcpy%d\00", [23 x i8] zeroinitializer }, align 32
@pl08x_dma_init_virtual_channels.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.161, ptr @.str.3, ptr @.str.162, i8 2, i8 92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pl08x_dma_init_virtual_channels\00", [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"initialize virtual channel \22%s\22\0A\00", [63 x i8] zeroinitializer }, align 32
@pl08x_dma_init_virtual_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.3, i32 2423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"initialized %d virtual %s channels\0A\00", [60 x i8] zeroinitializer }, align 32
@pl08x_dma_init_virtual_channels._entry_ptr = internal global ptr @pl08x_dma_init_virtual_channels._entry, section ".printk_index", align 4
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@pl08x_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pl08x_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PL08x physical channels:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CHANNEL:\09USER:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"--------\09-----\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d\09\09%s%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" LOCKED\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0APL08x virtual memcpy channels:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CHANNEL:\09STATE:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"--------\09------\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s\09\09%s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0APL08x virtual slave channels:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"paused\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiting\00", [24 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UNKNOWN STATE\00", [18 x i8] zeroinitializer }, align 32
@vendor_pl080s = internal global { %struct.vendor_data, [20 x i8] } { %struct.vendor_data { i8 20, i8 8, i8 32, i8 0, i8 0, i8 1, i8 0, i32 33554431 }, [20 x i8] zeroinitializer }, align 32
@vendor_pl080 = internal global { %struct.vendor_data, [20 x i8] } { %struct.vendor_data { i8 16, i8 8, i8 16, i8 1, i8 0, i8 0, i8 0, i32 4095 }, [20 x i8] zeroinitializer }, align 32
@vendor_pl081 = internal global { %struct.vendor_data, [20 x i8] } { %struct.vendor_data { i8 16, i8 2, i8 16, i8 0, i8 0, i8 0, i8 0, i32 4095 }, [20 x i8] zeroinitializer }, align 32
@vendor_nomadik = internal global { %struct.vendor_data, [20 x i8] } { %struct.vendor_data { i8 16, i8 8, i8 32, i8 1, i8 1, i8 0, i8 0, i32 4095 }, [20 x i8] zeroinitializer }, align 32
@vendor_ftdmac020 = internal global { %struct.vendor_data, [20 x i8] } { %struct.vendor_data { i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 4095 }, [20 x i8] zeroinitializer }, align 32
@pl08x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.3, i32 3081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014pl08xdmacfailed to register as an AMBA device (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl08x_init\00", [21 x i8] zeroinitializer }, align 32
@pl08x_init._entry_ptr = internal global ptr @pl08x_init._entry, section ".printk_index", align 4
@switch.table.pl08x_debugfs_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], [16 x i8] zeroinitializer }, align 32
@switch.table.pl08x_debugfs_show.183 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.186 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.192 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.194 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"pl08x_amba_driver\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3068, i32 27 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3069, i32 14 }
@___asan_gen_.202 = private unnamed_addr constant [10 x i8] c"pl08x_ids\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3032, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2740, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2743, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2752, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2817, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2863, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2900, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2912, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2917, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2925, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2936, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2945, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2954, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2963, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1901, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1851, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1768, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1807, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1270, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1296, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1305, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1341, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1348, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1378, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1391, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1404, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1431, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1448, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1457, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1464, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1221, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1225, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1234, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1238, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 866, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 872, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 395, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 402, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2149, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 607, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 885, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2061, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2075, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1951, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1976, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1984, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2005, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2011, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [12 x i8] c"burst_sizes\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1610, i32 33 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2102, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2587, i32 32 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2589, i32 32 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2592, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2597, i32 32 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2599, i32 32 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2602, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2607, i32 33 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2609, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2614, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2642, i32 33 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2644, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2649, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2681, i32 42 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2550, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2557, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2563, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2300, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2319, i32 5 }
@___asan_gen_.647 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 101, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2406, i32 23 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2408, i32 39 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2415, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2422, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant [19 x i8] c"pl08x_debugfs_fops\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2506, i32 1 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2465, i32 16 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2466, i32 16 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2467, i32 16 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2476, i32 17 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2478, i32 37 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2479, i32 20 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2484, i32 16 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2485, i32 16 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2486, i32 16 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2488, i32 17 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2493, i32 17 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2444, i32 10 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2446, i32 10 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2448, i32 10 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2450, i32 10 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2454, i32 9 }
@___asan_gen_.721 = private unnamed_addr constant [14 x i8] c"vendor_pl080s\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3010, i32 27 }
@___asan_gen_.724 = private unnamed_addr constant [13 x i8] c"vendor_pl080\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 2993, i32 27 }
@___asan_gen_.727 = private unnamed_addr constant [13 x i8] c"vendor_pl081\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3018, i32 27 }
@___asan_gen_.730 = private unnamed_addr constant [15 x i8] c"vendor_nomadik\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3001, i32 27 }
@___asan_gen_.733 = private unnamed_addr constant [17 x i8] c"vendor_ftdmac020\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3026, i32 27 }
@___asan_gen_.736 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.742 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.743 = private constant [28 x i8] c"../drivers/dma/amba-pl08x.c\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 3079, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant [32 x i8] c"switch.table.pl08x_debugfs_show\00", align 1
@___asan_gen_.746 = private unnamed_addr constant [36 x i8] c"switch.table.pl08x_debugfs_show.183\00", align 1
@llvm.compiler.used = appending global [225 x ptr] [ptr @__initcall__kmod_amba_pl08x__320_3084_pl08x_init4, ptr @__ksymtab_pl08x_filter_id, ptr @pl08x_config._entry, ptr @pl08x_config._entry_ptr, ptr @pl08x_dma_init_virtual_channels._entry, ptr @pl08x_dma_init_virtual_channels._entry_ptr, ptr @pl08x_fill_llis_for_desc._entry, ptr @pl08x_fill_llis_for_desc._entry.66, ptr @pl08x_fill_llis_for_desc._entry.69, ptr @pl08x_fill_llis_for_desc._entry.77, ptr @pl08x_fill_llis_for_desc._entry.80, ptr @pl08x_fill_llis_for_desc._entry_ptr, ptr @pl08x_fill_llis_for_desc._entry_ptr.68, ptr @pl08x_fill_llis_for_desc._entry_ptr.71, ptr @pl08x_fill_llis_for_desc._entry_ptr.79, ptr @pl08x_fill_llis_for_desc._entry_ptr.82, ptr @pl08x_ftdmac020_memcpy_cctl._entry, ptr @pl08x_ftdmac020_memcpy_cctl._entry_ptr, ptr @pl08x_init._entry, ptr @pl08x_init._entry_ptr, ptr @pl08x_init_txd._entry, ptr @pl08x_init_txd._entry.111, ptr @pl08x_init_txd._entry.114, ptr @pl08x_init_txd._entry_ptr, ptr @pl08x_init_txd._entry_ptr.113, ptr @pl08x_init_txd._entry_ptr.116, ptr @pl08x_irq._entry, ptr @pl08x_irq._entry.153, ptr @pl08x_irq._entry_ptr, ptr @pl08x_irq._entry_ptr.155, ptr @pl08x_memcpy_cctl._entry, ptr @pl08x_memcpy_cctl._entry.57, ptr @pl08x_memcpy_cctl._entry_ptr, ptr @pl08x_memcpy_cctl._entry_ptr.58, ptr @pl08x_of_probe._entry, ptr @pl08x_of_probe._entry.129, ptr @pl08x_of_probe._entry.133, ptr @pl08x_of_probe._entry.136, ptr @pl08x_of_probe._entry.139, ptr @pl08x_of_probe._entry.142, ptr @pl08x_of_probe._entry_ptr, ptr @pl08x_of_probe._entry_ptr.131, ptr @pl08x_of_probe._entry_ptr.135, ptr @pl08x_of_probe._entry_ptr.137, ptr @pl08x_of_probe._entry_ptr.141, ptr @pl08x_of_probe._entry_ptr.143, ptr @pl08x_of_xlate._entry, ptr @pl08x_of_xlate._entry.147, ptr @pl08x_of_xlate._entry_ptr, ptr @pl08x_of_xlate._entry_ptr.149, ptr @pl08x_pause_phy_chan._entry, ptr @pl08x_pause_phy_chan._entry_ptr, ptr @pl08x_prep_dma_memcpy._entry, ptr @pl08x_prep_dma_memcpy._entry_ptr, ptr @pl08x_prep_slave_sg._entry, ptr @pl08x_prep_slave_sg._entry_ptr, ptr @pl08x_probe._entry, ptr @pl08x_probe._entry.15, ptr @pl08x_probe._entry.19, ptr @pl08x_probe._entry.23, ptr @pl08x_probe._entry.27, ptr @pl08x_probe._entry.34, ptr @pl08x_probe._entry.37, ptr @pl08x_probe._entry.40, ptr @pl08x_probe._entry.43, ptr @pl08x_probe._entry.46, ptr @pl08x_probe._entry.6, ptr @pl08x_probe._entry_ptr, ptr @pl08x_probe._entry_ptr.18, ptr @pl08x_probe._entry_ptr.22, ptr @pl08x_probe._entry_ptr.25, ptr @pl08x_probe._entry_ptr.29, ptr @pl08x_probe._entry_ptr.36, ptr @pl08x_probe._entry_ptr.39, ptr @pl08x_probe._entry_ptr.42, ptr @pl08x_probe._entry_ptr.45, ptr @pl08x_probe._entry_ptr.48, ptr @pl08x_probe._entry_ptr.8, ptr @pl08x_amba_driver, ptr @.str, ptr @pl08x_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @pl08x_probe.__key, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @burst_sizes, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.138, ptr @.str.140, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @pl08x_debugfs_fops, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @vendor_pl080s, ptr @vendor_pl080, ptr @vendor_pl081, ptr @vendor_nomadik, ptr @vendor_ftdmac020, ptr @.str.181, ptr @.str.182, ptr @switch.table.pl08x_debugfs_show, ptr @switch.table.pl08x_debugfs_show.183], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_amba_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_ftdmac020_memcpy_cctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_memcpy_cctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_memcpy_cctl._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_fill_llis_for_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_fill_llis_for_desc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_fill_llis_for_desc._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_fill_llis_for_desc._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_fill_llis_for_desc._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_pause_phy_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_init_txd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_init_txd._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_init_txd._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @burst_sizes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_probe._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_probe._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_probe._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_probe._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_probe._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_of_xlate._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_irq._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_dma_init_virtual_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_pl080s to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_pl080 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_pl081 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_nomadik to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_ftdmac020 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl08x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pl08x_debugfs_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pl08x_debugfs_show.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pl08x_filter_id(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %chan_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %cmp.not = icmp eq ptr %5, @pl08x_amba_driver
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name1 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %chan_id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl08x_amba_driver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_probe(ptr noundef %adev, ptr nocapture noundef readonly %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @amba_request_regions(ptr noundef %adev, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @dma_set_mask(ptr noundef %adev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end5, label %if.end.out_no_pl08x_crit_edge

if.end.out_no_pl08x_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_pl08x

if.end5:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %adev, i64 noundef 4294967295) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 760) #17
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.out_no_pl08x_crit_edge, label %if.end9

if.end5.out_no_pl08x_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_pl08x

if.end9:                                          ; preds = %if.end5
  %adev10 = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %adev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adev, ptr %adev10, align 8
  %vd11 = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %vd11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %vd11, align 4
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call14 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %add.i) #12
  %base = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %base, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end9.out_no_ioremap_crit_edge, label %if.end18

if.end9.out_no_ioremap_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_ioremap

if.end18:                                         ; preds = %if.end9
  %ftdmac020 = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ftdmac020, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %if.end18.if.end65_crit_edge, label %if.then20

if.end18.if.end65_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then20:                                        ; preds = %if.end18
  %add.ptr = getelementptr i8, ptr %call14, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !357
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !358
  %16 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev10, align 8
  %shr = lshr i32 %15, 16
  %and = and i32 %shr, 255
  %shr26 = lshr i32 %15, 8
  %and27 = and i32 %shr26, 255
  %and28 = and i32 %15, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %and27, i32 noundef %and28) #16
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #12, !srcloc !357
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !359
  %22 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev10, align 8
  %shr41 = lshr i32 %21, 12
  %and42 = and i32 %shr41, 15
  %and43 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond = select i1 %tobool44.not, ptr @.str.10, ptr @.str.9
  %and45 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.12, ptr @.str.11
  %and48 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef %and42, ptr noundef nonnull %cond, ptr noundef nonnull %cond47, ptr noundef nonnull %cond50) #16
  br i1 %tobool49.not, label %do.end56, label %if.then20.if.end59_crit_edge

if.then20.if.end59_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.end56:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adev10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.16) #16
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.then20.if.end59_crit_edge
  %conv = trunc i32 %and42 to i8
  %channels = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %channels, align 1
  %dualmaster = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 3
  %and45.lobit = lshr exact i32 %and45, 9
  %27 = trunc i32 %and45.lobit to i8
  %28 = ptrtoint ptr %dualmaster to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %dualmaster, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.end18.if.end65_crit_edge
  %memcpy = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1
  %cap_mask = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #12
  %dev68 = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 15
  %29 = ptrtoint ptr %dev68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %adev, ptr %dev68, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 29
  %30 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pl08x_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 30
  %31 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @pl08x_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 8
  %device_prep_dma_interrupt = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 38
  %32 = ptrtoint ptr %device_prep_dma_interrupt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pl08x_prep_dma_interrupt, ptr %device_prep_dma_interrupt, align 8
  %device_tx_status = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 49
  %33 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pl08x_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 50
  %34 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pl08x_issue_pending, ptr %device_issue_pending, align 8
  %device_config = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 44
  %35 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pl08x_config, ptr %device_config, align 8
  %device_pause = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 45
  %36 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pl08x_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 46
  %37 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @pl08x_resume, ptr %device_resume, align 8
  %device_terminate_all = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 47
  %38 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @pl08x_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 48
  %39 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @pl08x_synchronize, ptr %device_synchronize, align 8
  %src_addr_widths = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 19
  %40 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 23, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 20
  %41 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 23, ptr %dst_addr_widths, align 8
  %directions = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 21
  %42 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 26
  %43 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %residue_granularity, align 8
  %44 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ftdmac020, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool84.not = icmp eq i8 %45, 0
  br i1 %tobool84.not, label %if.end65.if.end87_crit_edge, label %if.then85

if.end65.if.end87_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then85:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %copy_align = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 1, i32 10
  %46 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %copy_align, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end65.if.end87_crit_edge
  %signals = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %signals to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %signals, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool88.not = icmp eq i8 %48, 0
  br i1 %tobool88.not, label %if.end87.if.end124_crit_edge, label %if.then89

if.end87.if.end124_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %has_slave = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %has_slave to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %has_slave, align 8
  %cap_mask90 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask90) #12
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask90) #12
  %dev95 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 15
  %50 = ptrtoint ptr %dev95 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %adev, ptr %dev95, align 8
  %device_free_chan_resources97 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 29
  %51 = ptrtoint ptr %device_free_chan_resources97 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pl08x_free_chan_resources, ptr %device_free_chan_resources97, align 8
  %device_prep_dma_interrupt99 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 38
  %52 = ptrtoint ptr %device_prep_dma_interrupt99 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @pl08x_prep_dma_interrupt, ptr %device_prep_dma_interrupt99, align 4
  %device_tx_status101 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 49
  %53 = ptrtoint ptr %device_tx_status101 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @pl08x_dma_tx_status, ptr %device_tx_status101, align 8
  %device_issue_pending103 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 50
  %54 = ptrtoint ptr %device_issue_pending103 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @pl08x_issue_pending, ptr %device_issue_pending103, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 39
  %55 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @pl08x_prep_slave_sg, ptr %device_prep_slave_sg, align 8
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 40
  %56 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @pl08x_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config107 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 44
  %57 = ptrtoint ptr %device_config107 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @pl08x_config, ptr %device_config107, align 4
  %device_pause109 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 45
  %58 = ptrtoint ptr %device_pause109 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @pl08x_pause, ptr %device_pause109, align 8
  %device_resume111 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 46
  %59 = ptrtoint ptr %device_resume111 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @pl08x_resume, ptr %device_resume111, align 4
  %device_terminate_all113 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 47
  %60 = ptrtoint ptr %device_terminate_all113 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @pl08x_terminate_all, ptr %device_terminate_all113, align 8
  %device_synchronize115 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 48
  %61 = ptrtoint ptr %device_synchronize115 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pl08x_synchronize, ptr %device_synchronize115, align 4
  %src_addr_widths117 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 19
  %62 = ptrtoint ptr %src_addr_widths117 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 23, ptr %src_addr_widths117, align 8
  %dst_addr_widths119 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 20
  %63 = ptrtoint ptr %dst_addr_widths119 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 23, ptr %dst_addr_widths119, align 4
  %directions121 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 21
  %64 = ptrtoint ptr %directions121 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 6, ptr %directions121, align 8
  %residue_granularity123 = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 26
  %65 = ptrtoint ptr %residue_granularity123 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %residue_granularity123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then89, %if.end87.if.end124_crit_edge
  %platform_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 7
  %66 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %platform_data.i, align 8
  %pd = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %pd, align 8
  %tobool128.not = icmp eq ptr %67, null
  br i1 %tobool128.not, label %if.then129, label %if.else141

if.then129:                                       ; preds = %if.end124
  %tobool130.not = icmp eq ptr %3, null
  br i1 %tobool130.not, label %do.end138, label %if.then131

if.then131:                                       ; preds = %if.then129
  %call132 = tail call fastcc i32 @pl08x_of_probe(ptr noundef %adev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then131.if.end149_crit_edge, label %if.then131.out_no_platdata_crit_edge

if.then131.out_no_platdata_crit_edge:             ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_platdata

if.then131.if.end149_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

do.end138:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.20) #16
  br label %out_no_platdata

if.else141:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %slave_map = getelementptr inbounds %struct.pl08x_platform_data, ptr %67, i32 0, i32 10
  %69 = ptrtoint ptr %slave_map to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %slave_map, align 4
  %filter = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 5
  %map = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %map, align 4
  %slave_map_len = getelementptr inbounds %struct.pl08x_platform_data, ptr %67, i32 0, i32 11
  %72 = ptrtoint ptr %slave_map_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %slave_map_len, align 4
  %mapcnt = getelementptr inbounds %struct.dma_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %mapcnt to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %mapcnt, align 8
  %75 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @pl08x_filter_fn, ptr %filter, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.else141, %if.then131.if.end149_crit_edge
  %lli_buses = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %lli_buses to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %lli_buses, align 4
  %mem_buses = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 10
  %77 = ptrtoint ptr %mem_buses to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %mem_buses, align 1
  %78 = ptrtoint ptr %vd11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vd11, align 4
  %dualmaster151 = getelementptr inbounds %struct.vendor_data, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %dualmaster151 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dualmaster151, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool152.not = icmp eq i8 %81, 0
  br i1 %tobool152.not, label %if.end149.if.end160_crit_edge, label %if.then153

if.end149.if.end160_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then153:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pd, align 8
  %lli_buses155 = getelementptr inbounds %struct.pl08x_platform_data, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %lli_buses155 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %lli_buses155, align 4
  %86 = ptrtoint ptr %lli_buses to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %lli_buses, align 4
  %mem_buses158 = getelementptr inbounds %struct.pl08x_platform_data, ptr %83, i32 0, i32 9
  %87 = ptrtoint ptr %mem_buses158 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mem_buses158, align 1
  %89 = ptrtoint ptr %mem_buses to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %mem_buses, align 1
  br label %if.end160

if.end160:                                        ; preds = %if.then153, %if.end149.if.end160_crit_edge
  %pl080s = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 5
  %90 = ptrtoint ptr %pl080s to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pl080s, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool161.not = icmp eq i8 %91, 0
  %spec.select = select i1 %tobool161.not, i8 4, i8 8
  %92 = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 11
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select, ptr %92, align 2
  %conv167 = zext i8 %spec.select to i32
  %mul168 = shl nuw nsw i32 %conv167, 11
  %94 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adev10, align 8
  %call171 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str, ptr noundef %95, i32 noundef %mul168, i32 noundef 8, i32 noundef 0) #12
  %pool = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 8
  %96 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call171, ptr %pool, align 8
  %tobool173.not = icmp eq ptr %call171, null
  br i1 %tobool173.not, label %if.end160.out_no_platdata_crit_edge, label %if.end175

if.end160.out_no_platdata_crit_edge:              ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_platdata

if.end175:                                        ; preds = %if.end160
  %97 = ptrtoint ptr %vd11 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vd11, align 4
  %nomadik.i = getelementptr inbounds %struct.vendor_data, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %nomadik.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nomadik.i, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end175.pl08x_ensure_on.exit_crit_edge

if.end175.pl08x_ensure_on.exit_crit_edge:         ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_ensure_on.exit

if.end.i:                                         ; preds = %if.end175
  %ftdmac020.i = getelementptr inbounds %struct.vendor_data, ptr %98, i32 0, i32 6
  %101 = ptrtoint ptr %ftdmac020.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ftdmac020.i, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool2.not.i = icmp eq i8 %102, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %103 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base, align 4
  br i1 %tobool2.not.i, label %do.body5.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %104, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !360
  br label %pl08x_ensure_on.exit

do.body5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr8.i = getelementptr i8, ptr %104, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #12, !srcloc !360
  br label %pl08x_ensure_on.exit

pl08x_ensure_on.exit:                             ; preds = %do.body5.i, %do.body.i, %if.end175.pl08x_ensure_on.exit_crit_edge
  %105 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ftdmac020, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool177.not = icmp eq i8 %106, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr189 = getelementptr i8, ptr %108, i32 16
  br i1 %tobool177.not, label %do.body185, label %do.body179

do.body179:                                       ; preds = %pl08x_ensure_on.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 -65536) #12, !srcloc !360
  br label %do.body191

do.body185:                                       ; preds = %pl08x_ensure_on.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 -16777216) #12, !srcloc !360
  br label %do.body191

do.body191:                                       ; preds = %do.body185, %do.body179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !361
  tail call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  %add.ptr195 = getelementptr i8, ptr %110, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 -16777216) #12, !srcloc !360
  %irq = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %111 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq, align 8
  %call.i589 = tail call i32 @request_threaded_irq(i32 noundef %112, ptr noundef nonnull @pl08x_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i589)
  %tobool197.not = icmp eq i32 %call.i589, 0
  br i1 %tobool197.not, label %if.end205, label %do.end201

do.end201:                                        ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef %114) #16
  br label %out_no_irq

if.end205:                                        ; preds = %do.body191
  %channels206 = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 1
  %115 = ptrtoint ptr %channels206 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %channels206, align 1
  %conv207 = zext i8 %116 to i32
  %mul208 = mul nuw nsw i32 %conv207, 84
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul208, i32 noundef 3520) #18
  %phy_chans = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 7
  %117 = ptrtoint ptr %phy_chans to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call9.i.i, ptr %phy_chans, align 4
  %tobool211.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool211.not, label %if.end205.out_no_phychans_crit_edge, label %for.cond.preheader

if.end205.out_no_phychans_crit_edge:              ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_phychans

for.cond.preheader:                               ; preds = %if.end205
  %118 = ptrtoint ptr %channels206 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %channels206, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp597.not = icmp eq i8 %119, 0
  br i1 %cmp597.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nomadik = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end301.for.body_crit_edge, %for.body.lr.ph
  %i.0598 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end301.for.body_crit_edge ]
  %120 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phy_chans, align 4
  %arrayidx218 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598
  %122 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %i.0598, ptr %arrayidx218, align 4
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base, align 4
  %mul221 = shl i32 %i.0598, 5
  %add = add nuw nsw i32 %mul221, 256
  %add.ptr222 = getelementptr i8, ptr %124, i32 %add
  %base223 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 1
  %125 = ptrtoint ptr %base223 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr222, ptr %base223, align 4
  %126 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %ftdmac020, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool225.not = icmp eq i8 %127, 0
  br i1 %tobool225.not, label %if.else240, label %if.then226

if.then226:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr228 = getelementptr i8, ptr %add.ptr222, i32 32
  %reg_busy = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 7
  %128 = ptrtoint ptr %reg_busy to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr228, ptr %reg_busy, align 4
  %add.ptr230 = getelementptr i8, ptr %add.ptr222, i32 4
  %add.ptr234 = getelementptr i8, ptr %add.ptr222, i32 8
  %add.ptr236 = getelementptr i8, ptr %add.ptr222, i32 12
  %add.ptr238 = getelementptr i8, ptr %add.ptr222, i32 16
  %ftdmac020239 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 11
  %129 = ptrtoint ptr %ftdmac020239 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %ftdmac020239, align 1
  br label %if.end257

if.else240:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %1, align 4
  %conv242 = zext i8 %131 to i32
  %add.ptr243 = getelementptr i8, ptr %add.ptr222, i32 %conv242
  %add.ptr246 = getelementptr i8, ptr %add.ptr222, i32 12
  %add.ptr252 = getelementptr i8, ptr %add.ptr222, i32 4
  %add.ptr255 = getelementptr i8, ptr %add.ptr222, i32 8
  br label %if.end257

if.end257:                                        ; preds = %if.else240, %if.then226
  %add.ptr230.sink = phi ptr [ %add.ptr243, %if.else240 ], [ %add.ptr230, %if.then226 ]
  %add.ptr222.sink = phi ptr [ %add.ptr246, %if.else240 ], [ %add.ptr222, %if.then226 ]
  %add.ptr234.sink = phi ptr [ %add.ptr222, %if.else240 ], [ %add.ptr234, %if.then226 ]
  %add.ptr236.sink = phi ptr [ %add.ptr252, %if.else240 ], [ %add.ptr236, %if.then226 ]
  %add.ptr238.sink = phi ptr [ %add.ptr255, %if.else240 ], [ %add.ptr238, %if.then226 ]
  %132 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 2
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr230.sink, ptr %132, align 4
  %134 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 3
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %add.ptr222.sink, ptr %134, align 4
  %136 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %add.ptr234.sink, ptr %136, align 4
  %138 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 5
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %add.ptr236.sink, ptr %138, align 4
  %140 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 6
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr238.sink, ptr %140, align 4
  %142 = ptrtoint ptr %pl080s to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %pl080s, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool259.not = icmp eq i8 %143, 0
  br i1 %tobool259.not, label %if.end257.do.body263_crit_edge, label %if.then260

if.end257.do.body263_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body263

if.then260:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  %pl080s261 = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 12
  %144 = ptrtoint ptr %pl080s261 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %pl080s261, align 2
  br label %do.body263

do.body263:                                       ; preds = %if.then260, %if.end257.do.body263_crit_edge
  %lock = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @pl08x_probe.__key, i16 noundef signext 3) #12
  %145 = ptrtoint ptr %nomadik to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nomadik, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool267.not = icmp eq i8 %146, 0
  br i1 %tobool267.not, label %do.body263.do.body285_crit_edge, label %if.then268

do.body263.do.body285_crit_edge:                  ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body285

if.then268:                                       ; preds = %do.body263
  %147 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %132, align 4
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !362
  %150 = and i32 %149, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool277.not = icmp eq i32 %150, 0
  br i1 %tobool277.not, label %if.then268.do.body285_crit_edge, label %do.end281

if.then268.do.body285_crit_edge:                  ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body285

do.end281:                                        ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.28, i32 noundef %i.0598) #16
  %locked = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 10
  %151 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %locked, align 4
  br label %do.body285

do.body285:                                       ; preds = %do.end281, %if.then268.do.body285_crit_edge, %do.body263.do.body285_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_probe.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_probe, %do.end301)) #12
          to label %if.then294 [label %do.end301], !srcloc !363

if.then294:                                       ; preds = %do.body285
  %reg_busy.i = getelementptr %struct.pl08x_phy_chan, ptr %121, i32 %i.0598, i32 7
  %152 = ptrtoint ptr %reg_busy.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_busy.i, align 4
  %tobool.not.i591 = icmp eq ptr %153, null
  br i1 %tobool.not.i591, label %if.end.i593, label %if.then.i592

if.then.i592:                                     ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #14
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %153) #12, !srcloc !357
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  %156 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx218, align 4
  %158 = lshr i32 %155, %157
  %159 = and i32 %158, 1
  br label %pl08x_phy_channel_busy.exit

if.end.i593:                                      ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %132, align 4
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #12, !srcloc !357
  %163 = shl i32 %162, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !365
  %and10.i = and i32 %163, 131072
  br label %pl08x_phy_channel_busy.exit

pl08x_phy_channel_busy.exit:                      ; preds = %if.end.i593, %if.then.i592
  %retval.0.i594 = phi i32 [ %159, %if.then.i592 ], [ %and10.i, %if.end.i593 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i594)
  %tobool297.not = icmp eq i32 %retval.0.i594, 0
  %cond298 = select i1 %tobool297.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_probe.__UNIQUE_ID_ddebug319, ptr noundef %adev, ptr noundef nonnull @.str.31, i32 noundef %i.0598, ptr noundef nonnull %cond298) #12
  br label %do.end301

do.end301:                                        ; preds = %pl08x_phy_channel_busy.exit, %do.body285
  %inc = add nuw nsw i32 %i.0598, 1
  %164 = ptrtoint ptr %channels206 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %channels206, align 1
  %conv215 = zext i8 %165 to i32
  %cmp = icmp ult i32 %inc, %conv215
  br i1 %cmp, label %do.end301.for.body_crit_edge, label %do.end301.for.end_crit_edge

do.end301.for.end_crit_edge:                      ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end301.for.body_crit_edge:                     ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end301.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %166 = ptrtoint ptr %vd11 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %vd11, align 4
  %channels304 = getelementptr inbounds %struct.vendor_data, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %channels304 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %channels304, align 1
  %conv305 = zext i8 %169 to i32
  %call306 = tail call fastcc i32 @pl08x_dma_init_virtual_channels(ptr noundef nonnull %call7.i.i, ptr noundef %memcpy, i32 noundef %conv305, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call306)
  %cmp307 = icmp slt i32 %call306, 1
  br i1 %cmp307, label %do.end312, label %if.end315

do.end312:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %170 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %adev10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %171, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef %call306) #16
  br label %out_no_memcpy

if.end315:                                        ; preds = %for.end
  %has_slave316 = getelementptr inbounds %struct.pl08x_driver_data, ptr %call7.i.i, i32 0, i32 2
  %172 = ptrtoint ptr %has_slave316 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %has_slave316, align 8, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool317.not = icmp eq i8 %173, 0
  br i1 %tobool317.not, label %if.end315.if.end331_crit_edge, label %if.then318

if.end315.if.end331_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end331

if.then318:                                       ; preds = %if.end315
  %174 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pd, align 8
  %num_slave_channels = getelementptr inbounds %struct.pl08x_platform_data, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %num_slave_channels to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %num_slave_channels, align 4
  %call321 = tail call fastcc i32 @pl08x_dma_init_virtual_channels(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i, i32 noundef %177, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %cmp322 = icmp slt i32 %call321, 0
  br i1 %cmp322, label %do.end327, label %if.then318.if.end331_crit_edge

if.then318.if.end331_crit_edge:                   ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end331

do.end327:                                        ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #14
  %178 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %adev10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %179, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef %call321) #16
  br label %out_no_slave

if.end331:                                        ; preds = %if.then318.if.end331_crit_edge, %if.end315.if.end331_crit_edge
  %call333 = tail call i32 @dma_async_device_register(ptr noundef %memcpy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %if.end341, label %do.end338

do.end338:                                        ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %adev10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %181, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef %call333) #16
  br label %out_no_memcpy_reg

if.end341:                                        ; preds = %if.end331
  %182 = ptrtoint ptr %has_slave316 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %has_slave316, align 8, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool343.not = icmp eq i8 %183, 0
  br i1 %tobool343.not, label %if.end341.if.end355_crit_edge, label %if.then344

if.end341.if.end355_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end355

if.then344:                                       ; preds = %if.end341
  %call346 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %if.then344.if.end355_crit_edge, label %do.end351

if.then344.if.end355_crit_edge:                   ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end355

do.end351:                                        ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #14
  %184 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %adev10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %185, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2, i32 noundef %call346) #16
  tail call void @dma_async_device_unregister(ptr noundef %memcpy) #12
  br label %out_no_memcpy_reg

if.end355:                                        ; preds = %if.then344.if.end355_crit_edge, %if.end341.if.end355_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %186 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  tail call fastcc void @init_pl08x_debugfs(ptr noundef nonnull %call7.i.i)
  %187 = ptrtoint ptr %adev10 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %adev10, align 8
  %periphid = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 4
  %189 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %periphid, align 8
  %and362 = and i32 %190, 4095
  %191 = ptrtoint ptr %vd11 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %vd11, align 4
  %pl080s364 = getelementptr inbounds %struct.vendor_data, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %pl080s364 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %pl080s364, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool365.not = icmp eq i8 %194, 0
  %cond367 = select i1 %tobool365.not, ptr @.str.50, ptr @.str.49
  %shr369 = lshr i32 %190, 20
  %and370 = and i32 %shr369, 15
  %195 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %res, align 8
  %conv373 = zext i32 %196 to i64
  %197 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %188, ptr noundef nonnull @.str.47, i32 noundef %and362, ptr noundef nonnull %cond367, i32 noundef %and370, i64 noundef %conv373, i32 noundef %198) #16
  br label %cleanup

out_no_memcpy_reg:                                ; preds = %do.end351, %do.end338
  %ret.0 = phi i32 [ %call333, %do.end338 ], [ %call346, %do.end351 ]
  %199 = ptrtoint ptr %has_slave316 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %has_slave316, align 8, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool378.not = icmp eq i8 %200, 0
  br i1 %tobool378.not, label %out_no_memcpy_reg.out_no_slave_crit_edge, label %if.then379

out_no_memcpy_reg.out_no_slave_crit_edge:         ; preds = %out_no_memcpy_reg
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_slave

if.then379:                                       ; preds = %out_no_memcpy_reg
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pl08x_free_virtual_channels(ptr noundef nonnull %call7.i.i)
  br label %out_no_slave

out_no_slave:                                     ; preds = %if.then379, %out_no_memcpy_reg.out_no_slave_crit_edge, %do.end327
  %ret.1 = phi i32 [ %call321, %do.end327 ], [ %ret.0, %if.then379 ], [ %ret.0, %out_no_memcpy_reg.out_no_slave_crit_edge ]
  tail call fastcc void @pl08x_free_virtual_channels(ptr noundef %memcpy)
  br label %out_no_memcpy

out_no_memcpy:                                    ; preds = %out_no_slave, %do.end312
  %ret.2 = phi i32 [ %call306, %do.end312 ], [ %ret.1, %out_no_slave ]
  %201 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %phy_chans, align 4
  tail call void @kfree(ptr noundef %202) #12
  br label %out_no_phychans

out_no_phychans:                                  ; preds = %out_no_memcpy, %if.end205.out_no_phychans_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_no_memcpy ], [ -12, %if.end205.out_no_phychans_crit_edge ]
  %203 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %irq, align 8
  %call386 = tail call ptr @free_irq(i32 noundef %204, ptr noundef nonnull %call7.i.i) #12
  br label %out_no_irq

out_no_irq:                                       ; preds = %out_no_phychans, %do.end201
  %ret.4 = phi i32 [ %call.i589, %do.end201 ], [ %ret.3, %out_no_phychans ]
  %205 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %206) #12
  br label %out_no_platdata

out_no_platdata:                                  ; preds = %out_no_irq, %if.end160.out_no_platdata_crit_edge, %do.end138, %if.then131.out_no_platdata_crit_edge
  %ret.5 = phi i32 [ %ret.4, %out_no_irq ], [ %call132, %if.then131.out_no_platdata_crit_edge ], [ -22, %do.end138 ], [ -12, %if.end160.out_no_platdata_crit_edge ]
  %207 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %208) #12
  br label %out_no_ioremap

out_no_ioremap:                                   ; preds = %out_no_platdata, %if.end9.out_no_ioremap_crit_edge
  %ret.6 = phi i32 [ %ret.5, %out_no_platdata ], [ -12, %if.end9.out_no_ioremap_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %out_no_pl08x

out_no_pl08x:                                     ; preds = %out_no_ioremap, %if.end5.out_no_pl08x_crit_edge, %if.end.out_no_pl08x_crit_edge
  %ret.7 = phi i32 [ %ret.6, %out_no_ioremap ], [ -12, %if.end5.out_no_pl08x_crit_edge ], [ %call.i, %if.end.out_no_pl08x_crit_edge ]
  tail call void @amba_release_regions(ptr noundef %adev) #12
  br label %cleanup

cleanup:                                          ; preds = %out_no_pl08x, %if.end355, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out_no_pl08x ], [ 0, %if.end355 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl08x_free_chan_resources(ptr noundef %chan) #4 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl08x_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 144) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsg_list.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dsg_list.i, ptr %dsg_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dsg_list.i, ptr %prev.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2304, i32 noundef 20) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %llis_va.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %llis_va.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %llis_va.i, align 8
  %tobool.not.i46 = icmp eq ptr %9, null
  br i1 %tobool.not.i46, label %if.then4.if.end.i_crit_edge, label %if.then.i47

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i47:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool.i, align 4
  %llis_bus.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %llis_bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %llis_bus.i, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef nonnull %9, i32 noundef %13) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i47, %if.then4.if.end.i_crit_edge
  %14 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i = icmp eq ptr %15, %dsg_list.i
  br i1 %cmp.not24.i, label %if.end.i.pl08x_free_txd.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.pl08x_free_txd.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %15, %if.end.i.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -12
  %16 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i49 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i49, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.pl08x_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.pl08x_free_txd.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

pl08x_free_txd.exit:                              ; preds = %list_del.exit.i.pl08x_free_txd.exit_crit_edge, %if.end.i.pl08x_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %node = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %26, ptr noundef %dsg_list.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node, ptr %prev.i.i, align 8
  %28 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dsg_list.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %src, ptr %call7.i.i, align 8
  %dst_addr = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dest, ptr %dst_addr, align 4
  %len6 = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %len, ptr %len6, align 8
  %vd = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vd, align 4
  %ftdmac020 = getelementptr inbounds %struct.vendor_data, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ftdmac020, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not = icmp eq i8 %37, 0
  %ccfg10 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 5
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %list_add_tail.exit
  %38 = ptrtoint ptr %ccfg10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ccfg10, align 8
  %pd.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pd.i, align 4
  %memcpy_bus_width.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %memcpy_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %memcpy_bus_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %adev.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.53) #16
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.mult = mul i32 %42, 37748736
  %switch.offset = add i32 %switch.idx.mult, 268435456
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %do.end.i
  %cctl.0.i = phi i32 [ 268435456, %do.end.i ], [ %switch.offset, %switch.lookup ]
  %46 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vd, align 4
  %dualmaster.i = getelementptr inbounds %struct.vendor_data, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dualmaster.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dualmaster.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i50 = icmp eq i8 %49, 0
  br i1 %tobool.not.i50, label %sw.epilog.i.if.end13_crit_edge, label %if.then.i51

sw.epilog.i.if.end13_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then.i51:                                      ; preds = %sw.epilog.i
  %mem_buses.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %mem_buses.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mem_buses.i, align 1
  %conv.i.i = zext i8 %51 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i51.pl08x_select_bus.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then.i51.pl08x_select_bus.exit.i_crit_edge:    ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_select_bus.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #14
  %and3.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool7.not.i.i = icmp eq i8 %52, 0
  %or.cond.i.i = or i1 %tobool7.not.i.i, %tobool4.not.i.i
  %spec.select.i = select i1 %or.cond.i.i, i32 0, i32 65536
  br label %pl08x_select_bus.exit.i

pl08x_select_bus.exit.i:                          ; preds = %lor.lhs.false.i.i, %if.then.i51.pl08x_select_bus.exit.i_crit_edge
  %cctl.1.i.i = phi i32 [ %spec.select.i, %lor.lhs.false.i.i ], [ 196608, %if.then.i51.pl08x_select_bus.exit.i_crit_edge ]
  %or7.i = or i32 %cctl.1.i.i, %cctl.0.i
  br label %if.end13

if.else:                                          ; preds = %list_add_tail.exit
  %53 = ptrtoint ptr %ccfg10 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 49152, ptr %ccfg10, align 8
  %pd.i53 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %pd.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pd.i53, align 4
  %memcpy_burst_size.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %memcpy_burst_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %memcpy_burst_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %57)
  %58 = icmp ult i32 %57, 8
  br i1 %58, label %switch.lookup100, label %do.end.i55

do.end.i55:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %adev.i54 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %adev.i54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adev.i54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.55) #16
  br label %sw.epilog.i60

switch.lookup100:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.mult101 = mul i32 %57, 36864
  br label %sw.epilog.i60

sw.epilog.i60:                                    ; preds = %switch.lookup100, %do.end.i55
  %cctl.0.i58 = phi i32 [ 0, %do.end.i55 ], [ %switch.idx.mult101, %switch.lookup100 ]
  %61 = ptrtoint ptr %pd.i53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pd.i53, align 4
  %memcpy_bus_width.i59 = getelementptr inbounds %struct.pl08x_platform_data, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %memcpy_bus_width.i59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %memcpy_bus_width.i59, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %do.end19.i [
    i32 0, label %sw.epilog.i60.sw.epilog28.i_crit_edge
    i32 1, label %sw.bb24.i
    i32 2, label %sw.bb26.i
  ]

sw.epilog.i60.sw.epilog28.i_crit_edge:            ; preds = %sw.epilog.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog28.i

do.end19.i:                                       ; preds = %sw.epilog.i60
  call void @__sanitizer_cov_trace_pc() #14
  %adev20.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %adev20.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adev20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.53) #16
  br label %sw.epilog28.i

sw.bb24.i:                                        ; preds = %sw.epilog.i60
  call void @__sanitizer_cov_trace_pc() #14
  %or25.i = or i32 %cctl.0.i58, 2359296
  br label %sw.epilog28.i

sw.bb26.i:                                        ; preds = %sw.epilog.i60
  call void @__sanitizer_cov_trace_pc() #14
  %or27.i = or i32 %cctl.0.i58, 4718592
  br label %sw.epilog28.i

sw.epilog28.i:                                    ; preds = %sw.bb26.i, %sw.bb24.i, %do.end19.i, %sw.epilog.i60.sw.epilog28.i_crit_edge
  %cctl.1.i61 = phi i32 [ %or27.i, %sw.bb26.i ], [ %or25.i, %sw.bb24.i ], [ %cctl.0.i58, %sw.epilog.i60.sw.epilog28.i_crit_edge ], [ %cctl.0.i58, %do.end19.i ]
  %68 = ptrtoint ptr %pd.i53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pd.i53, align 4
  %memcpy_prot_buff.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %memcpy_prot_buff.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %memcpy_prot_buff.i, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i62 = icmp eq i8 %71, 0
  %or30.i = or i32 %cctl.1.i61, 536870912
  %spec.select.i63 = select i1 %tobool.not.i62, i32 %cctl.1.i61, i32 %or30.i
  %memcpy_prot_cache.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %69, i32 0, i32 5
  %72 = ptrtoint ptr %memcpy_prot_cache.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %memcpy_prot_cache.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool32.not.i = icmp eq i8 %73, 0
  %or34.i = or i32 %spec.select.i63, 1073741824
  %cctl.3.i = select i1 %tobool32.not.i, i32 %spec.select.i63, i32 %or34.i
  %or37.i = or i32 %cctl.3.i, 469762048
  %74 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vd, align 4
  %dualmaster.i65 = getelementptr inbounds %struct.vendor_data, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %dualmaster.i65 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dualmaster.i65, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool38.not.i = icmp eq i8 %77, 0
  br i1 %tobool38.not.i, label %sw.epilog28.i.if.end13_crit_edge, label %if.then39.i

sw.epilog28.i.if.end13_crit_edge:                 ; preds = %sw.epilog28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then39.i:                                      ; preds = %sw.epilog28.i
  %mem_buses.i66 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 10
  %78 = ptrtoint ptr %mem_buses.i66 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %mem_buses.i66, align 1
  %conv.i.i67 = zext i8 %79 to i32
  %and.i.i68 = and i32 %conv.i.i67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %tobool1.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %tobool1.not.i.i69, label %if.then39.i.pl08x_select_bus.exit.i76_crit_edge, label %lor.lhs.false.i.i74

if.then39.i.pl08x_select_bus.exit.i76_crit_edge:  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_select_bus.exit.i76

lor.lhs.false.i.i74:                              ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  %and3.i.i70 = and i32 %conv.i.i67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i70)
  %tobool4.not.i.i71 = icmp eq i32 %and3.i.i70, 0
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool7.not.i.i72 = icmp eq i8 %80, 0
  %or.cond.i.i73 = or i1 %tobool7.not.i.i72, %tobool4.not.i.i71
  %spec.select71.i = select i1 %or.cond.i.i73, i32 0, i32 33554432
  br label %pl08x_select_bus.exit.i76

pl08x_select_bus.exit.i76:                        ; preds = %lor.lhs.false.i.i74, %if.then39.i.pl08x_select_bus.exit.i76_crit_edge
  %cctl.1.i.i75 = phi i32 [ %spec.select71.i, %lor.lhs.false.i.i74 ], [ 50331648, %if.then39.i.pl08x_select_bus.exit.i76_crit_edge ]
  %or41.i = or i32 %cctl.1.i.i75, %or37.i
  br label %if.end13

if.end13:                                         ; preds = %pl08x_select_bus.exit.i76, %sw.epilog28.i.if.end13_crit_edge, %pl08x_select_bus.exit.i, %sw.epilog.i.if.end13_crit_edge
  %cctl.4.i.sink = phi i32 [ %or7.i, %pl08x_select_bus.exit.i ], [ %cctl.0.i, %sw.epilog.i.if.end13_crit_edge ], [ %or41.i, %pl08x_select_bus.exit.i76 ], [ %or37.i, %sw.epilog28.i.if.end13_crit_edge ]
  %cctl12 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %cctl12 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %cctl.4.i.sink, ptr %cctl12, align 4
  %82 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host, align 4
  %call15 = tail call fastcc i32 @pl08x_fill_llis_for_desc(ptr noundef %83, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %llis_va.i77 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %llis_va.i77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %llis_va.i77, align 8
  %tobool.not.i78 = icmp eq ptr %85, null
  br i1 %tobool.not.i78, label %if.then17.if.end.i84_crit_edge, label %if.then.i81

if.then17.if.end.i84_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i84

if.then.i81:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i79 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %86 = ptrtoint ptr %pool.i79 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pool.i79, align 4
  %llis_bus.i80 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %llis_bus.i80 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %llis_bus.i80, align 4
  tail call void @dma_pool_free(ptr noundef %87, ptr noundef nonnull %85, i32 noundef %89) #12
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.then.i81, %if.then17.if.end.i84_crit_edge
  %90 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i83 = icmp eq ptr %91, %dsg_list.i
  br i1 %cmp.not24.i83, label %if.end.i84.pl08x_free_txd.exit96_crit_edge, label %if.end.i84.for.body.i89_crit_edge

if.end.i84.for.body.i89_crit_edge:                ; preds = %if.end.i84
  br label %for.body.i89

if.end.i84.pl08x_free_txd.exit96_crit_edge:       ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit96

for.body.i89:                                     ; preds = %list_del.exit.i95.for.body.i89_crit_edge, %if.end.i84.for.body.i89_crit_edge
  %.pn.in25.i85 = phi ptr [ %.pn.i87, %list_del.exit.i95.for.body.i89_crit_edge ], [ %91, %if.end.i84.for.body.i89_crit_edge ]
  %dsg.0.i86 = getelementptr i8, ptr %.pn.in25.i85, i32 -12
  %92 = ptrtoint ptr %.pn.in25.i85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn.i87 = load ptr, ptr %.pn.in25.i85, align 4
  %call.i.i.i88 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i85) #12
  br i1 %call.i.i.i88, label %if.end.i.i.i92, label %for.body.i89.list_del.exit.i95_crit_edge

for.body.i89.list_del.exit.i95_crit_edge:         ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i95

if.end.i.i.i92:                                   ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i90 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i85, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i90, align 4
  %95 = ptrtoint ptr %.pn.in25.i85 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %.pn.in25.i85, align 4
  %prev1.i.i.i.i91 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i91, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit.i95

list_del.exit.i95:                                ; preds = %if.end.i.i.i92, %for.body.i89.list_del.exit.i95_crit_edge
  %99 = ptrtoint ptr %.pn.in25.i85 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i85, align 4
  %prev.i.i93 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i85, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i93, align 4
  tail call void @kfree(ptr noundef %dsg.0.i86) #12
  %cmp.not.i94 = icmp eq ptr %.pn.i87, %dsg_list.i
  br i1 %cmp.not.i94, label %list_del.exit.i95.pl08x_free_txd.exit96_crit_edge, label %list_del.exit.i95.for.body.i89_crit_edge

list_del.exit.i95.for.body.i89_crit_edge:         ; preds = %list_del.exit.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i89

list_del.exit.i95.pl08x_free_txd.exit96_crit_edge: ; preds = %list_del.exit.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit96

pl08x_free_txd.exit96:                            ; preds = %list_del.exit.i95.pl08x_free_txd.exit96_crit_edge, %if.end.i84.pl08x_free_txd.exit96_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #12
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %102 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %103 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i97 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %prev.i.i97 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i97, align 4
  %call.i.i.i98 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %107, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i98, label %if.end.i.i.i99, label %if.end18.vchan_tx_prep.exit_crit_edge

if.end18.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i99:                                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %prev.i.i97 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %node.i, ptr %prev.i.i97, align 4
  %109 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i.i, align 8
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %node.i, ptr %107, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i99, %if.end18.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %pl08x_free_txd.exit96, %pl08x_free_txd.exit, %do.end
  %retval.0 = phi ptr [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %pl08x_free_txd.exit96 ], [ null, %pl08x_free_txd.exit ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @pl08x_prep_dma_interrupt(ptr nocapture noundef readnone %chan, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !366
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  br i1 %tobool.not.i, label %if.then2, label %if.end.i79

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp3 = icmp eq i32 %9, 2
  %spec.select = select i1 %cmp3, i32 2, i32 1
  br label %cleanup

if.end.i79:                                       ; preds = %if.end
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %10 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie1.i, align 4
  %12 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !366
  %14 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %txstate, align 4
  %used2.i72 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %15 = ptrtoint ptr %used2.i72 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %used2.i72, align 4
  %residue.i73 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %16 = ptrtoint ptr %residue.i73 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %residue.i73, align 4
  %in_flight_bytes.i74 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %17 = ptrtoint ptr %in_flight_bytes.i74 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %in_flight_bytes.i74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i76 = icmp sgt i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp4.not.i.i77 = icmp sge i32 %13, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp5.i.i78 = icmp slt i32 %11, %cookie
  br i1 %cmp.not.i.i76, label %if.else.i.i83, label %if.then.i.i81

if.then.i.i81:                                    ; preds = %if.end.i79
  %or.cond.i.i80 = or i1 %cmp5.i.i78, %cmp4.not.i.i77
  br i1 %or.cond.i.i80, label %if.then.i.i81.dma_set_residue.exit_crit_edge, label %if.then.i.i81.if.then16_crit_edge

if.then.i.i81.if.then16_crit_edge:                ; preds = %if.then.i.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then.i.i81.dma_set_residue.exit_crit_edge:     ; preds = %if.then.i.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

if.else.i.i83:                                    ; preds = %if.end.i79
  %or.cond16.i.i82 = and i1 %cmp5.i.i78, %cmp4.not.i.i77
  br i1 %or.cond16.i.i82, label %if.else.i.i83.dma_set_residue.exit_crit_edge, label %if.else.i.i83.if.then16_crit_edge

if.else.i.i83.if.then16_crit_edge:                ; preds = %if.else.i.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.else.i.i83.dma_set_residue.exit_crit_edge:     ; preds = %if.else.i.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

if.then16:                                        ; preds = %if.else.i.i83.if.then16_crit_edge, %if.then.i.i81.if.then16_crit_edge
  %call18 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #12
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then16
  %dsg_list = getelementptr inbounds %struct.pl08x_txd, ptr %call18, i32 0, i32 1
  %18 = ptrtoint ptr %dsg_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn101 = load ptr, ptr %dsg_list, align 4
  %cmp24.not102 = icmp eq ptr %.pn101, %dsg_list
  br i1 %cmp24.not102, label %if.then20.dma_set_residue.exit_crit_edge, label %if.then20.for.body_crit_edge

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  br label %for.body

if.then20.dma_set_residue.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then20.for.body_crit_edge
  %.pn104 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn101, %if.then20.for.body_crit_edge ]
  %bytes.0103 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then20.for.body_crit_edge ]
  %len = getelementptr i8, ptr %.pn104, i32 -4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add = add i32 %20, %bytes.0103
  %21 = ptrtoint ptr %.pn104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn104, align 4
  %cmp24.not = icmp eq ptr %.pn, %dsg_list
  br i1 %cmp24.not, label %for.body.dma_set_residue.exit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.dma_set_residue.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

if.else:                                          ; preds = %if.then16
  %host.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 6
  %22 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host.i, align 4
  %phychan.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 1
  %24 = ptrtoint ptr %phychan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phychan.i, align 4
  %at.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 5
  %26 = ptrtoint ptr %at.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %at.i, align 4
  %tobool.not.i87 = icmp eq ptr %25, null
  %tobool1.not.i = icmp eq ptr %27, null
  %or.cond.i = select i1 %tobool.not.i87, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.else.dma_set_residue.exit_crit_edge, label %if.end.i88

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

if.end.i88:                                       ; preds = %if.else
  %reg_lli.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 6
  %28 = ptrtoint ptr %reg_lli.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_lli.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !367
  %31 = and i32 %30, -16777217
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %ftdmac020.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 11
  %33 = ptrtoint ptr %ftdmac020.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ftdmac020.i.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.else.i.i90, label %if.then.i.i89

if.then.i.i89:                                    ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 1
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !357
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !368
  %reg_control.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 3
  %39 = ptrtoint ptr %reg_control.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_control.i.i, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #12, !srcloc !357
  %42 = lshr i32 %41, 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !369
  br label %if.end35.i.i

if.else.i.i90:                                    ; preds = %if.end.i88
  %pl080s.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 12
  %43 = ptrtoint ptr %pl080s.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pl080s.i.i, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool7.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool7.not.i.i, label %if.else25.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i90
  call void @__sanitizer_cov_trace_pc() #14
  %base11.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 1
  %45 = ptrtoint ptr %base11.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base11.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %46, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !370
  %48 = and i32 %47, -255
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #12
  %reg_control19.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 3
  %50 = ptrtoint ptr %reg_control19.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_control19.i.i, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !371
  %53 = lshr i32 %52, 10
  br label %if.end35.i.i

if.else25.i.i:                                    ; preds = %if.else.i.i90
  call void @__sanitizer_cov_trace_pc() #14
  %reg_control28.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 3
  %54 = ptrtoint ptr %reg_control28.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_control28.i.i, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #12, !srcloc !357
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !372
  %and32.i.i = and i32 %57, 4095
  %and33.i.i = lshr i32 %57, 18
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.else25.i.i, %if.then8.i.i, %if.then.i.i89
  %bytes.0.i.i = phi i32 [ %38, %if.then.i.i89 ], [ %49, %if.then8.i.i ], [ %and32.i.i, %if.else25.i.i ]
  %val.0.in.i.i = phi i32 [ %42, %if.then.i.i89 ], [ %53, %if.then8.i.i ], [ %and33.i.i, %if.else25.i.i ]
  %val.0.i.i = and i32 %val.0.in.i.i, 7
  %58 = zext i32 %val.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %val.0.i.i, label %if.end35.i.i.get_bytes_in_phy_channel.exit.i_crit_edge [
    i32 2, label %sw.bb36.i.i
    i32 1, label %sw.bb.i.i
  ]

if.end35.i.i.get_bytes_in_phy_channel.exit.i_crit_edge: ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_bytes_in_phy_channel.exit.i

sw.bb.i.i:                                        ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i = shl i32 %bytes.0.i.i, 1
  br label %get_bytes_in_phy_channel.exit.i

sw.bb36.i.i:                                      ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul37.i.i = shl i32 %bytes.0.i.i, 2
  br label %get_bytes_in_phy_channel.exit.i

get_bytes_in_phy_channel.exit.i:                  ; preds = %sw.bb36.i.i, %sw.bb.i.i, %if.end35.i.i.get_bytes_in_phy_channel.exit.i_crit_edge
  %bytes.1.i.i = phi i32 [ %bytes.0.i.i, %if.end35.i.i.get_bytes_in_phy_channel.exit.i_crit_edge ], [ %mul.i.i, %sw.bb.i.i ], [ %mul37.i.i, %sw.bb36.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i = icmp eq i32 %31, 0
  br i1 %tobool4.not.i, label %get_bytes_in_phy_channel.exit.i.dma_set_residue.exit_crit_edge, label %if.end6.i

get_bytes_in_phy_channel.exit.i.dma_set_residue.exit_crit_edge: ; preds = %get_bytes_in_phy_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

if.end6.i:                                        ; preds = %get_bytes_in_phy_channel.exit.i
  %llis_bus8.i = getelementptr inbounds %struct.pl08x_txd, ptr %27, i32 0, i32 2
  %59 = ptrtoint ptr %llis_bus8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %llis_bus8.i, align 4
  %lli_words.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %23, i32 0, i32 11
  %61 = ptrtoint ptr %lli_words.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %lli_words.i, align 2
  %conv.i = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %60)
  %cmp.i = icmp ult i32 %32, %60
  %mul10.i = shl nuw nsw i32 %conv.i, 11
  %add.i = add i32 %mul10.i, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i)
  %cmp11.i = icmp uge i32 %32, %add.i
  %63 = select i1 %cmp.i, i1 true, i1 %cmp11.i, !prof !373
  br i1 %63, label %do.body16.i, label %do.end22.i, !prof !373

do.body16.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 787, 0\0A.popsection", ""() #12, !srcloc !374
  unreachable

do.end22.i:                                       ; preds = %if.end6.i
  %mul.i = shl nuw nsw i32 %conv.i, 9
  %llis_va7.i = getelementptr inbounds %struct.pl08x_txd, ptr %27, i32 0, i32 3
  %64 = ptrtoint ptr %llis_va7.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %llis_va7.i, align 4
  %sub.i = sub i32 %32, %60
  %div67.i = lshr i32 %sub.i, 2
  %add.ptr.i = getelementptr i32, ptr %65, i32 %div67.i
  %add.ptr23.i = getelementptr i32, ptr %add.ptr.i, i32 %mul.i
  %cmp2479.i = icmp ult ptr %add.ptr.i, %add.ptr23.i
  br i1 %cmp2479.i, label %for.body.lr.ph.i, label %do.end22.i.dma_set_residue.exit_crit_edge

do.end22.i.dma_set_residue.exit_crit_edge:        ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

for.body.lr.ph.i:                                 ; preds = %do.end22.i
  %66 = ptrtoint ptr %ftdmac020.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ftdmac020.i.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i69.i = icmp eq i8 %67, 0
  %pl080s.i71.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %25, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %get_bytes_in_lli.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %llis_va.081.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr34.i, %get_bytes_in_lli.exit.i.for.body.i_crit_edge ]
  %bytes.080.i = phi i32 [ %bytes.1.i.i, %for.body.lr.ph.i ], [ %add27.i, %get_bytes_in_lli.exit.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i69.i, label %if.else.i72.i, label %if.then.i70.i

if.then.i70.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr i32, ptr %llis_va.081.i, i32 3
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %69, 4095
  %and2.i.i = lshr i32 %69, 25
  br label %if.end15.i.i

if.else.i72.i:                                    ; preds = %for.body.i
  %70 = ptrtoint ptr %pl080s.i71.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pl080s.i71.i, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool3.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool3.not.i.i, label %if.else10.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5.i.i = getelementptr i32, ptr %llis_va.081.i, i32 4
  %72 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx5.i.i, align 4
  %and6.i.i = and i32 %73, 33554431
  %arrayidx7.i.i = getelementptr i32, ptr %llis_va.081.i, i32 3
  %74 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx7.i.i, align 4
  %and8.i.i = lshr i32 %75, 18
  br label %if.end15.i.i

if.else10.i.i:                                    ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx11.i.i = getelementptr i32, ptr %llis_va.081.i, i32 3
  %76 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx11.i.i, align 4
  %and12.i.i = and i32 %77, 4095
  %and13.i.i = lshr i32 %77, 18
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else10.i.i, %if.then4.i.i, %if.then.i70.i
  %val.0.in.i73.i = phi i32 [ %and2.i.i, %if.then.i70.i ], [ %and8.i.i, %if.then4.i.i ], [ %and13.i.i, %if.else10.i.i ]
  %bytes.0.i74.i = phi i32 [ %and.i.i, %if.then.i70.i ], [ %and6.i.i, %if.then4.i.i ], [ %and12.i.i, %if.else10.i.i ]
  %val.0.i75.i = and i32 %val.0.in.i73.i, 7
  %78 = zext i32 %val.0.i75.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %val.0.i75.i, label %if.end15.i.i.get_bytes_in_lli.exit.i_crit_edge [
    i32 2, label %sw.bb16.i.i
    i32 1, label %sw.bb.i77.i
  ]

if.end15.i.i.get_bytes_in_lli.exit.i_crit_edge:   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_bytes_in_lli.exit.i

sw.bb.i77.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i76.i = shl nuw nsw i32 %bytes.0.i74.i, 1
  br label %get_bytes_in_lli.exit.i

sw.bb16.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul17.i.i = shl nuw nsw i32 %bytes.0.i74.i, 2
  br label %get_bytes_in_lli.exit.i

get_bytes_in_lli.exit.i:                          ; preds = %sw.bb16.i.i, %sw.bb.i77.i, %if.end15.i.i.get_bytes_in_lli.exit.i_crit_edge
  %bytes.1.i78.i = phi i32 [ %bytes.0.i74.i, %if.end15.i.i.get_bytes_in_lli.exit.i_crit_edge ], [ %mul.i76.i, %sw.bb.i77.i ], [ %mul17.i.i, %sw.bb16.i.i ]
  %add27.i = add i32 %bytes.1.i78.i, %bytes.080.i
  %arrayidx.i = getelementptr i32, ptr %llis_va.081.i, i32 2
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %32)
  %cmp28.not.i = icmp ugt i32 %80, %32
  %add.ptr34.i = getelementptr i32, ptr %llis_va.081.i, i32 %conv.i
  %cmp24.i = icmp ult ptr %add.ptr34.i, %add.ptr23.i
  %or.cond84.i = select i1 %cmp28.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond84.i, label %get_bytes_in_lli.exit.i.for.body.i_crit_edge, label %get_bytes_in_lli.exit.i.dma_set_residue.exit_crit_edge

get_bytes_in_lli.exit.i.dma_set_residue.exit_crit_edge: ; preds = %get_bytes_in_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_residue.exit

get_bytes_in_lli.exit.i.for.body.i_crit_edge:     ; preds = %get_bytes_in_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dma_set_residue.exit:                             ; preds = %get_bytes_in_lli.exit.i.dma_set_residue.exit_crit_edge, %do.end22.i.dma_set_residue.exit_crit_edge, %get_bytes_in_phy_channel.exit.i.dma_set_residue.exit_crit_edge, %if.else.dma_set_residue.exit_crit_edge, %for.body.dma_set_residue.exit_crit_edge, %if.then20.dma_set_residue.exit_crit_edge, %if.else.i.i83.dma_set_residue.exit_crit_edge, %if.then.i.i81.dma_set_residue.exit_crit_edge
  %cmp39 = phi i32 [ 0, %if.else.i.i83.dma_set_residue.exit_crit_edge ], [ 0, %if.then.i.i81.dma_set_residue.exit_crit_edge ], [ 2, %do.end22.i.dma_set_residue.exit_crit_edge ], [ 2, %get_bytes_in_phy_channel.exit.i.dma_set_residue.exit_crit_edge ], [ 2, %if.else.dma_set_residue.exit_crit_edge ], [ 2, %if.then20.dma_set_residue.exit_crit_edge ], [ 2, %get_bytes_in_lli.exit.i.dma_set_residue.exit_crit_edge ], [ 2, %for.body.dma_set_residue.exit_crit_edge ]
  %retval.0.i.i8598 = phi i32 [ 0, %if.else.i.i83.dma_set_residue.exit_crit_edge ], [ 0, %if.then.i.i81.dma_set_residue.exit_crit_edge ], [ 1, %do.end22.i.dma_set_residue.exit_crit_edge ], [ 1, %get_bytes_in_phy_channel.exit.i.dma_set_residue.exit_crit_edge ], [ 1, %if.else.dma_set_residue.exit_crit_edge ], [ 1, %if.then20.dma_set_residue.exit_crit_edge ], [ 1, %get_bytes_in_lli.exit.i.dma_set_residue.exit_crit_edge ], [ 1, %for.body.dma_set_residue.exit_crit_edge ]
  %bytes.1 = phi i32 [ 0, %if.else.i.i83.dma_set_residue.exit_crit_edge ], [ 0, %if.then.i.i81.dma_set_residue.exit_crit_edge ], [ %bytes.1.i.i, %do.end22.i.dma_set_residue.exit_crit_edge ], [ %bytes.1.i.i, %get_bytes_in_phy_channel.exit.i.dma_set_residue.exit_crit_edge ], [ 0, %if.else.dma_set_residue.exit_crit_edge ], [ 0, %if.then20.dma_set_residue.exit_crit_edge ], [ %add27.i, %get_bytes_in_lli.exit.i.dma_set_residue.exit_crit_edge ], [ %add, %for.body.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #12
  %81 = ptrtoint ptr %residue.i73 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %bytes.1, ptr %residue.i73, align 4
  %state36 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 7
  %82 = ptrtoint ptr %state36 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp37 = icmp eq i32 %83, 2
  %ret.1 = select i1 %cmp37, i32 %cmp39, i32 %retval.0.i.i8598
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.then2, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %dma_set_residue.exit ], [ %spec.select, %if.then2 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl08x_issue_pending(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end11_crit_edge, label %if.then

vchan_issue_pending.exit.if.end11_crit_edge:      ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %vchan_issue_pending.exit
  %phychan = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phychan, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %state = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 7
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp8.not = icmp eq i32 %15, 3
  br i1 %cmp8.not, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pl08x_phy_alloc_and_start(ptr noundef %chan)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge, %vchan_issue_pending.exit.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %slave = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 8
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %slave, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %4 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp eq i32 %5, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %6 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp1 = icmp eq i32 %7, 8
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 9
  %8 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %device_fc, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %land.lhs.true

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %vd = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vd, align 4
  %pl080s = getelementptr inbounds %struct.vendor_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pl080s to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pl080s, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %do.end

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #16
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %cfg = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %cfg, ptr %config, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_pause(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %phychan = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phychan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %at = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %at, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ftdmac020.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ftdmac020.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ftdmac020.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %reg_control.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_control.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !375
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !376
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #12, !srcloc !360
  br label %pl08x_pause_phy_chan.exit

if.end.i:                                         ; preds = %if.end
  %reg_config.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_config.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !377
  %15 = or i32 %14, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !378
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_config.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #12, !srcloc !360
  %reg_busy.i.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %if.end.i
  %timeout.046.i = phi i32 [ 1000, %if.end.i ], [ %dec.i, %if.end16.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %reg_busy.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_busy.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #12, !srcloc !357
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = lshr i32 %21, %23
  %25 = and i32 %24, 1
  br label %pl08x_phy_channel_busy.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_config.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !357
  %29 = shl i32 %28, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !365
  %and10.i.i = and i32 %29, 131072
  br label %pl08x_phy_channel_busy.exit.i

pl08x_phy_channel_busy.exit.i:                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %25, %if.then.i.i ], [ %and10.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool14.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool14.not.i, label %pl08x_phy_channel_busy.exit.i.for.end.i_crit_edge, label %if.end16.i

pl08x_phy_channel_busy.exit.i.for.end.i_crit_edge: ; preds = %pl08x_phy_channel_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end16.i:                                       ; preds = %pl08x_phy_channel_busy.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #12
  %dec.i = add nsw i32 %timeout.046.i, -1
  %tobool12.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool12.not.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %pl08x_phy_channel_busy.exit.i.for.end.i_crit_edge
  %31 = ptrtoint ptr %reg_busy.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_busy.i.i, align 4
  %tobool.not.i39.i = icmp eq ptr %32, null
  br i1 %tobool.not.i39.i, label %if.end.i43.i, label %if.then.i40.i

if.then.i40.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #12, !srcloc !357
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %37 = lshr i32 %34, %36
  %38 = and i32 %37, 1
  br label %pl08x_phy_channel_busy.exit45.i

if.end.i43.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_config.i, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #12, !srcloc !357
  %42 = shl i32 %41, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !365
  %and10.i42.i = and i32 %42, 131072
  br label %pl08x_phy_channel_busy.exit45.i

pl08x_phy_channel_busy.exit45.i:                  ; preds = %if.end.i43.i, %if.then.i40.i
  %retval.0.i44.i = phi i32 [ %38, %if.then.i40.i ], [ %and10.i42.i, %if.end.i43.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i44.i)
  %tobool18.not.i = icmp eq i32 %retval.0.i44.i, 0
  br i1 %tobool18.not.i, label %pl08x_phy_channel_busy.exit45.i.pl08x_pause_phy_chan.exit_crit_edge, label %do.end22.i

pl08x_phy_channel_busy.exit45.i.pl08x_pause_phy_chan.exit_crit_edge: ; preds = %pl08x_phy_channel_busy.exit45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_pause_phy_chan.exit

do.end22.i:                                       ; preds = %pl08x_phy_channel_busy.exit45.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %44) #16
  br label %pl08x_pause_phy_chan.exit

pl08x_pause_phy_chan.exit:                        ; preds = %do.end22.i, %pl08x_phy_channel_busy.exit45.i.pl08x_pause_phy_chan.exit_crit_edge, %if.then.i
  %state = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 7
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %pl08x_pause_phy_chan.exit, %land.lhs.true.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_resume(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %phychan = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phychan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %at = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %at, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ftdmac020.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ftdmac020.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ftdmac020.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %reg_control.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_control.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !379
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !380
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #12, !srcloc !360
  br label %pl08x_resume_phy_chan.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %reg_config.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_config.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !381
  %15 = and i32 %14, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_config.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #12, !srcloc !360
  br label %pl08x_resume_phy_chan.exit

pl08x_resume_phy_chan.exit:                       ; preds = %if.end.i, %if.then.i
  %state = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %pl08x_resume_phy_chan.exit, %land.lhs.true.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_terminate_all(ptr noundef %chan) #4 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %phychan = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phychan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then11

land.lhs.true:                                    ; preds = %entry
  %at = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %at, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.then, label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %state36 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 7
  %4 = ptrtoint ptr %state36 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state36, align 4
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %cleanup

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  tail call fastcc void @pl08x_phy_free(ptr noundef %chan)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.thread
  %at13 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %at13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %at13, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %11, ptr noundef %desc_terminated.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.list_add_tail.exit.i_crit_edge

if.then15.list_add_tail.exit.i_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node.i, ptr %11, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then15.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %17, %7
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %19 = ptrtoint ptr %at13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %at13, align 4
  br label %if.end18

if.end18:                                         ; preds = %vchan_terminate_vdesc.exit, %if.end12.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %20 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %head.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %head.i, ptr %20, align 4
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %23 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %24, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end18.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end18.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %head.i, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %head.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %head.i, ptr %26, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %20, align 4
  %31 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end18.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %32 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %33, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %20, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i12.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %head.i, ptr %37, align 4
  store ptr %37, ptr %20, align 4
  %41 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %42 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %43, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %20, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i18.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %43, ptr %45, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %head.i, ptr %47, align 4
  store ptr %47, ptr %20, align 4
  %51 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %52 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %53, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %20, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i24.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %55, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %head.i, ptr %57, align 4
  store ptr %57, ptr %20, align 4
  %61 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %62 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %63, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.pl08x_free_txd_list.exit_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.pl08x_free_txd_list.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd_list.exit

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %20, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %66 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i30.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %63, ptr %65, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %head.i, ptr %67, align 4
  store ptr %67, ptr %20, align 4
  %71 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %pl08x_free_txd_list.exit

pl08x_free_txd_list.exit:                         ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.pl08x_free_txd_list.exit_crit_edge
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %pl08x_free_txd_list.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl08x_synchronize(ptr noundef %chan) #4 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #12
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl08x_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #4 align 64 {
entry:
  %slave_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave_addr) #12
  %2 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %slave_addr, align 4, !annotation !383
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_prep_slave_sg.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_prep_slave_sg, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !363

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length, align 4
  %name = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_prep_slave_sg.__UNIQUE_ID_ddebug315, ptr noundef %4, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, i32 noundef %6, ptr noundef %8) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call fastcc ptr @pl08x_init_txd(ptr noundef %chan, i32 noundef %direction, ptr noundef nonnull %slave_addr)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp109.not = icmp eq i32 %sg_len, 0
  br i1 %cmp109.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %9 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave_addr, align 4
  %dsg_list.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0110 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call20, %for.inc.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0110, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %dma_length10 = getelementptr inbounds %struct.scatterlist, ptr %sg.0110, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2304, i32 noundef 20) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then13, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %node.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %17, ptr noundef %dsg_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dsg_list.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %node.i, ptr %17, align 4
  br label %for.inc

if.then13:                                        ; preds = %for.body
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  %pd1.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %pd1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd1.i, align 4
  %signal.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 9
  %26 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i54 = icmp sgt i32 %27, -1
  br i1 %cmp.i54, label %if.then.i, label %if.then13.pl08x_release_mux.exit_crit_edge

if.then13.pl08x_release_mux.exit_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

if.then.i:                                        ; preds = %if.then13
  %mux_use.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 10
  %28 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.i = icmp eq i32 %29, 0
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.if.end.i55_crit_edge, !prof !373

if.then.i.if.end.i55_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i55

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i55

if.end.i55:                                       ; preds = %do.end.i, %if.then.i.if.end.i55_crit_edge
  %30 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mux_use.i, align 4
  %dec.i = add i32 %31, -1
  store i32 %dec.i, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp23.i = icmp eq i32 %dec.i, 0
  br i1 %cmp23.i, label %land.lhs.true.i, label %if.end.i55.pl08x_release_mux.exit_crit_edge

if.end.i55.pl08x_release_mux.exit_crit_edge:      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

land.lhs.true.i:                                  ; preds = %if.end.i55
  %put_xfer_signal.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %25, i32 0, i32 7
  %32 = ptrtoint ptr %put_xfer_signal.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %put_xfer_signal.i, align 4
  %tobool24.not.i = icmp eq ptr %33, null
  br i1 %tobool24.not.i, label %land.lhs.true.i.pl08x_release_mux.exit_crit_edge, label %if.then25.i

land.lhs.true.i.pl08x_release_mux.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cd.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %34 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cd.i, align 4
  %36 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %signal.i, align 4
  tail call void %33(ptr noundef %35, i32 noundef %37) #12
  %38 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %signal.i, align 4
  br label %pl08x_release_mux.exit

pl08x_release_mux.exit:                           ; preds = %if.then25.i, %land.lhs.true.i.pl08x_release_mux.exit_crit_edge, %if.end.i55.pl08x_release_mux.exit_crit_edge, %if.then13.pl08x_release_mux.exit_crit_edge
  %llis_va.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 3
  %39 = ptrtoint ptr %llis_va.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %llis_va.i, align 4
  %tobool.not.i56 = icmp eq ptr %40, null
  br i1 %tobool.not.i56, label %pl08x_release_mux.exit.if.end.i59_crit_edge, label %if.then.i57

pl08x_release_mux.exit.if.end.i59_crit_edge:      ; preds = %pl08x_release_mux.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i59

if.then.i57:                                      ; preds = %pl08x_release_mux.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pool.i, align 4
  %llis_bus.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 2
  %43 = ptrtoint ptr %llis_bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %llis_bus.i, align 4
  tail call void @dma_pool_free(ptr noundef %42, ptr noundef nonnull %40, i32 noundef %44) #12
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i57, %pl08x_release_mux.exit.if.end.i59_crit_edge
  %45 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i = icmp eq ptr %46, %dsg_list.i
  br i1 %cmp.not24.i, label %if.end.i59.pl08x_free_txd.exit_crit_edge, label %if.end.i59.for.body.i_crit_edge

if.end.i59.for.body.i_crit_edge:                  ; preds = %if.end.i59
  br label %for.body.i

if.end.i59.pl08x_free_txd.exit_crit_edge:         ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i59.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %46, %if.end.i59.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -12
  %47 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i60, label %if.end.i.i.i61, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i61:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i61, %for.body.i.list_del.exit.i_crit_edge
  %54 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i62 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i62, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.pl08x_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.pl08x_free_txd.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

pl08x_free_txd.exit:                              ; preds = %list_del.exit.i.pl08x_free_txd.exit_crit_edge, %if.end.i59.pl08x_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call6) #12
  %adev17 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %adev17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.106) #16
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i.i, %if.end.i.for.inc_crit_edge
  %len1.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %14, ptr %len1.i, align 8
  %buf_addr.slave_addr.i = select i1 %cmp.i, i32 %12, i32 %10
  %slave_addr.buf_addr.i = select i1 %cmp.i, i32 %10, i32 %12
  %59 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %buf_addr.slave_addr.i, ptr %call7.i.i.i, align 8
  %dst_addr.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %slave_addr.buf_addr.i, ptr %dst_addr.i, align 4
  %inc = add nuw i32 %tmp.0111, 1
  %call20 = tail call ptr @sg_next(ptr noundef %sg.0110) #12
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %61 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host, align 4
  %call22 = tail call fastcc i32 @pl08x_fill_llis_for_desc(ptr noundef %62, ptr noundef nonnull %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  %63 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host, align 4
  %pd1.i64 = getelementptr inbounds %struct.pl08x_driver_data, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %pd1.i64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pd1.i64, align 4
  %signal.i65 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 9
  %67 = ptrtoint ptr %signal.i65 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %signal.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp.i66 = icmp sgt i32 %68, -1
  br i1 %cmp.i66, label %if.then.i69, label %if.then24.pl08x_release_mux.exit79_crit_edge

if.then24.pl08x_release_mux.exit79_crit_edge:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit79

if.then.i69:                                      ; preds = %if.then24
  %mux_use.i67 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 10
  %69 = ptrtoint ptr %mux_use.i67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mux_use.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp2.i68 = icmp eq i32 %70, 0
  br i1 %cmp2.i68, label %do.end.i70, label %if.then.i69.if.end.i73_crit_edge, !prof !373

if.then.i69.if.end.i73_crit_edge:                 ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i73

do.end.i70:                                       ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i73

if.end.i73:                                       ; preds = %do.end.i70, %if.then.i69.if.end.i73_crit_edge
  %71 = ptrtoint ptr %mux_use.i67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mux_use.i67, align 4
  %dec.i71 = add i32 %72, -1
  store i32 %dec.i71, ptr %mux_use.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i71)
  %cmp23.i72 = icmp eq i32 %dec.i71, 0
  br i1 %cmp23.i72, label %land.lhs.true.i76, label %if.end.i73.pl08x_release_mux.exit79_crit_edge

if.end.i73.pl08x_release_mux.exit79_crit_edge:    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit79

land.lhs.true.i76:                                ; preds = %if.end.i73
  %put_xfer_signal.i74 = getelementptr inbounds %struct.pl08x_platform_data, ptr %66, i32 0, i32 7
  %73 = ptrtoint ptr %put_xfer_signal.i74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %put_xfer_signal.i74, align 4
  %tobool24.not.i75 = icmp eq ptr %74, null
  br i1 %tobool24.not.i75, label %land.lhs.true.i76.pl08x_release_mux.exit79_crit_edge, label %if.then25.i78

land.lhs.true.i76.pl08x_release_mux.exit79_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit79

if.then25.i78:                                    ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #14
  %cd.i77 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %75 = ptrtoint ptr %cd.i77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cd.i77, align 4
  %77 = ptrtoint ptr %signal.i65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %signal.i65, align 4
  tail call void %74(ptr noundef %76, i32 noundef %78) #12
  %79 = ptrtoint ptr %signal.i65 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %signal.i65, align 4
  br label %pl08x_release_mux.exit79

pl08x_release_mux.exit79:                         ; preds = %if.then25.i78, %land.lhs.true.i76.pl08x_release_mux.exit79_crit_edge, %if.end.i73.pl08x_release_mux.exit79_crit_edge, %if.then24.pl08x_release_mux.exit79_crit_edge
  %llis_va.i80 = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 3
  %80 = ptrtoint ptr %llis_va.i80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %llis_va.i80, align 4
  %tobool.not.i81 = icmp eq ptr %81, null
  br i1 %tobool.not.i81, label %pl08x_release_mux.exit79.if.end.i87_crit_edge, label %if.then.i84

pl08x_release_mux.exit79.if.end.i87_crit_edge:    ; preds = %pl08x_release_mux.exit79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i87

if.then.i84:                                      ; preds = %pl08x_release_mux.exit79
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i82 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %pool.i82 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pool.i82, align 4
  %llis_bus.i83 = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 2
  %84 = ptrtoint ptr %llis_bus.i83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %llis_bus.i83, align 4
  tail call void @dma_pool_free(ptr noundef %83, ptr noundef nonnull %81, i32 noundef %85) #12
  br label %if.end.i87

if.end.i87:                                       ; preds = %if.then.i84, %pl08x_release_mux.exit79.if.end.i87_crit_edge
  %dsg_list.i85 = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 1
  %86 = ptrtoint ptr %dsg_list.i85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dsg_list.i85, align 4
  %cmp.not24.i86 = icmp eq ptr %87, %dsg_list.i85
  br i1 %cmp.not24.i86, label %if.end.i87.pl08x_free_txd.exit99_crit_edge, label %if.end.i87.for.body.i92_crit_edge

if.end.i87.for.body.i92_crit_edge:                ; preds = %if.end.i87
  br label %for.body.i92

if.end.i87.pl08x_free_txd.exit99_crit_edge:       ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit99

for.body.i92:                                     ; preds = %list_del.exit.i98.for.body.i92_crit_edge, %if.end.i87.for.body.i92_crit_edge
  %.pn.in25.i88 = phi ptr [ %.pn.i90, %list_del.exit.i98.for.body.i92_crit_edge ], [ %87, %if.end.i87.for.body.i92_crit_edge ]
  %dsg.0.i89 = getelementptr i8, ptr %.pn.in25.i88, i32 -12
  %88 = ptrtoint ptr %.pn.in25.i88 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn.i90 = load ptr, ptr %.pn.in25.i88, align 4
  %call.i.i.i91 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i88) #12
  br i1 %call.i.i.i91, label %if.end.i.i.i95, label %for.body.i92.list_del.exit.i98_crit_edge

for.body.i92.list_del.exit.i98_crit_edge:         ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i98

if.end.i.i.i95:                                   ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i93 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i88, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i93, align 4
  %91 = ptrtoint ptr %.pn.in25.i88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %.pn.in25.i88, align 4
  %prev1.i.i.i.i94 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i94, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit.i98

list_del.exit.i98:                                ; preds = %if.end.i.i.i95, %for.body.i92.list_del.exit.i98_crit_edge
  %95 = ptrtoint ptr %.pn.in25.i88 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i88, align 4
  %prev.i.i96 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i88, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i96 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i96, align 4
  tail call void @kfree(ptr noundef %dsg.0.i89) #12
  %cmp.not.i97 = icmp eq ptr %.pn.i90, %dsg_list.i85
  br i1 %cmp.not.i97, label %list_del.exit.i98.pl08x_free_txd.exit99_crit_edge, label %list_del.exit.i98.for.body.i92_crit_edge

list_del.exit.i98.for.body.i92_crit_edge:         ; preds = %list_del.exit.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i92

list_del.exit.i98.pl08x_free_txd.exit99_crit_edge: ; preds = %list_del.exit.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit99

pl08x_free_txd.exit99:                            ; preds = %list_del.exit.i98.pl08x_free_txd.exit99_crit_edge, %if.end.i87.pl08x_free_txd.exit99_crit_edge
  tail call void @kfree(ptr noundef nonnull %call6) #12
  br label %cleanup

if.end25:                                         ; preds = %for.end
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call6, ptr noundef %chan) #12
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 1
  %97 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 4
  %98 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 5
  %99 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 1
  %100 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i100 = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i101 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %prev.i.i101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i101, align 4
  %call.i.i.i102 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i100, ptr noundef %103, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i102, label %if.end.i.i.i104, label %if.end25.vchan_tx_prep.exit_crit_edge

if.end25.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i104:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %prev.i.i101 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %node.i100, ptr %prev.i.i101, align 4
  %105 = ptrtoint ptr %node.i100 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %desc_allocated.i, ptr %node.i100, align 4
  %prev3.i.i.i103 = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %prev3.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev3.i.i.i103, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %node.i100, ptr %103, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i104, %if.end25.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %pl08x_free_txd.exit99, %pl08x_free_txd.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %pl08x_free_txd.exit ], [ %call6, %vchan_tx_prep.exit ], [ null, %pl08x_free_txd.exit99 ], [ null, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave_addr) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl08x_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #4 align 64 {
entry:
  %slave_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave_addr) #12
  %2 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %slave_addr, align 4, !annotation !383
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_prep_dma_cyclic.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_prep_dma_cyclic, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !363

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %cond = select i1 %cmp, ptr @.str.121, ptr @.str.122
  %name = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_prep_dma_cyclic.__UNIQUE_ID_ddebug316, ptr noundef %4, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.119, i32 noundef %period_len, i32 noundef %buf_len, ptr noundef nonnull %cond, ptr noundef %6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call fastcc ptr @pl08x_init_txd(ptr noundef %chan, i32 noundef %direction, ptr noundef nonnull %slave_addr)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %cyclic = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 7
  %7 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cyclic, align 1
  %cctl = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 4
  %8 = ptrtoint ptr %cctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cctl, align 4
  %or = or i32 %9, -2147483648
  store i32 %or, ptr %cctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp10106.not = icmp eq i32 %buf_len, 0
  br i1 %cmp10106.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %10 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave_addr, align 4
  %dsg_list.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %add15, %for.inc.for.body_crit_edge ]
  %add = add i32 %tmp.0107, %buf_addr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2304, i32 noundef 20) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then13, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %node.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %14, ptr noundef %dsg_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dsg_list.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node.i, ptr %14, align 4
  br label %for.inc

if.then13:                                        ; preds = %for.body
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %pd1.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %pd1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd1.i, align 4
  %signal.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 9
  %23 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i51 = icmp sgt i32 %24, -1
  br i1 %cmp.i51, label %if.then.i, label %if.then13.pl08x_release_mux.exit_crit_edge

if.then13.pl08x_release_mux.exit_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

if.then.i:                                        ; preds = %if.then13
  %mux_use.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 10
  %25 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2.i = icmp eq i32 %26, 0
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.if.end.i52_crit_edge, !prof !373

if.then.i.if.end.i52_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i52

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i52

if.end.i52:                                       ; preds = %do.end.i, %if.then.i.if.end.i52_crit_edge
  %27 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mux_use.i, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp23.i = icmp eq i32 %dec.i, 0
  br i1 %cmp23.i, label %land.lhs.true.i, label %if.end.i52.pl08x_release_mux.exit_crit_edge

if.end.i52.pl08x_release_mux.exit_crit_edge:      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

land.lhs.true.i:                                  ; preds = %if.end.i52
  %put_xfer_signal.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %22, i32 0, i32 7
  %29 = ptrtoint ptr %put_xfer_signal.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %put_xfer_signal.i, align 4
  %tobool24.not.i = icmp eq ptr %30, null
  br i1 %tobool24.not.i, label %land.lhs.true.i.pl08x_release_mux.exit_crit_edge, label %if.then25.i

land.lhs.true.i.pl08x_release_mux.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cd.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %31 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cd.i, align 4
  %33 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %signal.i, align 4
  tail call void %30(ptr noundef %32, i32 noundef %34) #12
  %35 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %signal.i, align 4
  br label %pl08x_release_mux.exit

pl08x_release_mux.exit:                           ; preds = %if.then25.i, %land.lhs.true.i.pl08x_release_mux.exit_crit_edge, %if.end.i52.pl08x_release_mux.exit_crit_edge, %if.then13.pl08x_release_mux.exit_crit_edge
  %llis_va.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 3
  %36 = ptrtoint ptr %llis_va.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %llis_va.i, align 4
  %tobool.not.i53 = icmp eq ptr %37, null
  br i1 %tobool.not.i53, label %pl08x_release_mux.exit.if.end.i56_crit_edge, label %if.then.i54

pl08x_release_mux.exit.if.end.i56_crit_edge:      ; preds = %pl08x_release_mux.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i56

if.then.i54:                                      ; preds = %pl08x_release_mux.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pool.i, align 4
  %llis_bus.i = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 2
  %40 = ptrtoint ptr %llis_bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %llis_bus.i, align 4
  tail call void @dma_pool_free(ptr noundef %39, ptr noundef nonnull %37, i32 noundef %41) #12
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.then.i54, %pl08x_release_mux.exit.if.end.i56_crit_edge
  %42 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i = icmp eq ptr %43, %dsg_list.i
  br i1 %cmp.not24.i, label %if.end.i56.pl08x_free_txd.exit_crit_edge, label %if.end.i56.for.body.i_crit_edge

if.end.i56.for.body.i_crit_edge:                  ; preds = %if.end.i56
  br label %for.body.i

if.end.i56.pl08x_free_txd.exit_crit_edge:         ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i56.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %43, %if.end.i56.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -12
  %44 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i57, label %if.end.i.i.i58, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i58:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i58, %for.body.i.list_del.exit.i_crit_edge
  %51 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i59 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i59, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.pl08x_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.pl08x_free_txd.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

pl08x_free_txd.exit:                              ; preds = %list_del.exit.i.pl08x_free_txd.exit_crit_edge, %if.end.i56.pl08x_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef %call6) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i.i, %if.end.i.for.inc_crit_edge
  %len1.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %period_len, ptr %len1.i, align 8
  %buf_addr.slave_addr.i = select i1 %cmp.i, i32 %add, i32 %11
  %slave_addr.buf_addr.i = select i1 %cmp.i, i32 %11, i32 %add
  %54 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %buf_addr.slave_addr.i, ptr %call7.i.i.i, align 8
  %dst_addr.i = getelementptr inbounds %struct.pl08x_sg, ptr %call7.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %slave_addr.buf_addr.i, ptr %dst_addr.i, align 4
  %add15 = add i32 %tmp.0107, %period_len
  %cmp10 = icmp ult i32 %add15, %buf_len
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %56 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host, align 4
  %call17 = tail call fastcc i32 @pl08x_fill_llis_for_desc(ptr noundef %57, ptr noundef nonnull %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end
  %58 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host, align 4
  %pd1.i61 = getelementptr inbounds %struct.pl08x_driver_data, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %pd1.i61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pd1.i61, align 4
  %signal.i62 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 9
  %62 = ptrtoint ptr %signal.i62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %signal.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i63 = icmp sgt i32 %63, -1
  br i1 %cmp.i63, label %if.then.i66, label %if.then19.pl08x_release_mux.exit76_crit_edge

if.then19.pl08x_release_mux.exit76_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit76

if.then.i66:                                      ; preds = %if.then19
  %mux_use.i64 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 10
  %64 = ptrtoint ptr %mux_use.i64 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mux_use.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp2.i65 = icmp eq i32 %65, 0
  br i1 %cmp2.i65, label %do.end.i67, label %if.then.i66.if.end.i70_crit_edge, !prof !373

if.then.i66.if.end.i70_crit_edge:                 ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i70

do.end.i67:                                       ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i70

if.end.i70:                                       ; preds = %do.end.i67, %if.then.i66.if.end.i70_crit_edge
  %66 = ptrtoint ptr %mux_use.i64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mux_use.i64, align 4
  %dec.i68 = add i32 %67, -1
  store i32 %dec.i68, ptr %mux_use.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i68)
  %cmp23.i69 = icmp eq i32 %dec.i68, 0
  br i1 %cmp23.i69, label %land.lhs.true.i73, label %if.end.i70.pl08x_release_mux.exit76_crit_edge

if.end.i70.pl08x_release_mux.exit76_crit_edge:    ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit76

land.lhs.true.i73:                                ; preds = %if.end.i70
  %put_xfer_signal.i71 = getelementptr inbounds %struct.pl08x_platform_data, ptr %61, i32 0, i32 7
  %68 = ptrtoint ptr %put_xfer_signal.i71 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %put_xfer_signal.i71, align 4
  %tobool24.not.i72 = icmp eq ptr %69, null
  br i1 %tobool24.not.i72, label %land.lhs.true.i73.pl08x_release_mux.exit76_crit_edge, label %if.then25.i75

land.lhs.true.i73.pl08x_release_mux.exit76_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit76

if.then25.i75:                                    ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #14
  %cd.i74 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %70 = ptrtoint ptr %cd.i74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cd.i74, align 4
  %72 = ptrtoint ptr %signal.i62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %signal.i62, align 4
  tail call void %69(ptr noundef %71, i32 noundef %73) #12
  %74 = ptrtoint ptr %signal.i62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %signal.i62, align 4
  br label %pl08x_release_mux.exit76

pl08x_release_mux.exit76:                         ; preds = %if.then25.i75, %land.lhs.true.i73.pl08x_release_mux.exit76_crit_edge, %if.end.i70.pl08x_release_mux.exit76_crit_edge, %if.then19.pl08x_release_mux.exit76_crit_edge
  %llis_va.i77 = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 3
  %75 = ptrtoint ptr %llis_va.i77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %llis_va.i77, align 4
  %tobool.not.i78 = icmp eq ptr %76, null
  br i1 %tobool.not.i78, label %pl08x_release_mux.exit76.if.end.i84_crit_edge, label %if.then.i81

pl08x_release_mux.exit76.if.end.i84_crit_edge:    ; preds = %pl08x_release_mux.exit76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i84

if.then.i81:                                      ; preds = %pl08x_release_mux.exit76
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i79 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %77 = ptrtoint ptr %pool.i79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pool.i79, align 4
  %llis_bus.i80 = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 2
  %79 = ptrtoint ptr %llis_bus.i80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %llis_bus.i80, align 4
  tail call void @dma_pool_free(ptr noundef %78, ptr noundef nonnull %76, i32 noundef %80) #12
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.then.i81, %pl08x_release_mux.exit76.if.end.i84_crit_edge
  %dsg_list.i82 = getelementptr inbounds %struct.pl08x_txd, ptr %call6, i32 0, i32 1
  %81 = ptrtoint ptr %dsg_list.i82 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dsg_list.i82, align 4
  %cmp.not24.i83 = icmp eq ptr %82, %dsg_list.i82
  br i1 %cmp.not24.i83, label %if.end.i84.pl08x_free_txd.exit96_crit_edge, label %if.end.i84.for.body.i89_crit_edge

if.end.i84.for.body.i89_crit_edge:                ; preds = %if.end.i84
  br label %for.body.i89

if.end.i84.pl08x_free_txd.exit96_crit_edge:       ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit96

for.body.i89:                                     ; preds = %list_del.exit.i95.for.body.i89_crit_edge, %if.end.i84.for.body.i89_crit_edge
  %.pn.in25.i85 = phi ptr [ %.pn.i87, %list_del.exit.i95.for.body.i89_crit_edge ], [ %82, %if.end.i84.for.body.i89_crit_edge ]
  %dsg.0.i86 = getelementptr i8, ptr %.pn.in25.i85, i32 -12
  %83 = ptrtoint ptr %.pn.in25.i85 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn.i87 = load ptr, ptr %.pn.in25.i85, align 4
  %call.i.i.i88 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i85) #12
  br i1 %call.i.i.i88, label %if.end.i.i.i92, label %for.body.i89.list_del.exit.i95_crit_edge

for.body.i89.list_del.exit.i95_crit_edge:         ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i95

if.end.i.i.i92:                                   ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i90 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i85, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i90, align 4
  %86 = ptrtoint ptr %.pn.in25.i85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %.pn.in25.i85, align 4
  %prev1.i.i.i.i91 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i91, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del.exit.i95

list_del.exit.i95:                                ; preds = %if.end.i.i.i92, %for.body.i89.list_del.exit.i95_crit_edge
  %90 = ptrtoint ptr %.pn.in25.i85 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i85, align 4
  %prev.i.i93 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i85, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i93, align 4
  tail call void @kfree(ptr noundef %dsg.0.i86) #12
  %cmp.not.i94 = icmp eq ptr %.pn.i87, %dsg_list.i82
  br i1 %cmp.not.i94, label %list_del.exit.i95.pl08x_free_txd.exit96_crit_edge, label %list_del.exit.i95.for.body.i89_crit_edge

list_del.exit.i95.for.body.i89_crit_edge:         ; preds = %list_del.exit.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i89

list_del.exit.i95.pl08x_free_txd.exit96_crit_edge: ; preds = %list_del.exit.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit96

pl08x_free_txd.exit96:                            ; preds = %list_del.exit.i95.pl08x_free_txd.exit96_crit_edge, %if.end.i84.pl08x_free_txd.exit96_crit_edge
  tail call void @kfree(ptr noundef %call6) #12
  br label %cleanup

if.end20:                                         ; preds = %for.end
  tail call void @dma_async_tx_descriptor_init(ptr noundef %call6, ptr noundef %chan) #12
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 1
  %92 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 4
  %93 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call6, i32 0, i32 5
  %94 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 1
  %95 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i97 = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i98 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i98, align 4
  %call.i.i.i99 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i97, ptr noundef %98, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i99, label %if.end.i.i.i101, label %if.end20.vchan_tx_prep.exit_crit_edge

if.end20.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i101:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %node.i97, ptr %prev.i.i98, align 4
  %100 = ptrtoint ptr %node.i97 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %desc_allocated.i, ptr %node.i97, align 4
  %prev3.i.i.i100 = getelementptr inbounds %struct.virt_dma_desc, ptr %call6, i32 0, i32 2, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev3.i.i.i100, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %node.i97, ptr %98, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i101, %if.end20.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %pl08x_free_txd.exit96, %pl08x_free_txd.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %pl08x_free_txd.exit ], [ %call6, %vchan_tx_prep.exit ], [ null, %pl08x_free_txd.exit96 ], [ null, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave_addr) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl08x_of_probe(ptr noundef %adev, ptr noundef %pl08x, ptr noundef %np) unnamed_addr #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !383
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 40, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i163 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.123, ptr noundef null) #12
  %tobool.i.not = icmp eq ptr %call.i163, null
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lli_buses = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %lli_buses to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lli_buses, align 4
  %3 = or i8 %2, 1
  store i8 %3, ptr %lli_buses, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %call.i164 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.124, ptr noundef null) #12
  %tobool.i165.not = icmp eq ptr %call.i164, null
  br i1 %tobool.i165.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %lli_buses7 = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %lli_buses7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lli_buses7, align 4
  %6 = or i8 %5, 2
  store i8 %6, ptr %lli_buses7, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end4.if.end11_crit_edge
  %lli_buses12 = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %lli_buses12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lli_buses12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %do.end, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.125) #16
  %9 = ptrtoint ptr %lli_buses12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lli_buses12, align 4
  %11 = or i8 %10, 3
  store i8 %11, ptr %lli_buses12, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end11.if.end20_crit_edge
  %call.i166 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.127, ptr noundef null) #12
  %tobool.i167.not = icmp eq ptr %call.i166, null
  br i1 %tobool.i167.not, label %if.end20.if.end26_crit_edge, label %if.then22

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %mem_buses = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %mem_buses to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mem_buses, align 1
  %14 = or i8 %13, 1
  store i8 %14, ptr %mem_buses, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end20.if.end26_crit_edge
  %call.i168 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.128, ptr noundef null) #12
  %tobool.i169.not = icmp eq ptr %call.i168, null
  br i1 %tobool.i169.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %mem_buses29 = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %mem_buses29 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mem_buses29, align 1
  %17 = or i8 %16, 2
  store i8 %17, ptr %mem_buses29, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end26.if.end33_crit_edge
  %mem_buses34 = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %mem_buses34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mem_buses34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool35.not = icmp eq i8 %19, 0
  br i1 %tobool35.not, label %do.end39, label %if.end33.if.end45_crit_edge

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.130) #16
  %20 = ptrtoint ptr %mem_buses34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mem_buses34, align 1
  %22 = or i8 %21, 3
  store i8 %22, ptr %mem_buses34, align 1
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end33.if.end45_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.132, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool47.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool47.not, label %if.end53, label %if.end53.thread

if.end53.thread:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.134) #16
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %val, align 4
  br label %sw.epilog

if.end53:                                         ; preds = %if.end45
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %val, align 4
  %25 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %.pr, label %do.end56 [
    i32 1, label %if.end53.sw.epilog_crit_edge
    i32 4, label %sw.bb58
    i32 8, label %sw.bb60
    i32 16, label %sw.bb62
    i32 32, label %sw.bb64
    i32 64, label %sw.bb66
    i32 128, label %sw.bb68
    i32 256, label %sw.bb70
  ]

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end56:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.55) #16
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb60, %sw.bb58, %do.end56, %if.end53.sw.epilog_crit_edge, %if.end53.thread
  %.sink = phi i32 [ 7, %sw.bb70 ], [ 6, %sw.bb68 ], [ 5, %sw.bb66 ], [ 4, %sw.bb64 ], [ 3, %sw.bb62 ], [ 2, %sw.bb60 ], [ 1, %sw.bb58 ], [ 0, %if.end53.thread ], [ 0, %if.end53.sw.epilog_crit_edge ], [ 0, %do.end56 ]
  %memcpy_burst_size71 = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %memcpy_burst_size71 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %memcpy_burst_size71, align 4
  %call.i.i170 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.138, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i170)
  %tobool73.not = icmp sgt i32 %call.i.i170, -1
  br i1 %tobool73.not, label %if.end79, label %if.end79.thread

if.end79.thread:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.140) #16
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %val, align 4
  br label %sw.epilog90

if.end79:                                         ; preds = %sw.epilog
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr171 = load i32, ptr %val, align 4
  %29 = zext i32 %.pr171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %.pr171, label %do.end83 [
    i32 8, label %if.end79.sw.epilog90_crit_edge
    i32 16, label %sw.bb86
    i32 32, label %sw.bb88
  ]

if.end79.sw.epilog90_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog90

do.end83:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.53) #16
  br label %sw.epilog90

sw.bb86:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog90

sw.bb88:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %sw.bb88, %sw.bb86, %do.end83, %if.end79.sw.epilog90_crit_edge, %if.end79.thread
  %.sink181 = phi i32 [ 2, %sw.bb88 ], [ 1, %sw.bb86 ], [ 0, %if.end79.thread ], [ 0, %if.end79.sw.epilog90_crit_edge ], [ 0, %do.end83 ]
  %memcpy_bus_width89 = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %memcpy_bus_width89 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink181, ptr %memcpy_bus_width89, align 4
  %vd = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 5
  %31 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vd, align 4
  %signals = getelementptr inbounds %struct.vendor_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %signals to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %signals, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool91.not = icmp eq i8 %34, 0
  br i1 %tobool91.not, label %sw.epilog90.if.end109_crit_edge, label %devm_kcalloc.exit

sw.epilog90.if.end109_crit_edge:                  ; preds = %sw.epilog90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

devm_kcalloc.exit:                                ; preds = %sw.epilog90
  %conv96 = zext i8 %34 to i32
  %35 = mul nuw nsw i32 %conv96, 24
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef %35, i32 noundef 3520) #12
  %tobool98.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool98.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end100

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end100:                                        ; preds = %devm_kcalloc.exit
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i, ptr %call.i, align 4
  %37 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vd, align 4
  %signals102174 = getelementptr inbounds %struct.vendor_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %signals102174 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %signals102174, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp176.not = icmp eq i8 %40, 0
  br i1 %cmp176.not, label %if.end100.for.end_crit_edge, label %if.end100.for.body_crit_edge

if.end100.for.body_crit_edge:                     ; preds = %if.end100
  br label %for.body

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end100.for.body_crit_edge
  %i.0178 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end100.for.body_crit_edge ]
  %chanp.0177 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call5.i.i, %if.end100.for.body_crit_edge ]
  %call105 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.144, i32 noundef %i.0178) #12
  %41 = ptrtoint ptr %chanp.0177 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call105, ptr %chanp.0177, align 4
  %incdec.ptr = getelementptr %struct.pl08x_channel_data, ptr %chanp.0177, i32 1
  %inc = add nuw nsw i32 %i.0178, 1
  %42 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vd, align 4
  %signals102 = getelementptr inbounds %struct.vendor_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %signals102 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %signals102, align 2
  %conv103 = zext i8 %45 to i32
  %cmp = icmp ult i32 %inc, %conv103
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = zext i8 %45 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end100.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %if.end100.for.end_crit_edge ]
  %num_slave_channels = getelementptr inbounds %struct.pl08x_platform_data, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %num_slave_channels to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.lcssa, ptr %num_slave_channels, align 4
  br label %if.end109

if.end109:                                        ; preds = %for.end, %sw.epilog90.if.end109_crit_edge
  %pd110 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 6
  %47 = ptrtoint ptr %pd110 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %pd110, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call112 = call i32 @of_dma_controller_register(ptr noundef %49, ptr noundef nonnull @pl08x_of_xlate, ptr noundef %pl08x) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call112, %if.end109 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pl08x_filter_fn(ptr nocapture noundef readonly %chan, ptr noundef readnone %chan_id) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cd = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  %cmp = icmp eq ptr %1, %chan_id
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pl08x_driver_data, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !357
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef %3) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #12, !srcloc !360
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #12, !srcloc !357
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %if.end22, label %if.end22.thread

if.end22.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %10) #12, !srcloc !360
  br label %for.cond.preheader

if.end22:                                         ; preds = %if.end
  %14 = select i1 %tobool.not, i1 %tobool15.not, i1 false
  br i1 %14, label %if.end22.cleanup66_crit_edge, label %if.end22.for.cond.preheader_crit_edge

if.end22.for.cond.preheader_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.end22.cleanup66_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66

for.cond.preheader:                               ; preds = %if.end22.for.cond.preheader_crit_edge, %if.end22.thread
  %vd = getelementptr inbounds %struct.pl08x_driver_data, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vd, align 4
  %channels117 = getelementptr inbounds %struct.vendor_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %channels117 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %channels117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp119.not = icmp eq i8 %18, 0
  br i1 %cmp119.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %phy_chans = getelementptr inbounds %struct.pl08x_driver_data, ptr %dev, i32 0, i32 7
  %adev38 = getelementptr inbounds %struct.pl08x_driver_data, ptr %dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mask.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.2, %for.inc.for.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0120
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %and30 = and i32 %shl, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %or.cond = select i1 %tobool28.not, i1 %tobool31.not, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then32:                                        ; preds = %for.body
  %19 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_chans, align 4
  %serving = getelementptr %struct.pl08x_phy_chan, ptr %20, i32 %i.0120, i32 9
  %21 = ptrtoint ptr %serving to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serving, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %adev38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.152, i32 noundef %i.0120) #16
  br label %for.inc

if.end40:                                         ; preds = %if.then32
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %22, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %at = getelementptr inbounds %struct.pl08x_dma_chan, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %at, align 4
  %tobool41.not = icmp eq ptr %26, null
  br i1 %tobool41.not, label %if.end40.if.end58_crit_edge, label %land.lhs.true42

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

land.lhs.true42:                                  ; preds = %if.end40
  %cyclic = getelementptr inbounds %struct.pl08x_txd, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cyclic, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool43.not = icmp eq i8 %28, 0
  br i1 %tobool43.not, label %if.then48.critedge, label %if.then45

if.then45:                                        ; preds = %land.lhs.true42
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %26, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %30, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then45.if.end58_crit_edge

if.then45.if.end58_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then.i.i:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %30, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #12
  br label %if.end58

if.then48.critedge:                               ; preds = %land.lhs.true42
  %32 = ptrtoint ptr %at to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %at, align 4
  %host.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %22, i32 0, i32 6
  %33 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host.i, align 4
  %pd1.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %pd1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pd1.i, align 4
  %signal.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %22, i32 0, i32 9
  %37 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i = icmp sgt i32 %38, -1
  br i1 %cmp.i, label %if.then.i, label %if.then48.critedge.pl08x_release_mux.exit_crit_edge

if.then48.critedge.pl08x_release_mux.exit_crit_edge: ; preds = %if.then48.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

if.then.i:                                        ; preds = %if.then48.critedge
  %mux_use.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %22, i32 0, i32 10
  %39 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp2.i = icmp eq i32 %40, 0
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !373

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %41 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mux_use.i, align 4
  %dec.i = add i32 %42, -1
  store i32 %dec.i, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp23.i = icmp eq i32 %dec.i, 0
  br i1 %cmp23.i, label %land.lhs.true.i, label %if.end.i.pl08x_release_mux.exit_crit_edge

if.end.i.pl08x_release_mux.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %put_xfer_signal.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %36, i32 0, i32 7
  %43 = ptrtoint ptr %put_xfer_signal.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %put_xfer_signal.i, align 4
  %tobool24.not.i = icmp eq ptr %44, null
  br i1 %tobool24.not.i, label %land.lhs.true.i.pl08x_release_mux.exit_crit_edge, label %if.then25.i

land.lhs.true.i.pl08x_release_mux.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_release_mux.exit

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cd.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %22, i32 0, i32 3
  %45 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cd.i, align 4
  %47 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %signal.i, align 4
  tail call void %44(ptr noundef %46, i32 noundef %48) #12
  %49 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %signal.i, align 4
  br label %pl08x_release_mux.exit

pl08x_release_mux.exit:                           ; preds = %if.then25.i, %land.lhs.true.i.pl08x_release_mux.exit_crit_edge, %if.end.i.pl08x_release_mux.exit_crit_edge, %if.then48.critedge.pl08x_release_mux.exit_crit_edge
  %done = getelementptr inbounds %struct.pl08x_txd, ptr %26, i32 0, i32 6
  %50 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %done, align 4
  %chan.i107 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %26, i32 0, i32 3
  %51 = ptrtoint ptr %chan.i107 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chan.i107, align 4
  %53 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i.i = icmp slt i32 %54, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !373

do.body2.i.i:                                     ; preds = %pl08x_release_mux.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !388
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %pl08x_release_mux.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %52, i32 0, i32 3
  %55 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %completed_cookie.i.i, align 4
  %56 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_irq, %do.end.i109)) #12
          to label %if.then.i108 [label %do.end.i109], !srcloc !363

if.then.i108:                                     ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %52, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug291, ptr noundef %60, ptr noundef nonnull @.str.158, ptr noundef nonnull %26, i32 noundef %54) #12
  br label %do.end.i109

do.end.i109:                                      ; preds = %if.then.i108, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %26, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %52, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %52, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %62, ptr noundef %desc_completed.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i109.list_add_tail.exit.i_crit_edge

do.end.i109.list_add_tail.exit.i_crit_edge:       ; preds = %do.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %node.i, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %26, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %node.i, ptr %62, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i109.list_add_tail.exit.i_crit_edge
  %state.i.i110 = getelementptr inbounds %struct.virt_dma_chan, ptr %52, i32 0, i32 1, i32 1
  %call.i.i111 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i110) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %call.i.i111, 0
  br i1 %tobool.not.i.i112, label %if.then.i.i114, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_cookie_complete.exit

if.then.i.i114:                                   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %task.i113 = getelementptr inbounds %struct.virt_dma_chan, ptr %52, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i113) #12
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i114, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %22, i32 0, i32 6
  %67 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %68, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %68, i32 -108
  %tobool53.not115 = icmp eq ptr %add.ptr.i, null
  %tobool53.not = or i1 %cmp.not.i, %tobool53.not115
  br i1 %tobool53.not, label %if.else55, label %if.then54

if.then54:                                        ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pl08x_start_next_txd(ptr noundef nonnull %22)
  br label %if.end58

if.else55:                                        ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pl08x_phy_free(ptr noundef nonnull %22)
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then54, %if.then.i.i, %if.then45.if.end58_crit_edge, %if.end40.if.end58_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %or = or i32 %mask.0122, %shl
  br label %for.inc

for.inc:                                          ; preds = %if.end58, %do.end37, %for.body.for.inc_crit_edge
  %mask.2 = phi i32 [ %mask.0122, %for.body.for.inc_crit_edge ], [ %or, %if.end58 ], [ %mask.0122, %do.end37 ]
  %inc = add nuw nsw i32 %i.0120, 1
  %69 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vd, align 4
  %channels = getelementptr inbounds %struct.vendor_data, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %channels, align 1
  %conv = zext i8 %72 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %mask.2, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0.lcssa)
  %tobool65.not = icmp ne i32 %mask.0.lcssa, 0
  %cond = zext i1 %tobool65.not to i32
  br label %cleanup66

cleanup66:                                        ; preds = %for.end, %if.end22.cleanup66_crit_edge
  %retval.0 = phi i32 [ %cond, %for.end ], [ 0, %if.end22.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl08x_dma_init_virtual_channels(ptr noundef %pl08x, ptr noundef %dmadev, i32 noundef %channels, i1 noundef zeroext %slave) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channels1 = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 3
  %0 = ptrtoint ptr %channels1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %channels1, ptr %channels1, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %channels1, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels)
  %cmp76.not = icmp eq i32 %channels, 0
  br i1 %cmp76.not, label %entry.do.end33_crit_edge, label %for.body.lr.ph

entry.do.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

for.body.lr.ph:                                   ; preds = %entry
  %pd12 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 6
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 268) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pl08x, ptr %host, align 4
  %state = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 8
  %signal = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %signal, align 8
  br i1 %slave, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %pd12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd12, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx = getelementptr %struct.pl08x_channel_data, ptr %9, i32 %i.077
  %cd = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %cd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %cd, align 4
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.077, ptr %signal, align 8
  %slave.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %slave.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %slave.i, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %name.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name.i, align 8
  %addr.i = getelementptr %struct.pl08x_channel_data, ptr %9, i32 %i.077, i32 4
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 4
  %src_addr.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %src_addr.i, align 4
  %19 = load i32, ptr %addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dst_addr.i, align 8
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 24) #17
  %cd6 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %cd6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i68, ptr %cd6, align 4
  %tobool8.not = icmp eq ptr %call7.i.i68, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %23 = ptrtoint ptr %call7.i.i68 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.159, ptr %call7.i.i68, align 8
  %24 = ptrtoint ptr %pd12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd12, align 4
  %mem_buses = getelementptr inbounds %struct.pl08x_platform_data, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %mem_buses to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mem_buses, align 1
  %periph_buses = getelementptr inbounds %struct.pl08x_channel_data, ptr %call7.i.i68, i32 0, i32 6
  %28 = ptrtoint ptr %periph_buses to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %periph_buses, align 1
  %call14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.160, i32 noundef %i.077) #12
  %name = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call14, ptr %name, align 8
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.then17, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %cd6.le = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %cd6.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cd6.le, align 4
  tail call void @kfree(ptr noundef %31) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_dma_init_virtual_channels.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_dma_init_virtual_channels, %do.end)) #12
          to label %if.then27 [label %do.end], !srcloc !363

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adev, align 4
  %name28 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name28, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_dma_init_virtual_channels.__UNIQUE_ID_ddebug317, ptr noundef %33, ptr noundef nonnull @.str.162, ptr noundef %35) #12
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pl08x_desc_free, ptr %desc_free, align 8
  tail call void @vchan_init(ptr noundef nonnull %call7.i.i, ptr noundef %dmadev) #12
  %inc = add nuw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %channels
  br i1 %exitcond.not, label %do.end.do.end33_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end.do.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

do.end33:                                         ; preds = %do.end.do.end33_crit_edge, %entry.do.end33_crit_edge
  %adev34 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %37 = ptrtoint ptr %adev34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adev34, align 4
  %cond = select i1 %slave, ptr @.str.164, ptr @.str.159
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.163, i32 noundef %channels, ptr noundef nonnull %cond) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.then17, %if.then9, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then17 ], [ -12, %if.then9 ], [ %channels, %do.end33 ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_pl08x_debugfs(ptr noundef %pl08x) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_file(ptr noundef %retval.0.i, i16 noundef zeroext -32476, ptr noundef null, ptr noundef %pl08x, ptr noundef nonnull @pl08x_debugfs_fops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl08x_free_virtual_channels(ptr noundef readonly %dmadev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %cmp.not27 = icmp eq ptr %1, %channels
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %chan.0 = getelementptr i8, ptr %.pn.in28, i32 -32
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in28, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %chan.0) #12
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl08x_fill_llis_for_desc(ptr noundef readonly %pl08x, ptr noundef %txd) unnamed_addr #4 align 64 {
entry:
  %bd = alloca %struct.pl08x_lli_build_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bd) #12
  %0 = getelementptr inbounds i8, ptr %bd, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 20)
  %pool = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 8
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %llis_bus = getelementptr inbounds %struct.pl08x_txd, ptr %txd, i32 0, i32 2
  %call = tail call ptr @dma_pool_alloc(ptr noundef %3, i32 noundef 2048, ptr noundef %llis_bus) #12
  %llis_va1 = getelementptr inbounds %struct.pl08x_txd, ptr %txd, i32 0, i32 3
  %4 = ptrtoint ptr %llis_va1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %llis_va1, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #16
  br label %cleanup381

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %txd, ptr %bd, align 4
  %lli_buses = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 9
  %8 = ptrtoint ptr %lli_buses to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lli_buses, align 4
  %10 = lshr i8 %9, 1
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  %lli_bus = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 4
  %12 = ptrtoint ptr %lli_bus to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lli_bus, align 4
  %cctl5 = getelementptr inbounds %struct.pl08x_txd, ptr %txd, i32 0, i32 4
  %13 = ptrtoint ptr %cctl5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cctl5, align 4
  %vd.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 5
  %15 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i = getelementptr inbounds %struct.vendor_data, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ftdmac020.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ftdmac020.i, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %.sink.i = select i1 %tobool.not.i, i32 18, i32 25
  %and8.i = lshr i32 %14, %.sink.i
  %val.0.i = and i32 %and8.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %val.0.i)
  %19 = icmp ult i32 %val.0.i, 3
  br i1 %19, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 999, 0\0A.popsection", ""() #12, !srcloc !389
  unreachable

switch.lookup:                                    ; preds = %if.end
  %switch.cast = trunc i32 %val.0.i to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 262657, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %srcbus = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 1
  %maxwidth = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %maxwidth to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %switch.masked, ptr %maxwidth, align 4
  %21 = ptrtoint ptr %ftdmac020.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ftdmac020.i, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i486 = icmp eq i8 %22, 0
  %.sink.i487 = select i1 %tobool.not.i486, i32 21, i32 22
  %and8.i488 = lshr i32 %14, %.sink.i487
  %val.0.i489 = and i32 %and8.i488, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %val.0.i489)
  %23 = icmp ult i32 %val.0.i489, 3
  br i1 %23, label %switch.lookup847, label %do.body.i492

do.body.i492:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 999, 0\0A.popsection", ""() #12, !srcloc !389
  unreachable

switch.lookup847:                                 ; preds = %switch.lookup
  %switch.cast848 = trunc i32 %val.0.i489 to i24
  %switch.shiftamt849 = shl nuw nsw i24 %switch.cast848, 3
  %switch.downshift850 = lshr i24 262657, %switch.shiftamt849
  %switch.masked851 = trunc i24 %switch.downshift850 to i8
  %dstbus = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 2
  %maxwidth10 = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %maxwidth10 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %switch.masked851, ptr %maxwidth10, align 4
  %dsg_list = getelementptr inbounds %struct.pl08x_txd, ptr %txd, i32 0, i32 1
  %remainder = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 3
  %buswidth = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 1, i32 2
  %buswidth23 = getelementptr inbounds %struct.pl08x_lli_build_data, ptr %bd, i32 0, i32 2, i32 2
  %adev33 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %lli_words.i.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %if.end344.for.cond_crit_edge, %switch.lookup847
  %.pn.in = phi ptr [ %dsg_list, %switch.lookup847 ], [ %.pn, %if.end344.for.cond_crit_edge ]
  %early_bytes.0 = phi i32 [ 0, %switch.lookup847 ], [ %early_bytes.1654, %if.end344.for.cond_crit_edge ]
  %num_llis.0 = phi i32 [ 0, %switch.lookup847 ], [ %num_llis.4, %if.end344.for.cond_crit_edge ]
  %25 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %dsg_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dsg.0 = getelementptr i8, ptr %.pn, i32 -12
  %26 = ptrtoint ptr %cctl5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cctl5, align 4
  %28 = ptrtoint ptr %dsg.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dsg.0, align 4
  %30 = ptrtoint ptr %srcbus to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %srcbus, align 4
  %dst_addr = getelementptr i8, ptr %.pn, i32 -8
  %31 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dst_addr, align 4
  %33 = ptrtoint ptr %dstbus to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dstbus, align 4
  %len = getelementptr i8, ptr %.pn, i32 -4
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %36 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %remainder, align 4
  %37 = ptrtoint ptr %maxwidth to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %maxwidth, align 4
  %39 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %buswidth, align 1
  %40 = ptrtoint ptr %maxwidth10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %maxwidth10, align 4
  %42 = ptrtoint ptr %buswidth23 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %buswidth23, align 1
  %43 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i496 = getelementptr inbounds %struct.vendor_data, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %ftdmac020.i496 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ftdmac020.i496, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i497 = icmp eq i8 %46, 0
  %47 = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp eq i32 %47, 0
  %49 = and i1 %48, %tobool.not.i497
  br i1 %49, label %for.body.pl08x_choose_master_bus.exit_crit_edge, label %if.else10.i

for.body.pl08x_choose_master_bus.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_choose_master_bus.exit

if.else10.i:                                      ; preds = %for.body
  %50 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp eq i32 %50, 0
  %52 = and i1 %51, %tobool.not.i497
  br i1 %52, label %if.else10.i.pl08x_choose_master_bus.exit_crit_edge, label %if.else15.i

if.else10.i.pl08x_choose_master_bus.exit_crit_edge: ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_choose_master_bus.exit

if.else15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %38)
  %cmp.not.i = icmp ult i8 %41, %38
  %spec.select = select i1 %cmp.not.i, ptr %srcbus, ptr %dstbus
  %spec.select661 = select i1 %cmp.not.i, ptr %dstbus, ptr %srcbus
  br label %pl08x_choose_master_bus.exit

pl08x_choose_master_bus.exit:                     ; preds = %if.else15.i, %if.else10.i.pl08x_choose_master_bus.exit_crit_edge, %for.body.pl08x_choose_master_bus.exit_crit_edge
  %mbus.0 = phi ptr [ %dstbus, %for.body.pl08x_choose_master_bus.exit_crit_edge ], [ %srcbus, %if.else10.i.pl08x_choose_master_bus.exit_crit_edge ], [ %spec.select, %if.else15.i ]
  %dstbus14.sink.i = phi ptr [ %srcbus, %for.body.pl08x_choose_master_bus.exit_crit_edge ], [ %dstbus, %if.else10.i.pl08x_choose_master_bus.exit_crit_edge ], [ %spec.select661, %if.else15.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_fill_llis_for_desc, %do.body57)) #12
          to label %if.then32 [label %do.body57], !srcloc !363

if.then32:                                        ; preds = %pl08x_choose_master_bus.exit
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adev33, align 4
  %55 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %srcbus, align 4
  %conv37 = zext i32 %56 to i64
  %and38 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.50, ptr @.str.62
  %57 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %buswidth, align 1
  %conv43 = zext i8 %58 to i32
  %59 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dstbus, align 4
  %conv46 = zext i32 %60 to i64
  %cond49 = select i1 %48, ptr @.str.50, ptr @.str.62
  %61 = ptrtoint ptr %buswidth23 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buswidth23, align 1
  %conv52 = zext i8 %62 to i32
  %63 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %remainder, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug302, ptr noundef %54, ptr noundef nonnull @.str.61, i64 noundef %conv37, ptr noundef nonnull %cond40, i32 noundef %conv43, i64 noundef %conv46, ptr noundef nonnull %cond49, i32 noundef %conv52, i32 noundef %64) #12
  br label %do.body57

do.body57:                                        ; preds = %if.then32, %pl08x_choose_master_bus.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_fill_llis_for_desc, %do.end84)) #12
          to label %if.then71 [label %do.end84], !srcloc !363

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adev33, align 4
  %cmp75 = icmp eq ptr %mbus.0, %srcbus
  %cond77 = select i1 %cmp75, ptr @.str.64, ptr @.str.65
  %cmp79 = icmp eq ptr %dstbus14.sink.i, %srcbus
  %cond81 = select i1 %cmp79, ptr @.str.64, ptr @.str.65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug303, ptr noundef %66, ptr noundef nonnull @.str.63, ptr noundef nonnull %cond77, ptr noundef nonnull %cond81) #12
  br label %do.end84

do.end84:                                         ; preds = %if.then71, %do.body57
  %67 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool86.not = icmp eq i32 %68, 0
  br i1 %tobool86.not, label %if.then87, label %if.end132

if.then87:                                        ; preds = %do.end84
  %69 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vd.i, align 4
  %ftdmac020 = getelementptr inbounds %struct.vendor_data, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ftdmac020, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool88.not = icmp eq i8 %72, 0
  br i1 %tobool88.not, label %if.else, label %if.then87.do.end99_crit_edge

if.then87.do.end99_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end99

if.else:                                          ; preds = %if.then87
  %ccfg = getelementptr inbounds %struct.pl08x_txd, ptr %txd, i32 0, i32 5
  %73 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ccfg, align 4
  %75 = and i32 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %phi.cmp.not = icmp eq i32 %75, 0
  br i1 %phi.cmp.not, label %if.else.do.end99_crit_edge, label %if.end102

if.else.do.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end99

do.end99:                                         ; preds = %if.else.do.end99_crit_edge, %if.then87.do.end99_crit_edge
  %76 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.60) #16
  br label %cleanup381

if.end102:                                        ; preds = %if.else
  %78 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %srcbus, align 4
  %80 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %buswidth, align 1
  %conv107 = zext i8 %81 to i32
  %sub = add nsw i32 %conv107, -1
  %and108 = and i32 %sub, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %cmp109 = icmp eq i32 %and108, 0
  br i1 %cmp109, label %lor.lhs.false, label %if.end102.do.end123_crit_edge

if.end102.do.end123_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123

lor.lhs.false:                                    ; preds = %if.end102
  %82 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dstbus, align 4
  %84 = ptrtoint ptr %buswidth23 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %buswidth23, align 1
  %conv115 = zext i8 %85 to i32
  %sub116 = add nsw i32 %conv115, -1
  %and117 = and i32 %sub116, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %cmp118 = icmp eq i32 %and117, 0
  br i1 %cmp118, label %if.else.i, label %lor.lhs.false.do.end123_crit_edge

lor.lhs.false.do.end123_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123

do.end123:                                        ; preds = %lor.lhs.false.do.end123_crit_edge, %if.end102.do.end123_crit_edge
  %86 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.60) #16
  br label %cleanup381

if.else.i:                                        ; preds = %lor.lhs.false
  %and29.i = and i32 %27, -16519168
  %88 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %81, label %do.body38.i [
    i8 1, label %if.else.i.sw.epilog44.i_crit_edge
    i8 2, label %sw.bb33.i
    i8 4, label %sw.bb35.i
  ]

if.else.i.sw.epilog44.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog44.i

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %or34.i = or i32 %and29.i, 262144
  br label %sw.epilog44.i

sw.bb35.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %or36.i = or i32 %and29.i, 524288
  br label %sw.epilog44.i

do.body38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1077, 0\0A.popsection", ""() #12, !srcloc !390
  unreachable

sw.epilog44.i:                                    ; preds = %sw.bb35.i, %sw.bb33.i, %if.else.i.sw.epilog44.i_crit_edge
  %retbits.2.i = phi i32 [ %or36.i, %sw.bb35.i ], [ %or34.i, %sw.bb33.i ], [ %and29.i, %if.else.i.sw.epilog44.i_crit_edge ]
  %89 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.189)
  switch i8 %85, label %do.body53.i [
    i8 1, label %sw.epilog44.i.do.end11.i_crit_edge
    i8 2, label %sw.bb48.i
    i8 4, label %sw.bb50.i
  ]

sw.epilog44.i.do.end11.i_crit_edge:               ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

sw.bb48.i:                                        ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #14
  %or49.i = or i32 %retbits.2.i, 2097152
  br label %do.end11.i

sw.bb50.i:                                        ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #14
  %or51.i = or i32 %retbits.2.i, 4194304
  br label %do.end11.i

do.body53.i:                                      ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1095, 0\0A.popsection", ""() #12, !srcloc !391
  unreachable

do.end11.i:                                       ; preds = %sw.bb50.i, %sw.bb48.i, %sw.epilog44.i.do.end11.i_crit_edge
  %retbits.3.sink.i = phi i32 [ %or51.i, %sw.bb50.i ], [ %or49.i, %sw.bb48.i ], [ %retbits.2.i, %sw.epilog44.i.do.end11.i_crit_edge ]
  %inc = add nsw i32 %num_llis.0, 1
  %90 = ptrtoint ptr %lli_words.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %lli_words.i.i, align 2
  %conv.i = zext i8 %91 to i32
  %mul.i = mul i32 %num_llis.0, %conv.i
  %92 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bd, align 4
  %llis_va1.i = getelementptr inbounds %struct.pl08x_txd, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %llis_va1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %llis_va1.i, align 4
  %add.ptr.i = getelementptr i32, ptr %95, i32 %mul.i
  %llis_bus3.i = getelementptr inbounds %struct.pl08x_txd, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %llis_bus3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %llis_bus3.i, align 4
  %add.i = add i32 %mul.i, %conv.i
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %79, ptr %add.ptr.i, align 4
  %99 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dstbus, align 4
  %arrayidx15.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %101 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx15.i, align 4
  %mul16.i = shl i32 %add.i, 2
  %add17.i = add i32 %mul16.i, %97
  %arrayidx18.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %102 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add17.i, ptr %arrayidx18.i, align 4
  %103 = ptrtoint ptr %lli_bus to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lli_bus, align 4
  %or.i = or i32 %104, %add17.i
  store i32 %or.i, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %add.ptr.i, i32 3
  %105 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retbits.3.sink.i, ptr %arrayidx20.i, align 4
  %106 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vd.i, align 4
  %pl080s.i = getelementptr inbounds %struct.vendor_data, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %pl080s.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pl080s.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool21.not.i = icmp eq i8 %109, 0
  br i1 %tobool21.not.i, label %do.end11.i.for.end_crit_edge, label %if.then22.i

do.end11.i.for.end_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then22.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23.i = getelementptr i32, ptr %add.ptr.i, i32 4
  %110 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx23.i, align 4
  br label %for.end

if.end132:                                        ; preds = %do.end84
  %buswidth134 = getelementptr inbounds %struct.pl08x_bus_data, ptr %mbus.0, i32 0, i32 2
  %111 = ptrtoint ptr %buswidth134 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %buswidth134, align 1
  %conv135 = zext i8 %112 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv135)
  %cmp136 = icmp ult i32 %68, %conv135
  br i1 %cmp136, label %if.end132.do.body170_crit_edge, label %if.else140

if.end132.do.body170_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

if.else140:                                       ; preds = %if.end132
  %113 = ptrtoint ptr %mbus.0 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mbus.0, align 4
  %sub144 = add nsw i32 %conv135, -1
  %and145 = and i32 %114, %sub144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %cmp146 = icmp eq i32 %and145, 0
  br i1 %cmp146, label %if.else140.if.end167_crit_edge, label %if.then148

if.else140.if.end167_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then148:                                       ; preds = %if.else140
  %sub156 = sub i32 %conv135, %and145
  %sub158 = sub i32 %68, %sub156
  call void @__sanitizer_cov_trace_cmp4(i32 %sub158, i32 %conv135)
  %cmp161 = icmp ult i32 %sub158, %conv135
  br i1 %cmp161, label %if.then148.do.body170_crit_edge, label %if.then148.if.end167_crit_edge

if.then148.if.end167_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then148.do.body170_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

if.end167:                                        ; preds = %if.then148.if.end167_crit_edge, %if.else140.if.end167_crit_edge
  %early_bytes.1 = phi i32 [ %early_bytes.0, %if.else140.if.end167_crit_edge ], [ %sub156, %if.then148.if.end167_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %early_bytes.1)
  %tobool168.not = icmp eq i32 %early_bytes.1, 0
  br i1 %tobool168.not, label %if.end192thread-pre-split, label %if.end167.do.body170_crit_edge

if.end167.do.body170_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

do.body170:                                       ; preds = %if.end167.do.body170_crit_edge, %if.then148.do.body170_crit_edge, %if.end132.do.body170_crit_edge
  %early_bytes.1653 = phi i32 [ %early_bytes.1, %if.end167.do.body170_crit_edge ], [ %68, %if.end132.do.body170_crit_edge ], [ %68, %if.then148.do.body170_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_fill_llis_for_desc, %do.end190)) #12
          to label %if.then184 [label %do.end190], !srcloc !363

if.then184:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %adev33, align 4
  %117 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %remainder, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug304, ptr noundef %116, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.60, i32 noundef %118) #12
  br label %do.end190

do.end190:                                        ; preds = %if.then184, %do.body170
  %inc191 = add i32 %num_llis.0, 1
  %119 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i.i = getelementptr inbounds %struct.vendor_data, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %ftdmac020.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ftdmac020.i.i, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i.i = icmp eq i8 %122, 0
  %retbits.3.sink.i.v.i = select i1 %tobool.not.i.i, i32 -16519168, i32 -264245248
  %retbits.3.sink.i.i = and i32 %retbits.3.sink.i.v.i, %27
  %and60.i.i = and i32 %early_bytes.1653, 4095
  %or62.i.i = or i32 %retbits.3.sink.i.i, %and60.i.i
  %123 = ptrtoint ptr %lli_words.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %lli_words.i.i, align 2
  %conv.i.i = zext i8 %124 to i32
  %mul.i.i = mul i32 %num_llis.0, %conv.i.i
  %125 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bd, align 4
  %llis_va1.i.i = getelementptr inbounds %struct.pl08x_txd, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %llis_va1.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %llis_va1.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %128, i32 %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %num_llis.0)
  %cmp.i.i = icmp sgt i32 %num_llis.0, 511
  br i1 %cmp.i.i, label %do.body6.i.i, label %do.end11.i.i, !prof !373

do.body6.i.i:                                     ; preds = %do.end190
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1176, 0\0A.popsection", ""() #12, !srcloc !392
  unreachable

do.end11.i.i:                                     ; preds = %do.end190
  %llis_bus3.i.i = getelementptr inbounds %struct.pl08x_txd, ptr %126, i32 0, i32 2
  %129 = ptrtoint ptr %llis_bus3.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %llis_bus3.i.i, align 4
  %add.i.i = add i32 %mul.i.i, %conv.i.i
  %131 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %srcbus, align 4
  %133 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %add.ptr.i.i, align 4
  %134 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dstbus, align 4
  %arrayidx15.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  %136 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx15.i.i, align 4
  %mul16.i.i = shl i32 %add.i.i, 2
  %add17.i.i = add i32 %130, %mul16.i.i
  %arrayidx18.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 2
  %137 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %add17.i.i, ptr %arrayidx18.i.i, align 4
  %138 = ptrtoint ptr %lli_bus to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %lli_bus, align 4
  %or.i.i = or i32 %139, %add17.i.i
  store i32 %or.i.i, ptr %arrayidx18.i.i, align 4
  %arrayidx20.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 3
  %140 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or62.i.i, ptr %arrayidx20.i.i, align 4
  %141 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vd.i, align 4
  %pl080s.i.i = getelementptr inbounds %struct.vendor_data, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %pl080s.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %pl080s.i.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool21.not.i.i = icmp eq i8 %144, 0
  br i1 %tobool21.not.i.i, label %do.end11.i.i.if.end24.i.i_crit_edge, label %if.then22.i.i

do.end11.i.i.if.end24.i.i_crit_edge:              ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 4
  %145 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %early_bytes.1653, ptr %arrayidx23.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %do.end11.i.i.if.end24.i.i_crit_edge
  %146 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i8.i = getelementptr inbounds %struct.vendor_data, ptr %147, i32 0, i32 6
  %148 = ptrtoint ptr %ftdmac020.i8.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ftdmac020.i8.i, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool26.not.i.i = icmp eq i8 %149, 0
  br i1 %tobool26.not.i.i, label %if.else.i9.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %srcbus, align 4
  %add30.i.i = add i32 %151, %early_bytes.1653
  store i32 %add30.i.i, ptr %srcbus, align 4
  br label %do.body48.sink.split.i.i

if.else.i9.i:                                     ; preds = %if.end24.i.i
  %and.i.i = and i32 %retbits.3.sink.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool34.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool34.not.i.i, label %if.else.i9.i.if.end39.i.i_crit_edge, label %if.then35.i.i

if.else.i9.i.if.end39.i.i_crit_edge:              ; preds = %if.else.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i.i

if.then35.i.i:                                    ; preds = %if.else.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %srcbus, align 4
  %add38.i.i = add i32 %153, %early_bytes.1653
  store i32 %add38.i.i, ptr %srcbus, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then35.i.i, %if.else.i9.i.if.end39.i.i_crit_edge
  %and40.i.i = and i32 %retbits.3.sink.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end39.i.i.do.body48.i.i_crit_edge, label %if.end39.i.i.do.body48.sink.split.i.i_crit_edge

if.end39.i.i.do.body48.sink.split.i.i_crit_edge:  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48.sink.split.i.i

if.end39.i.i.do.body48.i.i_crit_edge:             ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48.i.i

do.body48.sink.split.i.i:                         ; preds = %if.end39.i.i.do.body48.sink.split.i.i_crit_edge, %if.then27.i.i
  %154 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %dstbus, align 4
  %add33.i.i = add i32 %155, %early_bytes.1653
  store i32 %add33.i.i, ptr %dstbus, align 4
  br label %do.body48.i.i

do.body48.i.i:                                    ; preds = %do.body48.sink.split.i.i, %if.end39.i.i.do.body48.i.i_crit_edge
  %156 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %early_bytes.1653)
  %cmp49.i.i = icmp ult i32 %157, %early_bytes.1653
  br i1 %cmp49.i.i, label %do.body58.i.i, label %prep_byte_width_lli.exit, !prof !373

do.body58.i.i:                                    ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1200, 0\0A.popsection", ""() #12, !srcloc !393
  unreachable

prep_byte_width_lli.exit:                         ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %157, %early_bytes.1653
  %158 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub.i.i, ptr %remainder, align 4
  br label %if.end192

if.end192thread-pre-split:                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pr = load i32, ptr %remainder, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.end192thread-pre-split, %prep_byte_width_lli.exit
  %160 = phi i32 [ %.pr, %if.end192thread-pre-split ], [ %sub.i.i, %prep_byte_width_lli.exit ]
  %early_bytes.1654 = phi i32 [ 0, %if.end192thread-pre-split ], [ %early_bytes.1653, %prep_byte_width_lli.exit ]
  %cctl.0 = phi i32 [ %27, %if.end192thread-pre-split ], [ %or62.i.i, %prep_byte_width_lli.exit ]
  %num_llis.2 = phi i32 [ %num_llis.0, %if.end192thread-pre-split ], [ %inc191, %prep_byte_width_lli.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool194.not = icmp eq i32 %160, 0
  br i1 %tobool194.not, label %if.end192.if.end333_crit_edge, label %if.then195

if.end192.if.end333_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end333

if.then195:                                       ; preds = %if.end192
  %161 = ptrtoint ptr %dstbus14.sink.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dstbus14.sink.i, align 4
  %buswidth197 = getelementptr inbounds %struct.pl08x_bus_data, ptr %dstbus14.sink.i, i32 0, i32 2
  %163 = ptrtoint ptr %buswidth197 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %buswidth197, align 1
  %conv198 = zext i8 %164 to i32
  %sub199 = add nsw i32 %conv198, -1
  %and200 = and i32 %sub199, %162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %cmp201 = icmp eq i32 %and200, 0
  br i1 %cmp201, label %if.then195.if.end225_crit_edge, label %do.body204

if.then195.if.end225_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

do.body204:                                       ; preds = %if.then195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_fill_llis_for_desc, %do.end223)) #12
          to label %if.then218 [label %do.end223], !srcloc !363

if.then218:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adev33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug305, ptr noundef %166, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.60) #12
  br label %do.end223

do.end223:                                        ; preds = %if.then218, %do.body204
  %167 = ptrtoint ptr %buswidth197 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %buswidth197, align 1
  br label %if.end225

if.end225:                                        ; preds = %do.end223, %if.then195.if.end225_crit_edge
  %168 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %buswidth, align 1
  %conv228 = zext i8 %169 to i32
  %170 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vd.i, align 4
  %max_transfer_size = getelementptr inbounds %struct.vendor_data, ptr %171, i32 0, i32 7
  %172 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %max_transfer_size, align 4
  %mul = mul i32 %173, %conv228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_fill_llis_for_desc, %do.end249)) #12
          to label %if.then244 [label %do.end249], !srcloc !363

if.then244:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  %174 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adev33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug306, ptr noundef %175, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.60, i32 noundef %mul) #12
  br label %do.end249

do.end249:                                        ; preds = %if.then244, %if.end225
  %176 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pr659 = load i32, ptr %remainder, align 4
  %177 = ptrtoint ptr %buswidth134 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %buswidth134, align 1
  %conv252739 = zext i8 %178 to i32
  %sub253740 = add nsw i32 %conv252739, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr659, i32 %sub253740)
  %cmp254741 = icmp ugt i32 %.pr659, %sub253740
  br i1 %cmp254741, label %while.body.preheader, label %do.end249.while.end_crit_edge

do.end249.while.end_crit_edge:                    ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %do.end249
  %smax = call i32 @llvm.smax.i32(i32 %num_llis.2, i32 512)
  br label %while.body

while.body:                                       ; preds = %pl08x_fill_lli_for_desc.exit579.while.body_crit_edge, %while.body.preheader
  %179 = phi i8 [ %241, %pl08x_fill_lli_for_desc.exit579.while.body_crit_edge ], [ %178, %while.body.preheader ]
  %num_llis.3744 = phi i32 [ %inc305, %pl08x_fill_lli_for_desc.exit579.while.body_crit_edge ], [ %num_llis.2, %while.body.preheader ]
  %total_bytes.1743 = phi i32 [ %add, %pl08x_fill_lli_for_desc.exit579.while.body_crit_edge ], [ %early_bytes.1654, %while.body.preheader ]
  %cctl.1742 = phi i32 [ %or62.i, %pl08x_fill_lli_for_desc.exit579.while.body_crit_edge ], [ %cctl.0, %while.body.preheader ]
  %180 = phi i32 [ %sub.i, %pl08x_fill_lli_for_desc.exit579.while.body_crit_edge ], [ %.pr659, %while.body.preheader ]
  %181 = call i32 @llvm.umin.i32(i32 %180, i32 %mul)
  %182 = ptrtoint ptr %buswidth197 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %buswidth197, align 1
  %184 = call i8 @llvm.umax.i8(i8 %179, i8 %183)
  %cond273 = zext i8 %184 to i32
  %185 = urem i32 %181, %cond273
  %mul274 = sub i32 %181, %185
  %186 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %buswidth, align 1
  %conv277 = zext i8 %187 to i32
  %div278 = udiv i32 %mul274, %conv277
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_fill_llis_for_desc, %do.end299)) #12
          to label %if.then293 [label %do.end299], !srcloc !363

if.then293:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %adev33, align 4
  %190 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %remainder, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug311, ptr noundef %189, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.60, i32 noundef %mul274, i32 noundef %191) #12
  br label %do.end299

do.end299:                                        ; preds = %if.then293, %while.body
  %192 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %buswidth, align 1
  %194 = ptrtoint ptr %buswidth23 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %buswidth23, align 1
  %196 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i510 = getelementptr inbounds %struct.vendor_data, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %ftdmac020.i510 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ftdmac020.i510, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i511 = icmp eq i8 %199, 0
  br i1 %tobool.not.i511, label %if.else.i527, label %if.then.i513

if.then.i513:                                     ; preds = %do.end299
  %and2.i512 = and i32 %cctl.1742, -264245248
  %200 = zext i8 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.190)
  switch i8 %193, label %do.body.i518 [
    i8 1, label %if.then.i513.sw.epilog.i520_crit_edge
    i8 2, label %sw.bb3.i515
    i8 4, label %sw.bb5.i517
  ]

if.then.i513.sw.epilog.i520_crit_edge:            ; preds = %if.then.i513
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i520

sw.bb3.i515:                                      ; preds = %if.then.i513
  call void @__sanitizer_cov_trace_pc() #14
  %or4.i514 = or i32 %and2.i512, 33554432
  br label %sw.epilog.i520

sw.bb5.i517:                                      ; preds = %if.then.i513
  call void @__sanitizer_cov_trace_pc() #14
  %or6.i516 = or i32 %and2.i512, 67108864
  br label %sw.epilog.i520

do.body.i518:                                     ; preds = %if.then.i513
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1034, 0\0A.popsection", ""() #12, !srcloc !394
  unreachable

sw.epilog.i520:                                   ; preds = %sw.bb5.i517, %sw.bb3.i515, %if.then.i513.sw.epilog.i520_crit_edge
  %retbits.0.i519 = phi i32 [ %or6.i516, %sw.bb5.i517 ], [ %or4.i514, %sw.bb3.i515 ], [ %and2.i512, %if.then.i513.sw.epilog.i520_crit_edge ]
  %201 = zext i8 %195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %195, label %do.body18.i525 [
    i8 1, label %sw.epilog.i520.pl08x_lli_control_bits.exit541_crit_edge
    i8 2, label %sw.bb13.i522
    i8 4, label %sw.bb15.i524
  ]

sw.epilog.i520.pl08x_lli_control_bits.exit541_crit_edge: ; preds = %sw.epilog.i520
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_lli_control_bits.exit541

sw.bb13.i522:                                     ; preds = %sw.epilog.i520
  call void @__sanitizer_cov_trace_pc() #14
  %or14.i521 = or i32 %retbits.0.i519, 4194304
  br label %pl08x_lli_control_bits.exit541

sw.bb15.i524:                                     ; preds = %sw.epilog.i520
  call void @__sanitizer_cov_trace_pc() #14
  %or16.i523 = or i32 %retbits.0.i519, 8388608
  br label %pl08x_lli_control_bits.exit541

do.body18.i525:                                   ; preds = %sw.epilog.i520
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1052, 0\0A.popsection", ""() #12, !srcloc !395
  unreachable

if.else.i527:                                     ; preds = %do.end299
  %and29.i526 = and i32 %cctl.1742, -16519168
  %202 = zext i8 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %193, label %do.body38.i532 [
    i8 1, label %if.else.i527.sw.epilog44.i534_crit_edge
    i8 2, label %sw.bb33.i529
    i8 4, label %sw.bb35.i531
  ]

if.else.i527.sw.epilog44.i534_crit_edge:          ; preds = %if.else.i527
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog44.i534

sw.bb33.i529:                                     ; preds = %if.else.i527
  call void @__sanitizer_cov_trace_pc() #14
  %or34.i528 = or i32 %and29.i526, 262144
  br label %sw.epilog44.i534

sw.bb35.i531:                                     ; preds = %if.else.i527
  call void @__sanitizer_cov_trace_pc() #14
  %or36.i530 = or i32 %and29.i526, 524288
  br label %sw.epilog44.i534

do.body38.i532:                                   ; preds = %if.else.i527
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1077, 0\0A.popsection", ""() #12, !srcloc !390
  unreachable

sw.epilog44.i534:                                 ; preds = %sw.bb35.i531, %sw.bb33.i529, %if.else.i527.sw.epilog44.i534_crit_edge
  %retbits.2.i533 = phi i32 [ %or36.i530, %sw.bb35.i531 ], [ %or34.i528, %sw.bb33.i529 ], [ %and29.i526, %if.else.i527.sw.epilog44.i534_crit_edge ]
  %203 = zext i8 %195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %195, label %do.body53.i539 [
    i8 1, label %sw.epilog44.i534.pl08x_lli_control_bits.exit541_crit_edge
    i8 2, label %sw.bb48.i536
    i8 4, label %sw.bb50.i538
  ]

sw.epilog44.i534.pl08x_lli_control_bits.exit541_crit_edge: ; preds = %sw.epilog44.i534
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_lli_control_bits.exit541

sw.bb48.i536:                                     ; preds = %sw.epilog44.i534
  call void @__sanitizer_cov_trace_pc() #14
  %or49.i535 = or i32 %retbits.2.i533, 2097152
  br label %pl08x_lli_control_bits.exit541

sw.bb50.i538:                                     ; preds = %sw.epilog44.i534
  call void @__sanitizer_cov_trace_pc() #14
  %or51.i537 = or i32 %retbits.2.i533, 4194304
  br label %pl08x_lli_control_bits.exit541

do.body53.i539:                                   ; preds = %sw.epilog44.i534
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1095, 0\0A.popsection", ""() #12, !srcloc !391
  unreachable

pl08x_lli_control_bits.exit541:                   ; preds = %sw.bb50.i538, %sw.bb48.i536, %sw.epilog44.i534.pl08x_lli_control_bits.exit541_crit_edge, %sw.bb15.i524, %sw.bb13.i522, %sw.epilog.i520.pl08x_lli_control_bits.exit541_crit_edge
  %retbits.3.sink.i540 = phi i32 [ %or16.i523, %sw.bb15.i524 ], [ %or14.i521, %sw.bb13.i522 ], [ %retbits.0.i519, %sw.epilog.i520.pl08x_lli_control_bits.exit541_crit_edge ], [ %or51.i537, %sw.bb50.i538 ], [ %or49.i535, %sw.bb48.i536 ], [ %retbits.2.i533, %sw.epilog44.i534.pl08x_lli_control_bits.exit541_crit_edge ]
  %and60.i = and i32 %div278, 4095
  %or62.i = or i32 %retbits.3.sink.i540, %and60.i
  %inc305 = add i32 %num_llis.3744, 1
  %204 = ptrtoint ptr %lli_words.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %lli_words.i.i, align 2
  %conv.i543 = zext i8 %205 to i32
  %mul.i544 = mul i32 %num_llis.3744, %conv.i543
  %206 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bd, align 4
  %llis_va1.i545 = getelementptr inbounds %struct.pl08x_txd, ptr %207, i32 0, i32 3
  %208 = ptrtoint ptr %llis_va1.i545 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %llis_va1.i545, align 4
  %add.ptr.i546 = getelementptr i32, ptr %209, i32 %mul.i544
  call void @__sanitizer_cov_trace_cmp4(i32 %num_llis.3744, i32 %smax)
  %exitcond = icmp eq i32 %num_llis.3744, %smax
  br i1 %exitcond, label %do.body6.i548, label %do.end11.i563, !prof !373

do.body6.i548:                                    ; preds = %pl08x_lli_control_bits.exit541
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1176, 0\0A.popsection", ""() #12, !srcloc !392
  unreachable

do.end11.i563:                                    ; preds = %pl08x_lli_control_bits.exit541
  %llis_bus3.i549 = getelementptr inbounds %struct.pl08x_txd, ptr %207, i32 0, i32 2
  %210 = ptrtoint ptr %llis_bus3.i549 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %llis_bus3.i549, align 4
  %add.i550 = add i32 %mul.i544, %conv.i543
  %212 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %srcbus, align 4
  %214 = ptrtoint ptr %add.ptr.i546 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %add.ptr.i546, align 4
  %215 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dstbus, align 4
  %arrayidx15.i553 = getelementptr i32, ptr %add.ptr.i546, i32 1
  %217 = ptrtoint ptr %arrayidx15.i553 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %arrayidx15.i553, align 4
  %mul16.i554 = shl i32 %add.i550, 2
  %add17.i555 = add i32 %211, %mul16.i554
  %arrayidx18.i556 = getelementptr i32, ptr %add.ptr.i546, i32 2
  %218 = ptrtoint ptr %arrayidx18.i556 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %add17.i555, ptr %arrayidx18.i556, align 4
  %219 = ptrtoint ptr %lli_bus to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %lli_bus, align 4
  %or.i558 = or i32 %220, %add17.i555
  store i32 %or.i558, ptr %arrayidx18.i556, align 4
  %arrayidx20.i559 = getelementptr i32, ptr %add.ptr.i546, i32 3
  %221 = ptrtoint ptr %arrayidx20.i559 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %or62.i, ptr %arrayidx20.i559, align 4
  %222 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %vd.i, align 4
  %pl080s.i561 = getelementptr inbounds %struct.vendor_data, ptr %223, i32 0, i32 5
  %224 = ptrtoint ptr %pl080s.i561 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %pl080s.i561, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool21.not.i562 = icmp eq i8 %225, 0
  br i1 %tobool21.not.i562, label %do.end11.i563.if.end24.i568_crit_edge, label %if.then22.i565

do.end11.i563.if.end24.i568_crit_edge:            ; preds = %do.end11.i563
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i568

if.then22.i565:                                   ; preds = %do.end11.i563
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23.i564 = getelementptr i32, ptr %add.ptr.i546, i32 4
  %226 = ptrtoint ptr %arrayidx23.i564 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %div278, ptr %arrayidx23.i564, align 4
  br label %if.end24.i568

if.end24.i568:                                    ; preds = %if.then22.i565, %do.end11.i563.if.end24.i568_crit_edge
  %227 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i566 = getelementptr inbounds %struct.vendor_data, ptr %228, i32 0, i32 6
  %229 = ptrtoint ptr %ftdmac020.i566 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %ftdmac020.i566, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool26.not.i567 = icmp eq i8 %230, 0
  br i1 %tobool26.not.i567, label %if.else.i572, label %if.then27.i569

if.then27.i569:                                   ; preds = %if.end24.i568
  call void @__sanitizer_cov_trace_pc() #14
  %231 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %srcbus, align 4
  %add30.i = add i32 %232, %mul274
  store i32 %add30.i, ptr %srcbus, align 4
  br label %do.body48.sink.split.i577

if.else.i572:                                     ; preds = %if.end24.i568
  %and.i570 = and i32 %retbits.3.sink.i540, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i570)
  %tobool34.not.i571 = icmp eq i32 %and.i570, 0
  br i1 %tobool34.not.i571, label %if.else.i572.if.end39.i576_crit_edge, label %if.then35.i573

if.else.i572.if.end39.i576_crit_edge:             ; preds = %if.else.i572
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i576

if.then35.i573:                                   ; preds = %if.else.i572
  call void @__sanitizer_cov_trace_pc() #14
  %233 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %srcbus, align 4
  %add38.i = add i32 %234, %mul274
  store i32 %add38.i, ptr %srcbus, align 4
  br label %if.end39.i576

if.end39.i576:                                    ; preds = %if.then35.i573, %if.else.i572.if.end39.i576_crit_edge
  %and40.i574 = and i32 %retbits.3.sink.i540, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i574)
  %tobool41.not.i575 = icmp eq i32 %and40.i574, 0
  br i1 %tobool41.not.i575, label %if.end39.i576.do.body48.i_crit_edge, label %if.end39.i576.do.body48.sink.split.i577_crit_edge

if.end39.i576.do.body48.sink.split.i577_crit_edge: ; preds = %if.end39.i576
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48.sink.split.i577

if.end39.i576.do.body48.i_crit_edge:              ; preds = %if.end39.i576
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48.i

do.body48.sink.split.i577:                        ; preds = %if.end39.i576.do.body48.sink.split.i577_crit_edge, %if.then27.i569
  %235 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %dstbus, align 4
  %add33.i = add i32 %236, %mul274
  store i32 %add33.i, ptr %dstbus, align 4
  br label %do.body48.i

do.body48.i:                                      ; preds = %do.body48.sink.split.i577, %if.end39.i576.do.body48.i_crit_edge
  %237 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %238, i32 %mul274)
  %cmp49.i = icmp ult i32 %238, %mul274
  br i1 %cmp49.i, label %do.body58.i, label %pl08x_fill_lli_for_desc.exit579, !prof !373

do.body58.i:                                      ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1200, 0\0A.popsection", ""() #12, !srcloc !393
  unreachable

pl08x_fill_lli_for_desc.exit579:                  ; preds = %do.body48.i
  %sub.i = sub i32 %238, %mul274
  %239 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %sub.i, ptr %remainder, align 4
  %add = add i32 %mul274, %total_bytes.1743
  %240 = ptrtoint ptr %buswidth134 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %buswidth134, align 1
  %conv252 = zext i8 %241 to i32
  %sub253 = add nsw i32 %conv252, -1
  %cmp254 = icmp ugt i32 %sub.i, %sub253
  br i1 %cmp254, label %pl08x_fill_lli_for_desc.exit579.while.body_crit_edge, label %pl08x_fill_lli_for_desc.exit579.while.end_crit_edge

pl08x_fill_lli_for_desc.exit579.while.end_crit_edge: ; preds = %pl08x_fill_lli_for_desc.exit579
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

pl08x_fill_lli_for_desc.exit579.while.body_crit_edge: ; preds = %pl08x_fill_lli_for_desc.exit579
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %pl08x_fill_lli_for_desc.exit579.while.end_crit_edge, %do.end249.while.end_crit_edge
  %.lcssa = phi i32 [ %.pr659, %do.end249.while.end_crit_edge ], [ %sub.i, %pl08x_fill_lli_for_desc.exit579.while.end_crit_edge ]
  %cctl.1.lcssa = phi i32 [ %cctl.0, %do.end249.while.end_crit_edge ], [ %or62.i, %pl08x_fill_lli_for_desc.exit579.while.end_crit_edge ]
  %total_bytes.1.lcssa = phi i32 [ %early_bytes.1654, %do.end249.while.end_crit_edge ], [ %add, %pl08x_fill_lli_for_desc.exit579.while.end_crit_edge ]
  %num_llis.3.lcssa = phi i32 [ %num_llis.2, %do.end249.while.end_crit_edge ], [ %inc305, %pl08x_fill_lli_for_desc.exit579.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool307.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool307.not, label %while.end.if.end333_crit_edge, label %do.body309

while.end.if.end333_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end333

do.body309:                                       ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_fill_llis_for_desc, %do.end329)) #12
          to label %if.then323 [label %do.end329], !srcloc !363

if.then323:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  %242 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %adev33, align 4
  %244 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %remainder, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug312, ptr noundef %243, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.60, i32 noundef %245) #12
  br label %do.end329

do.end329:                                        ; preds = %if.then323, %do.body309
  %246 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %remainder, align 4
  %inc331 = add i32 %num_llis.3.lcssa, 1
  %248 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i.i581 = getelementptr inbounds %struct.vendor_data, ptr %249, i32 0, i32 6
  %250 = ptrtoint ptr %ftdmac020.i.i581 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %ftdmac020.i.i581, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool.not.i.i582 = icmp eq i8 %251, 0
  %retbits.3.sink.i.v.i583 = select i1 %tobool.not.i.i582, i32 -16519168, i32 -264245248
  %retbits.3.sink.i.i584 = and i32 %retbits.3.sink.i.v.i583, %cctl.1.lcssa
  %252 = ptrtoint ptr %lli_words.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %lli_words.i.i, align 2
  %conv.i.i588 = zext i8 %253 to i32
  %mul.i.i589 = mul i32 %num_llis.3.lcssa, %conv.i.i588
  %254 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %bd, align 4
  %llis_va1.i.i590 = getelementptr inbounds %struct.pl08x_txd, ptr %255, i32 0, i32 3
  %256 = ptrtoint ptr %llis_va1.i.i590 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %llis_va1.i.i590, align 4
  %add.ptr.i.i591 = getelementptr i32, ptr %257, i32 %mul.i.i589
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %num_llis.3.lcssa)
  %cmp.i.i592 = icmp sgt i32 %num_llis.3.lcssa, 511
  br i1 %cmp.i.i592, label %do.body6.i.i593, label %do.end11.i.i607, !prof !373

do.body6.i.i593:                                  ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1176, 0\0A.popsection", ""() #12, !srcloc !392
  unreachable

do.end11.i.i607:                                  ; preds = %do.end329
  %and60.i.i585 = and i32 %247, 4095
  %or62.i.i586 = or i32 %retbits.3.sink.i.i584, %and60.i.i585
  %llis_bus3.i.i594 = getelementptr inbounds %struct.pl08x_txd, ptr %255, i32 0, i32 2
  %258 = ptrtoint ptr %llis_bus3.i.i594 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %llis_bus3.i.i594, align 4
  %add.i.i595 = add i32 %mul.i.i589, %conv.i.i588
  %260 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %srcbus, align 4
  %262 = ptrtoint ptr %add.ptr.i.i591 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %add.ptr.i.i591, align 4
  %263 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %dstbus, align 4
  %arrayidx15.i.i598 = getelementptr i32, ptr %add.ptr.i.i591, i32 1
  %265 = ptrtoint ptr %arrayidx15.i.i598 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %arrayidx15.i.i598, align 4
  %mul16.i.i599 = shl i32 %add.i.i595, 2
  %add17.i.i600 = add i32 %259, %mul16.i.i599
  %arrayidx18.i.i601 = getelementptr i32, ptr %add.ptr.i.i591, i32 2
  %266 = ptrtoint ptr %arrayidx18.i.i601 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %add17.i.i600, ptr %arrayidx18.i.i601, align 4
  %267 = ptrtoint ptr %lli_bus to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %lli_bus, align 4
  %or.i.i603 = or i32 %268, %add17.i.i600
  store i32 %or.i.i603, ptr %arrayidx18.i.i601, align 4
  %arrayidx20.i.i604 = getelementptr i32, ptr %add.ptr.i.i591, i32 3
  %269 = ptrtoint ptr %arrayidx20.i.i604 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %or62.i.i586, ptr %arrayidx20.i.i604, align 4
  %270 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %vd.i, align 4
  %pl080s.i.i605 = getelementptr inbounds %struct.vendor_data, ptr %271, i32 0, i32 5
  %272 = ptrtoint ptr %pl080s.i.i605 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %pl080s.i.i605, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool21.not.i.i606 = icmp eq i8 %273, 0
  br i1 %tobool21.not.i.i606, label %do.end11.i.i607.if.end24.i.i612_crit_edge, label %if.then22.i.i609

do.end11.i.i607.if.end24.i.i612_crit_edge:        ; preds = %do.end11.i.i607
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i612

if.then22.i.i609:                                 ; preds = %do.end11.i.i607
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23.i.i608 = getelementptr i32, ptr %add.ptr.i.i591, i32 4
  %274 = ptrtoint ptr %arrayidx23.i.i608 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %247, ptr %arrayidx23.i.i608, align 4
  br label %if.end24.i.i612

if.end24.i.i612:                                  ; preds = %if.then22.i.i609, %do.end11.i.i607.if.end24.i.i612_crit_edge
  %275 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %vd.i, align 4
  %ftdmac020.i8.i610 = getelementptr inbounds %struct.vendor_data, ptr %276, i32 0, i32 6
  %277 = ptrtoint ptr %ftdmac020.i8.i610 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %ftdmac020.i8.i610, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool26.not.i.i611 = icmp eq i8 %278, 0
  br i1 %tobool26.not.i.i611, label %if.else.i9.i617, label %if.then27.i.i614

if.then27.i.i614:                                 ; preds = %if.end24.i.i612
  call void @__sanitizer_cov_trace_pc() #14
  %279 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %srcbus, align 4
  %add30.i.i613 = add i32 %280, %247
  store i32 %add30.i.i613, ptr %srcbus, align 4
  br label %do.body48.sink.split.i.i624

if.else.i9.i617:                                  ; preds = %if.end24.i.i612
  %and.i.i615 = and i32 %retbits.3.sink.i.i584, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i615)
  %tobool34.not.i.i616 = icmp eq i32 %and.i.i615, 0
  br i1 %tobool34.not.i.i616, label %if.else.i9.i617.if.end39.i.i622_crit_edge, label %if.then35.i.i619

if.else.i9.i617.if.end39.i.i622_crit_edge:        ; preds = %if.else.i9.i617
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i.i622

if.then35.i.i619:                                 ; preds = %if.else.i9.i617
  call void @__sanitizer_cov_trace_pc() #14
  %281 = ptrtoint ptr %srcbus to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %srcbus, align 4
  %add38.i.i618 = add i32 %282, %247
  store i32 %add38.i.i618, ptr %srcbus, align 4
  br label %if.end39.i.i622

if.end39.i.i622:                                  ; preds = %if.then35.i.i619, %if.else.i9.i617.if.end39.i.i622_crit_edge
  %and40.i.i620 = and i32 %retbits.3.sink.i.i584, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i620)
  %tobool41.not.i.i621 = icmp eq i32 %and40.i.i620, 0
  br i1 %tobool41.not.i.i621, label %if.end39.i.i622.do.body48.i.i627_crit_edge, label %if.end39.i.i622.do.body48.sink.split.i.i624_crit_edge

if.end39.i.i622.do.body48.sink.split.i.i624_crit_edge: ; preds = %if.end39.i.i622
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48.sink.split.i.i624

if.end39.i.i622.do.body48.i.i627_crit_edge:       ; preds = %if.end39.i.i622
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48.i.i627

do.body48.sink.split.i.i624:                      ; preds = %if.end39.i.i622.do.body48.sink.split.i.i624_crit_edge, %if.then27.i.i614
  %283 = ptrtoint ptr %dstbus to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %dstbus, align 4
  %add33.i.i623 = add i32 %284, %247
  store i32 %add33.i.i623, ptr %dstbus, align 4
  br label %do.body48.i.i627

do.body48.i.i627:                                 ; preds = %do.body48.sink.split.i.i624, %if.end39.i.i622.do.body48.i.i627_crit_edge
  %285 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %286, i32 %247)
  %cmp49.i.i626 = icmp ult i32 %286, %247
  br i1 %cmp49.i.i626, label %do.body58.i.i628, label %prep_byte_width_lli.exit631, !prof !373

do.body58.i.i628:                                 ; preds = %do.body48.i.i627
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/amba-pl08x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1200, 0\0A.popsection", ""() #12, !srcloc !393
  unreachable

prep_byte_width_lli.exit631:                      ; preds = %do.body48.i.i627
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i629 = sub i32 %286, %247
  %287 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %sub.i.i629, ptr %remainder, align 4
  %add.i630 = add i32 %247, %total_bytes.1.lcssa
  br label %if.end333

if.end333:                                        ; preds = %prep_byte_width_lli.exit631, %while.end.if.end333_crit_edge, %if.end192.if.end333_crit_edge
  %total_bytes.2 = phi i32 [ %early_bytes.1654, %if.end192.if.end333_crit_edge ], [ %total_bytes.1.lcssa, %while.end.if.end333_crit_edge ], [ %add.i630, %prep_byte_width_lli.exit631 ]
  %num_llis.4 = phi i32 [ %num_llis.2, %if.end192.if.end333_crit_edge ], [ %num_llis.3.lcssa, %while.end.if.end333_crit_edge ], [ %inc331, %prep_byte_width_lli.exit631 ]
  %288 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %total_bytes.2, i32 %289)
  %cmp335.not = icmp eq i32 %total_bytes.2, %289
  br i1 %cmp335.not, label %if.end344, label %do.end340

do.end340:                                        ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #14
  %290 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %adev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %291, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.60, i32 noundef %total_bytes.2, i32 noundef %289) #16
  br label %cleanup381

if.end344:                                        ; preds = %if.end333
  %cmp345 = icmp sgt i32 %num_llis.4, 511
  br i1 %cmp345, label %do.end350, label %if.end344.for.cond_crit_edge

if.end344.for.cond_crit_edge:                     ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

do.end350:                                        ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #14
  %292 = ptrtoint ptr %adev33 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %adev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.60, i32 noundef 512) #16
  br label %cleanup381

for.end:                                          ; preds = %if.then22.i, %do.end11.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  %num_llis.5 = phi i32 [ %inc, %if.then22.i ], [ %inc, %do.end11.i.for.end_crit_edge ], [ %num_llis.0, %for.cond.for.end_crit_edge ]
  %294 = ptrtoint ptr %llis_va1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %llis_va1, align 4
  %sub360 = add i32 %num_llis.5, -1
  %296 = ptrtoint ptr %lli_words.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %lli_words.i.i, align 2
  %conv361 = zext i8 %297 to i32
  %mul362 = mul i32 %sub360, %conv361
  %add.ptr363 = getelementptr i32, ptr %295, i32 %mul362
  %cyclic = getelementptr inbounds %struct.pl08x_txd, ptr %txd, i32 0, i32 7
  %298 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %cyclic, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool364.not = icmp eq i8 %299, 0
  br i1 %tobool364.not, label %if.else368, label %if.then365

if.then365:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %300 = ptrtoint ptr %llis_bus to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %llis_bus, align 4
  %302 = ptrtoint ptr %lli_bus to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %lli_bus, align 4
  %or = or i32 %303, %301
  %arrayidx = getelementptr i32, ptr %add.ptr363, i32 2
  %304 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end380

if.else368:                                       ; preds = %for.end
  %arrayidx369 = getelementptr i32, ptr %add.ptr363, i32 2
  %305 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 0, ptr %arrayidx369, align 4
  %306 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %vd.i, align 4
  %ftdmac020371 = getelementptr inbounds %struct.vendor_data, ptr %307, i32 0, i32 6
  %308 = ptrtoint ptr %ftdmac020371 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %ftdmac020371, align 2, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool372.not = icmp eq i8 %309, 0
  %arrayidx377 = getelementptr i32, ptr %add.ptr363, i32 3
  %310 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx377, align 4
  br i1 %tobool372.not, label %if.else376, label %if.then373

if.then373:                                       ; preds = %if.else368
  call void @__sanitizer_cov_trace_pc() #14
  %and375 = and i32 %311, -268435457
  %312 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %and375, ptr %arrayidx377, align 4
  br label %if.end380

if.else376:                                       ; preds = %if.else368
  call void @__sanitizer_cov_trace_pc() #14
  %or378 = or i32 %311, -2147483648
  %313 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %or378, ptr %arrayidx377, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.else376, %if.then373, %if.then365
  call fastcc void @pl08x_dump_lli(ptr noundef %pl08x, ptr noundef %295, i32 noundef %num_llis.5)
  br label %cleanup381

cleanup381:                                       ; preds = %if.end380, %do.end350, %do.end340, %do.end123, %do.end99, %do.end
  %retval.1 = phi i32 [ 0, %do.end340 ], [ 0, %do.end350 ], [ %num_llis.5, %if.end380 ], [ 0, %do.end ], [ 0, %do.end123 ], [ 0, %do.end99 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bd) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl08x_dump_lli(ptr nocapture noundef readonly %pl08x, ptr noundef %llis_va, i32 noundef %num_llis) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vd = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 5
  %0 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vd, align 4
  %pl080s = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pl080s to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pl080s, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body30, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_dump_lli, %do.end)) #12
          to label %if.then5 [label %do.end], !srcloc !363

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_dump_lli.__UNIQUE_ID_ddebug298, ptr noundef %5, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_llis)
  %cmp123 = icmp sgt i32 %num_llis, 0
  br i1 %cmp123, label %do.body6.lr.ph, label %do.end.if.end84_crit_edge

do.end.if.end84_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.body6.lr.ph:                                   ; preds = %do.end
  %adev21 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %lli_words = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 11
  br label %do.body6

do.body6:                                         ; preds = %do.end29.do.body6_crit_edge, %do.body6.lr.ph
  %llis_va.addr.0126 = phi ptr [ %llis_va, %do.body6.lr.ph ], [ %add.ptr, %do.end29.do.body6_crit_edge ]
  %i.0124 = phi i32 [ 0, %do.body6.lr.ph ], [ %inc, %do.end29.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_dump_lli, %do.end29)) #12
          to label %if.then20 [label %do.end29], !srcloc !363

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %adev21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev21, align 4
  %8 = ptrtoint ptr %llis_va.addr.0126 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %llis_va.addr.0126, align 4
  %arrayidx23 = getelementptr i32, ptr %llis_va.addr.0126, i32 1
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr i32, ptr %llis_va.addr.0126, i32 2
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr i32, ptr %llis_va.addr.0126, i32 3
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr i32, ptr %llis_va.addr.0126, i32 4
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_dump_lli.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.91, i32 noundef %i.0124, ptr noundef %llis_va.addr.0126, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #12
  br label %do.end29

do.end29:                                         ; preds = %if.then20, %do.body6
  %18 = ptrtoint ptr %lli_words to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lli_words, align 2
  %conv = zext i8 %19 to i32
  %add.ptr = getelementptr i32, ptr %llis_va.addr.0126, i32 %conv
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, %num_llis
  br i1 %exitcond.not, label %do.end29.if.end84_crit_edge, label %do.end29.do.body6_crit_edge

do.end29.do.body6_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

do.end29.if.end84_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.body30:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_dump_lli, %do.end49)) #12
          to label %if.then44 [label %do.end49], !srcloc !363

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %adev45 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %20 = ptrtoint ptr %adev45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_dump_lli.__UNIQUE_ID_ddebug300, ptr noundef %21, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #12
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_llis)
  %cmp51128 = icmp sgt i32 %num_llis, 0
  br i1 %cmp51128, label %do.body54.lr.ph, label %do.end49.if.end84_crit_edge

do.end49.if.end84_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.body54.lr.ph:                                  ; preds = %do.end49
  %adev69 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %lli_words78 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 11
  br label %do.body54

do.body54:                                        ; preds = %do.end77.do.body54_crit_edge, %do.body54.lr.ph
  %llis_va.addr.1131 = phi ptr [ %llis_va, %do.body54.lr.ph ], [ %add.ptr80, %do.end77.do.body54_crit_edge ]
  %i.1129 = phi i32 [ 0, %do.body54.lr.ph ], [ %inc82, %do.end77.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_dump_lli, %do.end77)) #12
          to label %if.then68 [label %do.end77], !srcloc !363

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %adev69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev69, align 4
  %24 = ptrtoint ptr %llis_va.addr.1131 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %llis_va.addr.1131, align 4
  %arrayidx72 = getelementptr i32, ptr %llis_va.addr.1131, i32 1
  %26 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx72, align 4
  %arrayidx73 = getelementptr i32, ptr %llis_va.addr.1131, i32 2
  %28 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx73, align 4
  %arrayidx74 = getelementptr i32, ptr %llis_va.addr.1131, i32 3
  %30 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_dump_lli.__UNIQUE_ID_ddebug301, ptr noundef %23, ptr noundef nonnull @.str.93, i32 noundef %i.1129, ptr noundef %llis_va.addr.1131, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #12
  br label %do.end77

do.end77:                                         ; preds = %if.then68, %do.body54
  %32 = ptrtoint ptr %lli_words78 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lli_words78, align 2
  %conv79 = zext i8 %33 to i32
  %add.ptr80 = getelementptr i32, ptr %llis_va.addr.1131, i32 %conv79
  %inc82 = add nuw nsw i32 %i.1129, 1
  %exitcond134.not = icmp eq i32 %inc82, %num_llis
  br i1 %exitcond134.not, label %do.end77.if.end84_crit_edge, label %do.end77.do.body54_crit_edge

do.end77.do.body54_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

do.end77.if.end84_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.end84:                                         ; preds = %do.end77.if.end84_crit_edge, %do.end49.if.end84_crit_edge, %do.end29.if.end84_crit_edge, %do.end.if.end84_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl08x_phy_alloc_and_start(ptr noundef %plchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %vd.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vd.i, align 4
  %channels39.i = getelementptr inbounds %struct.vendor_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channels39.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channels39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp41.not.i = icmp eq i8 %5, 0
  br i1 %cmp41.not.i, label %entry.do.body_crit_edge, label %for.body.lr.ph.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %entry
  %phy_chans.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %phy_chans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_chans.i, align 4
  %lock.i = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.042.i, i32 8
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %locked.i = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.042.i, i32 10
  %8 = ptrtoint ptr %locked.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %locked.i, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %serving.i = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.042.i, i32 9
  %10 = ptrtoint ptr %serving.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serving.i, align 4
  %tobool8.not.i = icmp eq ptr %11, null
  br i1 %tobool8.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %serving.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %plchan, ptr %serving.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #12
  br label %pl08x_get_phy_channel.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #12
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %13 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vd.i, align 4
  %channels.i = getelementptr inbounds %struct.vendor_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %channels.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channels.i, align 1
  %conv.i = zext i8 %16 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.pl08x_get_phy_channel.exit_crit_edge

if.end.i.pl08x_get_phy_channel.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_get_phy_channel.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

pl08x_get_phy_channel.exit:                       ; preds = %if.end.i.pl08x_get_phy_channel.exit_crit_edge, %if.then.i
  %i.036.i = phi i32 [ %i.042.i, %if.then.i ], [ %inc.i, %if.end.i.pl08x_get_phy_channel.exit_crit_edge ]
  %ch.1.i = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.042.i
  %17 = ptrtoint ptr %vd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vd.i, align 4
  %channels13.i = getelementptr inbounds %struct.vendor_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %channels13.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channels13.i, align 1
  %conv14.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.036.i, i32 %conv14.i)
  %cmp15.i = icmp eq i32 %i.036.i, %conv14.i
  %tobool.not48 = icmp eq ptr %ch.1.i, null
  %tobool.not = select i1 %cmp15.i, i1 true, i1 %tobool.not48
  br i1 %tobool.not, label %pl08x_get_phy_channel.exit.do.body_crit_edge, label %do.body8

pl08x_get_phy_channel.exit.do.body_crit_edge:     ; preds = %pl08x_get_phy_channel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %pl08x_get_phy_channel.exit.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_phy_alloc_and_start, %do.end)) #12
          to label %if.then6 [label %do.end], !srcloc !363

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 4
  %name = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 2
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug295, ptr noundef %22, ptr noundef nonnull @.str.95, ptr noundef %24) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %state = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 7
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %waiting_at = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 11
  %27 = ptrtoint ptr %waiting_at to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %waiting_at, align 4
  br label %cleanup

do.body8:                                         ; preds = %pl08x_get_phy_channel.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_phy_alloc_and_start, %do.end28)) #12
          to label %if.then22 [label %do.end28], !srcloc !363

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %adev23 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %adev23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adev23, align 4
  %30 = ptrtoint ptr %ch.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch.1.i, align 4
  %name25 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 2
  %32 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug296, ptr noundef %29, ptr noundef nonnull @.str.96, i32 noundef %31, ptr noundef %33) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %do.body8
  %phychan = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 1
  %34 = ptrtoint ptr %phychan to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ch.1.i, ptr %phychan, align 4
  %state29 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 7
  %35 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %state29, align 4
  tail call fastcc void @pl08x_start_next_txd(ptr noundef %plchan)
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl08x_start_next_txd(ptr noundef %plchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %phychan1 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 1
  %2 = ptrtoint ptr %phychan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phychan1, align 4
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %plchan, i32 0, i32 6
  %4 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %5, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -108
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %at = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 5
  %14 = ptrtoint ptr %at to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %at, align 4
  %reg_busy.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %3, i32 0, i32 7
  %reg_config.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %3, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %do.end, %list_del.exit
  %15 = ptrtoint ptr %reg_busy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_busy.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #12, !srcloc !357
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %21 = lshr i32 %18, %20
  %22 = and i32 %21, 1
  br label %pl08x_phy_channel_busy.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_config.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !357
  %26 = shl i32 %25, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !365
  %and10.i = and i32 %26, 131072
  br label %pl08x_phy_channel_busy.exit

pl08x_phy_channel_busy.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %22, %if.then.i ], [ %and10.i, %if.end.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %while.end, label %do.end

do.end:                                           ; preds = %pl08x_phy_channel_busy.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !397
  br label %while.cond

while.end:                                        ; preds = %pl08x_phy_channel_busy.exit
  %llis_va = getelementptr inbounds %struct.pl08x_txd, ptr %spec.select.i, i32 0, i32 3
  %27 = ptrtoint ptr %llis_va to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %llis_va, align 4
  %ccfg = getelementptr inbounds %struct.pl08x_txd, ptr %spec.select.i, i32 0, i32 5
  %29 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ccfg, align 4
  tail call fastcc void @pl08x_write_lli(ptr noundef %1, ptr noundef %3, ptr noundef %28, i32 noundef %30)
  %base = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr110 = getelementptr i8, ptr %32, i32 28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #12, !srcloc !357
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %3, align 4
  %shl111 = shl nuw i32 1, %36
  %and112 = and i32 %shl111, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool14.not113 = icmp eq i32 %and112, 0
  br i1 %tobool14.not113, label %while.end.while.end25_crit_edge, label %while.end.do.end20_crit_edge

while.end.do.end20_crit_edge:                     ; preds = %while.end
  br label %do.end20

while.end.while.end25_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end25

do.end20:                                         ; preds = %do.end20.do.end20_crit_edge, %while.end.do.end20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !400
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 28
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !357
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %shl = shl nuw i32 1, %42
  %and = and i32 %shl, %40
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.end20.while.end25_crit_edge, label %do.end20.do.end20_crit_edge

do.end20.do.end20_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.end20.while.end25_crit_edge:                   ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end25

while.end25:                                      ; preds = %do.end20.while.end25_crit_edge, %while.end.while.end25_crit_edge
  %ftdmac020 = getelementptr inbounds %struct.pl08x_phy_chan, ptr %3, i32 0, i32 11
  %43 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ftdmac020, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool26.not = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_config.i, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12
  br i1 %tobool26.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.end25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %48 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool34.not115 = icmp eq i32 %48, 0
  br i1 %tobool34.not115, label %if.then.while.end42_crit_edge, label %if.then.while.body35_crit_edge

if.then.while.body35_crit_edge:                   ; preds = %if.then
  br label %while.body35

if.then.while.end42_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end42

while.body35:                                     ; preds = %while.body35.while.body35_crit_edge, %if.then.while.body35_crit_edge
  %49 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_config.i, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  %52 = and i32 %51, 65536
  %tobool34.not = icmp eq i32 %52, 0
  br i1 %tobool34.not, label %while.body35.while.end42_crit_edge, label %while.body35.while.body35_crit_edge

while.body35.while.body35_crit_edge:              ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body35

while.body35.while.end42_crit_edge:               ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end42

while.end42:                                      ; preds = %while.body35.while.end42_crit_edge, %if.then.while.end42_crit_edge
  %reg_control = getelementptr inbounds %struct.pl08x_phy_chan, ptr %3, i32 0, i32 3
  %53 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_control, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #12, !srcloc !357
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  %and49116 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49116)
  %tobool50.not117 = icmp eq i32 %and49116, 0
  br i1 %tobool50.not117, label %while.end42.do.body59_crit_edge, label %while.end42.while.body51_crit_edge

while.end42.while.body51_crit_edge:               ; preds = %while.end42
  br label %while.body51

while.end42.do.body59_crit_edge:                  ; preds = %while.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

while.body51:                                     ; preds = %while.body51.while.body51_crit_edge, %while.end42.while.body51_crit_edge
  %57 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_control, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #12, !srcloc !357
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  %and49 = and i32 %60, 1
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %while.body51.do.body59_crit_edge, label %while.body51.while.body51_crit_edge

while.body51.while.body51_crit_edge:              ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body51

while.body51.do.body59_crit_edge:                 ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

do.body59:                                        ; preds = %while.body51.do.body59_crit_edge, %while.end42.do.body59_crit_edge
  %val.1.lcssa = phi i32 [ %56, %while.end42.do.body59_crit_edge ], [ %60, %while.body51.do.body59_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  tail call void @arm_heavy_mb() #12
  %or = or i32 %val.1.lcssa, 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %or)
  %62 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_control, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #12, !srcloc !360
  br label %if.end

if.else:                                          ; preds = %while.end25
  %64 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  %65 = and i32 %64, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %if.else.do.body82_crit_edge, label %if.else.while.body74_crit_edge

if.else.while.body74_crit_edge:                   ; preds = %if.else
  br label %while.body74

if.else.do.body82_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

while.body74:                                     ; preds = %while.body74.while.body74_crit_edge, %if.else.while.body74_crit_edge
  %67 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_config.i, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #12, !srcloc !357
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  %71 = and i32 %70, 131073
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %while.body74.do.body82_crit_edge, label %while.body74.while.body74_crit_edge

while.body74.while.body74_crit_edge:              ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body74

while.body74.do.body82_crit_edge:                 ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

do.body82:                                        ; preds = %while.body74.do.body82_crit_edge, %if.else.do.body82_crit_edge
  %val.2.lcssa = phi i32 [ %64, %if.else.do.body82_crit_edge ], [ %70, %while.body74.do.body82_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  tail call void @arm_heavy_mb() #12
  %or85 = or i32 %val.2.lcssa, 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %74 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_config.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #12, !srcloc !360
  br label %if.end

if.end:                                           ; preds = %do.body82, %do.body59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl08x_write_lli(ptr nocapture noundef readonly %pl08x, ptr nocapture noundef readonly %phychan, ptr nocapture noundef readonly %lli, i32 noundef %ccfg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vd = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 5
  %0 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vd, align 4
  %pl080s = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pl080s to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pl080s, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_write_lli.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_write_lli, %if.end34)) #12
          to label %if.then5 [label %if.end34], !srcloc !363

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 4
  %6 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phychan, align 4
  %8 = ptrtoint ptr %lli to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lli, align 4
  %arrayidx6 = getelementptr i32, ptr %lli, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %lli, i32 2
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %lli, i32 3
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %lli, i32 4
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_write_lli.__UNIQUE_ID_ddebug293, ptr noundef %5, ptr noundef nonnull @.str.98, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %ccfg) #12
  br label %if.end34

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_write_lli.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_write_lli, %if.end34)) #12
          to label %if.then24 [label %if.end34], !srcloc !363

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %adev25 = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 4
  %18 = ptrtoint ptr %adev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev25, align 4
  %20 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phychan, align 4
  %22 = ptrtoint ptr %lli to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lli, align 4
  %arrayidx29 = getelementptr i32, ptr %lli, i32 1
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29, align 4
  %arrayidx30 = getelementptr i32, ptr %lli, i32 2
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr i32, ptr %lli, i32 3
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_write_lli.__UNIQUE_ID_ddebug294, ptr noundef %19, ptr noundef nonnull @.str.99, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %ccfg) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then24, %do.body10, %if.then5, %do.body
  %30 = ptrtoint ptr %lli to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lli, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %reg_src = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 4
  %33 = ptrtoint ptr %reg_src to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_src, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #12, !srcloc !360
  %arrayidx36 = getelementptr i32, ptr %lli, i32 1
  %35 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx36, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %reg_dst = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 5
  %38 = ptrtoint ptr %reg_dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_dst, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #12, !srcloc !360
  %arrayidx37 = getelementptr i32, ptr %lli, i32 2
  %40 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx37, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %reg_lli = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 6
  %43 = ptrtoint ptr %reg_lli to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_lli, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #12, !srcloc !360
  %ftdmac020 = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 11
  %45 = ptrtoint ptr %ftdmac020 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ftdmac020, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool38.not = icmp eq i8 %46, 0
  %arrayidx93 = getelementptr i32, ptr %lli, i32 3
  %47 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx93, align 4
  br i1 %tobool38.not, label %if.else92, label %if.then39

if.then39:                                        ; preds = %if.end34
  %and = and i32 %48, 4095
  %49 = tail call i32 @llvm.bswap.i32(i32 %and)
  %base = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 1
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %49) #12, !srcloc !360
  %and41 = shl i32 %48, 3
  %52 = and i32 %and41, -2147483648
  %and45 = lshr i32 %48, 14
  %shr = and i32 %and45, 14336
  %or46 = or i32 %52, %shr
  %shr48 = and i32 %and45, 1792
  %or49 = or i32 %or46, %shr48
  %and50 = lshr i32 %48, 15
  %shr51 = and i32 %and50, 96
  %or52 = or i32 %or49, %shr51
  %shr54 = and i32 %and50, 24
  %or55 = or i32 %or52, %shr54
  %53 = and i32 %and50, 4
  %54 = or i32 %or55, %53
  %55 = and i32 %and50, 2
  %56 = or i32 %54, %55
  %pd = getelementptr inbounds %struct.pl08x_driver_data, ptr %pl08x, i32 0, i32 6
  %57 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pd, align 4
  %memcpy_burst_size = getelementptr inbounds %struct.pl08x_platform_data, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %memcpy_burst_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %memcpy_burst_size, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %60, label %if.then39.sw.epilog_crit_edge [
    i32 7, label %sw.bb79
    i32 1, label %sw.bb67
    i32 2, label %sw.bb69
    i32 3, label %sw.bb71
    i32 4, label %sw.bb73
    i32 5, label %sw.bb75
    i32 6, label %sw.bb77
  ]

if.then39.sw.epilog_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %or68 = or i32 %56, 65536
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %or70 = or i32 %56, 131072
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %or72 = or i32 %56, 196608
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %or74 = or i32 %56, 262144
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %or76 = or i32 %56, 327680
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %or78 = or i32 %56, 393216
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %or80 = or i32 %56, 458752
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %if.then39.sw.epilog_crit_edge
  %val.3 = phi i32 [ %or78, %sw.bb77 ], [ %or76, %sw.bb75 ], [ %or74, %sw.bb73 ], [ %or72, %sw.bb71 ], [ %or70, %sw.bb69 ], [ %or68, %sw.bb67 ], [ %or80, %sw.bb79 ], [ %56, %if.then39.sw.epilog_crit_edge ]
  %memcpy_prot_buff = getelementptr inbounds %struct.pl08x_platform_data, ptr %58, i32 0, i32 4
  %62 = ptrtoint ptr %memcpy_prot_buff to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %memcpy_prot_buff, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool82.not = icmp eq i8 %63, 0
  %or84 = or i32 %val.3, 1048576
  %spec.select163 = select i1 %tobool82.not, i32 %val.3, i32 %or84
  %memcpy_prot_cache = getelementptr inbounds %struct.pl08x_platform_data, ptr %58, i32 0, i32 5
  %64 = ptrtoint ptr %memcpy_prot_cache to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %memcpy_prot_cache, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool87.not = icmp eq i8 %65, 0
  %or89 = or i32 %spec.select163, 2097152
  %val.5 = select i1 %tobool87.not, i32 %spec.select163, i32 %or89
  %or91 = or i32 %val.5, 524288
  %66 = tail call i32 @llvm.bswap.i32(i32 %or91)
  %reg_control = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 3
  %67 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_control, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #12, !srcloc !360
  br label %if.end95

if.else92:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %69 = tail call i32 @llvm.bswap.i32(i32 %48)
  %reg_control94 = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 3
  %70 = ptrtoint ptr %reg_control94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_control94, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #12, !srcloc !360
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %sw.epilog
  %72 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vd, align 4
  %pl080s97 = getelementptr inbounds %struct.vendor_data, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %pl080s97 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %pl080s97, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool98.not = icmp eq i8 %75, 0
  br i1 %tobool98.not, label %if.end95.do.body104_crit_edge, label %if.then99

if.end95.do.body104_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body104

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx100 = getelementptr i32, ptr %lli, i32 4
  %76 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx100, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %base101 = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 1
  %79 = ptrtoint ptr %base101 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base101, align 4
  %add.ptr102 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %78) #12, !srcloc !360
  br label %do.body104

do.body104:                                       ; preds = %if.then99, %if.end95.do.body104_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  tail call void @arm_heavy_mb() #12
  %81 = tail call i32 @llvm.bswap.i32(i32 %ccfg)
  %reg_config = getelementptr inbounds %struct.pl08x_phy_chan, ptr %phychan, i32 0, i32 2
  %82 = ptrtoint ptr %reg_config to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #12, !srcloc !360
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl08x_phy_free(ptr nocapture noundef %plchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %channels = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 1, i32 3
  %phychan = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 1
  %has_slave = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 2
  %channels19 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 3
  br label %retry

retry.critedge:                                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %retry

retry:                                            ; preds = %retry.critedge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn108 = load ptr, ptr %channels, align 4
  %cmp.not110 = icmp eq ptr %.pn108, %channels
  br i1 %cmp.not110, label %retry.land.lhs.true15_crit_edge, label %retry.for.body_crit_edge

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

retry.land.lhs.true15_crit_edge:                  ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry.for.body_crit_edge
  %.pn113 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn108, %retry.for.body_crit_edge ]
  %next.0112 = phi ptr [ %next.1, %for.inc.for.body_crit_edge ], [ null, %retry.for.body_crit_edge ]
  %waiting_at.0111 = phi i32 [ %waiting_at.1, %for.inc.for.body_crit_edge ], [ %2, %retry.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn113, i32 216
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp4 = icmp eq i32 %5, 3
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %p.0114 = getelementptr i8, ptr %.pn113, i32 -32
  %waiting_at5 = getelementptr i8, ptr %.pn113, i32 232
  %6 = ptrtoint ptr %waiting_at5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %waiting_at5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %waiting_at.0111)
  %cmp6.not = icmp ugt i32 %7, %waiting_at.0111
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %waiting_at.0111)
  %spec.select99 = select i1 %cmp6.not, ptr %next.0112, ptr %p.0114
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %waiting_at.1 = phi i32 [ %waiting_at.0111, %for.body.for.inc_crit_edge ], [ %8, %land.lhs.true ]
  %next.1 = phi ptr [ %next.0112, %for.body.for.inc_crit_edge ], [ %spec.select99, %land.lhs.true ]
  %9 = ptrtoint ptr %.pn113 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn113, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not = icmp eq ptr %next.1, null
  br i1 %tobool.not, label %for.end.land.lhs.true15_crit_edge, label %for.end.if.end49_crit_edge

for.end.if.end49_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

for.end.land.lhs.true15_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %for.end.land.lhs.true15_crit_edge, %retry.land.lhs.true15_crit_edge
  %waiting_at.0.lcssa129 = phi i32 [ %waiting_at.1, %for.end.land.lhs.true15_crit_edge ], [ %2, %retry.land.lhs.true15_crit_edge ]
  %10 = ptrtoint ptr %has_slave to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_slave, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %land.lhs.true15.if.end49_crit_edge, label %if.then17

land.lhs.true15.if.end49_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then17:                                        ; preds = %land.lhs.true15
  %12 = ptrtoint ptr %channels19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn98116 = load ptr, ptr %channels19, align 4
  %cmp29.not118 = icmp eq ptr %.pn98116, %channels19
  br i1 %cmp29.not118, label %if.then17.if.end49_crit_edge, label %if.then17.for.body31_crit_edge

if.then17.for.body31_crit_edge:                   ; preds = %if.then17
  br label %for.body31

if.then17.if.end49_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

for.body31:                                       ; preds = %for.inc40.for.body31_crit_edge, %if.then17.for.body31_crit_edge
  %.pn98121 = phi ptr [ %.pn98, %for.inc40.for.body31_crit_edge ], [ %.pn98116, %if.then17.for.body31_crit_edge ]
  %next.2120 = phi ptr [ %next.3, %for.inc40.for.body31_crit_edge ], [ null, %if.then17.for.body31_crit_edge ]
  %waiting_at.2119 = phi i32 [ %waiting_at.3, %for.inc40.for.body31_crit_edge ], [ %waiting_at.0.lcssa129, %if.then17.for.body31_crit_edge ]
  %state32 = getelementptr i8, ptr %.pn98121, i32 216
  %13 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp33 = icmp eq i32 %14, 3
  br i1 %cmp33, label %land.lhs.true34, label %for.body31.for.inc40_crit_edge

for.body31.for.inc40_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc40

land.lhs.true34:                                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  %p.1122 = getelementptr i8, ptr %.pn98121, i32 -32
  %waiting_at35 = getelementptr i8, ptr %.pn98121, i32 232
  %15 = ptrtoint ptr %waiting_at35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %waiting_at35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %waiting_at.2119)
  %cmp36.not = icmp ugt i32 %16, %waiting_at.2119
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %waiting_at.2119)
  %spec.select101 = select i1 %cmp36.not, ptr %next.2120, ptr %p.1122
  br label %for.inc40

for.inc40:                                        ; preds = %land.lhs.true34, %for.body31.for.inc40_crit_edge
  %waiting_at.3 = phi i32 [ %waiting_at.2119, %for.body31.for.inc40_crit_edge ], [ %17, %land.lhs.true34 ]
  %next.3 = phi ptr [ %next.2120, %for.body31.for.inc40_crit_edge ], [ %spec.select101, %land.lhs.true34 ]
  %18 = ptrtoint ptr %.pn98121 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn98 = load ptr, ptr %.pn98121, align 4
  %cmp29.not = icmp eq ptr %.pn98, %channels19
  br i1 %cmp29.not, label %for.inc40.if.end49_crit_edge, label %for.inc40.for.body31_crit_edge

for.inc40.for.body31_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31

for.inc40.if.end49_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end49:                                         ; preds = %for.inc40.if.end49_crit_edge, %if.then17.if.end49_crit_edge, %land.lhs.true15.if.end49_crit_edge, %for.end.if.end49_crit_edge
  %next.4 = phi ptr [ %next.1, %for.end.if.end49_crit_edge ], [ null, %land.lhs.true15.if.end49_crit_edge ], [ null, %if.then17.if.end49_crit_edge ], [ %next.3, %for.inc40.if.end49_crit_edge ]
  %19 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phychan, align 4
  %ftdmac020.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %ftdmac020.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ftdmac020.i, align 1, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %reg_config28.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %reg_config28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_config28.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %26 = or i32 %25, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !410
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %reg_config28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_config28.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !360
  %reg_control.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %20, i32 0, i32 3
  %29 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_control.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #12, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  %32 = and i32 %31, -25165825
  %33 = or i32 %32, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #12, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %20, align 4
  %shl.i = shl nuw i32 1, %37
  %add.i = add i32 %37, 16
  %shl17.i = shl nuw i32 1, %add.i
  %or18.i = or i32 %shl17.i, %shl.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #12
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #12, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  tail call void @arm_heavy_mb() #12
  %41 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %20, align 4
  %shl23.i = shl nuw i32 1, %42
  %43 = tail call i32 @llvm.bswap.i32(i32 %shl23.i) #12
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %43) #12, !srcloc !360
  br label %pl08x_terminate_phy_chan.exit

if.end.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %46 = and i32 %25, -29360129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %47 = ptrtoint ptr %reg_config28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_config28.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #12, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %20, align 4
  %shl41.i = shl nuw i32 1, %50
  %51 = tail call i32 @llvm.bswap.i32(i32 %shl41.i) #12
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %51) #12, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %20, align 4
  %shl48.i = shl nuw i32 1, %55
  %56 = tail call i32 @llvm.bswap.i32(i32 %shl48.i) #12
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %56) #12, !srcloc !360
  br label %pl08x_terminate_phy_chan.exit

pl08x_terminate_phy_chan.exit:                    ; preds = %if.end.i, %if.then.i
  %tobool50.not = icmp eq ptr %next.4, null
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %pl08x_terminate_phy_chan.exit
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %next.4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %state53 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %next.4, i32 0, i32 7
  %59 = ptrtoint ptr %state53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state53, align 4
  %cmp54 = icmp eq i32 %60, 3
  br i1 %cmp54, label %if.then56, label %retry.critedge

if.then56:                                        ; preds = %if.then51
  %state53.le = getelementptr inbounds %struct.pl08x_dma_chan, ptr %next.4, i32 0, i32 7
  %61 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phychan, align 4
  %host.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %next.4, i32 0, i32 6
  %63 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_phy_reassign_start.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_phy_free, %pl08x_phy_reassign_start.exit)) #12
          to label %if.then.i102 [label %pl08x_phy_reassign_start.exit], !srcloc !363

if.then.i102:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %adev.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adev.i, align 4
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %62, align 4
  %name.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %next.4, i32 0, i32 2
  %69 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_phy_reassign_start.__UNIQUE_ID_ddebug297, ptr noundef %66, ptr noundef nonnull @.str.105, i32 noundef %68, ptr noundef %70) #12
  br label %pl08x_phy_reassign_start.exit

pl08x_phy_reassign_start.exit:                    ; preds = %if.then.i102, %if.then56
  %serving.i = getelementptr inbounds %struct.pl08x_phy_chan, ptr %62, i32 0, i32 9
  %71 = ptrtoint ptr %serving.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %next.4, ptr %serving.i, align 4
  %phychan.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %next.4, i32 0, i32 1
  %72 = ptrtoint ptr %phychan.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %62, ptr %phychan.i, align 4
  %73 = ptrtoint ptr %state53.le to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %state53.le, align 4
  tail call fastcc void @pl08x_start_next_txd(ptr noundef nonnull %next.4) #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.end65

if.else:                                          ; preds = %pl08x_terminate_phy_chan.exit
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %phychan to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phychan, align 4
  %serving.i103 = getelementptr inbounds %struct.pl08x_phy_chan, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %serving.i103 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %serving.i103, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else, %pl08x_phy_reassign_start.exit
  %77 = ptrtoint ptr %phychan to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %phychan, align 4
  %state67 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %plchan, i32 0, i32 7
  %78 = ptrtoint ptr %state67 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %state67, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pl08x_init_txd(ptr nocapture noundef %chan, i32 noundef %direction, ptr nocapture noundef writeonly %slave_addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 144) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsg_list.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dsg_list.i, ptr %dsg_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dsg_list.i, ptr %prev.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dst_addr = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_addr, align 4
  %9 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %slave_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4, i32 4
  %dst_maxburst = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4, i32 6
  %mem_buses = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 10
  %cd = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cd, align 4
  %periph_buses = getelementptr inbounds %struct.pl08x_channel_data, ptr %11, i32 0, i32 6
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp5 = icmp eq i32 %direction, 2
  br i1 %cmp5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %src_addr = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_addr, align 4
  %14 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %slave_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4, i32 3
  %src_maxburst = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4, i32 5
  %cd10 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %cd10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cd10, align 4
  %periph_buses11 = getelementptr inbounds %struct.pl08x_channel_data, ptr %16, i32 0, i32 6
  %mem_buses12 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 10
  br label %if.end20

if.else13:                                        ; preds = %if.else
  %llis_va.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %llis_va.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %llis_va.i, align 8
  %tobool.not.i145 = icmp eq ptr %18, null
  br i1 %tobool.not.i145, label %if.else13.if.end.i_crit_edge, label %if.then.i146

if.else13.if.end.i_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i146:                                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pool.i, align 4
  %llis_bus.i = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %llis_bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %llis_bus.i, align 4
  tail call void @dma_pool_free(ptr noundef %20, ptr noundef nonnull %18, i32 noundef %22) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i146, %if.else13.if.end.i_crit_edge
  %23 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i = icmp eq ptr %24, %dsg_list.i
  br i1 %cmp.not24.i, label %if.end.i.pl08x_free_txd.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.pl08x_free_txd.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %24, %if.end.i.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -12
  %25 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %32 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i148 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i148 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i148, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.pl08x_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.pl08x_free_txd.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

pl08x_free_txd.exit:                              ; preds = %list_del.exit.i.pl08x_free_txd.exit_crit_edge, %if.end.i.pl08x_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %adev17 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %adev17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110) #16
  br label %cleanup

if.end20:                                         ; preds = %if.then6, %if.then2
  %addr_width.0.in = phi ptr [ %dst_addr_width, %if.then2 ], [ %src_addr_width, %if.then6 ]
  %src_buses.0.in = phi ptr [ %mem_buses, %if.then2 ], [ %periph_buses11, %if.then6 ]
  %dst_buses.0.in = phi ptr [ %periph_buses, %if.then2 ], [ %mem_buses12, %if.then6 ]
  %maxburst.0.in = phi ptr [ %dst_maxburst, %if.then2 ], [ %src_maxburst, %if.then6 ]
  %cctl.0 = phi i32 [ 67108864, %if.then2 ], [ 134217728, %if.then6 ]
  %36 = ptrtoint ptr %maxburst.0.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %maxburst.0 = load i32, ptr %maxburst.0.in, align 4
  %37 = ptrtoint ptr %dst_buses.0.in to i32
  call void @__asan_load1_noabort(i32 %37)
  %dst_buses.0 = load i8, ptr %dst_buses.0.in, align 1
  %38 = ptrtoint ptr %src_buses.0.in to i32
  call void @__asan_load1_noabort(i32 %38)
  %src_buses.0 = load i8, ptr %src_buses.0.in, align 1
  %39 = ptrtoint ptr %addr_width.0.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %addr_width.0 = load i32, ptr %addr_width.0.in, align 4
  %40 = zext i32 %addr_width.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %addr_width.0, label %if.end20.pl08x_get_cctl.exit_crit_edge [
    i32 1, label %if.end20.if.end.i150_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
  ]

if.end20.if.end.i150_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i150

if.end20.pl08x_get_cctl.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_get_cctl.exit

sw.bb1.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i150

sw.bb2.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i150

if.end.i150:                                      ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %if.end20.if.end.i150_crit_edge
  %retval.0.i.ph.i = phi i32 [ 0, %if.end20.if.end.i150_crit_edge ], [ 2359296, %sw.bb1.i.i ], [ 4718592, %sw.bb2.i.i ]
  %cd.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %41 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cd.i, align 4
  %single.i = getelementptr inbounds %struct.pl08x_channel_data, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %single.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %single.i, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i149 = icmp eq i8 %44, 0
  %spec.select.i = select i1 %tobool.not.i149, i32 %maxburst.0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.select.i)
  %cmp1.not.i.i = icmp ult i32 %spec.select.i, 256
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i150.pl08x_burst.exit.i_crit_edge

if.end.i150.pl08x_burst.exit.i_crit_edge:         ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_burst.exit.i

for.inc.i.i:                                      ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %spec.select.i)
  %cmp1.not.1.i.i = icmp ult i32 %spec.select.i, 128
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.pl08x_burst.exit.i_crit_edge

for.inc.i.i.pl08x_burst.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_burst.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select.i)
  %cmp1.not.2.i.i = icmp ult i32 %spec.select.i, 64
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.pl08x_burst.exit.i_crit_edge

for.inc.1.i.i.pl08x_burst.exit.i_crit_edge:       ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_burst.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select.i)
  %cmp1.not.3.i.i = icmp ult i32 %spec.select.i, 32
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.pl08x_burst.exit.i_crit_edge

for.inc.2.i.i.pl08x_burst.exit.i_crit_edge:       ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_burst.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select.i)
  %cmp1.not.4.i.i = icmp ult i32 %spec.select.i, 16
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.pl08x_burst.exit.i_crit_edge

for.inc.3.i.i.pl08x_burst.exit.i_crit_edge:       ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_burst.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select.i)
  %cmp1.not.5.i.i = icmp ult i32 %spec.select.i, 8
  br i1 %cmp1.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.pl08x_burst.exit.i_crit_edge

for.inc.4.i.i.pl08x_burst.exit.i_crit_edge:       ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_burst.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.i)
  %cmp1.not.6.i.i = icmp ult i32 %spec.select.i, 4
  %spec.select.i.i = select i1 %cmp1.not.6.i.i, i32 7, i32 6
  br label %pl08x_burst.exit.i

pl08x_burst.exit.i:                               ; preds = %for.inc.5.i.i, %for.inc.4.i.i.pl08x_burst.exit.i_crit_edge, %for.inc.3.i.i.pl08x_burst.exit.i_crit_edge, %for.inc.2.i.i.pl08x_burst.exit.i_crit_edge, %for.inc.1.i.i.pl08x_burst.exit.i_crit_edge, %for.inc.i.i.pl08x_burst.exit.i_crit_edge, %if.end.i150.pl08x_burst.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.end.i150.pl08x_burst.exit.i_crit_edge ], [ 1, %for.inc.i.i.pl08x_burst.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.pl08x_burst.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.pl08x_burst.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.pl08x_burst.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.pl08x_burst.exit.i_crit_edge ], [ %spec.select.i.i, %for.inc.5.i.i ]
  %reg.i.i = getelementptr [8 x %struct.burst_table], ptr @burst_sizes, i32 0, i32 %i.0.lcssa.i.i, i32 1
  %45 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg.i.i, align 4
  %shl6.i = shl i32 %46, 12
  %or7.i = or i32 %shl6.i, %retval.0.i.ph.i
  %shl8.i = shl i32 %46, 15
  %or9.i = or i32 %or7.i, %shl8.i
  %and.i.i = and i32 %or9.i, -2130710528
  %or.i.i = or i32 %and.i.i, 268435456
  br label %pl08x_get_cctl.exit

pl08x_get_cctl.exit:                              ; preds = %pl08x_burst.exit.i, %if.end20.pl08x_get_cctl.exit_crit_edge
  %retval.0.i151 = phi i32 [ %or.i.i, %pl08x_burst.exit.i ], [ -1, %if.end20.pl08x_get_cctl.exit_crit_edge ]
  %or = or i32 %retval.0.i151, %cctl.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp22 = icmp eq i32 %or, -1
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %pl08x_get_cctl.exit
  %llis_va.i152 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %llis_va.i152 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %llis_va.i152, align 8
  %tobool.not.i153 = icmp eq ptr %48, null
  br i1 %tobool.not.i153, label %if.then23.if.end.i159_crit_edge, label %if.then.i156

if.then23.if.end.i159_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i159

if.then.i156:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i154 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %pool.i154 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pool.i154, align 4
  %llis_bus.i155 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %llis_bus.i155 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %llis_bus.i155, align 4
  tail call void @dma_pool_free(ptr noundef %50, ptr noundef nonnull %48, i32 noundef %52) #12
  br label %if.end.i159

if.end.i159:                                      ; preds = %if.then.i156, %if.then23.if.end.i159_crit_edge
  %53 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i158 = icmp eq ptr %54, %dsg_list.i
  br i1 %cmp.not24.i158, label %if.end.i159.pl08x_free_txd.exit171_crit_edge, label %if.end.i159.for.body.i164_crit_edge

if.end.i159.for.body.i164_crit_edge:              ; preds = %if.end.i159
  br label %for.body.i164

if.end.i159.pl08x_free_txd.exit171_crit_edge:     ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit171

for.body.i164:                                    ; preds = %list_del.exit.i170.for.body.i164_crit_edge, %if.end.i159.for.body.i164_crit_edge
  %.pn.in25.i160 = phi ptr [ %.pn.i162, %list_del.exit.i170.for.body.i164_crit_edge ], [ %54, %if.end.i159.for.body.i164_crit_edge ]
  %dsg.0.i161 = getelementptr i8, ptr %.pn.in25.i160, i32 -12
  %55 = ptrtoint ptr %.pn.in25.i160 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i162 = load ptr, ptr %.pn.in25.i160, align 4
  %call.i.i.i163 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i160) #12
  br i1 %call.i.i.i163, label %if.end.i.i.i167, label %for.body.i164.list_del.exit.i170_crit_edge

for.body.i164.list_del.exit.i170_crit_edge:       ; preds = %for.body.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i170

if.end.i.i.i167:                                  ; preds = %for.body.i164
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i165 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i160, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i165, align 4
  %58 = ptrtoint ptr %.pn.in25.i160 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %.pn.in25.i160, align 4
  %prev1.i.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i166, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i170

list_del.exit.i170:                               ; preds = %if.end.i.i.i167, %for.body.i164.list_del.exit.i170_crit_edge
  %62 = ptrtoint ptr %.pn.in25.i160 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i160, align 4
  %prev.i.i168 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i160, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i168 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i168, align 4
  tail call void @kfree(ptr noundef %dsg.0.i161) #12
  %cmp.not.i169 = icmp eq ptr %.pn.i162, %dsg_list.i
  br i1 %cmp.not.i169, label %list_del.exit.i170.pl08x_free_txd.exit171_crit_edge, label %list_del.exit.i170.for.body.i164_crit_edge

list_del.exit.i170.for.body.i164_crit_edge:       ; preds = %list_del.exit.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i164

list_del.exit.i170.pl08x_free_txd.exit171_crit_edge: ; preds = %list_del.exit.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit171

pl08x_free_txd.exit171:                           ; preds = %list_del.exit.i170.pl08x_free_txd.exit171_crit_edge, %if.end.i159.pl08x_free_txd.exit171_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %adev27 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %adev27 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.115) #16
  br label %cleanup

if.end29:                                         ; preds = %pl08x_get_cctl.exit
  %conv.i = zext i8 %dst_buses.0 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end29.if.then8.i_crit_edge, label %lor.lhs.false.i

if.end29.if.then8.i_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end29
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %66 = and i8 %src_buses.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool7.not.i = icmp eq i8 %66, 0
  %or.cond.i = or i1 %tobool7.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end9.i_crit_edge, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.end29.if.then8.i_crit_edge
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %lor.lhs.false.i.if.end9.i_crit_edge
  %cctl.0.i = phi i32 [ 33554432, %if.then8.i ], [ 0, %lor.lhs.false.i.if.end9.i_crit_edge ]
  %conv10.i = zext i8 %src_buses.0 to i32
  %and11.i = and i32 %conv10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.then21.i_crit_edge, label %lor.lhs.false13.i

if.end9.i.if.then21.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

lor.lhs.false13.i:                                ; preds = %if.end9.i
  %and15.i = and i32 %conv10.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp ne i32 %and15.i, 0
  %and19.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond31.i = and i1 %tobool20.not.i, %tobool16.not.i
  br i1 %or.cond31.i, label %lor.lhs.false13.i.if.then21.i_crit_edge, label %lor.lhs.false13.i.pl08x_select_bus.exit_crit_edge

lor.lhs.false13.i.pl08x_select_bus.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_select_bus.exit

lor.lhs.false13.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false13.i.if.then21.i_crit_edge, %if.end9.i.if.then21.i_crit_edge
  %or22.i = or i32 %cctl.0.i, 16777216
  br label %pl08x_select_bus.exit

pl08x_select_bus.exit:                            ; preds = %if.then21.i, %lor.lhs.false13.i.pl08x_select_bus.exit_crit_edge
  %cctl.1.i = phi i32 [ %or22.i, %if.then21.i ], [ %cctl.0.i, %lor.lhs.false13.i.pl08x_select_bus.exit_crit_edge ]
  %or31 = or i32 %cctl.1.i, %or
  %cctl32 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %cctl32 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or31, ptr %cctl32, align 4
  %device_fc = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 4, i32 9
  %68 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %device_fc, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool34.not = icmp eq i8 %69, 0
  %cond = select i1 %cmp, i32 10240, i32 12288
  %cond39 = select i1 %cmp, i32 2048, i32 4096
  %tmp.0 = select i1 %tobool34.not, i32 %cond39, i32 %cond
  %or41 = or i32 %tmp.0, 49152
  %ccfg = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %ccfg to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or41, ptr %ccfg, align 8
  %71 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %host, align 4
  %pd1.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %pd1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pd1.i, align 4
  %mux_use.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 10
  %75 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mux_use.i, align 4
  %inc.i = add i32 %76, 1
  store i32 %inc.i, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i = icmp eq i32 %76, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %pl08x_select_bus.exit.do.body59_crit_edge

pl08x_select_bus.exit.do.body59_crit_edge:        ; preds = %pl08x_select_bus.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

land.lhs.true.i:                                  ; preds = %pl08x_select_bus.exit
  %get_xfer_signal.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %74, i32 0, i32 6
  %77 = ptrtoint ptr %get_xfer_signal.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_xfer_signal.i, align 4
  %tobool.not.i172 = icmp eq ptr %78, null
  br i1 %tobool.not.i172, label %land.lhs.true.i.do.body59_crit_edge, label %if.then.i174

land.lhs.true.i.do.body59_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

if.then.i174:                                     ; preds = %land.lhs.true.i
  %cd.i173 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 3
  %79 = ptrtoint ptr %cd.i173 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cd.i173, align 4
  %call.i = tail call i32 %78(ptr noundef %80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then44, label %if.end.i175

if.end.i175:                                      ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 9
  %81 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call.i, ptr %signal.i, align 4
  br label %do.body59

if.then44:                                        ; preds = %if.then.i174
  %82 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %mux_use.i, align 4
  %llis_va.i177 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %llis_va.i177 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %llis_va.i177, align 8
  %tobool.not.i178 = icmp eq ptr %84, null
  br i1 %tobool.not.i178, label %if.then44.if.end.i184_crit_edge, label %if.then.i181

if.then44.if.end.i184_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i184

if.then.i181:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %pool.i179 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 8
  %85 = ptrtoint ptr %pool.i179 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pool.i179, align 4
  %llis_bus.i180 = getelementptr inbounds %struct.pl08x_txd, ptr %call7.i.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %llis_bus.i180 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %llis_bus.i180, align 4
  tail call void @dma_pool_free(ptr noundef %86, ptr noundef nonnull %84, i32 noundef %88) #12
  br label %if.end.i184

if.end.i184:                                      ; preds = %if.then.i181, %if.then44.if.end.i184_crit_edge
  %89 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i183 = icmp eq ptr %90, %dsg_list.i
  br i1 %cmp.not24.i183, label %if.end.i184.pl08x_free_txd.exit196_crit_edge, label %if.end.i184.for.body.i189_crit_edge

if.end.i184.for.body.i189_crit_edge:              ; preds = %if.end.i184
  br label %for.body.i189

if.end.i184.pl08x_free_txd.exit196_crit_edge:     ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit196

for.body.i189:                                    ; preds = %list_del.exit.i195.for.body.i189_crit_edge, %if.end.i184.for.body.i189_crit_edge
  %.pn.in25.i185 = phi ptr [ %.pn.i187, %list_del.exit.i195.for.body.i189_crit_edge ], [ %90, %if.end.i184.for.body.i189_crit_edge ]
  %dsg.0.i186 = getelementptr i8, ptr %.pn.in25.i185, i32 -12
  %91 = ptrtoint ptr %.pn.in25.i185 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn.i187 = load ptr, ptr %.pn.in25.i185, align 4
  %call.i.i.i188 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i185) #12
  br i1 %call.i.i.i188, label %if.end.i.i.i192, label %for.body.i189.list_del.exit.i195_crit_edge

for.body.i189.list_del.exit.i195_crit_edge:       ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i195

if.end.i.i.i192:                                  ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i190 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i185, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i190, align 4
  %94 = ptrtoint ptr %.pn.in25.i185 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %.pn.in25.i185, align 4
  %prev1.i.i.i.i191 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i191, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del.exit.i195

list_del.exit.i195:                               ; preds = %if.end.i.i.i192, %for.body.i189.list_del.exit.i195_crit_edge
  %98 = ptrtoint ptr %.pn.in25.i185 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i185, align 4
  %prev.i.i193 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i185, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i193 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i193, align 4
  tail call void @kfree(ptr noundef %dsg.0.i186) #12
  %cmp.not.i194 = icmp eq ptr %.pn.i187, %dsg_list.i
  br i1 %cmp.not.i194, label %list_del.exit.i195.pl08x_free_txd.exit196_crit_edge, label %list_del.exit.i195.for.body.i189_crit_edge

list_del.exit.i195.for.body.i189_crit_edge:       ; preds = %list_del.exit.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i189

list_del.exit.i195.pl08x_free_txd.exit196_crit_edge: ; preds = %list_del.exit.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit196

pl08x_free_txd.exit196:                           ; preds = %list_del.exit.i195.pl08x_free_txd.exit196_crit_edge, %if.end.i184.pl08x_free_txd.exit196_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_init_txd.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_init_txd, %cleanup)) #12
          to label %if.then52 [label %cleanup], !srcloc !363

if.then52:                                        ; preds = %pl08x_free_txd.exit196
  call void @__sanitizer_cov_trace_pc() #14
  %adev53 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %adev53 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adev53, align 4
  %name = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 2
  %102 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_init_txd.__UNIQUE_ID_ddebug313, ptr noundef %101, ptr noundef nonnull @.str.117, ptr noundef %103) #12
  br label %cleanup

do.body59:                                        ; preds = %if.end.i175, %land.lhs.true.i.do.body59_crit_edge, %pl08x_select_bus.exit.do.body59_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_init_txd.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_init_txd, %do.end79)) #12
          to label %if.then73 [label %do.end79], !srcloc !363

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %adev74 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %104 = ptrtoint ptr %adev74 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %adev74, align 4
  %signal = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 9
  %106 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %signal, align 4
  %name76 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 2
  %108 = ptrtoint ptr %name76 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_init_txd.__UNIQUE_ID_ddebug314, ptr noundef %105, ptr noundef nonnull @.str.118, i32 noundef %107, ptr noundef %109) #12
  br label %do.end79

do.end79:                                         ; preds = %if.then73, %do.body59
  %signal82 = getelementptr inbounds %struct.pl08x_dma_chan, ptr %chan, i32 0, i32 9
  %110 = ptrtoint ptr %signal82 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %signal82, align 4
  %. = select i1 %cmp, i32 6, i32 1
  %shl88 = shl i32 %111, %.
  %112 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ccfg, align 8
  %or90 = or i32 %113, %shl88
  store i32 %or90, ptr %ccfg, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %if.then52, %pl08x_free_txd.exit196, %pl08x_free_txd.exit171, %pl08x_free_txd.exit, %do.end
  %retval.0 = phi ptr [ null, %pl08x_free_txd.exit171 ], [ %call7.i.i.i, %do.end79 ], [ null, %pl08x_free_txd.exit ], [ null, %do.end ], [ null, %if.then52 ], [ null, %pl08x_free_txd.exit196 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl08x_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end2, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %adev = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.145) #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %has_slave.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %has_slave.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_slave.i, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end2.do.end7_crit_edge, label %if.end.i

if.end2.do.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.end.i:                                         ; preds = %if.end2
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %channels.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %for.cond.i.do.end7_crit_edge, label %for.body.i

for.cond.i.do.end7_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

for.body.i:                                       ; preds = %for.cond.i
  %signal.i = getelementptr i8, ptr %.pn.i, i32 224
  %11 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal.i, align 4
  %cmp4.i = icmp eq i32 %12, %7
  br i1 %cmp4.i, label %pl08x_find_chan_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

pl08x_find_chan_id.exit:                          ; preds = %for.body.i
  %chan.0.le.i = getelementptr i8, ptr %.pn.i, i32 -32
  %tobool3.not = icmp eq ptr %chan.0.le.i, null
  br i1 %tobool3.not, label %pl08x_find_chan_id.exit.do.end7_crit_edge, label %if.end10

pl08x_find_chan_id.exit.do.end7_crit_edge:        ; preds = %pl08x_find_chan_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end7:                                          ; preds = %pl08x_find_chan_id.exit.do.end7_crit_edge, %for.cond.i.do.end7_crit_edge, %if.end2.do.end7_crit_edge
  %adev8 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %adev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.148) #16
  br label %cleanup

if.end10:                                         ; preds = %pl08x_find_chan_id.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl08x_of_xlate.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl08x_of_xlate, %do.end25)) #12
          to label %if.then18 [label %do.end25], !srcloc !363

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %adev19 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %adev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev19, align 4
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %args, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl08x_of_xlate.__UNIQUE_ID_ddebug318, ptr noundef %16, ptr noundef nonnull @.str.150, i32 noundef %18) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then18, %if.end10
  %arrayidx27 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx27, align 4
  %conv = trunc i32 %20 to i8
  %cd = getelementptr i8, ptr %.pn.i, i32 156
  %21 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cd, align 4
  %periph_buses = getelementptr inbounds %struct.pl08x_channel_data, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %periph_buses to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %periph_buses, align 1
  %call28 = tail call ptr @dma_get_slave_channel(ptr noundef nonnull %chan.0.le.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call28, %do.end25 ], [ null, %do.end7 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl08x_desc_free(ptr noundef %vd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %unmap.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 9
  %2 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dma_descriptor_unmap.exit_crit_edge, label %if.end.i

entry.dma_descriptor_unmap.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_descriptor_unmap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %3) #12
  %4 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i, %entry.dma_descriptor_unmap.exit_crit_edge
  %done = getelementptr inbounds %struct.pl08x_txd, ptr %vd, i32 0, i32 6
  %5 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %done, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %dma_descriptor_unmap.exit.if.end_crit_edge

dma_descriptor_unmap.exit.if.end_crit_edge:       ; preds = %dma_descriptor_unmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %dma_descriptor_unmap.exit
  %host.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host.i, align 4
  %pd1.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %pd1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pd1.i, align 4
  %signal.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp sgt i32 %12, -1
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %mux_use.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2.i = icmp eq i32 %14, 0
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.if.end.i8_crit_edge, !prof !373

if.then.i.if.end.i8_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i8

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i8

if.end.i8:                                        ; preds = %do.end.i, %if.then.i.if.end.i8_crit_edge
  %15 = ptrtoint ptr %mux_use.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mux_use.i, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %mux_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp23.i = icmp eq i32 %dec.i, 0
  br i1 %cmp23.i, label %land.lhs.true.i, label %if.end.i8.if.end_crit_edge

if.end.i8.if.end_crit_edge:                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i8
  %put_xfer_signal.i = getelementptr inbounds %struct.pl08x_platform_data, ptr %10, i32 0, i32 7
  %17 = ptrtoint ptr %put_xfer_signal.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %put_xfer_signal.i, align 4
  %tobool24.not.i = icmp eq ptr %18, null
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then25.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cd.i = getelementptr inbounds %struct.pl08x_dma_chan, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cd.i, align 4
  %21 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %signal.i, align 4
  tail call void %18(ptr noundef %20, i32 noundef %22) #12
  %23 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %signal.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then25.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i8.if.end_crit_edge, %if.then.if.end_crit_edge, %dma_descriptor_unmap.exit.if.end_crit_edge
  %llis_va.i = getelementptr inbounds %struct.pl08x_txd, ptr %vd, i32 0, i32 3
  %24 = ptrtoint ptr %llis_va.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %llis_va.i, align 4
  %tobool.not.i9 = icmp eq ptr %25, null
  br i1 %tobool.not.i9, label %if.end.if.end.i11_crit_edge, label %if.then.i10

if.end.if.end.i11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i11

if.then.i10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %host = getelementptr inbounds %struct.pl08x_dma_chan, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %pool.i = getelementptr inbounds %struct.pl08x_driver_data, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pool.i, align 4
  %llis_bus.i = getelementptr inbounds %struct.pl08x_txd, ptr %vd, i32 0, i32 2
  %30 = ptrtoint ptr %llis_bus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %llis_bus.i, align 4
  tail call void @dma_pool_free(ptr noundef %29, ptr noundef nonnull %25, i32 noundef %31) #12
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then.i10, %if.end.if.end.i11_crit_edge
  %dsg_list.i = getelementptr inbounds %struct.pl08x_txd, ptr %vd, i32 0, i32 1
  %32 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not24.i = icmp eq ptr %33, %dsg_list.i
  br i1 %cmp.not24.i, label %if.end.i11.pl08x_free_txd.exit_crit_edge, label %if.end.i11.for.body.i_crit_edge

if.end.i11.for.body.i_crit_edge:                  ; preds = %if.end.i11
  br label %for.body.i

if.end.i11.pl08x_free_txd.exit_crit_edge:         ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i11.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %33, %if.end.i11.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -12
  %34 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %41 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.pl08x_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.pl08x_free_txd.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_free_txd.exit

pl08x_free_txd.exit:                              ; preds = %list_del.exit.i.pl08x_free_txd.exit_crit_edge, %if.end.i11.pl08x_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef %vd) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pl08x_debugfs_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl08x_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.165) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.166) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.167) #12
  %vd = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vd, align 4
  %channels99 = getelementptr inbounds %struct.vendor_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channels99 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channels99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp101.not = icmp eq i8 %5, 0
  br i1 %cmp101.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %phy_chans = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_chans, align 4
  %arrayidx = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.0102
  %lock = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.0102, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %serving = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.0102, i32 9
  %8 = ptrtoint ptr %serving to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serving, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.pl08x_dma_chan, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ @.str.169, %for.body.cond.end_crit_edge ]
  %locked = getelementptr %struct.pl08x_phy_chan, ptr %7, i32 %i.0102, i32 10
  %14 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %locked, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  %cond10 = select i1 %tobool8.not, ptr @.str.50, ptr @.str.170
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.168, i32 noundef %11, ptr noundef %cond, ptr noundef nonnull %cond10) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %inc = add nuw nsw i32 %i.0102, 1
  %16 = ptrtoint ptr %vd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vd, align 4
  %channels = getelementptr inbounds %struct.vendor_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %channels, align 1
  %conv = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.171) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.172) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173) #12
  %channels12 = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %channels12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn103 = load ptr, ptr %channels12, align 4
  %cmp18.not104 = icmp eq ptr %.pn103, %channels12
  br i1 %cmp18.not104, label %for.end.for.end31_crit_edge, label %for.end.for.body20_crit_edge

for.end.for.body20_crit_edge:                     ; preds = %for.end
  br label %for.body20

for.end.for.end31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

for.body20:                                       ; preds = %pl08x_state_str.exit.for.body20_crit_edge, %for.end.for.body20_crit_edge
  %.pn105 = phi ptr [ %.pn, %pl08x_state_str.exit.for.body20_crit_edge ], [ %.pn103, %for.end.for.body20_crit_edge ]
  %name21 = getelementptr i8, ptr %.pn105, i32 152
  %21 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name21, align 4
  %state = getelementptr i8, ptr %.pn105, i32 216
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %switch.lookup, label %for.body20.pl08x_state_str.exit_crit_edge

for.body20.pl08x_state_str.exit_crit_edge:        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_state_str.exit

switch.lookup:                                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.pl08x_debugfs_show, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %pl08x_state_str.exit

pl08x_state_str.exit:                             ; preds = %switch.lookup, %for.body20.pl08x_state_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.180, %for.body20.pl08x_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.174, ptr noundef %22, ptr noundef nonnull %retval.0.i) #12
  %27 = ptrtoint ptr %.pn105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn105, align 4
  %cmp18.not = icmp eq ptr %.pn, %channels12
  br i1 %cmp18.not, label %pl08x_state_str.exit.for.end31_crit_edge, label %pl08x_state_str.exit.for.body20_crit_edge

pl08x_state_str.exit.for.body20_crit_edge:        ; preds = %pl08x_state_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

pl08x_state_str.exit.for.end31_crit_edge:         ; preds = %pl08x_state_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

for.end31:                                        ; preds = %pl08x_state_str.exit.for.end31_crit_edge, %for.end.for.end31_crit_edge
  %has_slave = getelementptr inbounds %struct.pl08x_driver_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %has_slave to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_slave, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %for.end31.if.end_crit_edge, label %if.then

for.end31.if.end_crit_edge:                       ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.175) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.172) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173) #12
  %channels34 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %channels34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn92106 = load ptr, ptr %channels34, align 4
  %cmp44.not107 = icmp eq ptr %.pn92106, %channels34
  br i1 %cmp44.not107, label %if.then.if.end_crit_edge, label %if.then.for.body47_crit_edge

if.then.for.body47_crit_edge:                     ; preds = %if.then
  br label %for.body47

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body47:                                       ; preds = %pl08x_state_str.exit98.for.body47_crit_edge, %if.then.for.body47_crit_edge
  %.pn92108 = phi ptr [ %.pn92, %pl08x_state_str.exit98.for.body47_crit_edge ], [ %.pn92106, %if.then.for.body47_crit_edge ]
  %name48 = getelementptr i8, ptr %.pn92108, i32 152
  %31 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name48, align 4
  %state49 = getelementptr i8, ptr %.pn92108, i32 216
  %33 = ptrtoint ptr %state49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %switch.lookup109, label %for.body47.pl08x_state_str.exit98_crit_edge

for.body47.pl08x_state_str.exit98_crit_edge:      ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %pl08x_state_str.exit98

switch.lookup109:                                 ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep110 = getelementptr inbounds [4 x ptr], ptr @switch.table.pl08x_debugfs_show.183, i32 0, i32 %34
  %36 = ptrtoint ptr %switch.gep110 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load111 = load ptr, ptr %switch.gep110, align 4
  br label %pl08x_state_str.exit98

pl08x_state_str.exit98:                           ; preds = %switch.lookup109, %for.body47.pl08x_state_str.exit98_crit_edge
  %retval.0.i97 = phi ptr [ %switch.load111, %switch.lookup109 ], [ @.str.180, %for.body47.pl08x_state_str.exit98_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.174, ptr noundef %32, ptr noundef nonnull %retval.0.i97) #12
  %37 = ptrtoint ptr %.pn92108 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn92 = load ptr, ptr %.pn92108, align 4
  %cmp44.not = icmp eq ptr %.pn92, %channels34
  br i1 %cmp44.not, label %pl08x_state_str.exit98.if.end_crit_edge, label %pl08x_state_str.exit98.for.body47_crit_edge

pl08x_state_str.exit98.for.body47_crit_edge:      ; preds = %pl08x_state_str.exit98
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47

pl08x_state_str.exit98.if.end_crit_edge:          ; preds = %pl08x_state_str.exit98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %pl08x_state_str.exit98.if.end_crit_edge, %if.then.if.end_crit_edge, %for.end31.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !212, !214, !216, !217, !218, !219, !220, !222, !224, !226, !227, !228, !229, !231, !233, !235, !236, !237, !239, !241, !242, !243, !245, !246, !248, !250, !251, !252, !254, !255, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !271, !272, !273, !274, !276, !277, !278, !280, !281, !282, !283, !285, !287, !289, !290, !291, !293, !294, !295, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !345, !346}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !{ptr @__ksymtab_pl08x_filter_id, !1, !"__ksymtab_pl08x_filter_id", i1 false, i1 false}
!1 = !{!"../drivers/dma/amba-pl08x.c", i32 2264, i32 1}
!2 = !{ptr @__initcall__kmod_amba_pl08x__320_3084_pl08x_init4, !3, !"__initcall__kmod_amba_pl08x__320_3084_pl08x_init4", i1 false, i1 false}
!3 = !{!"../drivers/dma/amba-pl08x.c", i32 3084, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma/amba-pl08x.c", i32 3069, i32 14}
!6 = !{ptr @pl08x_amba_driver, !7, !"pl08x_amba_driver", i1 false, i1 false}
!7 = !{!"../drivers/dma/amba-pl08x.c", i32 3068, i32 27}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/amba-pl08x.c", i32 2740, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pl08x_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @pl08x_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/amba-pl08x.c", i32 2743, i32 3}
!18 = !{ptr @pl08x_probe._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pl08x_probe._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !17, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/amba-pl08x.c", i32 2752, i32 4}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pl08x_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pl08x_probe._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/amba-pl08x.c", i32 2817, i32 4}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pl08x_probe._entry.19, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @pl08x_probe._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/amba-pl08x.c", i32 2863, i32 3}
!38 = !{ptr @pl08x_probe._entry.23, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pl08x_probe._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @pl08x_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/dma/amba-pl08x.c", i32 2900, i32 3}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/amba-pl08x.c", i32 2912, i32 5}
!45 = !{ptr @pl08x_probe._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pl08x_probe._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/amba-pl08x.c", i32 2917, i32 3}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pl08x_probe.__UNIQUE_ID_ddebug319, !48, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!51 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/amba-pl08x.c", i32 2925, i32 3}
!55 = !{ptr @pl08x_probe._entry.34, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pl08x_probe._entry_ptr.36, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/amba-pl08x.c", i32 2936, i32 4}
!59 = !{ptr @pl08x_probe._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pl08x_probe._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/amba-pl08x.c", i32 2945, i32 3}
!63 = !{ptr @pl08x_probe._entry.40, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pl08x_probe._entry_ptr.42, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/amba-pl08x.c", i32 2954, i32 4}
!67 = !{ptr @pl08x_probe._entry.43, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @pl08x_probe._entry_ptr.45, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/amba-pl08x.c", i32 2963, i32 2}
!71 = !{ptr @pl08x_probe._entry.46, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pl08x_probe._entry_ptr.48, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.49, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.50, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.51, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/amba-pl08x.c", i32 1901, i32 3}
!77 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pl08x_prep_dma_memcpy._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @pl08x_prep_dma_memcpy._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.53, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/amba-pl08x.c", i32 1851, i32 3}
!82 = !{ptr @.str.54, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pl08x_ftdmac020_memcpy_cctl._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @pl08x_ftdmac020_memcpy_cctl._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/amba-pl08x.c", i32 1768, i32 3}
!87 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @pl08x_memcpy_cctl._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @pl08x_memcpy_cctl._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @pl08x_memcpy_cctl._entry.57, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/dma/amba-pl08x.c", i32 1807, i32 3}
!92 = !{ptr @pl08x_memcpy_cctl._entry_ptr.58, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.59, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/amba-pl08x.c", i32 1270, i32 3}
!95 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @pl08x_fill_llis_for_desc._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @pl08x_fill_llis_for_desc._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/amba-pl08x.c", i32 1296, i32 3}
!100 = !{ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug302, !99, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!101 = !{ptr @.str.62, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/amba-pl08x.c", i32 1305, i32 3}
!104 = !{ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug303, !103, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!105 = !{ptr @.str.64, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.65, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.67, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/amba-pl08x.c", i32 1341, i32 5}
!109 = !{ptr @pl08x_fill_llis_for_desc._entry.66, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @pl08x_fill_llis_for_desc._entry_ptr.68, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.70, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/amba-pl08x.c", i32 1348, i32 5}
!113 = !{ptr @pl08x_fill_llis_for_desc._entry.69, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @pl08x_fill_llis_for_desc._entry_ptr.71, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/amba-pl08x.c", i32 1378, i32 4}
!117 = !{ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug304, !116, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!118 = !{ptr @.str.73, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/amba-pl08x.c", i32 1391, i32 5}
!120 = !{ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug305, !119, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!121 = !{ptr @.str.74, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/amba-pl08x.c", i32 1404, i32 4}
!123 = !{ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug306, !122, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!124 = !{ptr @.str.75, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/amba-pl08x.c", i32 1431, i32 5}
!126 = !{ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug311, !125, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!127 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/amba-pl08x.c", i32 1448, i32 5}
!129 = !{ptr @pl08x_fill_llis_for_desc.__UNIQUE_ID_ddebug312, !128, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!130 = !{ptr @.str.78, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/dma/amba-pl08x.c", i32 1457, i32 4}
!132 = !{ptr @pl08x_fill_llis_for_desc._entry.77, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pl08x_fill_llis_for_desc._entry_ptr.79, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.81, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/amba-pl08x.c", i32 1464, i32 4}
!136 = !{ptr @pl08x_fill_llis_for_desc._entry.80, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @pl08x_fill_llis_for_desc._entry_ptr.82, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.83, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/amba-pl08x.c", i32 1221, i32 3}
!140 = !{ptr @.str.84, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug298, !139, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!142 = !{ptr @.str.85, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.86, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.87, !139, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.88, !139, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.89, !139, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.90, !139, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.91, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/amba-pl08x.c", i32 1225, i32 4}
!150 = !{ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug299, !149, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!151 = !{ptr @.str.92, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/amba-pl08x.c", i32 1234, i32 3}
!153 = !{ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug300, !152, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!154 = !{ptr @.str.93, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/dma/amba-pl08x.c", i32 1238, i32 4}
!156 = !{ptr @pl08x_dump_lli.__UNIQUE_ID_ddebug301, !155, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!157 = !{ptr @.str.94, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/dma/amba-pl08x.c", i32 866, i32 3}
!159 = !{ptr @.str.95, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug295, !158, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!161 = !{ptr @.str.96, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/dma/amba-pl08x.c", i32 872, i32 2}
!163 = !{ptr @pl08x_phy_alloc_and_start.__UNIQUE_ID_ddebug296, !162, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/dma/amba-pl08x.c", i32 395, i32 3}
!166 = !{ptr @.str.98, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @pl08x_write_lli.__UNIQUE_ID_ddebug293, !165, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!168 = !{ptr @.str.99, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/dma/amba-pl08x.c", i32 402, i32 3}
!170 = !{ptr @pl08x_write_lli.__UNIQUE_ID_ddebug294, !169, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!171 = !{ptr @.str.100, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/dma/amba-pl08x.c", i32 2149, i32 3}
!173 = !{ptr @.str.101, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pl08x_config._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @pl08x_config._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/amba-pl08x.c", i32 607, i32 3}
!178 = !{ptr @.str.103, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @pl08x_pause_phy_chan._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @pl08x_pause_phy_chan._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.104, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/dma/amba-pl08x.c", i32 885, i32 2}
!183 = !{ptr @.str.105, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @pl08x_phy_reassign_start.__UNIQUE_ID_ddebug297, !182, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!185 = !{ptr @.str.106, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/dma/amba-pl08x.c", i32 2061, i32 2}
!187 = !{ptr @.str.107, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @pl08x_prep_slave_sg.__UNIQUE_ID_ddebug315, !186, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!189 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/dma/amba-pl08x.c", i32 2075, i32 4}
!191 = !{ptr @pl08x_prep_slave_sg._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @pl08x_prep_slave_sg._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.109, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/dma/amba-pl08x.c", i32 1951, i32 3}
!195 = !{ptr @.str.110, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @pl08x_init_txd._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @pl08x_init_txd._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/dma/amba-pl08x.c", i32 1976, i32 3}
!200 = !{ptr @pl08x_init_txd._entry.111, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @pl08x_init_txd._entry_ptr.113, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.115, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/dma/amba-pl08x.c", i32 1984, i32 3}
!204 = !{ptr @pl08x_init_txd._entry.114, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @pl08x_init_txd._entry_ptr.116, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/dma/amba-pl08x.c", i32 2005, i32 3}
!208 = !{ptr @pl08x_init_txd.__UNIQUE_ID_ddebug313, !207, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!209 = !{ptr @.str.118, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/dma/amba-pl08x.c", i32 2011, i32 2}
!211 = !{ptr @pl08x_init_txd.__UNIQUE_ID_ddebug314, !210, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!212 = !{ptr @burst_sizes, !213, !"burst_sizes", i1 false, i1 false}
!213 = !{!"../drivers/dma/amba-pl08x.c", i32 1610, i32 33}
!214 = !{ptr @.str.119, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/dma/amba-pl08x.c", i32 2102, i32 2}
!216 = !{ptr @.str.120, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @pl08x_prep_dma_cyclic.__UNIQUE_ID_ddebug316, !215, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!218 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.122, !215, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/dma/amba-pl08x.c", i32 2587, i32 32}
!222 = !{ptr @.str.124, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/dma/amba-pl08x.c", i32 2589, i32 32}
!224 = !{ptr @.str.125, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/dma/amba-pl08x.c", i32 2592, i32 3}
!226 = !{ptr @.str.126, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @pl08x_of_probe._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @pl08x_of_probe._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/dma/amba-pl08x.c", i32 2597, i32 32}
!231 = !{ptr @.str.128, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/dma/amba-pl08x.c", i32 2599, i32 32}
!233 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/dma/amba-pl08x.c", i32 2602, i32 3}
!235 = !{ptr @pl08x_of_probe._entry.129, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @pl08x_of_probe._entry_ptr.131, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.132, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/dma/amba-pl08x.c", i32 2607, i32 33}
!239 = !{ptr @.str.134, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/dma/amba-pl08x.c", i32 2609, i32 3}
!241 = !{ptr @pl08x_of_probe._entry.133, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @pl08x_of_probe._entry_ptr.135, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @pl08x_of_probe._entry.136, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/dma/amba-pl08x.c", i32 2614, i32 3}
!245 = !{ptr @pl08x_of_probe._entry_ptr.137, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.138, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/amba-pl08x.c", i32 2642, i32 33}
!248 = !{ptr @.str.140, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/dma/amba-pl08x.c", i32 2644, i32 3}
!250 = !{ptr @pl08x_of_probe._entry.139, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @pl08x_of_probe._entry_ptr.141, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @pl08x_of_probe._entry.142, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/dma/amba-pl08x.c", i32 2649, i32 3}
!254 = !{ptr @pl08x_of_probe._entry_ptr.143, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.144, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/dma/amba-pl08x.c", i32 2681, i32 42}
!257 = !{ptr @.str.145, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/dma/amba-pl08x.c", i32 2550, i32 3}
!259 = !{ptr @.str.146, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @pl08x_of_xlate._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @pl08x_of_xlate._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.148, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/dma/amba-pl08x.c", i32 2557, i32 3}
!264 = !{ptr @pl08x_of_xlate._entry.147, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @pl08x_of_xlate._entry_ptr.149, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.150, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/dma/amba-pl08x.c", i32 2563, i32 2}
!268 = !{ptr @pl08x_of_xlate.__UNIQUE_ID_ddebug318, !267, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!269 = !{ptr @.str.151, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/dma/amba-pl08x.c", i32 2300, i32 3}
!271 = !{ptr @.str.152, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @pl08x_irq._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @pl08x_irq._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.154, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/dma/amba-pl08x.c", i32 2319, i32 5}
!276 = !{ptr @pl08x_irq._entry.153, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @pl08x_irq._entry_ptr.155, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.156, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!280 = !{ptr @.str.157, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.158, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug291, !279, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!283 = !{ptr @.str.159, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/dma/amba-pl08x.c", i32 2406, i32 23}
!285 = !{ptr @.str.160, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/dma/amba-pl08x.c", i32 2408, i32 39}
!287 = !{ptr @.str.161, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/dma/amba-pl08x.c", i32 2415, i32 3}
!289 = !{ptr @.str.162, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @pl08x_dma_init_virtual_channels.__UNIQUE_ID_ddebug317, !288, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!291 = !{ptr @.str.163, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/dma/amba-pl08x.c", i32 2422, i32 2}
!293 = !{ptr @pl08x_dma_init_virtual_channels._entry, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @pl08x_dma_init_virtual_channels._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.164, !292, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @pl08x_debugfs_fops, !297, !"pl08x_debugfs_fops", i1 false, i1 false}
!297 = !{!"../drivers/dma/amba-pl08x.c", i32 2506, i32 1}
!298 = !{ptr @.str.165, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/dma/amba-pl08x.c", i32 2465, i32 16}
!300 = !{ptr @.str.166, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/dma/amba-pl08x.c", i32 2466, i32 16}
!302 = !{ptr @.str.167, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/dma/amba-pl08x.c", i32 2467, i32 16}
!304 = !{ptr @.str.168, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/dma/amba-pl08x.c", i32 2476, i32 17}
!306 = !{ptr @.str.169, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/dma/amba-pl08x.c", i32 2478, i32 37}
!308 = !{ptr @.str.170, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/dma/amba-pl08x.c", i32 2479, i32 20}
!310 = !{ptr @.str.171, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/dma/amba-pl08x.c", i32 2484, i32 16}
!312 = !{ptr @.str.172, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/dma/amba-pl08x.c", i32 2485, i32 16}
!314 = !{ptr @.str.173, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/dma/amba-pl08x.c", i32 2486, i32 16}
!316 = !{ptr @.str.174, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/dma/amba-pl08x.c", i32 2488, i32 17}
!318 = !{ptr @.str.175, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/dma/amba-pl08x.c", i32 2493, i32 17}
!320 = !{ptr @.str.176, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/dma/amba-pl08x.c", i32 2444, i32 10}
!322 = !{ptr @.str.177, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/dma/amba-pl08x.c", i32 2446, i32 10}
!324 = !{ptr @.str.178, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/dma/amba-pl08x.c", i32 2448, i32 10}
!326 = !{ptr @.str.179, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/dma/amba-pl08x.c", i32 2450, i32 10}
!328 = !{ptr @.str.180, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/dma/amba-pl08x.c", i32 2454, i32 9}
!330 = !{ptr @pl08x_ids, !331, !"pl08x_ids", i1 false, i1 false}
!331 = !{!"../drivers/dma/amba-pl08x.c", i32 3032, i32 29}
!332 = !{ptr @vendor_pl080s, !333, !"vendor_pl080s", i1 false, i1 false}
!333 = !{!"../drivers/dma/amba-pl08x.c", i32 3010, i32 27}
!334 = !{ptr @vendor_pl080, !335, !"vendor_pl080", i1 false, i1 false}
!335 = !{!"../drivers/dma/amba-pl08x.c", i32 2993, i32 27}
!336 = !{ptr @vendor_pl081, !337, !"vendor_pl081", i1 false, i1 false}
!337 = !{!"../drivers/dma/amba-pl08x.c", i32 3018, i32 27}
!338 = !{ptr @vendor_nomadik, !339, !"vendor_nomadik", i1 false, i1 false}
!339 = !{!"../drivers/dma/amba-pl08x.c", i32 3001, i32 27}
!340 = !{ptr @vendor_ftdmac020, !341, !"vendor_ftdmac020", i1 false, i1 false}
!341 = !{!"../drivers/dma/amba-pl08x.c", i32 3026, i32 27}
!342 = !{ptr @.str.181, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/dma/amba-pl08x.c", i32 3079, i32 3}
!344 = !{ptr @.str.182, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @pl08x_init._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @pl08x_init._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{i32 1, !"wchar_size", i32 2}
!348 = !{i32 1, !"min_enum_size", i32 4}
!349 = !{i32 8, !"branch-target-enforcement", i32 0}
!350 = !{i32 8, !"sign-return-address", i32 0}
!351 = !{i32 8, !"sign-return-address-all", i32 0}
!352 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!353 = !{i32 7, !"uwtable", i32 1}
!354 = !{i32 7, !"frame-pointer", i32 2}
!355 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!356 = !{i8 0, i8 2}
!357 = !{i64 5921017}
!358 = !{i64 2155520032}
!359 = !{i64 2155522247}
!360 = !{i64 5920599}
!361 = !{i64 2155532076}
!362 = !{i64 2155534968}
!363 = !{i64 2148808743, i64 2148808748, i64 2148808761, i64 2148808805, i64 2148808839, i64 2148808860}
!364 = !{i64 2155293985}
!365 = !{i64 2155294539}
!366 = !{i64 2155268775}
!367 = !{i64 2155336449}
!368 = !{i64 2155326417}
!369 = !{i64 2155326895}
!370 = !{i64 2155328085}
!371 = !{i64 2155329246}
!372 = !{i64 2155330421}
!373 = !{!"branch_weights", i32 1, i32 2000}
!374 = !{i64 2155337001, i64 2155337490, i64 2155337038, i64 2155337094, i64 2155337128, i64 2155337152, i64 2155337193, i64 2155337214, i64 2155337242, i64 2155337276}
!375 = !{i64 2155314526}
!376 = !{i64 2155314820}
!377 = !{i64 2155315467}
!378 = !{i64 2155315762}
!379 = !{i64 2155318640}
!380 = !{i64 2155318934}
!381 = !{i64 2155319581}
!382 = !{i64 2155319876}
!383 = !{!"auto-init"}
!384 = !{i64 2155473438}
!385 = !{i64 2155475468}
!386 = !{i64 2155476151}
!387 = !{i64 2155476374}
!388 = !{i64 2155267275, i64 2155267762, i64 2155267312, i64 2155267368, i64 2155267402, i64 2155267426, i64 2155267467, i64 2155267488, i64 2155267516, i64 2155267550}
!389 = !{i64 2155357430, i64 2155357919, i64 2155357467, i64 2155357523, i64 2155357557, i64 2155357581, i64 2155357622, i64 2155357643, i64 2155357671, i64 2155357705}
!390 = !{i64 2155371067, i64 2155371557, i64 2155371104, i64 2155371160, i64 2155371194, i64 2155371218, i64 2155371259, i64 2155371280, i64 2155371308, i64 2155371342}
!391 = !{i64 2155372596, i64 2155373086, i64 2155372633, i64 2155372689, i64 2155372723, i64 2155372747, i64 2155372788, i64 2155372809, i64 2155372837, i64 2155372871}
!392 = !{i64 2155375059, i64 2155375549, i64 2155375096, i64 2155375152, i64 2155375186, i64 2155375210, i64 2155375251, i64 2155375272, i64 2155375300, i64 2155375334}
!393 = !{i64 2155376851, i64 2155377341, i64 2155376888, i64 2155376944, i64 2155376978, i64 2155377002, i64 2155377043, i64 2155377064, i64 2155377092, i64 2155377126}
!394 = !{i64 2155361194, i64 2155361684, i64 2155361231, i64 2155361287, i64 2155361321, i64 2155361345, i64 2155361386, i64 2155361407, i64 2155361435, i64 2155361469}
!395 = !{i64 2155366784, i64 2155367274, i64 2155366821, i64 2155366877, i64 2155366911, i64 2155366935, i64 2155366976, i64 2155366997, i64 2155367025, i64 2155367059}
!396 = !{i64 2155308689}
!397 = !{i64 2155308531}
!398 = !{i64 2155309194}
!399 = !{i64 2155309554}
!400 = !{i64 2155309396}
!401 = !{i64 2155310048}
!402 = !{i64 2155310624}
!403 = !{i64 2155311122}
!404 = !{i64 2155311702}
!405 = !{i64 2155312031}
!406 = !{i64 2155312793}
!407 = !{i64 2155313453}
!408 = !{i64 2155313781}
!409 = !{i64 2155308234}
!410 = !{i64 2155320979}
!411 = !{i64 2155321629}
!412 = !{i64 2155322007}
!413 = !{i64 2155322638}
!414 = !{i64 2155323356}
!415 = !{i64 2155324556}
!416 = !{i64 2155325061}
!417 = !{i64 2155325659}
