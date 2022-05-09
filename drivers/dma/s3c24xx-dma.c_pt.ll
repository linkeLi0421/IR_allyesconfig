; ModuleID = '/llk/IR_all_yes/drivers/dma/s3c24xx-dma.c_pt.bc'
source_filename = "../drivers/dma/s3c24xx-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s3c24xx_dma_filter\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c24xx_dma_filter\09\09\09\09"
module asm "\09.long\09__crc_s3c24xx_dma_filter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c24xx_dma_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c24xx_dma_filter\22\09\09\09\09\09"
module asm "__kstrtabns_s3c24xx_dma_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.soc_data = type { i32, i8, i8 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s3c24xx_dma_engine = type { ptr, ptr, ptr, ptr, %struct.dma_device, %struct.dma_device, ptr }
%struct.s3c24xx_dma_phy = type { i32, i8, ptr, i32, ptr, %struct.spinlock, ptr, ptr }
%struct.s3c24xx_dma_platdata = type { i32, ptr, i32, ptr, i32 }
%struct.s3c24xx_dma_chan = type { i32, ptr, %struct.virt_dma_chan, ptr, %struct.dma_slave_config, ptr, ptr, i32, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.s3c24xx_txd = type { %struct.virt_dma_desc, %struct.list_head, ptr, i8, i32, i32, i32, i8 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.s3c24xx_sg = type { i32, i32, i32, %struct.list_head }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.s3c24xx_dma_channel = type { i32, i8, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_s3c24xx_dma__247_1411_s3c24xx_dma_driver_init6 = internal global ptr @s3c24xx_dma_driver_init, section ".initcall6.init", align 4
@s3c24xx_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c24xx_dma_probe, ptr @s3c24xx_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s3c24xx_dma_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c24xx_dma_driver_exit = internal global ptr @s3c24xx_dma_driver_exit, section ".exitcall.exit", align 4
@__kstrtab_s3c24xx_dma_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c24xx_dma_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c24xx_dma_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c24xx_dma_filter to i32), ptr @__kstrtab_s3c24xx_dma_filter, ptr @__kstrtabns_s3c24xx_dma_filter }, section "___ksymtab+s3c24xx_dma_filter", align 4
@__UNIQUE_ID_description248 = internal constant [43 x i8] c"s3c24xx_dma.description=S3C24XX DMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [34 x i8] c"s3c24xx_dma.author=Heiko Stuebner\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [41 x i8] c"s3c24xx_dma.file=drivers/dma/s3c24xx-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [27 x i8] c"s3c24xx_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c24xx-dma\00", [20 x i8] zeroinitializer }, align 32
@s3c24xx_dma_driver_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-dma\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @soc_s3c2410 to i32) }, %struct.platform_device_id { [20 x i8] c"s3c2412-dma\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @soc_s3c2412 to i32) }, %struct.platform_device_id { [20 x i8] c"s3c2443-dma\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @soc_s3c2443 to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"platform data missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c24xx_dma_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/dma/s3c24xx-dma.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr = internal global ptr @s3c24xx_dma_probe._entry, section ".printk_index", align 4
@s3c24xx_dma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"too many dma channels %d, max %d\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.8 = internal global ptr @s3c24xx_dma_probe._entry.6, section ".printk_index", align 4
@s3c24xx_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to request irq for channel %d, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.11 = internal global ptr @s3c24xx_dma_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma.%d\00", [25 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to acquire clock for channel %d, error %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.15 = internal global ptr @s3c24xx_dma_probe._entry.13, section ".printk_index", align 4
@s3c24xx_dma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clock for phy %d failed, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.18 = internal global ptr @s3c24xx_dma_probe._entry.16, section ".printk_index", align 4
@s3c24xx_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&phy->lock\00", [21 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 1, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c24xx_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"physical channel %d is %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUSY\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FREE\00", [27 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1312, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s failed to enumerate memcpy channels - %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.27 = internal global ptr @s3c24xx_dma_probe._entry.24, section ".printk_index", align 4
@s3c24xx_dma_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1322, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s failed to enumerate slave channels - %d\0A\00", [52 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.30 = internal global ptr @s3c24xx_dma_probe._entry.28, section ".printk_index", align 4
@s3c24xx_dma_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1330, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s failed to register memcpy as an async device - %d\0A\00", [42 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.33 = internal global ptr @s3c24xx_dma_probe._entry.31, section ".printk_index", align 4
@s3c24xx_dma_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1338, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s failed to register slave as an async device - %d\0A\00", [43 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.36 = internal global ptr @s3c24xx_dma_probe._entry.34, section ".printk_index", align 4
@s3c24xx_dma_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1344, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Loaded dma driver with %d physical channels\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c24xx_dma_probe._entry_ptr.40 = internal global ptr @s3c24xx_dma_probe._entry.37, section ".printk_index", align 4
@s3c24xx_dma_irq.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c24xx_dma_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"interrupt on channel %d\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c24xx_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"interrupt on unused channel %d\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c24xx_dma_irq._entry_ptr = internal global ptr @s3c24xx_dma_irq._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.44, ptr @.str.45, ptr @.str.46, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c24xx_dma_phy_reassign_start.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s3c24xx_dma_phy_reassign_start\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"reassigned physical channel %d for xfer on %s\0A\00", [49 x i8] zeroinitializer }, align 32
@s3c24xx_dma_prep_memcpy.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s3c24xx_dma_prep_memcpy\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"prepare memcpy of %zu bytes from %s\0A\00", [59 x i8] zeroinitializer }, align 32
@s3c24xx_dma_prep_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"memcpy size %zu to large\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c24xx_dma_prep_memcpy._entry_ptr = internal global ptr @s3c24xx_dma_prep_memcpy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s3c24xx_dma_phy_alloc_and_start\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no physical channel available for xfer on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.52, ptr @.str.3, ptr @.str.54, i8 0, i8 -121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"allocated physical channel %d for xfer on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@s3c24xx_dma_get_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 316, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no phy channel available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3c24xx_dma_get_phy\00", [44 x i8] zeroinitializer }, align 32
@s3c24xx_dma_get_phy._entry_ptr = internal global ptr @s3c24xx_dma_get_phy._entry, section ".printk_index", align 4
@s3c24xx_dma_get_phy._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not enable clock for channel %d, err %d\0A\00", [49 x i8] zeroinitializer }, align 32
@s3c24xx_dma_get_phy._entry_ptr.59 = internal global ptr @s3c24xx_dma_get_phy._entry.57, section ".printk_index", align 4
@s3c24xx_dma_terminate_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"trying to terminate already stopped channel %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c24xx_dma_terminate_all\00", [38 x i8] zeroinitializer }, align 32
@s3c24xx_dma_terminate_all._entry_ptr = internal global ptr @s3c24xx_dma_terminate_all._entry, section ".printk_index", align 4
@s3c24xx_dma_prep_slave_sg.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 -9, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c24xx_dma_prep_slave_sg\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"prepare transaction of %d bytes from %s\0A\00", [55 x i8] zeroinitializer }, align 32
@s3c24xx_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 1038, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"direction %d unsupported\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c24xx_dma_prep_slave_sg._entry_ptr = internal global ptr @s3c24xx_dma_prep_slave_sg._entry, section ".printk_index", align 4
@s3c24xx_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c24xx_dma_prep_dma_cyclic\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"prepare cyclic transaction of %zu bytes with period %zu from %s\0A\00", [63 x i8] zeroinitializer }, align 32
@s3c24xx_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 898, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@s3c24xx_dma_prep_dma_cyclic._entry_ptr = internal global ptr @s3c24xx_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slave%d\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memcpy%d\00", [23 x i8] zeroinitializer }, align 32
@s3c24xx_dma_init_virtual_channels.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 1, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"s3c24xx_dma_init_virtual_channels\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"initialize virtual channel \22%s\22\0A\00", [63 x i8] zeroinitializer }, align 32
@s3c24xx_dma_init_virtual_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 1128, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"initialized %d virtual %s channels\0A\00", [60 x i8] zeroinitializer }, align 32
@s3c24xx_dma_init_virtual_channels._entry_ptr = internal global ptr @s3c24xx_dma_init_virtual_channels._entry, section ".printk_index", align 4
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memcpy\00", [25 x i8] zeroinitializer }, align 32
@soc_s3c2410 = internal global { %struct.soc_data, [24 x i8] } { %struct.soc_data { i32 64, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@soc_s3c2412 = internal global { %struct.soc_data, [24 x i8] } { %struct.soc_data { i32 64, i8 1, i8 1 }, [24 x i8] zeroinitializer }, align 32
@soc_s3c2443 = internal global { %struct.soc_data, [24 x i8] } { %struct.soc_data { i32 256, i8 1, i8 1 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"s3c24xx_dma_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1402, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1404, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"s3c24xx_dma_driver_ids\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1165, i32 40 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1195, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1201, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1246, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1252, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1255, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1262, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1268, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1271, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1310, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1320, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1328, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1336, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1343, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 643, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 653, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 101, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 554, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 825, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 829, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 534, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 540, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 316, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 324, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 710, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 990, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1037, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 892, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 897, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1112, i32 39 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1116, i32 39 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1120, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1127, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"soc_s3c2410\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1145, i32 24 }
@___asan_gen_.306 = private unnamed_addr constant [12 x i8] c"soc_s3c2412\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1152, i32 24 }
@___asan_gen_.309 = private unnamed_addr constant [12 x i8] c"soc_s3c2443\00", align 1
@___asan_gen_.310 = private constant [29 x i8] c"../drivers/dma/s3c24xx-dma.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1159, i32 24 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_s3c24xx_dma_driver_exit, ptr @__initcall__kmod_s3c24xx_dma__247_1411_s3c24xx_dma_driver_init6, ptr @__ksymtab_s3c24xx_dma_filter, ptr @s3c24xx_dma_driver_exit, ptr @s3c24xx_dma_get_phy._entry, ptr @s3c24xx_dma_get_phy._entry.57, ptr @s3c24xx_dma_get_phy._entry_ptr, ptr @s3c24xx_dma_get_phy._entry_ptr.59, ptr @s3c24xx_dma_init_virtual_channels._entry, ptr @s3c24xx_dma_init_virtual_channels._entry_ptr, ptr @s3c24xx_dma_irq._entry, ptr @s3c24xx_dma_irq._entry_ptr, ptr @s3c24xx_dma_prep_dma_cyclic._entry, ptr @s3c24xx_dma_prep_dma_cyclic._entry_ptr, ptr @s3c24xx_dma_prep_memcpy._entry, ptr @s3c24xx_dma_prep_memcpy._entry_ptr, ptr @s3c24xx_dma_prep_slave_sg._entry, ptr @s3c24xx_dma_prep_slave_sg._entry_ptr, ptr @s3c24xx_dma_probe._entry, ptr @s3c24xx_dma_probe._entry.13, ptr @s3c24xx_dma_probe._entry.16, ptr @s3c24xx_dma_probe._entry.24, ptr @s3c24xx_dma_probe._entry.28, ptr @s3c24xx_dma_probe._entry.31, ptr @s3c24xx_dma_probe._entry.34, ptr @s3c24xx_dma_probe._entry.37, ptr @s3c24xx_dma_probe._entry.6, ptr @s3c24xx_dma_probe._entry.9, ptr @s3c24xx_dma_probe._entry_ptr, ptr @s3c24xx_dma_probe._entry_ptr.11, ptr @s3c24xx_dma_probe._entry_ptr.15, ptr @s3c24xx_dma_probe._entry_ptr.18, ptr @s3c24xx_dma_probe._entry_ptr.27, ptr @s3c24xx_dma_probe._entry_ptr.30, ptr @s3c24xx_dma_probe._entry_ptr.33, ptr @s3c24xx_dma_probe._entry_ptr.36, ptr @s3c24xx_dma_probe._entry_ptr.40, ptr @s3c24xx_dma_probe._entry_ptr.8, ptr @s3c24xx_dma_terminate_all._entry, ptr @s3c24xx_dma_terminate_all._entry_ptr, ptr @s3c24xx_dma_driver, ptr @.str, ptr @s3c24xx_dma_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @s3c24xx_dma_probe.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @soc_s3c2410, ptr @soc_s3c2412, ptr @soc_s3c2443], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_driver_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_prep_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_get_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_get_phy._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_terminate_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_dma_init_virtual_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_s3c2410 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_s3c2412 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_s3c2443 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c24xx_dma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c24xx_dma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @s3c24xx_dma_filter(ptr nocapture noundef readonly %chan, ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %cmp.not = icmp eq ptr %5, getelementptr inbounds (%struct.platform_driver, ptr @s3c24xx_dma_driver, i32 0, i32 5)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %param to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp1 = icmp eq i32 %7, %8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp1, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_dma_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %clk_name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup206

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef 8) #12
  br label %cleanup206

if.end8:                                          ; preds = %if.end
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data.i, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end8.cleanup206_crit_edge, label %if.end12

if.end8.cleanup206_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

if.end12:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 748, i32 noundef 3520) #9
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup206_crit_edge, label %if.end17

if.end12.cleanup206_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

if.end17:                                         ; preds = %if.end12
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %call.i, align 4
  %pdata19 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %pdata19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %pdata19, align 4
  %sdata20 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %sdata20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %sdata20, align 4
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call21) #9
  %base = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call23 to i32
  br label %cleanup206

if.end29:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 72) #9
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !165

devm_kcalloc.exit.thread:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %phy_chans341 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %phy_chans341 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %phy_chans341, align 4
  br label %cleanup206

devm_kcalloc.exit:                                ; preds = %if.end29
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %19, i32 noundef 3520) #9
  %phy_chans = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %phy_chans to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %phy_chans, align 4
  %tobool34.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool34.not, label %devm_kcalloc.exit.cleanup206_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup206_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp38344 = icmp sgt i32 %22, 0
  br i1 %cmp38344, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %has_clocks = getelementptr inbounds %struct.soc_data, ptr %8, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0345 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %23 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_chans, align 4
  %arrayidx = getelementptr %struct.s3c24xx_dma_phy, ptr %24, i32 %i.0345
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %clk_name) #9
  %25 = call ptr @memset(ptr %clk_name, i32 255, i32 6)
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.0345, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %8, align 4
  %mul = mul i32 %30, %i.0345
  %add.ptr = getelementptr i8, ptr %28, i32 %mul
  %base41 = getelementptr %struct.s3c24xx_dma_phy, ptr %24, i32 %i.0345, i32 2
  %31 = ptrtoint ptr %base41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr, ptr %base41, align 4
  %host = getelementptr %struct.s3c24xx_dma_phy, ptr %24, i32 %i.0345, i32 7
  %32 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %host, align 4
  %call42 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0345) #9
  %irq = getelementptr %struct.s3c24xx_dma_phy, ptr %24, i32 %i.0345, i32 3
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call42, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp44 = icmp slt i32 %call42, 0
  br i1 %cmp44, label %for.body.cleanup_crit_edge, label %if.end46

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %for.body
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %call.i338 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call42, ptr noundef nonnull @s3c24xx_dma_irq, ptr noundef null, i32 noundef 0, ptr noundef %35, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool50.not = icmp eq i32 %call.i338, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %i.0345, i32 noundef %call.i338) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %36 = ptrtoint ptr %has_clocks to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_clocks, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool57.not = icmp eq i8 %37, 0
  br i1 %tobool57.not, label %if.end56.do.body85_crit_edge, label %if.then58

if.end56.do.body85_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.then58:                                        ; preds = %if.end56
  %call59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clk_name, ptr noundef nonnull @.str.12, i32 noundef %i.0345)
  %call62 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %clk_name) #9
  %clk = getelementptr %struct.s3c24xx_dma_phy, ptr %24, i32 %i.0345, i32 4
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call62, ptr %clk, align 4
  %cmp.i339 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i339, label %land.lhs.true, label %if.then58.if.end74_crit_edge

if.then58.if.end74_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.lhs.true:                                    ; preds = %if.then58
  %39 = ptrtoint ptr %has_clocks to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %has_clocks, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool66.not = icmp eq i8 %40, 0
  br i1 %tobool66.not, label %land.lhs.true.if.end74_crit_edge, label %do.end70

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end70:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call62 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %i.0345, i32 noundef %41) #12
  br label %cleanup

if.end74:                                         ; preds = %land.lhs.true.if.end74_crit_edge, %if.then58.if.end74_crit_edge
  %call76 = call i32 @clk_prepare(ptr noundef %call62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end74.do.body85_crit_edge, label %do.end81

if.end74.do.body85_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %i.0345, i32 noundef %call76) #12
  br label %cleanup

do.body85:                                        ; preds = %if.end74.do.body85_crit_edge, %if.end56.do.body85_crit_edge
  %lock = getelementptr %struct.s3c24xx_dma_phy, ptr %24, i32 %i.0345, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @s3c24xx_dma_probe.__key, i16 noundef signext 3) #9
  %valid = getelementptr %struct.s3c24xx_dma_phy, ptr %24, i32 %i.0345, i32 1
  %42 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %valid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_probe, %cleanup)) #9
          to label %if.then95 [label %cleanup], !srcloc !167

if.then95:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base41, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 20
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %46 = and i32 %45, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool98.not = icmp eq i32 %46, 0
  %cond = select i1 %tobool98.not, ptr @.str.23, ptr @.str.22
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %i.0345, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %do.body85, %do.end81, %do.end70, %do.end54, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %clk_name) #9
  %inc = add nuw nsw i32 %i.0345, 1
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  %cmp38 = icmp slt i32 %inc, %48
  br i1 %cmp38, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %memcpy = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5
  %cap_mask = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #9
  %dev107 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 15
  %49 = ptrtoint ptr %dev107 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %dev107, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 29
  %50 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @s3c24xx_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 30
  %51 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @s3c24xx_dma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_tx_status = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 49
  %52 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @s3c24xx_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 50
  %53 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @s3c24xx_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_config = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 44
  %54 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @s3c24xx_dma_set_runtime_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 47
  %55 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @s3c24xx_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 5, i32 48
  %56 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @s3c24xx_dma_synchronize, ptr %device_synchronize, align 4
  %slave = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4
  %cap_mask115 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask115) #9
  call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask115) #9
  call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask115) #9
  %dev122 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 15
  %57 = ptrtoint ptr %dev122 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %dev122, align 4
  %device_free_chan_resources124 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 29
  %58 = ptrtoint ptr %device_free_chan_resources124 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @s3c24xx_dma_free_chan_resources, ptr %device_free_chan_resources124, align 4
  %device_tx_status126 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 49
  %59 = ptrtoint ptr %device_tx_status126 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @s3c24xx_dma_tx_status, ptr %device_tx_status126, align 4
  %device_issue_pending128 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 50
  %60 = ptrtoint ptr %device_issue_pending128 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @s3c24xx_dma_issue_pending, ptr %device_issue_pending128, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 39
  %61 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @s3c24xx_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 40
  %62 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @s3c24xx_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config132 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 44
  %63 = ptrtoint ptr %device_config132 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @s3c24xx_dma_set_runtime_config, ptr %device_config132, align 4
  %device_terminate_all134 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 47
  %64 = ptrtoint ptr %device_terminate_all134 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @s3c24xx_dma_terminate_all, ptr %device_terminate_all134, align 4
  %device_synchronize136 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 48
  %65 = ptrtoint ptr %device_synchronize136 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @s3c24xx_dma_synchronize, ptr %device_synchronize136, align 4
  %slave_map = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %slave_map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %slave_map, align 4
  %filter = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 5
  %map = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 5, i32 2
  %68 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %map, align 4
  %slavecnt = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %slavecnt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %slavecnt, align 4
  %mapcnt = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %call.i, i32 0, i32 4, i32 5, i32 1
  %71 = ptrtoint ptr %mapcnt to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %mapcnt, align 4
  %72 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @s3c24xx_dma_filter, ptr %filter, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %1, align 4
  %call144 = call fastcc i32 @s3c24xx_dma_init_virtual_channels(ptr noundef nonnull %call.i, ptr noundef %memcpy, i32 noundef %74, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 1
  br i1 %cmp145, label %do.end149, label %if.end151

do.end149:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef %call144) #12
  br label %err_memcpy

if.end151:                                        ; preds = %for.end
  %num_channels = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %1, i32 0, i32 2
  %75 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_channels, align 4
  %call153 = call fastcc i32 @s3c24xx_dma_init_virtual_channels(ptr noundef nonnull %call.i, ptr noundef %slave, i32 noundef %76, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 1
  br i1 %cmp154, label %do.end158, label %if.end160

do.end158:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef %call153) #12
  br label %err_slave

if.end160:                                        ; preds = %if.end151
  %call162 = call i32 @dma_async_device_register(ptr noundef %memcpy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end169, label %do.end167

do.end167:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, i32 noundef %call162) #12
  br label %err_memcpy_reg

if.end169:                                        ; preds = %if.end160
  %call171 = call i32 @dma_async_device_register(ptr noundef %slave) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end178, label %do.end176

do.end176:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef %call171) #12
  call void @dma_async_device_unregister(ptr noundef %memcpy) #9
  br label %err_memcpy_reg

if.end178:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %79) #12
  br label %cleanup206

err_memcpy_reg:                                   ; preds = %do.end176, %do.end167
  %ret.0 = phi i32 [ %call162, %do.end167 ], [ %call171, %do.end176 ]
  call fastcc void @s3c24xx_dma_free_virtual_channels(ptr noundef %slave)
  br label %err_slave

err_slave:                                        ; preds = %err_memcpy_reg, %do.end158
  %ret.1 = phi i32 [ %call153, %do.end158 ], [ %ret.0, %err_memcpy_reg ]
  call fastcc void @s3c24xx_dma_free_virtual_channels(ptr noundef %memcpy)
  br label %err_memcpy

err_memcpy:                                       ; preds = %err_slave, %do.end149
  %ret.2 = phi i32 [ %call144, %do.end149 ], [ %ret.1, %err_slave ]
  %has_clocks187 = getelementptr inbounds %struct.soc_data, ptr %8, i32 0, i32 2
  %80 = ptrtoint ptr %has_clocks187 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %has_clocks187, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool188.not = icmp eq i8 %81, 0
  br i1 %tobool188.not, label %err_memcpy.cleanup206_crit_edge, label %for.cond190.preheader

err_memcpy.cleanup206_crit_edge:                  ; preds = %err_memcpy
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

for.cond190.preheader:                            ; preds = %err_memcpy
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp192347 = icmp sgt i32 %83, 0
  br i1 %cmp192347, label %for.cond190.preheader.for.body193_crit_edge, label %for.cond190.preheader.cleanup206_crit_edge

for.cond190.preheader.cleanup206_crit_edge:       ; preds = %for.cond190.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

for.cond190.preheader.for.body193_crit_edge:      ; preds = %for.cond190.preheader
  br label %for.body193

for.body193:                                      ; preds = %if.end201.for.body193_crit_edge, %for.cond190.preheader.for.body193_crit_edge
  %i.1348 = phi i32 [ %inc203, %if.end201.for.body193_crit_edge ], [ 0, %for.cond190.preheader.for.body193_crit_edge ]
  %84 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phy_chans, align 4
  %valid197 = getelementptr %struct.s3c24xx_dma_phy, ptr %85, i32 %i.1348, i32 1
  %86 = ptrtoint ptr %valid197 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %valid197, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool198.not = icmp eq i8 %87, 0
  br i1 %tobool198.not, label %for.body193.if.end201_crit_edge, label %if.then199

for.body193.if.end201_crit_edge:                  ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end201

if.then199:                                       ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #11
  %clk200 = getelementptr %struct.s3c24xx_dma_phy, ptr %85, i32 %i.1348, i32 4
  %88 = ptrtoint ptr %clk200 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk200, align 4
  call void @clk_unprepare(ptr noundef %89) #9
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %for.body193.if.end201_crit_edge
  %inc203 = add nuw nsw i32 %i.1348, 1
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %1, align 4
  %cmp192 = icmp slt i32 %inc203, %91
  br i1 %cmp192, label %if.end201.for.body193_crit_edge, label %if.end201.cleanup206_crit_edge

if.end201.cleanup206_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

if.end201.for.body193_crit_edge:                  ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body193

cleanup206:                                       ; preds = %if.end201.cleanup206_crit_edge, %for.cond190.preheader.cleanup206_crit_edge, %err_memcpy.cleanup206_crit_edge, %if.end178, %devm_kcalloc.exit.cleanup206_crit_edge, %devm_kcalloc.exit.thread, %if.then26, %if.end12.cleanup206_crit_edge, %if.end8.cleanup206_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ %13, %if.then26 ], [ 0, %if.end178 ], [ -19, %do.end ], [ -22, %if.end8.cleanup206_crit_edge ], [ -12, %if.end12.cleanup206_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup206_crit_edge ], [ %ret.2, %err_memcpy.cleanup206_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %ret.2, %for.cond190.preheader.cleanup206_crit_edge ], [ %ret.2, %if.end201.cleanup206_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_dma_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data.i, align 4
  %8 = inttoptr i32 %7 to ptr
  %slave = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %3, i32 0, i32 4
  tail call void @dma_async_device_unregister(ptr noundef %slave) #9
  %memcpy = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %3, i32 0, i32 5
  tail call void @dma_async_device_unregister(ptr noundef %memcpy) #9
  %pdata.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i = icmp sgt i32 %12, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %entry.s3c24xx_dma_free_irq.exit_crit_edge

entry.s3c24xx_dma_free_irq.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_irq.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %phy_chans.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %3, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %phy_chans.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_chans.i, align 4
  %arrayidx.i = getelementptr %struct.s3c24xx_dma_phy, ptr %14, i32 %i.06.i
  %irq.i = getelementptr %struct.s3c24xx_dma_phy, ptr %14, i32 %i.06.i, i32 3
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %16, ptr noundef %arrayidx.i) #9
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %cmp.i = icmp slt i32 %inc.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.s3c24xx_dma_free_irq.exit_crit_edge

for.body.i.s3c24xx_dma_free_irq.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

s3c24xx_dma_free_irq.exit:                        ; preds = %for.body.i.s3c24xx_dma_free_irq.exit_crit_edge, %entry.s3c24xx_dma_free_irq.exit_crit_edge
  %channels.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %3, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channels.i, align 4
  %cmp.not27.i = icmp eq ptr %22, %channels.i
  br i1 %cmp.not27.i, label %s3c24xx_dma_free_irq.exit.s3c24xx_dma_free_virtual_channels.exit_crit_edge, label %s3c24xx_dma_free_irq.exit.for.body.i19_crit_edge

s3c24xx_dma_free_irq.exit.for.body.i19_crit_edge: ; preds = %s3c24xx_dma_free_irq.exit
  br label %for.body.i19

s3c24xx_dma_free_irq.exit.s3c24xx_dma_free_virtual_channels.exit_crit_edge: ; preds = %s3c24xx_dma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_virtual_channels.exit

for.body.i19:                                     ; preds = %list_del.exit.i.for.body.i19_crit_edge, %s3c24xx_dma_free_irq.exit.for.body.i19_crit_edge
  %23 = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i19_crit_edge ], [ %22, %s3c24xx_dma_free_irq.exit.for.body.i19_crit_edge ]
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %23, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i19.list_del.exit.i_crit_edge

for.body.i19.list_del.exit.i_crit_edge:           ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i19.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %23, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.s3c24xx_dma_free_virtual_channels.exit_crit_edge, label %list_del.exit.i.for.body.i19_crit_edge

list_del.exit.i.for.body.i19_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i19

list_del.exit.i.s3c24xx_dma_free_virtual_channels.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_virtual_channels.exit

s3c24xx_dma_free_virtual_channels.exit:           ; preds = %list_del.exit.i.s3c24xx_dma_free_virtual_channels.exit_crit_edge, %s3c24xx_dma_free_irq.exit.s3c24xx_dma_free_virtual_channels.exit_crit_edge
  %channels.i20 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %3, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %channels.i20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channels.i20, align 4
  %cmp.not27.i21 = icmp eq ptr %34, %channels.i20
  br i1 %cmp.not27.i21, label %s3c24xx_dma_free_virtual_channels.exit.s3c24xx_dma_free_virtual_channels.exit32_crit_edge, label %s3c24xx_dma_free_virtual_channels.exit.for.body.i24_crit_edge

s3c24xx_dma_free_virtual_channels.exit.for.body.i24_crit_edge: ; preds = %s3c24xx_dma_free_virtual_channels.exit
  br label %for.body.i24

s3c24xx_dma_free_virtual_channels.exit.s3c24xx_dma_free_virtual_channels.exit32_crit_edge: ; preds = %s3c24xx_dma_free_virtual_channels.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_virtual_channels.exit32

for.body.i24:                                     ; preds = %list_del.exit.i31.for.body.i24_crit_edge, %s3c24xx_dma_free_virtual_channels.exit.for.body.i24_crit_edge
  %35 = phi ptr [ %.pn.i22, %list_del.exit.i31.for.body.i24_crit_edge ], [ %34, %s3c24xx_dma_free_virtual_channels.exit.for.body.i24_crit_edge ]
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i22 = load ptr, ptr %35, align 4
  %call.i.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #9
  br i1 %call.i.i.i23, label %if.end.i.i.i27, label %for.body.i24.list_del.exit.i31_crit_edge

for.body.i24.list_del.exit.i31_crit_edge:         ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i31

if.end.i.i.i27:                                   ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i25, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i26, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i31

list_del.exit.i31:                                ; preds = %if.end.i.i.i27, %for.body.i24.list_del.exit.i31_crit_edge
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i.i28 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i28, align 4
  %task.i29 = getelementptr i8, ptr %35, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i29) #9
  %cmp.not.i30 = icmp eq ptr %.pn.i22, %channels.i20
  br i1 %cmp.not.i30, label %list_del.exit.i31.s3c24xx_dma_free_virtual_channels.exit32_crit_edge, label %list_del.exit.i31.for.body.i24_crit_edge

list_del.exit.i31.for.body.i24_crit_edge:         ; preds = %list_del.exit.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i24

list_del.exit.i31.s3c24xx_dma_free_virtual_channels.exit32_crit_edge: ; preds = %list_del.exit.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_virtual_channels.exit32

s3c24xx_dma_free_virtual_channels.exit32:         ; preds = %list_del.exit.i31.s3c24xx_dma_free_virtual_channels.exit32_crit_edge, %s3c24xx_dma_free_virtual_channels.exit.s3c24xx_dma_free_virtual_channels.exit32_crit_edge
  %has_clocks = getelementptr inbounds %struct.soc_data, ptr %8, i32 0, i32 2
  %45 = ptrtoint ptr %has_clocks to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_clocks, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %s3c24xx_dma_free_virtual_channels.exit32.if.end7_crit_edge, label %for.cond.preheader

s3c24xx_dma_free_virtual_channels.exit32.if.end7_crit_edge: ; preds = %s3c24xx_dma_free_virtual_channels.exit32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader:                               ; preds = %s3c24xx_dma_free_virtual_channels.exit32
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp33 = icmp sgt i32 %48, 0
  br i1 %cmp33, label %for.body.lr.ph, label %for.cond.preheader.if.end7_crit_edge

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %phy_chans = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %49 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_chans, align 4
  %valid = getelementptr %struct.s3c24xx_dma_phy, ptr %50, i32 %i.034, i32 1
  %51 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %valid, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool5.not = icmp eq i8 %52, 0
  br i1 %tobool5.not, label %for.body.if.end_crit_edge, label %if.then6

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %clk = getelementptr %struct.s3c24xx_dma_phy, ptr %50, i32 %i.034, i32 4
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %54) #9
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %56
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %for.cond.preheader.if.end7_crit_edge, %s3c24xx_dma_free_virtual_channels.exit32.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_dma_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serving = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %serving to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serving, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_irq.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_irq, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_irq.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end16, label %if.end21, !prof !165

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %host17 = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %data, i32 0, i32 7
  %8 = ptrtoint ptr %host17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host17, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.43, i32 noundef %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #9, !srcloc !171
  br label %cleanup

if.end21:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %1, i32 0, i32 2, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %at = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %at, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.end21.if.end51_crit_edge, label %if.then23

if.end21.if.end51_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then23:                                        ; preds = %if.end21
  %at24 = getelementptr inbounds %struct.s3c24xx_txd, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %at24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %at24, align 4
  %dsg_list = getelementptr inbounds %struct.s3c24xx_txd, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp.i.not = icmp eq ptr %21, %dsg_list
  br i1 %cmp.i.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then23
  %22 = ptrtoint ptr %at24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %at24, align 4
  %cyclic = getelementptr inbounds %struct.s3c24xx_txd, ptr %17, i32 0, i32 7
  %23 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cyclic, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool30.not = icmp eq i8 %24, 0
  br i1 %tobool30.not, label %if.then27.if.end32_crit_edge, label %if.then31

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %if.then27
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 3
  %25 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %17, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %26, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then31.if.end32_crit_edge

if.then31.if.end32_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then.i.i:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %26, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then.i.i, %if.then31.if.end32_crit_edge, %if.then27.if.end32_crit_edge
  tail call fastcc void @s3c24xx_dma_start_next_sg(ptr noundef nonnull %1, ptr noundef nonnull %17)
  br label %if.end51

if.else:                                          ; preds = %if.then23
  %cyclic33 = getelementptr inbounds %struct.s3c24xx_txd, ptr %17, i32 0, i32 7
  %28 = ptrtoint ptr %cyclic33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cyclic33, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool34.not = icmp eq i8 %29, 0
  br i1 %tobool34.not, label %if.then35, label %if.else44

if.then35:                                        ; preds = %if.else
  %30 = ptrtoint ptr %at to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %at, align 4
  %chan.i83 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 3
  %31 = ptrtoint ptr %chan.i83 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan.i83, align 4
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.i = icmp slt i32 %34, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !165

do.body2.i.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !172
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then35
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %completed_cookie.i.i, align 4
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_irq, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !167

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %40, ptr noundef nonnull @.str.46, ptr noundef nonnull %17, i32 noundef %34) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %42, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node.i, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node.i, ptr %42, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i84 = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 1, i32 1
  %call.i.i85 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %tobool.not.i.i86 = icmp eq i32 %call.i.i85, 0
  br i1 %tobool.not.i.i86, label %if.then.i.i88, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i88:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i87 = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i87) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i88, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %1, i32 0, i32 2, i32 6
  %47 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %48, %desc_issued.i
  %add.ptr.i89 = getelementptr i8, ptr %48, i32 -108
  %tobool40.not104 = icmp eq ptr %add.ptr.i89, null
  %tobool40.not = or i1 %cmp.not.i, %tobool40.not104
  br i1 %tobool40.not, label %if.else42, label %if.then41

if.then41:                                        ; preds = %vchan_cookie_complete.exit
  %phy1.i = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy1.i, align 4
  %51 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %52, %desc_issued.i
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 -108
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %add.ptr.i.i
  %node.i90 = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2
  %call.i.i.i91 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i90) #9
  br i1 %call.i.i.i91, label %if.end.i.i.i92, label %if.then41.list_del.exit.i_crit_edge

if.then41.list_del.exit.i_crit_edge:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i92:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %node.i90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %node.i90, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i92, %if.then41.list_del.exit.i_crit_edge
  %59 = ptrtoint ptr %node.i90 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i90, align 4
  %prev.i.i93 = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i93, align 4
  %61 = ptrtoint ptr %at to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %spec.select.i.i, ptr %at, align 4
  %base.i.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %50, i32 0, i32 2
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i1920.i = getelementptr i8, ptr %63, i32 20
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1920.i) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %65 = and i32 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not21.i = icmp eq i32 %65, 0
  br i1 %tobool.not21.i, label %list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge, label %list_del.exit.i.do.end.i94_crit_edge

list_del.exit.i.do.end.i94_crit_edge:             ; preds = %list_del.exit.i
  br label %do.end.i94

list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_start_next_txd.exit

do.end.i94:                                       ; preds = %do.end.i94.do.end.i94_crit_edge, %list_del.exit.i.do.end.i94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !174
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %67, i32 20
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %69 = and i32 %68, 4096
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %do.end.i94.s3c24xx_dma_start_next_txd.exit_crit_edge, label %do.end.i94.do.end.i94_crit_edge

do.end.i94.do.end.i94_crit_edge:                  ; preds = %do.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i94

do.end.i94.s3c24xx_dma_start_next_txd.exit_crit_edge: ; preds = %do.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_start_next_txd.exit

s3c24xx_dma_start_next_txd.exit:                  ; preds = %do.end.i94.s3c24xx_dma_start_next_txd.exit_crit_edge, %list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge
  %dsg_list.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %spec.select.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dsg_list.i, align 4
  %at11.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %spec.select.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %at11.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %at11.i, align 4
  tail call fastcc void @s3c24xx_dma_start_next_sg(ptr noundef nonnull %1, ptr noundef %spec.select.i.i) #9
  br label %if.end51

if.else42:                                        ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s3c24xx_dma_phy_free(ptr noundef nonnull %1)
  br label %if.end51

if.else44:                                        ; preds = %if.else
  %chan.i95 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 3
  %73 = ptrtoint ptr %chan.i95 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chan.i95, align 4
  %cyclic.i96 = getelementptr inbounds %struct.virt_dma_chan, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %cyclic.i96 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %17, ptr %cyclic.i96, align 4
  %state.i.i97 = getelementptr inbounds %struct.virt_dma_chan, ptr %74, i32 0, i32 1, i32 1
  %call.i.i98 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %call.i.i98, 0
  br i1 %tobool.not.i.i99, label %if.then.i.i101, label %if.else44.vchan_cyclic_callback.exit102_crit_edge

if.else44.vchan_cyclic_callback.exit102_crit_edge: ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cyclic_callback.exit102

if.then.i.i101:                                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %task.i100 = getelementptr inbounds %struct.virt_dma_chan, ptr %74, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i100) #9
  br label %vchan_cyclic_callback.exit102

vchan_cyclic_callback.exit102:                    ; preds = %if.then.i.i101, %if.else44.vchan_cyclic_callback.exit102_crit_edge
  %76 = ptrtoint ptr %dsg_list to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dsg_list, align 4
  %78 = ptrtoint ptr %at24 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %at24, align 4
  tail call fastcc void @s3c24xx_dma_start_next_sg(ptr noundef nonnull %1, ptr noundef nonnull %17)
  br label %if.end51

if.end51:                                         ; preds = %vchan_cyclic_callback.exit102, %if.else42, %s3c24xx_dma_start_next_txd.exit, %if.end32, %if.end21.if.end51_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end16
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_dma_free_chan_resources(ptr noundef %chan) #4 align 64 {
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s3c24xx_dma_prep_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr i8, ptr %chan, i32 236
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_prep_memcpy.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_prep_memcpy, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %name = getelementptr i8, ptr %chan, i32 -4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_prep_memcpy.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %len, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %len)
  %6 = icmp ult i32 %len, 1048576
  br i1 %6, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.51, i32 noundef %len) #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2304, i32 noundef 148) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %dsg_list.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %dsg_list.i, ptr %dsg_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dsg_list.i, ptr %prev.i.i, align 8
  %dcon.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %dcon.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 541065216, ptr %dcon.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2304, i32 noundef 20) #13
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not20.i = icmp eq ptr %15, %dsg_list.i
  br i1 %cmp.not20.i, label %if.then18.s3c24xx_dma_free_txd.exit_crit_edge, label %if.then18.for.body.i_crit_edge

if.then18.for.body.i_crit_edge:                   ; preds = %if.then18
  br label %for.body.i

if.then18.s3c24xx_dma_free_txd.exit_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then18.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %15, %if.then18.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -12
  %16 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i75 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i75 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i75, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

s3c24xx_dma_free_txd.exit:                        ; preds = %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, %if.then18.s3c24xx_dma_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %node = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %26, ptr noundef %dsg_list.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add_tail.exit_crit_edge

if.end19.list_add_tail.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node, ptr %prev.i.i, align 8
  %28 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dsg_list.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end19.list_add_tail.exit_crit_edge
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %src, ptr %call7.i.i, align 8
  %dst_addr = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dest, ptr %dst_addr, align 4
  %len20 = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %len, ptr %len20, align 8
  %rem21 = and i32 %dest, 3
  %rem22 = and i32 %len, 3
  %34 = zext i32 %rem22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem22, label %list_add_tail.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb25
  ]

list_add_tail.exit.sw.epilog_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = or i32 %src, %dest
  %36 = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i8 4, i8 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %list_add_tail.exit
  %rem = and i32 %src, 3
  %39 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %rem, label %sw.bb25.sw.epilog_crit_edge [
    i32 2, label %sw.bb25.land.rhs30_crit_edge
    i32 0, label %sw.bb25.land.rhs30_crit_edge80
  ]

sw.bb25.land.rhs30_crit_edge80:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs30

sw.bb25.land.rhs30_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs30

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.rhs30:                                       ; preds = %sw.bb25.land.rhs30_crit_edge, %sw.bb25.land.rhs30_crit_edge80
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem21)
  %cmp31 = icmp eq i32 %rem21, 2
  br i1 %cmp31, label %land.rhs30.sw.epilog_crit_edge, label %lor.rhs

land.rhs30.sw.epilog_crit_edge:                   ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.rhs:                                          ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %cmp33 = icmp eq i32 %rem21, 0
  %phi.cast = select i1 %cmp33, i8 2, i8 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.rhs, %land.rhs30.sw.epilog_crit_edge, %sw.bb25.sw.epilog_crit_edge, %sw.bb, %list_add_tail.exit.sw.epilog_crit_edge
  %.sink = phi i8 [ %38, %sw.bb ], [ 2, %land.rhs30.sw.epilog_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %sw.bb25.sw.epilog_crit_edge ], [ 1, %list_add_tail.exit.sw.epilog_crit_edge ]
  %width39 = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %width39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink, ptr %width39, align 8
  %disrcc = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %disrcc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %disrcc, align 4
  %didstc = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %didstc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %didstc, align 8
  %43 = ptrtoint ptr %dcon.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dcon.i, align 4
  %or = or i32 %44, 1207959552
  store i32 %or, ptr %dcon.i, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i76 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i76, align 4
  %call.i.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %51, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i77, label %if.end.i.i.i78, label %sw.epilog.vchan_tx_prep.exit_crit_edge

sw.epilog.vchan_tx_prep.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i78:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %node.i, ptr %prev.i.i76, align 4
  %53 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i, align 8
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %node.i, ptr %51, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i78, %sw.epilog.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %s3c24xx_dma_free_txd.exit, %if.end11.cleanup_crit_edge, %do.end8
  %retval.0 = phi ptr [ null, %do.end8 ], [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %s3c24xx_dma_free_txd.exit ], [ null, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %chan, i32 92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !175
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
  br i1 %brmerge, label %if.then.i.i.if.then_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i.if.then_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge90 = or i1 %tobool.not.i, %or.cond16.i.i
  br i1 %brmerge90, label %if.else.i.i.if.then_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i.i.if.then_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.else.i.i.if.then_crit_edge, %if.then.i.i.if.then_crit_edge
  %retval.0.i.i89.in.in = phi i1 [ %or.cond.i.i, %if.then.i.i.if.then_crit_edge ], [ %or.cond16.i.i, %if.else.i.i.if.then_crit_edge ]
  %retval.0.i.i89.in = xor i1 %retval.0.i.i89.in.in, true
  %retval.0.i.i89 = zext i1 %retval.0.i.i89.in to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %call12 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  %dsg_list = getelementptr inbounds %struct.s3c24xx_txd, ptr %call12, i32 0, i32 1
  %8 = ptrtoint ptr %dsg_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn8092 = load ptr, ptr %dsg_list, align 4
  %cmp18.not93 = icmp eq ptr %.pn8092, %dsg_list
  br i1 %cmp18.not93, label %if.then14.dma_set_residue.exit_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  br label %for.body

if.then14.dma_set_residue.exit_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then14.for.body_crit_edge
  %.pn8095 = phi ptr [ %.pn80, %for.body.for.body_crit_edge ], [ %.pn8092, %if.then14.for.body_crit_edge ]
  %bytes.094 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then14.for.body_crit_edge ]
  %len = getelementptr i8, ptr %.pn8095, i32 -4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add = add i32 %10, %bytes.094
  %11 = ptrtoint ptr %.pn8095 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn80 = load ptr, ptr %.pn8095, align 4
  %cmp18.not = icmp eq ptr %.pn80, %dsg_list
  br i1 %cmp18.not, label %for.body.dma_set_residue.exit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.dma_set_residue.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.else:                                          ; preds = %if.end
  %at = getelementptr i8, ptr %chan, i32 232
  %12 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %at, align 4
  %at26 = getelementptr inbounds %struct.s3c24xx_txd, ptr %13, i32 0, i32 2
  %dsg_list31 = getelementptr inbounds %struct.s3c24xx_txd, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %at26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn96 = load ptr, ptr %at26, align 4
  %cmp32.not97 = icmp eq ptr %.pn96, %dsg_list31
  br i1 %cmp32.not97, label %if.else.for.end44_crit_edge, label %if.else.for.body35_crit_edge

if.else.for.body35_crit_edge:                     ; preds = %if.else
  br label %for.body35

if.else.for.end44_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %if.else.for.body35_crit_edge
  %.pn99 = phi ptr [ %.pn, %for.body35.for.body35_crit_edge ], [ %.pn96, %if.else.for.body35_crit_edge ]
  %bytes.198 = phi i32 [ %add37, %for.body35.for.body35_crit_edge ], [ 0, %if.else.for.body35_crit_edge ]
  %len36 = getelementptr i8, ptr %.pn99, i32 -4
  %15 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len36, align 4
  %add37 = add i32 %16, %bytes.198
  %17 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp32.not = icmp eq ptr %.pn, %dsg_list31
  br i1 %cmp32.not, label %for.body35.for.end44_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.body35.for.end44_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.end44:                                        ; preds = %for.body35.for.end44_crit_edge, %if.else.for.end44_crit_edge
  %bytes.1.lcssa = phi i32 [ 0, %if.else.for.end44_crit_edge ], [ %add37, %for.body35.for.end44_crit_edge ]
  %phy1.i = getelementptr i8, ptr %chan, i32 180
  %18 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy1.i, align 4
  %base.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %23 = and i32 %22, -61696
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %width.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %13, i32 0, i32 3
  %25 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %width.i, align 4
  %conv.i = zext i8 %26 to i32
  %mul.i = mul nuw nsw i32 %24, %conv.i
  %add46 = add i32 %mul.i, %bytes.1.lcssa
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %for.end44, %for.body.dma_set_residue.exit_crit_edge, %if.then14.dma_set_residue.exit_crit_edge
  %bytes.2 = phi i32 [ %add46, %for.end44 ], [ 0, %if.then14.dma_set_residue.exit_crit_edge ], [ %add, %for.body.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %27 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bytes.2, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.then
  %retval.0.i.i88 = phi i32 [ 1, %dma_set_residue.exit ], [ %retval.0.i.i89, %if.then ]
  ret i32 %retval.0.i.i88
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_dma_issue_pending(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -8
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end11_crit_edge, label %if.then

vchan_issue_pending.exit.if.end11_crit_edge:      ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %vchan_issue_pending.exit
  %phy = getelementptr i8, ptr %chan, i32 180
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %state = getelementptr i8, ptr %chan, i32 240
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp8.not = icmp eq i32 %15, 2
  br i1 %cmp8.not, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s3c24xx_dma_phy_alloc_and_start(ptr noundef %add.ptr.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge, %vchan_issue_pending.exit.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_dma_set_runtime_config(ptr noundef %chan, ptr nocapture noundef readonly %config) #4 align 64 {
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
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %do.body2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %chan, i32 92
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %slave = getelementptr i8, ptr %chan, i32 244
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slave, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body2.out_crit_edge, label %if.end9

do.body2.out_crit_edge:                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %cfg = getelementptr i8, ptr %chan, i32 184
  %6 = call ptr @memcpy(ptr %cfg, ptr %config, i32 48)
  br label %out

out:                                              ; preds = %if.end9, %do.body2.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end9 ], [ -22, %do.body2.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_dma_terminate_all(ptr noundef %chan) #4 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -8
  %host = getelementptr i8, ptr %chan, i32 236
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %lock = getelementptr i8, ptr %chan, i32 92
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %phy = getelementptr i8, ptr %chan, i32 180
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then12

land.lhs.true:                                    ; preds = %entry
  %at = getelementptr i8, ptr %chan, i32 232
  %7 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %at, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %do.end9, label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %state48 = getelementptr i8, ptr %chan, i32 240
  %9 = ptrtoint ptr %state48 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state48, align 4
  br label %if.end13

do.end9:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %13) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr i8, ptr %chan, i32 240
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state, align 4
  call fastcc void @s3c24xx_dma_phy_free(ptr noundef %add.ptr.i)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.thread
  %at14 = getelementptr i8, ptr %chan, i32 232
  %15 = ptrtoint ptr %at14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %at14, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %20, ptr noundef %desc_terminated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then16.list_add_tail.exit.i_crit_edge

if.then16.list_add_tail.exit.i_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node.i, ptr %20, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then16.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 9
  %25 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %26, %16
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %28 = ptrtoint ptr %at14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %at14, align 4
  br label %if.end19

if.end19:                                         ; preds = %vchan_terminate_vdesc.exit, %if.end13.if.end19_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %29 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end19.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end19.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i46, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %30, ptr %32, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %head, ptr %34, align 4
  store ptr %34, ptr %2, align 4
  %38 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end19.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %39 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %40, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i12.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %head, ptr %44, align 4
  store ptr %44, ptr %2, align 4
  %48 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %49 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %50, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i18.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %50, ptr %52, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %head, ptr %54, align 4
  store ptr %54, ptr %2, align 4
  %58 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %59 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %60, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i24.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %62, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %head, ptr %64, align 4
  store ptr %64, ptr %2, align 4
  %68 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i47 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %69 = ptrtoint ptr %desc_terminated.i47 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %desc_terminated.i47, align 4
  %cmp.i.not.i27.i = icmp eq ptr %70, %desc_terminated.i47
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i30.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %72, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %head, ptr %74, align 4
  store ptr %74, ptr %2, align 4
  %78 = ptrtoint ptr %desc_terminated.i47 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %desc_terminated.i47, ptr %desc_terminated.i47, align 4
  store ptr %desc_terminated.i47, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_get_all_descriptors.exit, %do.end9
  %retval.0 = phi i32 [ 0, %vchan_get_all_descriptors.exit ], [ -22, %do.end9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_dma_synchronize(ptr noundef %chan) #4 align 64 {
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s3c24xx_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -8
  %host = getelementptr i8, ptr %chan, i32 236
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %pdata1 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %channels = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.s3c24xx_dma_channel, ptr %5, i32 %7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_prep_slave_sg.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_prep_slave_sg, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  %name = getelementptr i8, ptr %chan, i32 -4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_prep_slave_sg.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %11, ptr noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2304, i32 noundef 148) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %dsg_list.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %dsg_list.i, ptr %dsg_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dsg_list.i, ptr %prev.i.i, align 8
  %dcon.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %dcon.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 541065216, ptr %dcon.i, align 4
  %handshake = getelementptr %struct.s3c24xx_dma_channel, ptr %5, i32 %7, i32 1
  %18 = ptrtoint ptr %handshake to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %handshake, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp eq i8 %19, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dcon.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dcon.i, align 4
  %or = or i32 %21, -2147483648
  store i32 %or, ptr %dcon.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %23, label %if.end13.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dcon.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dcon.i, align 4
  %or19 = or i32 %26, 1073741824
  store i32 %or19, ptr %dcon.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb, %if.end13.sw.epilog_crit_edge
  %hwcfg.0 = phi i32 [ 1, %if.end13.sw.epilog_crit_edge ], [ 1, %sw.bb17 ], [ 3, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  br i1 %cmp, label %sw.epilog.if.end42_crit_edge, label %if.else

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp26 = icmp eq i32 %direction, 2
  br i1 %cmp26, label %if.else.if.end42_crit_edge, label %if.else35

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.else35:                                        ; preds = %if.else
  %27 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not20.i = icmp eq ptr %28, %dsg_list.i
  br i1 %cmp.not20.i, label %if.else35.s3c24xx_dma_free_txd.exit_crit_edge, label %if.else35.for.body.i_crit_edge

if.else35.for.body.i_crit_edge:                   ; preds = %if.else35
  br label %for.body.i

if.else35.s3c24xx_dma_free_txd.exit_crit_edge:    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.else35.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %28, %if.else35.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -12
  %29 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %36 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i115 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i115 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i115, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

s3c24xx_dma_free_txd.exit:                        ; preds = %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, %if.else35.s3c24xx_dma_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %dev40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.64, i32 noundef %direction) #12
  br label %cleanup

if.end42:                                         ; preds = %if.else.if.end42_crit_edge, %sw.epilog.if.end42_crit_edge
  %hwcfg.0.sink = phi i32 [ 0, %sw.epilog.if.end42_crit_edge ], [ %hwcfg.0, %if.else.if.end42_crit_edge ]
  %.sink141 = phi i32 [ %hwcfg.0, %sw.epilog.if.end42_crit_edge ], [ 0, %if.else.if.end42_crit_edge ]
  %.sink140 = phi i32 [ 192, %sw.epilog.if.end42_crit_edge ], [ 188, %if.else.if.end42_crit_edge ]
  %.sink139 = phi i32 [ 200, %sw.epilog.if.end42_crit_edge ], [ 196, %if.else.if.end42_crit_edge ]
  %disrcc29 = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %disrcc29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %hwcfg.0.sink, ptr %disrcc29, align 4
  %didstc30 = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %didstc30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink141, ptr %didstc30, align 8
  %src_addr = getelementptr i8, ptr %chan, i32 %.sink140
  %42 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_addr, align 4
  %src_addr_width = getelementptr i8, ptr %chan, i32 %.sink139
  %44 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_addr_width, align 4
  %conv33 = trunc i32 %45 to i8
  %width34 = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %width34 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv33, ptr %width34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp43134.not = icmp eq i32 %sg_len, 0
  br i1 %cmp43134.not, label %if.end42.for.end_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end42.for.body_crit_edge
  %tmp.0137 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end42.for.body_crit_edge ]
  %sg.0135 = phi ptr [ %call60, %for.inc.for.body_crit_edge ], [ %sgl, %if.end42.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 2304, i32 noundef 20) #13
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.body
  %48 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not20.i117 = icmp eq ptr %49, %dsg_list.i
  br i1 %cmp.not20.i117, label %if.then47.s3c24xx_dma_free_txd.exit129_crit_edge, label %if.then47.for.body.i122_crit_edge

if.then47.for.body.i122_crit_edge:                ; preds = %if.then47
  br label %for.body.i122

if.then47.s3c24xx_dma_free_txd.exit129_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit129

for.body.i122:                                    ; preds = %list_del.exit.i128.for.body.i122_crit_edge, %if.then47.for.body.i122_crit_edge
  %.pn.in21.i118 = phi ptr [ %.pn.i120, %list_del.exit.i128.for.body.i122_crit_edge ], [ %49, %if.then47.for.body.i122_crit_edge ]
  %dsg.0.i119 = getelementptr i8, ptr %.pn.in21.i118, i32 -12
  %50 = ptrtoint ptr %.pn.in21.i118 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i120 = load ptr, ptr %.pn.in21.i118, align 4
  %call.i.i.i121 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i118) #9
  br i1 %call.i.i.i121, label %if.end.i.i.i125, label %for.body.i122.list_del.exit.i128_crit_edge

for.body.i122.list_del.exit.i128_crit_edge:       ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i128

if.end.i.i.i125:                                  ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i123 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i118, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i123, align 4
  %53 = ptrtoint ptr %.pn.in21.i118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %.pn.in21.i118, align 4
  %prev1.i.i.i.i124 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i124, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit.i128

list_del.exit.i128:                               ; preds = %if.end.i.i.i125, %for.body.i122.list_del.exit.i128_crit_edge
  %57 = ptrtoint ptr %.pn.in21.i118 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i118, align 4
  %prev.i.i126 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i118, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i126, align 4
  tail call void @kfree(ptr noundef %dsg.0.i119) #9
  %cmp.not.i127 = icmp eq ptr %.pn.i120, %dsg_list.i
  br i1 %cmp.not.i127, label %list_del.exit.i128.s3c24xx_dma_free_txd.exit129_crit_edge, label %list_del.exit.i128.for.body.i122_crit_edge

list_del.exit.i128.for.body.i122_crit_edge:       ; preds = %list_del.exit.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i122

list_del.exit.i128.s3c24xx_dma_free_txd.exit129_crit_edge: ; preds = %list_del.exit.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit129

s3c24xx_dma_free_txd.exit129:                     ; preds = %list_del.exit.i128.s3c24xx_dma_free_txd.exit129_crit_edge, %if.then47.s3c24xx_dma_free_txd.exit129_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end48:                                         ; preds = %for.body
  %node = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %60, ptr noundef %dsg_list.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end48.list_add_tail.exit_crit_edge

if.end48.list_add_tail.exit_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %node, ptr %prev.i.i, align 8
  %62 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dsg_list.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i, align 8
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %node, ptr %60, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end48.list_add_tail.exit_crit_edge
  %dma_length49 = getelementptr inbounds %struct.scatterlist, ptr %sg.0135, i32 0, i32 4
  %65 = ptrtoint ptr %dma_length49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_length49, align 4
  %len = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %len, align 8
  br i1 %cmp, label %if.then52, label %if.else55

if.then52:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0135, i32 0, i32 3
  %68 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_address, align 4
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %call7.i.i, align 8
  br label %for.inc

if.else55:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %43, ptr %call7.i.i, align 8
  %dma_address57 = getelementptr inbounds %struct.scatterlist, ptr %sg.0135, i32 0, i32 3
  %72 = ptrtoint ptr %dma_address57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_address57, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else55, %if.then52
  %.sink = phi i32 [ %43, %if.then52 ], [ %73, %if.else55 ]
  %74 = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink, ptr %74, align 4
  %inc = add nuw i32 %tmp.0137, 1
  %call60 = tail call ptr @sg_next(ptr noundef %sg.0135) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end42.for.end_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %78 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i130 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %prev.i.i130 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i130, align 4
  %call.i.i.i131 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %82, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i131, label %if.end.i.i.i132, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i132:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %prev.i.i130 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %node.i, ptr %prev.i.i130, align 4
  %84 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i.i, align 8
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %node.i, ptr %82, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i132, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %s3c24xx_dma_free_txd.exit129, %s3c24xx_dma_free_txd.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %s3c24xx_dma_free_txd.exit129 ], [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %s3c24xx_dma_free_txd.exit ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s3c24xx_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %addr, i32 noundef %size, i32 noundef %period, i32 noundef %direction, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -8
  %host = getelementptr i8, ptr %chan, i32 236
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %pdata1 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %channels = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.s3c24xx_dma_channel, ptr %5, i32 %7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_prep_dma_cyclic, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %name = getelementptr i8, ptr %chan, i32 -4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %size, i32 noundef %period, ptr noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %if.end13, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.64, i32 noundef %direction) #12
  br label %cleanup

if.end13:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2304, i32 noundef 148) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %dsg_list.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %dsg_list.i, ptr %dsg_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dsg_list.i, ptr %prev.i.i, align 8
  %dcon.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %dcon.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 541065216, ptr %dcon.i, align 4
  %cyclic = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %cyclic, align 8
  %handshake = getelementptr %struct.s3c24xx_dma_channel, ptr %5, i32 %7, i32 1
  %21 = ptrtoint ptr %handshake to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %handshake, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18.not = icmp eq i8 %22, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dcon.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dcon.i, align 4
  %or = or i32 %24, -2147483648
  store i32 %or, ptr %dcon.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %26, label %if.end20.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
  ]

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dcon.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dcon.i, align 4
  %or26 = or i32 %29, 1073741824
  store i32 %or26, ptr %dcon.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb, %if.end20.sw.epilog_crit_edge
  %hwcfg.0 = phi i32 [ 1, %if.end20.sw.epilog_crit_edge ], [ 1, %sw.bb24 ], [ 3, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %. = select i1 %cmp, i32 192, i32 188
  %.137 = select i1 %cmp, i32 200, i32 196
  %.hwcfg.0 = select i1 %cmp, i32 0, i32 %hwcfg.0
  %hwcfg.0. = select i1 %cmp, i32 %hwcfg.0, i32 0
  %src_addr = getelementptr i8, ptr %chan, i32 %.
  %src_addr_width = getelementptr i8, ptr %chan, i32 %.137
  %30 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %slave_addr.0 = load i32, ptr %src_addr, align 4
  %31 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %31)
  %conv37.sink.in = load i32, ptr %src_addr_width, align 4
  %conv37.sink = trunc i32 %conv37.sink.in to i8
  %32 = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.hwcfg.0, ptr %32, align 4
  %34 = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %hwcfg.0., ptr %34, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_txd, ptr %call7.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv37.sink, ptr %36, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %period, i32 %size)
  %cmp40133.not = icmp ugt i32 %period, %size
  br i1 %cmp40133.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %div = udiv i32 %size, %period
  %sub = add i32 %div, -1
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 2304, i32 noundef 20) #13
  %tobool43.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.body
  %39 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not20.i = icmp eq ptr %40, %dsg_list.i
  br i1 %cmp.not20.i, label %if.then44.s3c24xx_dma_free_txd.exit_crit_edge, label %if.then44.for.body.i_crit_edge

if.then44.for.body.i_crit_edge:                   ; preds = %if.then44
  br label %for.body.i

if.then44.s3c24xx_dma_free_txd.exit_crit_edge:    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then44.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %40, %if.then44.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -12
  %41 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %48 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i128 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i128 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i128, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

s3c24xx_dma_free_txd.exit:                        ; preds = %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, %if.then44.s3c24xx_dma_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end45:                                         ; preds = %for.body
  %node = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %51, ptr noundef %dsg_list.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end45.list_add_tail.exit_crit_edge

if.end45.list_add_tail.exit_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %node, ptr %prev.i.i, align 8
  %53 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dsg_list.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 8
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %node, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end45.list_add_tail.exit_crit_edge
  %len = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0134, i32 %sub)
  %cmp46 = icmp eq i32 %i.0134, %sub
  %mul = mul i32 %i.0134, %period
  %sub49 = sub i32 %size, %mul
  %storemerge = select i1 %cmp46, i32 %sub49, i32 %period
  %56 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %storemerge, ptr %len, align 8
  br i1 %cmp, label %if.then54, label %if.else58

if.then54:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %mul, %addr
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %call7.i.i, align 8
  br label %for.inc

if.else58:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %slave_addr.0, ptr %call7.i.i, align 8
  %add61 = add i32 %mul, %addr
  br label %for.inc

for.inc:                                          ; preds = %if.else58, %if.then54
  %add61.sink = phi i32 [ %slave_addr.0, %if.then54 ], [ %add61, %if.else58 ]
  %59 = getelementptr inbounds %struct.s3c24xx_sg, ptr %call7.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add61.sink, ptr %59, align 4
  %inc = add nuw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
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
  %prev.i.i129 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i129, align 4
  %call.i.i.i130 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %67, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i130, label %if.end.i.i.i131, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i131:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %node.i, ptr %prev.i.i129, align 4
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

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i131, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %s3c24xx_dma_free_txd.exit, %if.end13.cleanup_crit_edge, %do.end10
  %retval.0 = phi ptr [ null, %s3c24xx_dma_free_txd.exit ], [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %do.end10 ], [ null, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c24xx_dma_init_virtual_channels(ptr noundef %s3cdma, ptr noundef %dmadev, i32 noundef %channels, i1 noundef zeroext %slave) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %cmp58.not = icmp eq i32 %channels, 0
  br i1 %cmp58.not, label %entry.do.end30_crit_edge, label %for.body.lr.ph

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 256, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.059, ptr %call.i, align 4
  %host = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %s3cdma, ptr %host, align 4
  %state = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  br i1 %slave, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %slave4 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %slave4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %slave4, align 4
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.67, i32 noundef %i.059) #9
  %name = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %name, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then3.do.body_crit_edge

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.68, i32 noundef %i.059) #9
  %name11 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %name11, align 4
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.then3.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_init_virtual_channels.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_init_virtual_channels, %do.end)) #9
          to label %if.then23 [label %do.end], !srcloc !167

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %name25 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_init_virtual_channels.__UNIQUE_ID_ddebug245, ptr noundef %11, ptr noundef nonnull @.str.70, ptr noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %vc = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 2
  %desc_free = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %call.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @s3c24xx_dma_desc_free, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %vc, ptr noundef %dmadev) #9
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %channels
  br i1 %exitcond.not, label %do.end.do.end30_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end.do.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end30:                                         ; preds = %do.end.do.end30_crit_edge, %entry.do.end30_crit_edge
  %dev31 = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 15
  %15 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev31, align 4
  %cond = select i1 %slave, ptr @.str.72, ptr @.str.73
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.71, i32 noundef %channels, ptr noundef nonnull %cond) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %channels, %do.end30 ], [ -12, %for.body.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_dma_free_virtual_channels(ptr noundef readonly %dmadev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %2, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr i8, ptr %2, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #9
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_dma_start_next_sg(ptr nocapture noundef readonly %s3cchan, ptr nocapture noundef readonly %txd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %phy1 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 3
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %pdata2 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata2, align 4
  %at = getelementptr inbounds %struct.s3c24xx_txd, ptr %txd, i32 0, i32 2
  %6 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %at, align 4
  %dcon3 = getelementptr inbounds %struct.s3c24xx_txd, ptr %txd, i32 0, i32 6
  %8 = ptrtoint ptr %dcon3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcon3, align 4
  %width = getelementptr inbounds %struct.s3c24xx_txd, ptr %txd, i32 0, i32 3
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %11, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 4, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr i8, ptr %7, i32 -4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %or4 = or i32 %14, %9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len6 = getelementptr i8, ptr %7, i32 -4
  %15 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len6, align 4
  %div90 = lshr i32 %16, 1
  %or7 = or i32 %9, %div90
  %or8 = or i32 %or7, 1048576
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len10 = getelementptr i8, ptr %7, i32 -4
  %17 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len10, align 4
  %div1189 = lshr i32 %18, 2
  %or12 = or i32 %9, %div1189
  %or13 = or i32 %or12, 2097152
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %dcon.0 = phi i32 [ %9, %entry.sw.epilog_crit_edge ], [ %or13, %sw.bb9 ], [ %or8, %sw.bb5 ], [ %or4, %sw.bb ]
  %slave = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 8
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %slave, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %sw.epilog
  %channels = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channels, align 4
  %23 = ptrtoint ptr %s3cchan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s3cchan, align 4
  %sdata = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdata, align 4
  %has_reqsel = getelementptr inbounds %struct.soc_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %has_reqsel to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_reqsel, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool14.not = icmp eq i8 %28, 0
  %chansel19 = getelementptr %struct.s3c24xx_dma_channel, ptr %22, i32 %24, i32 2
  %29 = ptrtoint ptr %chansel19 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %chansel19, align 2
  %conv20 = zext i16 %30 to i32
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %conv20, 1
  %or17 = or i32 %shl, 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %base = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %33, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %31) #9, !srcloc !171
  br label %if.end33

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %mul = shl i32 %35, 2
  %shr = lshr i32 %conv20, %mul
  %and = shl i32 %shr, 24
  %shl22 = and i32 %and, 117440512
  %or23 = or i32 %dcon.0, %shl22
  %or24 = or i32 %or23, 8388608
  br label %if.end33

if.else25:                                        ; preds = %sw.epilog
  %sdata26 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %sdata26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdata26, align 4
  %has_reqsel27 = getelementptr inbounds %struct.soc_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %has_reqsel27 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_reqsel27, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool28.not = icmp eq i8 %39, 0
  br i1 %tobool28.not, label %if.else25.if.end33_crit_edge, label %if.then29

if.else25.if.end33_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  %base30 = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base30, align 4
  %add.ptr31 = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #9, !srcloc !171
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.else25.if.end33_crit_edge, %if.else, %if.then15
  %dcon.2 = phi i32 [ %dcon.0, %if.then29 ], [ %dcon.0, %if.else25.if.end33_crit_edge ], [ %dcon.0, %if.then15 ], [ %or24, %if.else ]
  %add.ptr = getelementptr i8, ptr %7, i32 -12
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %base34 = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !171
  %disrcc = getelementptr inbounds %struct.s3c24xx_txd, ptr %txd, i32 0, i32 4
  %47 = ptrtoint ptr %disrcc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %disrcc, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base34, align 4
  %add.ptr37 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %49) #9, !srcloc !171
  %dst_addr = getelementptr i8, ptr %7, i32 -8
  %52 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dst_addr, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base34, align 4
  %add.ptr39 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %54) #9, !srcloc !171
  %didstc = getelementptr inbounds %struct.s3c24xx_txd, ptr %txd, i32 0, i32 5
  %57 = ptrtoint ptr %didstc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %didstc, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base34, align 4
  %add.ptr41 = getelementptr i8, ptr %61, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %59) #9, !srcloc !171
  %62 = tail call i32 @llvm.bswap.i32(i32 %dcon.2)
  %63 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base34, align 4
  %add.ptr43 = getelementptr i8, ptr %64, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %62) #9, !srcloc !171
  %65 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base34, align 4
  %add.ptr45 = getelementptr i8, ptr %66, i32 32
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #9, !srcloc !168
  %68 = and i32 %67, -100663297
  %69 = or i32 %68, 33554432
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %slave to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %slave, align 4, !range !166
  %73 = xor i8 %72, 1
  %74 = zext i8 %73 to i32
  %spec.select = or i32 %70, %74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %75 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %76 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base34, align 4
  %add.ptr55 = getelementptr i8, ptr %77, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %75) #9, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_dma_phy_free(ptr nocapture noundef %s3cchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %channels = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 5, i32 3
  %phy41 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 3
  %channels14 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 4, i32 3
  br label %for.cond

retry.critedge:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %for.cond.backedge

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %.pn.in = phi ptr [ %channels, %entry ], [ %.pn.in.be, %for.cond.backedge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %for.cond.if.then12_crit_edge, label %for.body

for.cond.if.then12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

for.body:                                         ; preds = %for.cond
  %state = getelementptr i8, ptr %.pn, i32 208
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %for.end, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body.for.cond.backedge_crit_edge, %retry.critedge
  %.pn.in.be = phi ptr [ %.pn, %for.body.for.cond.backedge_crit_edge ], [ %channels, %retry.critedge ]
  br label %for.cond

for.end:                                          ; preds = %for.body
  %p.0.le = getelementptr i8, ptr %.pn, i32 -40
  %tobool.not = icmp eq ptr %p.0.le, null
  br i1 %tobool.not, label %for.end.if.then12_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %for.end.if.then12_crit_edge, %for.cond.if.then12_crit_edge
  %5 = ptrtoint ptr %channels14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn8395 = load ptr, ptr %channels14, align 4
  %cmp24.not97 = icmp eq ptr %.pn8395, %channels14
  br i1 %cmp24.not97, label %if.then12.if.end40_crit_edge, label %if.then12.for.body26_crit_edge

if.then12.for.body26_crit_edge:                   ; preds = %if.then12
  br label %for.body26

if.then12.if.end40_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.body26:                                       ; preds = %for.inc31.for.body26_crit_edge, %if.then12.for.body26_crit_edge
  %.pn8398 = phi ptr [ %.pn83, %for.inc31.for.body26_crit_edge ], [ %.pn8395, %if.then12.for.body26_crit_edge ]
  %p.199 = getelementptr i8, ptr %.pn8398, i32 -40
  %state27 = getelementptr i8, ptr %.pn8398, i32 208
  %6 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp28 = icmp eq i32 %7, 2
  br i1 %cmp28, label %land.lhs.true, label %for.body26.for.inc31_crit_edge

for.body26.for.inc31_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

land.lhs.true:                                    ; preds = %for.body26
  %8 = ptrtoint ptr %phy41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy41, align 4
  %host.i = getelementptr i8, ptr %.pn8398, i32 204
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %pdata1.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata1.i, align 4
  %channels.i = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels.i, align 4
  %16 = ptrtoint ptr %p.199 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p.199, align 4
  %slave.i = getelementptr i8, ptr %.pn8398, i32 212
  %18 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slave.i, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end40_crit_edge, label %if.end.i

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end.i:                                         ; preds = %land.lhs.true
  %sdata.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdata.i, align 4
  %has_reqsel.i = getelementptr inbounds %struct.soc_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %has_reqsel.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_reqsel.i, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.i = icmp eq i8 %23, 0
  br i1 %tobool2.not.i, label %s3c24xx_dma_phy_valid.exit, label %if.end.i.if.end40_crit_edge

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

s3c24xx_dma_phy_valid.exit:                       ; preds = %if.end.i
  %chansel.i = getelementptr %struct.s3c24xx_dma_channel, ptr %15, i32 %17, i32 2
  %24 = ptrtoint ptr %chansel.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chansel.i, align 2
  %conv.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %9, align 4
  %mul.i = shl i32 %27, 2
  %28 = shl i32 8, %mul.i
  %29 = and i32 %28, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.i.not = icmp eq i32 %29, 0
  br i1 %tobool6.i.not, label %s3c24xx_dma_phy_valid.exit.for.inc31_crit_edge, label %s3c24xx_dma_phy_valid.exit.if.end40_crit_edge

s3c24xx_dma_phy_valid.exit.if.end40_crit_edge:    ; preds = %s3c24xx_dma_phy_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

s3c24xx_dma_phy_valid.exit.for.inc31_crit_edge:   ; preds = %s3c24xx_dma_phy_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

for.inc31:                                        ; preds = %s3c24xx_dma_phy_valid.exit.for.inc31_crit_edge, %for.body26.for.inc31_crit_edge
  %30 = ptrtoint ptr %.pn8398 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn83 = load ptr, ptr %.pn8398, align 4
  %cmp24.not = icmp eq ptr %.pn83, %channels14
  br i1 %cmp24.not, label %for.inc31.if.end40_crit_edge, label %for.inc31.for.body26_crit_edge

for.inc31.for.body26_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.inc31.if.end40_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end40:                                         ; preds = %for.inc31.if.end40_crit_edge, %s3c24xx_dma_phy_valid.exit.if.end40_crit_edge, %if.end.i.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.then12.if.end40_crit_edge, %for.end.if.end40_crit_edge
  %next.1 = phi ptr [ %p.0.le, %for.end.if.end40_crit_edge ], [ null, %if.then12.if.end40_crit_edge ], [ null, %for.inc31.if.end40_crit_edge ], [ %p.199, %s3c24xx_dma_phy_valid.exit.if.end40_crit_edge ], [ %p.199, %land.lhs.true.if.end40_crit_edge ], [ %p.199, %if.end.i.if.end40_crit_edge ]
  %31 = ptrtoint ptr %phy41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #9, !srcloc !171
  %tobool42.not = icmp eq ptr %next.1, null
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end40
  %lock = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %next.1, i32 0, i32 2, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %state45 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %next.1, i32 0, i32 7
  %35 = ptrtoint ptr %state45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp46 = icmp eq i32 %36, 2
  br i1 %cmp46, label %if.then48, label %retry.critedge

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %phy41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy41, align 4
  tail call fastcc void @s3c24xx_dma_phy_reassign_start(ptr noundef %38, ptr noundef nonnull %next.1)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end57

if.else:                                          ; preds = %if.end40
  %39 = ptrtoint ptr %phy41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy41, align 4
  %host.i84 = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %host.i84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host.i84, align 4
  %sdata.i85 = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %sdata.i85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdata.i85, align 4
  %has_clocks.i = getelementptr inbounds %struct.soc_data, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %has_clocks.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_clocks.i, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i86 = icmp eq i8 %46, 0
  br i1 %tobool.not.i86, label %if.else.s3c24xx_dma_put_phy.exit_crit_edge, label %if.then.i

if.else.s3c24xx_dma_put_phy.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_put_phy.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %40, i32 0, i32 4
  %47 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %48) #9
  br label %s3c24xx_dma_put_phy.exit

s3c24xx_dma_put_phy.exit:                         ; preds = %if.then.i, %if.else.s3c24xx_dma_put_phy.exit_crit_edge
  %serving.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %40, i32 0, i32 6
  %49 = ptrtoint ptr %serving.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %serving.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %s3c24xx_dma_put_phy.exit, %if.then48
  %50 = ptrtoint ptr %phy41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %phy41, align 4
  %state59 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 7
  %51 = ptrtoint ptr %state59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %state59, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_dma_phy_reassign_start(ptr noundef %phy, ptr noundef %s3cchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_phy_reassign_start.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_phy_reassign_start, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy, align 4
  %name = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_phy_reassign_start.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %5, ptr noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %serving = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %phy, i32 0, i32 6
  %8 = ptrtoint ptr %serving to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %s3cchan, ptr %serving, align 4
  %phy4 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 3
  %9 = ptrtoint ptr %phy4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %phy, ptr %phy4, align 4
  %state = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 7
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  %desc_issued.i.i = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, %desc_issued.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -108
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %add.ptr.i.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.list_del.exit.i_crit_edge

do.end.list_del.exit.i_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %at.i = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 5
  %21 = ptrtoint ptr %at.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select.i.i, ptr %at.i, align 4
  %base.i.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %phy, i32 0, i32 2
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i1920.i = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1920.i) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %25 = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not21.i = icmp eq i32 %25, 0
  br i1 %tobool.not21.i, label %list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge, label %list_del.exit.i.do.end.i_crit_edge

list_del.exit.i.do.end.i_crit_edge:               ; preds = %list_del.exit.i
  br label %do.end.i

list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_start_next_txd.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %list_del.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !174
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %27, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %29 = and i32 %28, 4096
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %do.end.i.s3c24xx_dma_start_next_txd.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.s3c24xx_dma_start_next_txd.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_start_next_txd.exit

s3c24xx_dma_start_next_txd.exit:                  ; preds = %do.end.i.s3c24xx_dma_start_next_txd.exit_crit_edge, %list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge
  %dsg_list.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %spec.select.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dsg_list.i, align 4
  %at11.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %spec.select.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %at11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %at11.i, align 4
  tail call fastcc void @s3c24xx_dma_start_next_sg(ptr noundef %s3cchan, ptr noundef %spec.select.i.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_dma_phy_alloc_and_start(ptr noundef %s3cchan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %pdata.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp70.i = icmp sgt i32 %5, 0
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %phy_chans.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 6
  %slave.i.i = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %phy_chans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_chans.i, align 4
  %arrayidx.i = getelementptr %struct.s3c24xx_dma_phy, ptr %7, i32 %i.071.i
  %valid.i = getelementptr %struct.s3c24xx_dma_phy, ptr %7, i32 %i.071.i, i32 1
  %8 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid.i, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %pdata1.i.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdata1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata1.i.i, align 4
  %channels.i.i = getelementptr inbounds %struct.s3c24xx_dma_platdata, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels.i.i, align 4
  %16 = ptrtoint ptr %s3cchan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s3cchan, align 4
  %18 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slave.i.i, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.body3.i_crit_edge, label %if.end.i.i

if.end.i.do.body3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

if.end.i.i:                                       ; preds = %if.end.i
  %sdata.i.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %sdata.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdata.i.i, align 4
  %has_reqsel.i.i = getelementptr inbounds %struct.soc_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %has_reqsel.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_reqsel.i.i, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool2.not.i.i, label %s3c24xx_dma_phy_valid.exit.i, label %if.end.i.i.do.body3.i_crit_edge

if.end.i.i.do.body3.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

s3c24xx_dma_phy_valid.exit.i:                     ; preds = %if.end.i.i
  %chansel.i.i = getelementptr %struct.s3c24xx_dma_channel, ptr %15, i32 %17, i32 2
  %24 = ptrtoint ptr %chansel.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chansel.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %mul.i.i = shl i32 %27, 2
  %28 = shl i32 8, %mul.i.i
  %29 = and i32 %28, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool6.i.not.i, label %s3c24xx_dma_phy_valid.exit.i.for.inc.i_crit_edge, label %s3c24xx_dma_phy_valid.exit.i.do.body3.i_crit_edge

s3c24xx_dma_phy_valid.exit.i.do.body3.i_crit_edge: ; preds = %s3c24xx_dma_phy_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

s3c24xx_dma_phy_valid.exit.i.for.inc.i_crit_edge: ; preds = %s3c24xx_dma_phy_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body3.i:                                       ; preds = %s3c24xx_dma_phy_valid.exit.i.do.body3.i_crit_edge, %if.end.i.i.do.body3.i_crit_edge, %if.end.i.do.body3.i_crit_edge
  %lock.i = getelementptr %struct.s3c24xx_dma_phy, ptr %7, i32 %i.071.i, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %serving.i = getelementptr %struct.s3c24xx_dma_phy, ptr %7, i32 %i.071.i, i32 6
  %30 = ptrtoint ptr %serving.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %serving.i, align 4
  %tobool9.not.i = icmp eq ptr %31, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %serving.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %s3cchan, ptr %serving.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #9
  br label %for.end.i

if.end13.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %s3c24xx_dma_phy_valid.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %33 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %cmp.i = icmp slt i32 %inc.i, %36
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then10.i, %entry.for.end.i_crit_edge
  %i.067.i = phi i32 [ %i.071.i, %if.then10.i ], [ 0, %entry.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %phy.1.i = phi ptr [ %arrayidx.i, %if.then10.i ], [ null, %entry.for.end.i_crit_edge ], [ %arrayidx.i, %for.inc.i.for.end.i_crit_edge ]
  %37 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.067.i, i32 %40)
  %cmp17.i = icmp eq i32 %i.067.i, %40
  br i1 %cmp17.i, label %do.end22.i, label %if.end23.i

do.end22.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.55) #12
  br label %do.body

if.end23.i:                                       ; preds = %for.end.i
  %sdata.i = getelementptr inbounds %struct.s3c24xx_dma_engine, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdata.i, align 4
  %has_clocks.i = getelementptr inbounds %struct.soc_data, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %has_clocks.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_clocks.i, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool24.not.i = icmp eq i8 %46, 0
  br i1 %tobool24.not.i, label %if.end23.i.s3c24xx_dma_get_phy.exit_crit_edge, label %if.then25.i

if.end23.i.s3c24xx_dma_get_phy.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_get_phy.exit

if.then25.i:                                      ; preds = %if.end23.i
  %clk.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %phy.1.i, i32 0, i32 4
  %47 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk.i, align 4
  %call26.i = tail call i32 @clk_enable(ptr noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then25.i.s3c24xx_dma_get_phy.exit_crit_edge, label %do.end31.i

if.then25.i.s3c24xx_dma_get_phy.exit_crit_edge:   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_get_phy.exit

do.end31.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %dev33.i = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %phy.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phy.1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.58, i32 noundef %52, i32 noundef %call26.i) #12
  %serving34.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %phy.1.i, i32 0, i32 6
  %53 = ptrtoint ptr %serving34.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %serving34.i, align 4
  br label %do.body

s3c24xx_dma_get_phy.exit:                         ; preds = %if.then25.i.s3c24xx_dma_get_phy.exit_crit_edge, %if.end23.i.s3c24xx_dma_get_phy.exit_crit_edge
  %tobool.not = icmp eq ptr %phy.1.i, null
  br i1 %tobool.not, label %s3c24xx_dma_get_phy.exit.do.body_crit_edge, label %do.body8

s3c24xx_dma_get_phy.exit.do.body_crit_edge:       ; preds = %s3c24xx_dma_get_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %s3c24xx_dma_get_phy.exit.do.body_crit_edge, %do.end31.i, %do.end22.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_phy_alloc_and_start, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !167

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %name = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 1
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef %57) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %state = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 7
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %state, align 4
  br label %cleanup

do.body8:                                         ; preds = %s3c24xx_dma_get_phy.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_dma_phy_alloc_and_start, %do.end28)) #9
          to label %if.then22 [label %do.end28], !srcloc !167

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %phy.1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %phy.1.i, align 4
  %name25 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 1
  %63 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug239, ptr noundef %dev24, ptr noundef nonnull @.str.54, i32 noundef %62, ptr noundef %64) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %do.body8
  %phy29 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 3
  %65 = ptrtoint ptr %phy29 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %phy.1.i, ptr %phy29, align 4
  %state30 = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 7
  %66 = ptrtoint ptr %state30 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %state30, align 4
  %desc_issued.i.i = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 2, i32 6
  %67 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %68, %desc_issued.i.i
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 -108
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %add.ptr.i.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end28.list_del.exit.i_crit_edge

do.end28.list_del.exit.i_crit_edge:               ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end28.list_del.exit.i_crit_edge
  %75 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i.i, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %at.i = getelementptr inbounds %struct.s3c24xx_dma_chan, ptr %s3cchan, i32 0, i32 5
  %77 = ptrtoint ptr %at.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %spec.select.i.i, ptr %at.i, align 4
  %base.i.i = getelementptr inbounds %struct.s3c24xx_dma_phy, ptr %phy.1.i, i32 0, i32 2
  %78 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i1920.i = getelementptr i8, ptr %79, i32 20
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1920.i) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %81 = and i32 %80, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not21.i = icmp eq i32 %81, 0
  br i1 %tobool.not21.i, label %list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge, label %list_del.exit.i.do.end.i_crit_edge

list_del.exit.i.do.end.i_crit_edge:               ; preds = %list_del.exit.i
  br label %do.end.i

list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_start_next_txd.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %list_del.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !174
  %82 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %83, i32 20
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %85 = and i32 %84, 4096
  %tobool.not.i46 = icmp eq i32 %85, 0
  br i1 %tobool.not.i46, label %do.end.i.s3c24xx_dma_start_next_txd.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.s3c24xx_dma_start_next_txd.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_start_next_txd.exit

s3c24xx_dma_start_next_txd.exit:                  ; preds = %do.end.i.s3c24xx_dma_start_next_txd.exit_crit_edge, %list_del.exit.i.s3c24xx_dma_start_next_txd.exit_crit_edge
  %dsg_list.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %spec.select.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dsg_list.i, align 4
  %at11.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %spec.select.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %at11.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %at11.i, align 4
  tail call fastcc void @s3c24xx_dma_start_next_sg(ptr noundef %s3cchan, ptr noundef %spec.select.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %s3c24xx_dma_start_next_txd.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_dma_desc_free(ptr noundef %vd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %slave = getelementptr i8, ptr %1, i32 244
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %slave, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %unmap.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 9
  %4 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %5) #9
  %6 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %unmap.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %dsg_list.i = getelementptr inbounds %struct.s3c24xx_txd, ptr %vd, i32 0, i32 1
  %7 = ptrtoint ptr %dsg_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsg_list.i, align 4
  %cmp.not20.i = icmp eq ptr %8, %dsg_list.i
  br i1 %cmp.not20.i, label %if.end.s3c24xx_dma_free_txd.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.s3c24xx_dma_free_txd.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %8, %if.end.for.body.i_crit_edge ]
  %dsg.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -12
  %9 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %dsg.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %dsg_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_dma_free_txd.exit

s3c24xx_dma_free_txd.exit:                        ; preds = %list_del.exit.i.s3c24xx_dma_free_txd.exit_crit_edge, %if.end.s3c24xx_dma_free_txd.exit_crit_edge
  tail call void @kfree(ptr noundef %vd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !138, !140, !141, !142, !144, !145, !146, !147, !148, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_s3c24xx_dma__247_1411_s3c24xx_dma_driver_init6, !1, !"__initcall__kmod_s3c24xx_dma__247_1411_s3c24xx_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1411, i32 1}
!2 = !{ptr @__exitcall_s3c24xx_dma_driver_exit, !1, !"__exitcall_s3c24xx_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__ksymtab_s3c24xx_dma_filter, !4, !"__ksymtab_s3c24xx_dma_filter", i1 false, i1 false}
!4 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1424, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1426, i32 1}
!7 = !{ptr @__UNIQUE_ID_author249, !8, !"__UNIQUE_ID_author249", i1 false, i1 false}
!8 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1427, i32 1}
!9 = !{ptr @__UNIQUE_ID_file250, !10, !"__UNIQUE_ID_file250", i1 false, i1 false}
!10 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1428, i32 1}
!11 = !{ptr @__UNIQUE_ID_license251, !10, !"__UNIQUE_ID_license251", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1404, i32 11}
!14 = !{ptr @s3c24xx_dma_driver, !15, !"s3c24xx_dma_driver", i1 false, i1 false}
!15 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1402, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1195, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s3c24xx_dma_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s3c24xx_dma_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1201, i32 3}
!26 = !{ptr @s3c24xx_dma_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @s3c24xx_dma_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1246, i32 4}
!30 = !{ptr @s3c24xx_dma_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @s3c24xx_dma_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1252, i32 22}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1255, i32 5}
!36 = !{ptr @s3c24xx_dma_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @s3c24xx_dma_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1262, i32 5}
!40 = !{ptr @s3c24xx_dma_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @s3c24xx_dma_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @s3c24xx_dma_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1268, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1271, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @s3c24xx_dma_probe.__UNIQUE_ID_ddebug246, !46, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!49 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1310, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @s3c24xx_dma_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @s3c24xx_dma_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1320, i32 3}
!58 = !{ptr @s3c24xx_dma_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s3c24xx_dma_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1328, i32 3}
!62 = !{ptr @s3c24xx_dma_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @s3c24xx_dma_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1336, i32 3}
!66 = !{ptr @s3c24xx_dma_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @s3c24xx_dma_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1343, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @s3c24xx_dma_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @s3c24xx_dma_probe._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/s3c24xx-dma.c", i32 643, i32 2}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @s3c24xx_dma_irq.__UNIQUE_ID_ddebug241, !74, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/s3c24xx-dma.c", i32 653, i32 3}
!79 = !{ptr @s3c24xx_dma_irq._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @s3c24xx_dma_irq._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!83 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !82, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/s3c24xx-dma.c", i32 554, i32 2}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @s3c24xx_dma_phy_reassign_start.__UNIQUE_ID_ddebug240, !87, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/s3c24xx-dma.c", i32 825, i32 2}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @s3c24xx_dma_prep_memcpy.__UNIQUE_ID_ddebug242, !91, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/s3c24xx-dma.c", i32 829, i32 3}
!96 = !{ptr @s3c24xx_dma_prep_memcpy._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @s3c24xx_dma_prep_memcpy._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/s3c24xx-dma.c", i32 534, i32 3}
!100 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug238, !99, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/s3c24xx-dma.c", i32 540, i32 2}
!104 = !{ptr @s3c24xx_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug239, !103, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/s3c24xx-dma.c", i32 316, i32 3}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @s3c24xx_dma_get_phy._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @s3c24xx_dma_get_phy._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/dma/s3c24xx-dma.c", i32 324, i32 4}
!112 = !{ptr @s3c24xx_dma_get_phy._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @s3c24xx_dma_get_phy._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/s3c24xx-dma.c", i32 710, i32 3}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @s3c24xx_dma_terminate_all._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @s3c24xx_dma_terminate_all._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/s3c24xx-dma.c", i32 990, i32 2}
!121 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @s3c24xx_dma_prep_slave_sg.__UNIQUE_ID_ddebug244, !120, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1037, i32 3}
!125 = !{ptr @s3c24xx_dma_prep_slave_sg._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @s3c24xx_dma_prep_slave_sg._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/s3c24xx-dma.c", i32 892, i32 2}
!129 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @s3c24xx_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug243, !128, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!131 = !{ptr @s3c24xx_dma_prep_dma_cyclic._entry, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/dma/s3c24xx-dma.c", i32 897, i32 3}
!133 = !{ptr @s3c24xx_dma_prep_dma_cyclic._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1112, i32 39}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1116, i32 39}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1120, i32 3}
!140 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @s3c24xx_dma_init_virtual_channels.__UNIQUE_ID_ddebug245, !139, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1127, i32 2}
!144 = !{ptr @s3c24xx_dma_init_virtual_channels._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @s3c24xx_dma_init_virtual_channels._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @s3c24xx_dma_driver_ids, !149, !"s3c24xx_dma_driver_ids", i1 false, i1 false}
!149 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1165, i32 40}
!150 = !{ptr @soc_s3c2410, !151, !"soc_s3c2410", i1 false, i1 false}
!151 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1145, i32 24}
!152 = !{ptr @soc_s3c2412, !153, !"soc_s3c2412", i1 false, i1 false}
!153 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1152, i32 24}
!154 = !{ptr @soc_s3c2443, !155, !"soc_s3c2443", i1 false, i1 false}
!155 = !{!"../drivers/dma/s3c24xx-dma.c", i32 1159, i32 24}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i8 0, i8 2}
!167 = !{i64 2148326597, i64 2148326602, i64 2148326615, i64 2148326659, i64 2148326693, i64 2148326714}
!168 = !{i64 6317779}
!169 = !{i64 2154335993}
!170 = !{i64 2154340541}
!171 = !{i64 6317361}
!172 = !{i64 2154278033, i64 2154278520, i64 2154278070, i64 2154278126, i64 2154278160, i64 2154278184, i64 2154278225, i64 2154278246, i64 2154278274, i64 2154278308}
!173 = !{i64 2154353588}
!174 = !{i64 2154353430}
!175 = !{i64 2154279533}
!176 = !{i64 2154342678}
!177 = !{i64 2154353139}
