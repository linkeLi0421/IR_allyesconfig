; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/usdhi6rol0.c_pt.bc'
source_filename = "../drivers/mmc/host/usdhi6rol0.c"
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
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usdhi6_host = type { ptr, ptr, ptr, ptr, %struct.usdhi6_page, ptr, i32, i32, %struct.usdhi6_page, %struct.scatterlist, [512 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, ptr, ptr, i8, ptr, ptr }
%struct.usdhi6_page = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_usdhi6rol0__302_1911_usdhi6_driver_init6 = internal global ptr @usdhi6_driver_init, section ".initcall6.init", align 4
@usdhi6_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usdhi6_probe, ptr @usdhi6_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @usdhi6_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_usdhi6_driver_exit = internal global ptr @usdhi6_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [62 x i8] c"usdhi6rol0.description=Renesas usdhi6rol0 SD/SDIO host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [44 x i8] c"usdhi6rol0.file=drivers/mmc/host/usdhi6rol0\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [26 x i8] c"usdhi6rol0.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [37 x i8] c"usdhi6rol0.alias=platform:usdhi6rol0\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [64 x i8] c"usdhi6rol0.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhi6rol0\00", [21 x i8] zeroinitializer }, align 32
@usdhi6_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usdhi6rol0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"card detect\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDIO\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state_uhs\00", [22 x i8] zeroinitializer }, align 32
@usdhi6_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1815, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Version not recognized %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usdhi6_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mmc/host/usdhi6rol0.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usdhi6_probe._entry_ptr = internal global ptr @usdhi6_probe._entry, section ".printk_index", align 4
@usdhi6_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1820, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"A USDHI6ROL0 SD host detected with %d ports\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usdhi6_probe._entry_ptr.13 = internal global ptr @usdhi6_probe._entry.10, section ".printk_index", align 4
@usdhi6_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&host->timeout_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@usdhi6_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&host->timeout_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@usdhi6_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @usdhi6_request, ptr null, ptr @usdhi6_set_ios, ptr @usdhi6_get_ro, ptr @usdhi6_get_cd, ptr @usdhi6_enable_sdio_irq, ptr null, ptr null, ptr @usdhi6_sig_volt_switch, ptr @usdhi6_card_busy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@usdhi6_sd.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.7, ptr @.str.18, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usdhi6_sd\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IRQ status = 0x%08x, status2 = 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@usdhi6_sd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.7, i32 1623, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): INFO2 error bits 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usdhi6_sd._entry_ptr = internal global ptr @usdhi6_sd._entry, section ".printk_index", align 4
@usdhi6_sd.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.7, ptr @.str.19, i8 1, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usdhi6_sd_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 1520, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(): %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usdhi6_sd_bh\00", [19 x i8] zeroinitializer }, align 32
@usdhi6_sd_bh._entry_ptr = internal global ptr @usdhi6_sd_bh._entry, section ".printk_index", align 4
@usdhi6_sd_bh._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 1530, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@usdhi6_sd_bh._entry_ptr.24 = internal global ptr @usdhi6_sd_bh._entry.23, section ".printk_index", align 4
@usdhi6_sd_bh._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.7, i32 1535, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid state %u\0A\00", [46 x i8] zeroinitializer }, align 32
@usdhi6_sd_bh._entry_ptr.27 = internal global ptr @usdhi6_sd_bh._entry.25, section ".printk_index", align 4
@usdhi6_sd_bh._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.7, i32 1568, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): data error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@usdhi6_sd_bh._entry_ptr.30 = internal global ptr @usdhi6_sd_bh._entry.28, section ".printk_index", align 4
@usdhi6_resp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 1241, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CMD%d: response expected but is missing!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usdhi6_resp_read\00", [47 x i8] zeroinitializer }, align 32
@usdhi6_resp_read._entry_ptr = internal global ptr @usdhi6_resp_read._entry, section ".printk_index", align 4
@usdhi6_resp_read.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.7, ptr @.str.33, i8 1, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Response 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@usdhi6_blk_read.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.7, ptr @.str.21, i8 1, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhi6_blk_read\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%p not properly unmapped!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SG size %u isn't a multiple of block size %u\0A\00", [50 x i8] zeroinitializer }, align 32
@usdhi6_sg_map.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.7, ptr @.str.38, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usdhi6_sg_map\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Mapped %p (%lx) at %p + %u for CMD%u @ 0x%p\0A\00", [51 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@usdhi6_blk_bounce.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.7, ptr @.str.41, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usdhi6_blk_bounce\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): CMD%u of %u SG: %ux%u @ 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@usdhi6_sg_advance.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.7, ptr @.str.43, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usdhi6_sg_advance\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): %zu of %zu @ %zu\0A\00", [40 x i8] zeroinitializer }, align 32
@usdhi6_sg_advance.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.7, ptr @.str.44, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Mapped %p (%lx) at %p for CMD%u @ 0x%p\0A\00", [56 x i8] zeroinitializer }, align 32
@usdhi6_blk_write.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.7, ptr @.str.21, i8 1, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usdhi6_blk_write\00", [47 x i8] zeroinitializer }, align 32
@usdhi6_dma_check_error.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.7, ptr @.str.47, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usdhi6_dma_check_error\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): IO error %d, status 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@usdhi6_dma_check_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.7, i32 652, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DMA failed: %d, falling back to PIO\0A\00", [59 x i8] zeroinitializer }, align 32
@usdhi6_dma_check_error._entry_ptr = internal global ptr @usdhi6_dma_check_error._entry, section ".printk_index", align 4
@usdhi6_dma_check_error._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.7, i32 662, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected response received!\0A\00", [33 x i8] zeroinitializer }, align 32
@usdhi6_dma_check_error._entry_ptr.51 = internal global ptr @usdhi6_dma_check_error._entry.49, section ".printk_index", align 4
@usdhi6_dma_kill.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.7, ptr @.str.53, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhi6_dma_kill\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): SG of %u: %ux%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@usdhi6_error_code.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.7, ptr @.str.56, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usdhi6_error_code\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"T-out sts 0x%x, resp 0x%x, state %u, CMD%d\0A\00", [52 x i8] zeroinitializer }, align 32
@usdhi6_error_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.55, ptr @.str.7, i32 292, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@usdhi6_error_code._entry_ptr = internal global ptr @usdhi6_error_code._entry, section ".printk_index", align 4
@usdhi6_error_code._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.7, i32 299, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Err sts 0x%x, state %u, CMD%d\0A\00", [33 x i8] zeroinitializer }, align 32
@usdhi6_error_code._entry_ptr.59 = internal global ptr @usdhi6_error_code._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Page %p or %p not unmapped: wait %u, CMD%d(%c) @ +0x%zx %ux%u in SG%u!\0A\00", [56 x i8] zeroinitializer }, align 32
@usdhi6_request_done.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.7, ptr @.str.62, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usdhi6_request_done\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(CMD%d: %ux%u): err %d %d %d\0A\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@usdhi6_stop_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.7, i32 1360, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported stop CMD%d for CMD%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhi6_stop_cmd\00", [16 x i8] zeroinitializer }, align 32
@usdhi6_stop_cmd._entry_ptr = internal global ptr @usdhi6_stop_cmd._entry, section ".printk_index", align 4
@usdhi6_sdio.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.7, ptr @.str.66, i8 1, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhi6_sdio\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): status 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@usdhi6_timeout_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.7, i32 1694, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s timeout wait %u CMD%d: IRQ 0x%08x:0x%08x, last IRQ 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usdhi6_timeout_work\00", [44 x i8] zeroinitializer }, align 32
@usdhi6_timeout_work._entry_ptr = internal global ptr @usdhi6_timeout_work._entry, section ".printk_index", align 4
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@usdhi6_timeout_work._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.68, ptr @.str.7, i32 1703, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@usdhi6_timeout_work._entry_ptr.72 = internal global ptr @usdhi6_timeout_work._entry.71, section ".printk_index", align 4
@usdhi6_timeout_work.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.7, ptr @.str.73, i8 1, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%c: page #%u @ +0x%zx %ux%u in SG%u. Current SG %u bytes @ %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@usdhi6_dma_request.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.7, ptr @.str.76, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usdhi6_dma_request\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: TX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@usdhi6_dma_request.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.7, ptr @.str.78, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@usdhi6_timeout_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.7, ptr @.str.80, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usdhi6_timeout_set\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Set %s timeout %lu ticks @ %lu Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@usdhi6_rq_start.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.7, ptr @.str.83, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhi6_rq_start\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Command active, request aborted\0A\00", [63 x i8] zeroinitializer }, align 32
@usdhi6_rq_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.7, i32 1035, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): %u blocks of %u bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@usdhi6_rq_start._entry_ptr = internal global ptr @usdhi6_rq_start._entry, section ".printk_index", align 4
@usdhi6_rq_start.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.7, ptr @.str.85, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad SG of %u: %ux%u @ %u\0A\00", [38 x i8] zeroinitializer }, align 32
@usdhi6_rq_start.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.7, ptr @.str.86, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s(): request opcode %u, %u blocks of %u bytes in %u segments, %s %s @+0x%x%s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" + stop\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@usdhi6_rq_start.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.7, ptr @.str.91, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): request opcode %u\0A\00", [39 x i8] zeroinitializer }, align 32
@usdhi6_cmd_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.7, i32 977, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown response type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usdhi6_cmd_flags\00", [47 x i8] zeroinitializer }, align 32
@usdhi6_cmd_flags._entry_ptr = internal global ptr @usdhi6_cmd_flags._entry, section ".printk_index", align 4
@usdhi6_dma_setup.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.7, ptr @.str.95, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usdhi6_dma_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): mapped %d -> %d, cookie %d @ %p\0A\00", [57 x i8] zeroinitializer }, align 32
@usdhi6_dma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.94, ptr @.str.7, i32 609, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@usdhi6_dma_setup._entry_ptr = internal global ptr @usdhi6_dma_setup._entry, section ".printk_index", align 4
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: NULL data in DMA completion for %p!\0A\00", [55 x i8] zeroinitializer }, align 32
@usdhi6_dma_complete.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.7, ptr @.str.98, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usdhi6_dma_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): CMD%u DMA completed\0A\00", [37 x i8] zeroinitializer }, align 32
@usdhi6_set_ios.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.7, ptr @.str.100, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usdhi6_set_ios\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%uHz, OCR: %u, power %u, bus-width %u, timing %u\0A\00", [46 x i8] zeroinitializer }, align 32
@usdhi6_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.7, i32 839, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot reset the interface!\0A\00", [35 x i8] zeroinitializer }, align 32
@usdhi6_set_ios._entry_ptr = internal global ptr @usdhi6_set_ios._entry, section ".printk_index", align 4
@usdhi6_set_ios._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.99, ptr @.str.7, i32 855, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"4 bits are required for DDR\0A\00", [35 x i8] zeroinitializer }, align 32
@usdhi6_set_ios._entry_ptr.104 = internal global ptr @usdhi6_set_ios._entry.102, section ".printk_index", align 4
@usdhi6_clk_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.7, i32 740, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SD bus busy, clock set aborted\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usdhi6_clk_set\00", [17 x i8] zeroinitializer }, align 32
@usdhi6_clk_set._entry_ptr = internal global ptr @usdhi6_clk_set._entry, section ".printk_index", align 4
@usdhi6_clk_set.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.7, ptr @.str.107, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"target %lu, div %u, set %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@usdhi6_enable_sdio_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.7, ptr @.str.109, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usdhi6_enable_sdio_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): %sable\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@usdhi6_sig_volt_switch.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@usdhi6_sig_volt_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.7, i32 1185, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set pinstate err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usdhi6_sig_volt_switch\00", [41 x i8] zeroinitializer }, align 32
@usdhi6_sig_volt_switch._entry_ptr = internal global ptr @usdhi6_sig_volt_switch._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 53]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 25, i64 53]
@__sancov_gen_cov_switch_values.117 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 18, i64 25, i64 53]
@__sancov_gen_cov_switch_values.127 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 18, i64 25, i64 53]
@__sancov_gen_cov_switch_values.129 = internal global [7 x i64] [i64 5, i64 32, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"usdhi6_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1901, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1905, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"usdhi6_of_match\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1738, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1757, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1758, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1759, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1791, i32 55 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1815, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1819, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1843, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [11 x i8] c"usdhi6_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1198, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1592, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1621, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1520, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1529, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1535, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1567, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1240, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1259, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1297, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 362, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 363, i32 6 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 387, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 44, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 320, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 466, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 510, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1340, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 643, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 651, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 662, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 630, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1169, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 286, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 290, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 298, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 906, i32 6 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 917, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1358, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1638, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1689, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1703, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1720, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 681, i32 55 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 682, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 698, i32 55 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 699, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 893, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1003, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1034, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1051, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1063, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1070, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 975, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 600, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 608, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 555, i32 6 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 559, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 824, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 839, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 854, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 740, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 769, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1145, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private constant [33 x i8] c"../drivers/mmc/host/usdhi6rol0.c\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1184, i32 3 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_usdhi6_driver_exit, ptr @__initcall__kmod_usdhi6rol0__302_1911_usdhi6_driver_init6, ptr @usdhi6_clk_set._entry, ptr @usdhi6_clk_set._entry_ptr, ptr @usdhi6_cmd_flags._entry, ptr @usdhi6_cmd_flags._entry_ptr, ptr @usdhi6_dma_check_error._entry, ptr @usdhi6_dma_check_error._entry.49, ptr @usdhi6_dma_check_error._entry_ptr, ptr @usdhi6_dma_check_error._entry_ptr.51, ptr @usdhi6_dma_setup._entry, ptr @usdhi6_dma_setup._entry_ptr, ptr @usdhi6_driver_exit, ptr @usdhi6_error_code._entry, ptr @usdhi6_error_code._entry.57, ptr @usdhi6_error_code._entry_ptr, ptr @usdhi6_error_code._entry_ptr.59, ptr @usdhi6_probe._entry, ptr @usdhi6_probe._entry.10, ptr @usdhi6_probe._entry_ptr, ptr @usdhi6_probe._entry_ptr.13, ptr @usdhi6_resp_read._entry, ptr @usdhi6_resp_read._entry_ptr, ptr @usdhi6_rq_start._entry, ptr @usdhi6_rq_start._entry_ptr, ptr @usdhi6_sd._entry, ptr @usdhi6_sd._entry_ptr, ptr @usdhi6_sd_bh._entry, ptr @usdhi6_sd_bh._entry.23, ptr @usdhi6_sd_bh._entry.25, ptr @usdhi6_sd_bh._entry.28, ptr @usdhi6_sd_bh._entry_ptr, ptr @usdhi6_sd_bh._entry_ptr.24, ptr @usdhi6_sd_bh._entry_ptr.27, ptr @usdhi6_sd_bh._entry_ptr.30, ptr @usdhi6_set_ios._entry, ptr @usdhi6_set_ios._entry.102, ptr @usdhi6_set_ios._entry_ptr, ptr @usdhi6_set_ios._entry_ptr.104, ptr @usdhi6_sig_volt_switch._entry, ptr @usdhi6_sig_volt_switch._entry_ptr, ptr @usdhi6_stop_cmd._entry, ptr @usdhi6_stop_cmd._entry_ptr, ptr @usdhi6_timeout_work._entry, ptr @usdhi6_timeout_work._entry.71, ptr @usdhi6_timeout_work._entry_ptr, ptr @usdhi6_timeout_work._entry_ptr.72, ptr @usdhi6_driver, ptr @.str, ptr @usdhi6_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @usdhi6_probe.__key, ptr @.str.14, ptr @usdhi6_probe.__key.15, ptr @.str.16, ptr @usdhi6_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_sd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_sd_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_sd_bh._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_sd_bh._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_sd_bh._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_resp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_dma_check_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_dma_check_error._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_error_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_error_code._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_stop_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_timeout_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_timeout_work._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_rq_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_cmd_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_dma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_set_ios._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_clk_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhi6_sig_volt_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usdhi6_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usdhi6_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @usdhi6_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  %call2 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #7
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @mmc_alloc_host(i32 noundef 744, ptr noundef %dev1) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.e_free_mmc_crit_edge

if.end10.e_free_mmc_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_free_mmc

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.e_free_mmc_crit_edge, label %if.end18

if.end14.e_free_mmc_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_free_mmc

if.end18:                                         ; preds = %if.end14
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 70
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %private.i, align 4
  %wait = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 10, i32 1, i32 1
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait, align 4
  %timeout = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 23
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 400, ptr %timeout, align 4
  %max_busy_timeout = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 26
  %5 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4000, ptr %max_busy_timeout, align 4
  %call23 = tail call ptr @devm_pinctrl_get(ptr noundef %dev1) #7
  %pinctrl = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 25
  %6 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %pinctrl, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call23 to i32
  br label %e_free_mmc

if.end29:                                         ; preds = %if.end18
  %call31 = tail call ptr @pinctrl_lookup_state(ptr noundef %call23, ptr noundef nonnull @.str.4) #7
  %pins_uhs = getelementptr inbounds %struct.usdhi6_host, ptr %private.i, i32 0, i32 28
  %8 = ptrtoint ptr %pins_uhs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %pins_uhs, align 4
  %call32 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call33 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call32) #7
  %base = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call33, ptr %base, align 4
  %cmp.i212 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call33 to i32
  br label %e_free_mmc

if.end39:                                         ; preds = %if.end29
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call40, ptr %clk, align 4
  %cmp.i213 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call40 to i32
  br label %e_free_mmc

if.end46:                                         ; preds = %if.end39
  %call48 = tail call i32 @clk_get_rate(ptr noundef %call40) #7
  %imclk = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 10, i32 3, i32 3
  %13 = ptrtoint ptr %imclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call48, ptr %imclk, align 4
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call50 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end46.e_free_mmc_crit_edge, label %if.end53

if.end46.e_free_mmc_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_free_mmc

if.end53:                                         ; preds = %if.end46
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 452
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %and = and i32 %19, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2573, i32 %and)
  %cmp55.not = icmp eq i32 %and, 2573
  br i1 %cmp55.not, label %do.end60, label %if.then56

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %19) #10
  br label %e_clk_off

do.end60:                                         ; preds = %if.end53
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i215 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #7, !srcloc !261
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %shr = lshr i32 %23, 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %shr) #10
  tail call fastcc void @usdhi6_mask_all(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp62 = icmp sgt i32 %call, -1
  br i1 %cmp62, label %if.then63, label %if.else

if.then63:                                        ; preds = %do.end60
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then63.dev_name.exit_crit_edge

if.then63.dev_name.exit_crit_edge:                ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then63.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %if.then63.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call, ptr noundef nonnull @usdhi6_cd, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %private.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp66 = icmp slt i32 %call.i, 0
  br i1 %cmp66, label %dev_name.exit.e_clk_off_crit_edge, label %dev_name.exit.if.end69_crit_edge

dev_name.exit.if.end69_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

dev_name.exit.e_clk_off_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_clk_off

if.else:                                          ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 16
  %28 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps, align 32
  %or = or i32 %29, 32
  store i32 %or, ptr %caps, align 32
  br label %if.end69

if.end69:                                         ; preds = %if.else, %dev_name.exit.if.end69_crit_edge
  %init_name.i216 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %init_name.i216 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i216, align 8
  %tobool.not.i217 = icmp eq ptr %31, null
  br i1 %tobool.not.i217, label %if.end.i218, label %if.end69.dev_name.exit220_crit_edge

if.end69.dev_name.exit220_crit_edge:              ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit220

if.end.i218:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit220

dev_name.exit220:                                 ; preds = %if.end.i218, %if.end69.dev_name.exit220_crit_edge
  %retval.0.i219 = phi ptr [ %33, %if.end.i218 ], [ %31, %if.end69.dev_name.exit220_crit_edge ]
  %call71 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call2, ptr noundef nonnull @usdhi6_sd, ptr noundef nonnull @usdhi6_sd_bh, i32 noundef 0, ptr noundef %retval.0.i219, ptr noundef %private.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %dev_name.exit220.e_clk_off_crit_edge, label %if.end74

dev_name.exit220.e_clk_off_crit_edge:             ; preds = %dev_name.exit220
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_clk_off

if.end74:                                         ; preds = %dev_name.exit220
  %34 = ptrtoint ptr %init_name.i216 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i216, align 8
  %tobool.not.i222 = icmp eq ptr %35, null
  br i1 %tobool.not.i222, label %if.end.i223, label %if.end74.dev_name.exit225_crit_edge

if.end74.dev_name.exit225_crit_edge:              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit225

if.end.i223:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit225

dev_name.exit225:                                 ; preds = %if.end.i223, %if.end74.dev_name.exit225_crit_edge
  %retval.0.i224 = phi ptr [ %37, %if.end.i223 ], [ %35, %if.end74.dev_name.exit225_crit_edge ]
  %call.i226 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call3, ptr noundef nonnull @usdhi6_sdio, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i224, ptr noundef %private.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp77 = icmp slt i32 %call.i226, 0
  br i1 %cmp77, label %dev_name.exit225.e_clk_off_crit_edge, label %do.body81

dev_name.exit225.e_clk_off_crit_edge:             ; preds = %dev_name.exit225
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_clk_off

do.body81:                                        ; preds = %dev_name.exit225
  %timeout_work = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 11
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #7
  %38 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @usdhi6_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry88 = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry88, ptr %entry88, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry88, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @usdhi6_timeout_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 1, i32 1, i32 12, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @usdhi6_probe.__key.15) #7
  %42 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call32, align 4
  tail call fastcc void @usdhi6_dma_request(ptr noundef %private.i, i32 noundef %43)
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 3
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @usdhi6_ops, ptr %ops, align 4
  %caps99 = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 16
  %45 = ptrtoint ptr %caps99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps99, align 32
  %or100 = or i32 %46, 14
  store i32 %or100, ptr %caps99, align 32
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 21
  %47 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 32, ptr %max_segs, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 24
  %48 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 512, ptr %max_blk_size, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 23
  %49 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 131072, ptr %max_req_size, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 25
  %50 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 256, ptr %max_blk_count, align 128
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 20
  %51 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 131072, ptr %max_seg_size, align 16
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 6
  %52 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool105.not = icmp eq i32 %53, 0
  br i1 %tobool105.not, label %if.then106, label %do.body81.if.end109_crit_edge

do.body81.if.end109_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then106:                                       ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %imclk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %imclk, align 4
  %56 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %f_max, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %do.body81.if.end109_crit_edge
  %57 = ptrtoint ptr %imclk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %imclk, align 4
  %div111211 = lshr i32 %58, 9
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call7, i32 0, i32 5
  %59 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div111211, ptr %f_min, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call112 = tail call i32 @mmc_add_host(ptr noundef nonnull %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %e_release_dma, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

e_release_dma:                                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @usdhi6_dma_release(ptr noundef %private.i)
  br label %e_clk_off

e_clk_off:                                        ; preds = %e_release_dma, %dev_name.exit225.e_clk_off_crit_edge, %dev_name.exit220.e_clk_off_crit_edge, %dev_name.exit.e_clk_off_crit_edge, %if.then56
  %ret.0 = phi i32 [ -1, %if.then56 ], [ %call.i, %dev_name.exit.e_clk_off_crit_edge ], [ %call71, %dev_name.exit220.e_clk_off_crit_edge ], [ %call.i226, %dev_name.exit225.e_clk_off_crit_edge ], [ %call112, %e_release_dma ]
  %61 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %62) #7
  tail call void @clk_unprepare(ptr noundef %62) #7
  br label %e_free_mmc

e_free_mmc:                                       ; preds = %e_clk_off, %if.end46.e_free_mmc_crit_edge, %if.then43, %if.then36, %if.then26, %if.end14.e_free_mmc_crit_edge, %if.end10.e_free_mmc_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end10.e_free_mmc_crit_edge ], [ %call15, %if.end14.e_free_mmc_crit_edge ], [ %7, %if.then26 ], [ %10, %if.then36 ], [ %12, %if.then43 ], [ %call50, %if.end46.e_free_mmc_crit_edge ], [ %ret.0, %e_clk_off ]
  tail call void @mmc_free_host(ptr noundef nonnull %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %e_free_mmc, %if.end109.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %e_free_mmc ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end109.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mmc_remove_host(ptr noundef %3) #7
  %status_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %status_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 797, ptr %status_mask.i.i, align 4
  %status2_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 35711, ptr %status2_mask.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 486735872) #7, !srcloc !264
  %8 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status2_mask.i.i, align 4
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %12) #7, !srcloc !264
  %timeout_work = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 22
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #7
  %dma_active.i = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dma_active.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %chan_tx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %15) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %chan_rx.i = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan_rx.i, align 4
  %tobool3.not.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i, label %if.end.i.usdhi6_dma_release.exit_crit_edge, label %if.then4.i

if.end.i.usdhi6_dma_release.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_dma_release.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %chan_rx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %18) #7
  br label %usdhi6_dma_release.exit

usdhi6_dma_release.exit:                          ; preds = %if.then4.i, %if.end.i.usdhi6_dma_release.exit_crit_edge
  %clk = getelementptr inbounds %struct.usdhi6_host, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @mmc_free_host(ptr noundef %23) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_mask_all(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status_mask.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %status_mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 797, ptr %status_mask.i, align 4
  %status2_mask.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 15
  %1 = ptrtoint ptr %status2_mask.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 35711, ptr %status2_mask.i, align 4
  %base.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 486735872) #7, !srcloc !264
  %4 = ptrtoint ptr %status2_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2_mask.i, align 4
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %8) #7, !srcloc !264
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_cd(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %status_mask = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 14
  %6 = ptrtoint ptr %status_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_mask, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %5, %neg
  %8 = trunc i32 %and to i16
  %conv = and i16 %8, 792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i16 %conv to i32
  %neg4 = xor i32 %conv3, -1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %neg4) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %11) #7, !srcloc !264
  %detect = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 42
  %12 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %detect, align 4
  %and1.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %and8 = and i32 %conv3, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true10

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %card = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 37
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %land.lhs.true10.if.then18_crit_edge, label %land.lhs.true10.lor.lhs.false_crit_edge

land.lhs.true10.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true10.if.then18_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false:                                    ; preds = %land.lhs.true10.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %and13 = and i32 %conv3, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %card16 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 37
  %16 = ptrtoint ptr %card16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card16, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.then18_crit_edge

land.lhs.true15.if.then18_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true15.if.then18_crit_edge, %land.lhs.true10.if.then18_crit_edge
  tail call void @mmc_detect_change(ptr noundef %1, i32 noundef 10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then18 ], [ 1, %land.lhs.true15.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_sd(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %status_mask = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 14
  %4 = ptrtoint ptr %status_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status_mask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  %6 = trunc i32 %and to i16
  %conv = and i16 %6, -793
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %8, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #7, !srcloc !261
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %status2_mask = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 15
  %11 = ptrtoint ptr %status2_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status2_mask, align 4
  %neg3 = xor i32 %12, -1
  %and4 = and i32 %10, %neg3
  %conv5 = trunc i32 %and4 to i16
  %13 = ptrtoint ptr %status_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 773, ptr %status_mask, align 4
  store i32 35711, ptr %status2_mask, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 84082688) #7, !srcloc !264
  %16 = ptrtoint ptr %status2_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status2_mask, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %19, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %20) #7, !srcloc !264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_sd.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_sd, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  %conv9 = zext i16 %conv to i32
  %conv10 = and i32 %and4, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_sd.__UNIQUE_ID_ddebug298, ptr noundef %24, ptr noundef nonnull @.str.18, i32 noundef %conv9, i32 noundef %conv10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool11.not = icmp eq i16 %conv, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5)
  %tobool12.not = icmp eq i16 %conv5, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %conv17 = and i16 %conv5, -32641
  %conv18 = zext i16 %conv to i32
  %and19 = and i32 %conv18, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end14.if.end26_crit_edge, label %if.then21

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %and25 = xor i32 %and19, 65535
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %26, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %and25) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %27) #7, !srcloc !264
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end14.if.end26_crit_edge
  %and28 = and i32 %and4, 35711
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end40_crit_edge, label %if.then30

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv17)
  %tobool31.not = icmp eq i16 %conv17, 0
  %or = or i32 %and4, 768
  %spec.select = select i1 %tobool31.not, i32 %and4, i32 %or
  %and37 = and i32 %spec.select, 35711
  %and39 = xor i32 %and37, 65535
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %29, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %and39) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %30) #7, !srcloc !264
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %if.end26.if.end40_crit_edge
  %conv41 = zext i16 %conv17 to i32
  %io_error = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 17
  %31 = ptrtoint ptr %io_error to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv41, ptr %io_error, align 4
  %irq_status = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 18
  %32 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv18, ptr %irq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv17)
  %tobool43.not = icmp eq i16 %conv17, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.then44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 13
  %33 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.not = icmp eq i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %conv17)
  %cmp47.not = icmp eq i16 %conv17, 64
  %or.cond106 = select i1 %cmp.not, i1 %cmp47.not, i1 false
  br i1 %or.cond106, label %do.body56, label %do.end52

do.end52:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_id, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %conv41) #10
  br label %cleanup

do.body56:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_sd.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_sd, %if.then68)) #7
          to label %cleanup [label %if.then68], !srcloc !265

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_id, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_sd.__UNIQUE_ID_ddebug299, ptr noundef %42, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %do.end52, %if.end40.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 2, %do.end52 ], [ 2, %if.then68 ], [ 2, %if.end40.cleanup_crit_edge ], [ 2, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_sd_bh(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_work = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 22
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #7
  %mrq1 = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 4
  %data3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 13
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wait, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
    i32 4, label %sw.bb9
    i32 3, label %sw.bb12
    i32 5, label %sw.bb15
    i32 8, label %sw.bb18
    i32 7, label %sw.bb19
    i32 6, label %sw.bb32
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %io_error.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 17
  %9 = ptrtoint ptr %io_error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @usdhi6_error_code(ptr noundef %dev_id) #7
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %error.i, align 4
  br label %if.end63

if.end.i:                                         ; preds = %sw.bb4
  tail call fastcc void @usdhi6_resp_read(ptr noundef %dev_id) #7
  %12 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data3, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.end.i.if.end63_crit_edge, label %if.end5.i

if.end.i.if.end63_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end5.i:                                        ; preds = %if.end.i
  %dma_active.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 26
  %14 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dma_active.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i = icmp eq i8 %15, 0
  br i1 %tobool6.not.i, label %if.else14.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  %16 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrq1, align 4
  %data.i.i = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %chan_tx.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 25
  %chan_rx.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 24
  %chan_tx.sink.i.i = select i1 %tobool.not.i.i, ptr %chan_tx.i.i, ptr %chan_rx.i.i
  %22 = ptrtoint ptr %chan_tx.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_tx.sink.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %device_issue_pending.i3.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 50
  %26 = ptrtoint ptr %device_issue_pending.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_issue_pending.i3.i.i, align 4
  tail call void %27(ptr noundef %23) #7
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stop.i, align 4
  %tobool8.not.i = icmp eq ptr %29, null
  br i1 %tobool8.not.i, label %if.then7.i.if.then55.sink.split_crit_edge, label %if.else.i

if.then7.i.if.then55.sink.split_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

if.else.i:                                        ; preds = %if.then7.i
  %30 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mrq1, align 4
  %cmd.i.i = getelementptr inbounds %struct.mmc_request, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %35, label %if.else.i.usdhi6_stop_cmd.exit.thread.i_crit_edge [
    i32 18, label %if.else.i.sw.bb.i.i_crit_edge
    i32 25, label %if.else.i.sw.bb.i.i_crit_edge205
  ]

if.else.i.sw.bb.i.i_crit_edge205:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.else.i.usdhi6_stop_cmd.exit.thread.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_stop_cmd.exit.thread.i

sw.bb.i.i:                                        ; preds = %if.else.i.sw.bb.i.i_crit_edge, %if.else.i.sw.bb.i.i_crit_edge205
  %stop.i.i = getelementptr inbounds %struct.mmc_request, ptr %31, i32 0, i32 3
  %37 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stop.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 12
  br i1 %cmp.i.i, label %sw.bb.i.i.if.then55.sink.split_crit_edge, label %sw.bb.i.i.usdhi6_stop_cmd.exit.thread.i_crit_edge

sw.bb.i.i.usdhi6_stop_cmd.exit.thread.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_stop_cmd.exit.thread.i

sw.bb.i.i.if.then55.sink.split_crit_edge:         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

usdhi6_stop_cmd.exit.thread.i:                    ; preds = %sw.bb.i.i.usdhi6_stop_cmd.exit.thread.i_crit_edge, %if.else.i.usdhi6_stop_cmd.exit.thread.i_crit_edge
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 128
  %stop3.i.i = getelementptr inbounds %struct.mmc_request, ptr %31, i32 0, i32 3
  %45 = ptrtoint ptr %stop3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stop3.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.63, i32 noundef %48, i32 noundef %35) #10
  %49 = ptrtoint ptr %stop3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stop3.i.i, align 4
  %error.i.i = getelementptr inbounds %struct.mmc_command, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -95, ptr %error.i.i, align 4
  br label %if.end63

if.else14.i:                                      ; preds = %if.end5.i
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 6
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %3, align 4
  br i1 %tobool16.not.i, label %if.else28.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.else14.i
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %55, label %if.then17.i.if.else25.i_crit_edge [
    i32 18, label %if.then17.i.if.then55.sink.split_crit_edge
    i32 53, label %land.lhs.true.i
  ]

if.then17.i.if.then55.sink.split_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

if.then17.i.if.else25.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25.i

land.lhs.true.i:                                  ; preds = %if.then17.i
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 3
  %57 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp22.i = icmp ugt i32 %58, 1
  br i1 %cmp22.i, label %land.lhs.true.i.if.then55.sink.split_crit_edge, label %land.lhs.true.i.if.else25.i_crit_edge

land.lhs.true.i.if.else25.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25.i

land.lhs.true.i.if.then55.sink.split_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

if.else25.i:                                      ; preds = %land.lhs.true.i.if.else25.i_crit_edge, %if.then17.i.if.else25.i_crit_edge
  br label %if.then55.sink.split

if.else28.i:                                      ; preds = %if.else14.i
  %59 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %55, label %if.else28.i.if.else40.i_crit_edge [
    i32 25, label %if.else28.i.if.then55.sink.split_crit_edge
    i32 53, label %land.lhs.true34.i
  ]

if.else28.i.if.then55.sink.split_crit_edge:       ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

if.else28.i.if.else40.i_crit_edge:                ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else40.i

land.lhs.true34.i:                                ; preds = %if.else28.i
  %blocks36.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 3
  %60 = ptrtoint ptr %blocks36.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blocks36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp37.i = icmp ugt i32 %61, 1
  br i1 %cmp37.i, label %land.lhs.true34.i.if.then55.sink.split_crit_edge, label %land.lhs.true34.i.if.else40.i_crit_edge

land.lhs.true34.i.if.else40.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else40.i

land.lhs.true34.i.if.then55.sink.split_crit_edge: ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

if.else40.i:                                      ; preds = %land.lhs.true34.i.if.else40.i_crit_edge, %if.else28.i.if.else40.i_crit_edge
  br label %if.then55.sink.split

sw.bb6:                                           ; preds = %if.end
  %call.i167 = tail call fastcc i32 @usdhi6_blk_read(ptr noundef %dev_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp.i = icmp slt i32 %call.i167, 0
  br i1 %cmp.i, label %sw.bb6.if.end63_crit_edge, label %if.end.i171

sw.bb6.if.end63_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end.i171:                                      ; preds = %sw.bb6
  tail call fastcc void @usdhi6_sg_advance(ptr noundef %dev_id) #7
  %62 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mrq1, align 4
  %data.i168 = getelementptr inbounds %struct.mmc_request, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %data.i168 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i168, align 4
  %error.i169 = getelementptr inbounds %struct.mmc_data, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %error.i169 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %error.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i170 = icmp eq i32 %67, 0
  br i1 %tobool.not.i170, label %land.rhs.i, label %if.end.i171.if.end63_crit_edge

if.end.i171.if.end63_crit_edge:                   ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.rhs.i:                                       ; preds = %if.end.i171
  %68 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %69)
  %cmp1.not.i = icmp eq i32 %69, 6
  br i1 %cmp1.not.i, label %lor.rhs.i, label %land.rhs.i.if.then55_crit_edge

land.rhs.i.if.then55_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

lor.rhs.i:                                        ; preds = %land.rhs.i
  %stop.i173 = getelementptr inbounds %struct.mmc_request, ptr %63, i32 0, i32 3
  %70 = ptrtoint ptr %stop.i173 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %stop.i173, align 4
  %tobool3.not.i174 = icmp eq ptr %71, null
  br i1 %tobool3.not.i174, label %lor.rhs.i.if.then55_crit_edge, label %lor.rhs.i.if.end63_crit_edge

lor.rhs.i.if.end63_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

lor.rhs.i.if.then55_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

sw.bb9:                                           ; preds = %if.end
  %call.i176 = tail call fastcc i32 @usdhi6_blk_read(ptr noundef %dev_id) #7
  tail call fastcc void @usdhi6_sg_unmap(ptr noundef %dev_id, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp.i177 = icmp slt i32 %call.i176, 0
  br i1 %cmp.i177, label %sw.bb9.if.end63_crit_edge, label %sw.bb9.if.then55.sink.split_crit_edge

sw.bb9.if.then55.sink.split_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

sw.bb9.if.end63_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

sw.bb12:                                          ; preds = %if.end
  %call.i180 = tail call fastcc i32 @usdhi6_blk_write(ptr noundef %dev_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %cmp.i181 = icmp slt i32 %call.i180, 0
  br i1 %cmp.i181, label %sw.bb12.if.end63_crit_edge, label %if.end.i186

sw.bb12.if.end63_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end.i186:                                      ; preds = %sw.bb12
  tail call fastcc void @usdhi6_sg_advance(ptr noundef %dev_id) #7
  %72 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mrq1, align 4
  %data.i183 = getelementptr inbounds %struct.mmc_request, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %data.i183 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i183, align 4
  %error.i184 = getelementptr inbounds %struct.mmc_data, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %error.i184 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error.i184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i185 = icmp eq i32 %77, 0
  br i1 %tobool.not.i185, label %land.rhs.i189, label %if.end.i186.if.end63_crit_edge

if.end.i186.if.end63_crit_edge:                   ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.rhs.i189:                                    ; preds = %if.end.i186
  %78 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %79)
  %cmp1.not.i188 = icmp eq i32 %79, 6
  br i1 %cmp1.not.i188, label %sw.epilog, label %land.rhs.i189.if.then55_crit_edge

land.rhs.i189.if.then55_crit_edge:                ; preds = %land.rhs.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

sw.bb15:                                          ; preds = %if.end
  %call.i194 = tail call fastcc i32 @usdhi6_blk_write(ptr noundef %dev_id) #7
  tail call fastcc void @usdhi6_sg_unmap(ptr noundef %dev_id, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp slt i32 %call.i194, 0
  br i1 %cmp.i195, label %sw.bb15.if.end63_crit_edge, label %sw.bb15.if.then55.sink.split_crit_edge

sw.bb15.if.then55.sink.split_crit_edge:           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.sink.split

sw.bb15.if.end63_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @usdhi6_dma_check_error(ptr noundef %dev_id)
  br label %if.end63

sw.bb19:                                          ; preds = %if.end
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 2
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !264
  %io_error = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 17
  %82 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %io_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool20.not = icmp eq i32 %83, 0
  br i1 %tobool20.not, label %if.end29, label %if.then21

if.then21:                                        ; preds = %sw.bb19
  %call22 = tail call fastcc i32 @usdhi6_error_code(ptr noundef %dev_id)
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stop, align 4
  %tobool23.not = icmp eq ptr %85, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %error = getelementptr inbounds %struct.mmc_command, ptr %85, i32 0, i32 5
  br label %do.end

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data3, align 4
  %error27 = getelementptr inbounds %struct.mmc_data, ptr %87, i32 0, i32 5
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then24
  %error.sink = phi ptr [ %error, %if.then24 ], [ %error27, %if.else ]
  %88 = ptrtoint ptr %error.sink to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call22, ptr %error.sink, align 4
  %89 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev_id, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %call22) #10
  br label %if.end63

if.end29:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mrq1, align 4
  %stop.i199 = getelementptr inbounds %struct.mmc_request, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %stop.i199 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %stop.i199, align 4
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 24
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !261
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %96, i32 0, i32 2
  %101 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %resp.i, align 4
  %stop30 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %102 = ptrtoint ptr %stop30 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %stop30, align 4
  %error31 = getelementptr inbounds %struct.mmc_command, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %error31 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %error31, align 4
  br label %if.end63

sw.bb32:                                          ; preds = %if.end
  %io_error33 = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 17
  %105 = ptrtoint ptr %io_error33 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %io_error33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool34.not = icmp eq i32 %106, 0
  br i1 %tobool34.not, label %sw.bb32.if.end63_crit_edge, label %if.then35

sw.bb32.if.end63_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call fastcc i32 @usdhi6_error_code(ptr noundef %dev_id)
  %107 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data3, align 4
  %error38 = getelementptr inbounds %struct.mmc_data, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %error38 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call36, ptr %error38, align 4
  %110 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_id, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 128
  %114 = load ptr, ptr %data3, align 4
  %error45 = getelementptr inbounds %struct.mmc_data, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %error45 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %error45, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %113, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %116) #10
  br label %if.end63

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %error47 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %117 = ptrtoint ptr %error47 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -14, ptr %error47, align 4
  %118 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_id, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 128
  %122 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %wait, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.26, i32 noundef %123) #10
  tail call fastcc void @usdhi6_request_done(ptr noundef %dev_id)
  br label %cleanup

sw.epilog:                                        ; preds = %land.rhs.i189
  %stop.i190 = getelementptr inbounds %struct.mmc_request, ptr %73, i32 0, i32 3
  %124 = ptrtoint ptr %stop.i190 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %stop.i190, align 4
  %tobool3.not.i191 = icmp eq ptr %125, null
  br i1 %tobool3.not.i191, label %sw.epilog.if.then55_crit_edge, label %sw.epilog.if.end63_crit_edge

sw.epilog.if.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

sw.epilog.if.then55_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then55.sink.split:                             ; preds = %sw.bb15.if.then55.sink.split_crit_edge, %sw.bb9.if.then55.sink.split_crit_edge, %if.else40.i, %land.lhs.true34.i.if.then55.sink.split_crit_edge, %if.else28.i.if.then55.sink.split_crit_edge, %if.else25.i, %land.lhs.true.i.if.then55.sink.split_crit_edge, %if.then17.i.if.then55.sink.split_crit_edge, %sw.bb.i.i.if.then55.sink.split_crit_edge, %if.then7.i.if.then55.sink.split_crit_edge
  %.sink = phi i32 [ 5, %if.else40.i ], [ 4, %if.else25.i ], [ 8, %if.then7.i.if.then55.sink.split_crit_edge ], [ 7, %sw.bb.i.i.if.then55.sink.split_crit_edge ], [ 2, %land.lhs.true.i.if.then55.sink.split_crit_edge ], [ 2, %if.then17.i.if.then55.sink.split_crit_edge ], [ 3, %land.lhs.true34.i.if.then55.sink.split_crit_edge ], [ 3, %if.else28.i.if.then55.sink.split_crit_edge ], [ 6, %sw.bb9.if.then55.sink.split_crit_edge ], [ 6, %sw.bb15.if.then55.sink.split_crit_edge ]
  %126 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %.sink, ptr %wait, align 4
  br label %if.then55

if.then55:                                        ; preds = %if.then55.sink.split, %sw.epilog.if.then55_crit_edge, %land.rhs.i189.if.then55_crit_edge, %lor.rhs.i.if.then55_crit_edge, %land.rhs.i.if.then55_crit_edge
  %timeout = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 23
  %127 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %129 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %129, ptr noundef %timeout_work, i32 noundef %128) #7
  %dma_active = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 26
  %130 = ptrtoint ptr %dma_active to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dma_active, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool58.not = icmp eq i8 %131, 0
  br i1 %tobool58.not, label %if.then59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data3, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags, align 4
  %and = and i32 %135, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  %status_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 14
  %136 = ptrtoint ptr %status_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 769, ptr %status_mask.i.i, align 4
  %and2.i.i = select i1 %tobool61.not, i32 2304, i32 2560
  %status2_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 15
  %137 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %and2.i.i, ptr %status2_mask.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 2
  %138 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %139, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16973824) #7, !srcloc !264
  %140 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %status2_mask.i.i, align 4
  %142 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %143, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %144 = tail call i32 @llvm.bswap.i32(i32 %141) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %144) #7, !srcloc !264
  br label %cleanup

if.end63:                                         ; preds = %sw.epilog.if.end63_crit_edge, %if.then35, %sw.bb32.if.end63_crit_edge, %if.end29, %do.end, %sw.bb18, %sw.bb15.if.end63_crit_edge, %if.end.i186.if.end63_crit_edge, %sw.bb12.if.end63_crit_edge, %sw.bb9.if.end63_crit_edge, %lor.rhs.i.if.end63_crit_edge, %if.end.i171.if.end63_crit_edge, %sw.bb6.if.end63_crit_edge, %usdhi6_stop_cmd.exit.thread.i, %if.end.i.if.end63_crit_edge, %if.then.i
  %error64 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %145 = ptrtoint ptr %error64 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %error64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool65.not = icmp eq i32 %146, 0
  br i1 %tobool65.not, label %if.then66, label %if.end63.if.end102_crit_edge

if.end63.if.end102_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then66:                                        ; preds = %if.end63
  %tobool67.not = icmp eq ptr %5, null
  br i1 %tobool67.not, label %if.else97, label %if.then68

if.then68:                                        ; preds = %if.then66
  %error69 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %147 = ptrtoint ptr %error69 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %error69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool70.not = icmp eq i32 %148, 0
  br i1 %tobool70.not, label %if.then71, label %do.end92

if.then71:                                        ; preds = %if.then68
  %149 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %150)
  %cmp.not = icmp eq i32 %150, 7
  br i1 %cmp.not, label %if.then71.if.end88_crit_edge, label %land.lhs.true

if.then71.if.end88_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true:                                    ; preds = %if.then71
  %151 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mrq1, align 4
  %stop74 = getelementptr inbounds %struct.mmc_request, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %stop74 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %stop74, align 4
  %tobool75.not = icmp eq ptr %154, null
  br i1 %tobool75.not, label %land.lhs.true.if.end88_crit_edge, label %land.lhs.true76

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true76:                                  ; preds = %land.lhs.true
  %error79 = getelementptr inbounds %struct.mmc_command, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %error79 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %error79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool80.not = icmp eq i32 %156, 0
  br i1 %tobool80.not, label %land.lhs.true81, label %land.lhs.true76.if.end88_crit_edge

land.lhs.true76.if.end88_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true81:                                  ; preds = %land.lhs.true76
  %call82 = tail call fastcc i32 @usdhi6_stop_cmd(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %land.lhs.true81.if.end88_crit_edge

land.lhs.true81.if.end88_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then84:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @usdhi6_wait_for_resp(ptr noundef %dev_id)
  %timeout86 = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 23
  %157 = ptrtoint ptr %timeout86 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %timeout86, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %159 = load ptr, ptr @system_wq, align 4
  %call.i.i200 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %159, ptr noundef %timeout_work, i32 noundef %158) #7
  br label %cleanup

if.end88:                                         ; preds = %land.lhs.true81.if.end88_crit_edge, %land.lhs.true76.if.end88_crit_edge, %land.lhs.true.if.end88_crit_edge, %if.then71.if.end88_crit_edge
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %160 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %162 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %blksz, align 4
  %mul = mul i32 %163, %161
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  %164 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %mul, ptr %bytes_xfered, align 4
  br label %if.end102

do.end92:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev_id, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, i32 noundef %148) #10
  tail call fastcc void @usdhi6_sg_unmap(ptr noundef %dev_id, i1 noundef zeroext true)
  br label %if.end102

if.else97:                                        ; preds = %if.then66
  %169 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %170)
  %cmp98 = icmp eq i32 %170, 55
  br i1 %cmp98, label %if.then99, label %if.else97.if.end102_crit_edge

if.else97.if.end102_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then99:                                        ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #9
  %app_cmd = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 21
  %171 = ptrtoint ptr %app_cmd to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %app_cmd, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.else97.if.end102_crit_edge, %do.end92, %if.end88, %if.end63.if.end102_crit_edge
  tail call fastcc void @usdhi6_request_done(ptr noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then84, %if.then59, %if.then55.cleanup_crit_edge, %sw.default, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_sdio(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %sdio_mask = getelementptr inbounds %struct.usdhi6_host, ptr %dev_id, i32 0, i32 16
  %4 = ptrtoint ptr %sdio_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdio_mask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_sdio.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_sdio, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_sdio.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %and) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %neg7 = xor i32 %and, -1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %11, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %neg7) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %12) #7, !srcloc !264
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %18(ptr noundef %14, i32 noundef 0) #7
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 49
  %19 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 47
  %20 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usdhi6_timeout_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -620
  %mrq1 = getelementptr i8, ptr %work, i32 -616
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.true6

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_active96 = getelementptr i8, ptr %work, i32 112
  %2 = ptrtoint ptr %dma_active96 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_active96, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not97 = icmp eq i8 %3, 0
  %cond498 = select i1 %tobool3.not97, ptr @.str.70, ptr @.str.69
  br label %cond.end8

cond.true6:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %dma_active = getelementptr i8, ptr %work, i32 112
  %6 = ptrtoint ptr %dma_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_active, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.70, ptr @.str.69
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true6, %cond.end.thread
  %cond4102 = phi ptr [ %cond4, %cond.true6 ], [ %cond498, %cond.end.thread ]
  %dma_active101 = phi ptr [ %dma_active, %cond.true6 ], [ %dma_active96, %cond.end.thread ]
  %cond100 = phi ptr [ %5, %cond.true6 ], [ null, %cond.end.thread ]
  %cond9 = phi i32 [ %11, %cond.true6 ], [ -1, %cond.end.thread ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %.in = load ptr, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.in, align 128
  %wait103 = getelementptr i8, ptr %work, i32 -36
  %15 = ptrtoint ptr %wait103 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wait103, align 4
  %base.i = getelementptr i8, ptr %work, i32 -612
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 56
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %22, i32 60
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #7, !srcloc !261
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %irq_status = getelementptr i8, ptr %work, i32 -16
  %25 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_status, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.67, ptr noundef nonnull %cond4102, i32 noundef %16, i32 noundef %cond9, i32 noundef %20, i32 noundef %24, i32 noundef %26) #10
  %27 = ptrtoint ptr %dma_active101 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dma_active101, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not = icmp eq i8 %28, 0
  br i1 %tobool13.not, label %cond.end8.if.end_crit_edge, label %if.then

cond.end8.if.end_crit_edge:                       ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end8
  tail call fastcc void @usdhi6_dma_kill(ptr noundef %add.ptr)
  %dma_active.i = getelementptr i8, ptr %work, i32 112
  %29 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma_active.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mrq1, align 4
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data1.i, align 4
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !264
  %37 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dma_active.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %34, i32 0, i32 6
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %chan_rx.sink.i.v = select i1 %tobool3.not.i, i32 108, i32 104
  %chan_rx.sink.i = getelementptr i8, ptr %work, i32 %chan_rx.sink.i.v
  %.sink21.i = select i1 %tobool3.not.i, i32 1, i32 2
  %40 = ptrtoint ptr %chan_rx.sink.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan_rx.sink.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %34, i32 0, i32 12
  %46 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %34, i32 0, i32 10
  %48 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg_len.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %45, ptr noundef %47, i32 noundef %49, i32 noundef %.sink21.i, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %cond.end8.if.end_crit_edge
  %50 = ptrtoint ptr %wait103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wait103, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %51, label %do.end17 [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 7, label %sw.bb26
    i32 8, label %if.end.sw.bb29_crit_edge
    i32 2, label %if.end.sw.bb29_crit_edge105
    i32 3, label %if.end.sw.bb29_crit_edge106
    i32 4, label %if.end.sw.bb29_crit_edge107
    i32 5, label %if.end.sw.bb29_crit_edge108
    i32 6, label %if.end.sw.bb52_crit_edge
  ]

if.end.sw.bb52_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.end.sw.bb29_crit_edge108:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end.sw.bb29_crit_edge107:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end.sw.bb29_crit_edge106:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end.sw.bb29_crit_edge105:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end.sw.bb29_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.26, i32 noundef %51) #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end17, %if.end.sw.bb_crit_edge
  %call21 = tail call fastcc i32 @usdhi6_error_code(ptr noundef %add.ptr)
  br i1 %tobool.not, label %sw.bb.if.end57_crit_edge, label %if.then23

sw.bb.if.end57_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then23:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cmd24 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %cmd24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cmd24, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -110, ptr %error, align 4
  br label %if.then56

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call fastcc i32 @usdhi6_error_code(ptr noundef %add.ptr)
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stop, align 4
  %error28 = getelementptr inbounds %struct.mmc_command, ptr %61, i32 0, i32 5
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end.sw.bb29_crit_edge, %if.end.sw.bb29_crit_edge105, %if.end.sw.bb29_crit_edge106, %if.end.sw.bb29_crit_edge107, %if.end.sw.bb29_crit_edge108
  %sg30 = getelementptr i8, ptr %work, i32 -44
  %62 = ptrtoint ptr %sg30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sg30, align 4
  %tobool31.not = icmp eq ptr %63, null
  br i1 %tobool31.not, label %cond.false33, label %sw.bb29.cond.end35_crit_edge

sw.bb29.cond.end35_crit_edge:                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end35

cond.false33:                                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %sg34 = getelementptr inbounds %struct.mmc_data, ptr %cond100, i32 0, i32 12
  %64 = ptrtoint ptr %sg34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sg34, align 4
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false33, %sw.bb29.cond.end35_crit_edge
  %cond36 = phi ptr [ %65, %cond.false33 ], [ %63, %sw.bb29.cond.end35_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_timeout_work.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_timeout_work, %if.then43)) #7
          to label %do.end51 [label %if.then43], !srcloc !265

if.then43:                                        ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 128
  %flags = getelementptr inbounds %struct.mmc_data, ptr %cond100, i32 0, i32 6
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %and = and i32 %71, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  %cond47 = select i1 %tobool46.not, i32 87, i32 82
  %page_idx = getelementptr i8, ptr %work, i32 -40
  %72 = ptrtoint ptr %page_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %page_idx, align 4
  %offset = getelementptr i8, ptr %work, i32 -592
  %74 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %cond100, i32 0, i32 3
  %76 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %cond100, i32 0, i32 2
  %78 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blksz, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %cond100, i32 0, i32 10
  %80 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sg_len, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %cond36, i32 0, i32 4
  %82 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_length, align 4
  %offset48 = getelementptr inbounds %struct.scatterlist, ptr %cond36, i32 0, i32 1
  %84 = ptrtoint ptr %offset48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_timeout_work.__UNIQUE_ID_ddebug301, ptr noundef %69, ptr noundef nonnull @.str.73, i32 noundef %cond47, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85) #7
  br label %do.end51

do.end51:                                         ; preds = %if.then43, %cond.end35
  tail call fastcc void @usdhi6_sg_unmap(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %sw.bb52

sw.bb52:                                          ; preds = %do.end51, %if.end.sw.bb52_crit_edge
  %call53 = tail call fastcc i32 @usdhi6_error_code(ptr noundef %add.ptr)
  %error54 = getelementptr inbounds %struct.mmc_data, ptr %cond100, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %sw.bb26
  %error54.sink = phi ptr [ %error54, %sw.bb52 ], [ %error28, %sw.bb26 ]
  %86 = ptrtoint ptr %error54.sink to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -110, ptr %error54.sink, align 4
  br i1 %tobool.not, label %sw.epilog.if.end57_crit_edge, label %sw.epilog.if.then56_crit_edge

sw.epilog.if.then56_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

sw.epilog.if.end57_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then56:                                        ; preds = %sw.epilog.if.then56_crit_edge, %if.then23
  tail call fastcc void @usdhi6_request_done(ptr noundef %add.ptr)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %sw.epilog.if.end57_crit_edge, %sw.bb.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_dma_request(ptr nocapture noundef %host, i32 noundef %start) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #7
  %0 = getelementptr inbounds i8, ptr %cfg, i32 20
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], ptr, i32 }, ptr %cfg, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %2, align 4
  %4 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], ptr, i32 }, ptr %cfg, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %4, align 4
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %call = tail call ptr @dma_request_chan(ptr noundef %9, ptr noundef nonnull @.str.74) #7
  %chan_tx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 25
  %10 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %chan_tx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_dma_request.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_dma_request, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %15 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan_tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_dma_request.__UNIQUE_ID_ddebug284, ptr noundef %14, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, ptr noundef %16) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %17 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan_tx, align 4
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.cleanup.sink.split_crit_edge, label %if.end11

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end11:                                         ; preds = %do.end
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %cfg, align 4
  %add = add i32 %start, 96
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %20 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %dst_addr, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %21 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %dst_maxburst, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %22 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %src_addr, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end11.e_release_tx_crit_edge, label %dmaengine_slave_config.exit

if.end11.e_release_tx_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_release_tx

dmaengine_slave_config.exit:                      ; preds = %if.end11
  %call.i = call i32 %26(ptr noundef %18, ptr noundef nonnull %cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dmaengine_slave_config.exit.e_release_tx_crit_edge, label %if.end15

dmaengine_slave_config.exit.e_release_tx_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_release_tx

if.end15:                                         ; preds = %dmaengine_slave_config.exit
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  %call18 = call ptr @dma_request_chan(ptr noundef %30, ptr noundef nonnull @.str.77) #7
  %chan_rx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 24
  %31 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call18, ptr %chan_rx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_dma_request.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_dma_request, %if.then31)) #7
          to label %do.end37 [label %if.then31], !srcloc !265

if.then31:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  %36 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan_rx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_dma_request.__UNIQUE_ID_ddebug285, ptr noundef %35, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75, ptr noundef %37) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %if.end15
  %38 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan_rx, align 4
  %cmp.i79 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %do.end37.e_release_tx.sink.split_crit_edge, label %if.end42

do.end37.e_release_tx.sink.split_crit_edge:       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_release_tx.sink.split

if.end42:                                         ; preds = %do.end37
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %cfg, align 4
  %41 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst_addr, align 4
  %43 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %src_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %44 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %src_maxburst, align 4
  store i32 0, ptr %dst_addr, align 4
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %39, align 4
  %device_config.i80 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %device_config.i80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_config.i80, align 4
  %tobool.not.i81 = icmp eq ptr %48, null
  br i1 %tobool.not.i81, label %if.end42.e_release_rx_crit_edge, label %dmaengine_slave_config.exit85

if.end42.e_release_rx_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_release_rx

dmaengine_slave_config.exit85:                    ; preds = %if.end42
  %call.i82 = call i32 %48(ptr noundef %39, ptr noundef nonnull %cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp49 = icmp slt i32 %call.i82, 0
  br i1 %cmp49, label %dmaengine_slave_config.exit85.e_release_rx_crit_edge, label %dmaengine_slave_config.exit85.cleanup_crit_edge

dmaengine_slave_config.exit85.cleanup_crit_edge:  ; preds = %dmaengine_slave_config.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dmaengine_slave_config.exit85.e_release_rx_crit_edge: ; preds = %dmaengine_slave_config.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %e_release_rx

e_release_rx:                                     ; preds = %dmaengine_slave_config.exit85.e_release_rx_crit_edge, %if.end42.e_release_rx_crit_edge
  %49 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan_rx, align 4
  call void @dma_release_channel(ptr noundef %50) #7
  br label %e_release_tx.sink.split

e_release_tx.sink.split:                          ; preds = %e_release_rx, %do.end37.e_release_tx.sink.split_crit_edge
  %51 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %chan_rx, align 4
  br label %e_release_tx

e_release_tx:                                     ; preds = %e_release_tx.sink.split, %dmaengine_slave_config.exit.e_release_tx_crit_edge, %if.end11.e_release_tx_crit_edge
  %52 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan_tx, align 4
  call void @dma_release_channel(ptr noundef %53) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %e_release_tx, %do.end.cleanup.sink.split_crit_edge
  %54 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %chan_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dmaengine_slave_config.exit85.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_dma_release(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_active = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 26
  %0 = ptrtoint ptr %dma_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dma_active, align 4
  %chan_tx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 25
  %1 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %chan_tx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chan_rx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 24
  %4 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_rx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chan_rx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %5) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_dma_check_error(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_dma_check_error.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_dma_check_error, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %io_error = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 17
  %8 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_error, align 4
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 56
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_dma_check_error.__UNIQUE_ID_ddebug283, ptr noundef %7, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %9, i32 noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %io_error5 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 17
  %14 = ptrtoint ptr %io_error5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_error5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %do.end
  %call8 = tail call fastcc i32 @usdhi6_error_code(ptr noundef %host)
  %error = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call8, ptr %error, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bytes_xfered, align 4
  tail call fastcc void @usdhi6_dma_kill(ptr noundef %host)
  %dma_active.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 26
  %18 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %dma_active.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 25
  %19 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then7.if.end.i_crit_edge, label %if.then.i

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %chan_tx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %20) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then7.if.end.i_crit_edge
  %chan_rx.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 24
  %22 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_rx.i, align 4
  %tobool3.not.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i, label %if.end.i.usdhi6_dma_release.exit_crit_edge, label %if.then4.i

if.end.i.usdhi6_dma_release.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_dma_release.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %chan_rx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %23) #7
  br label %usdhi6_dma_release.exit

usdhi6_dma_release.exit:                          ; preds = %if.then4.i, %if.end.i.usdhi6_dma_release.exit_crit_edge
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 128
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.48, i32 noundef %30) #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %irq_status = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 18
  %31 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_status, align 4
  %and = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %do.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.50) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end15.cleanup_crit_edge, %usdhi6_dma_release.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usdhi6_error_code(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !264
  %io_error = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 17
  %2 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_error, align 4
  %and = and i32 %3, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i67 = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !261
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mrq, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %15, i32 92
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #7, !srcloc !261
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %18 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %do.body, label %do.end13

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_error_code.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_error_code, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !265

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %24 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wait, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_error_code.__UNIQUE_ID_ddebug275, ptr noundef %23, ptr noundef nonnull @.str.56, i32 noundef %17, i32 noundef %7, i32 noundef %25, i32 noundef %cond) #7
  br label %cleanup

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.56, i32 noundef %17, i32 noundef %7, i32 noundef %19, i32 noundef %cond) #10
  br label %cleanup

if.end18:                                         ; preds = %entry
  %add.ptr.i71 = getelementptr i8, ptr %5, i32 88
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #7, !srcloc !261
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %30)
  %cmp20.not = icmp eq i32 %30, 2097152
  br i1 %cmp20.not, label %if.end18.if.end37_crit_edge, label %do.end24

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end24:                                         ; preds = %if.end18
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  %wait27 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %36 = ptrtoint ptr %wait27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wait27, align 4
  %mrq28 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %38 = ptrtoint ptr %mrq28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mrq28, align 4
  %tobool29.not = icmp eq ptr %39, null
  br i1 %tobool29.not, label %do.end24.cond.end35_crit_edge, label %cond.true30

do.end24.cond.end35_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end35

cond.true30:                                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %cmd32 = getelementptr inbounds %struct.mmc_request, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %cmd32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd32, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true30, %do.end24.cond.end35_crit_edge
  %cond36 = phi i32 [ %43, %cond.true30 ], [ -1, %do.end24.cond.end35_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.58, i32 noundef %31, i32 noundef %37, i32 noundef %cond36) #10
  br label %if.end37

if.end37:                                         ; preds = %cond.end35, %if.end18.if.end37_crit_edge
  %44 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_error, align 4
  %and39 = and i32 %45, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %. = select i1 %tobool40.not, i32 -5, i32 -84
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end13, %if.then9, %do.body
  %retval.0 = phi i32 [ -110, %if.then9 ], [ -110, %do.end13 ], [ %., %if.end37 ], [ -110, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_request_done(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.end, label %entry.do.end_crit_edge, !prof !267

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.end:                                          ; preds = %entry
  %head_pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 8
  %6 = ptrtoint ptr %head_pg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head_pg, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.end.if.end53_crit_edge, label %lor.end.do.end_crit_edge, !prof !268

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.end.if.end53_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %entry.do.end_crit_edge
  %head_pg15 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 8
  %8 = ptrtoint ptr %head_pg15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head_pg15, align 4
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wait, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %tobool17.not = icmp eq ptr %3, null
  br i1 %tobool17.not, label %do.end.if.then52_crit_edge, label %cond.true36

do.end.if.then52_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

cond.true36:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool18.not, i32 87, i32 82
  %offset = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blksz, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_len, align 4
  br label %if.then52

if.then52:                                        ; preds = %cond.true36, %do.end.if.then52_crit_edge
  %cond34172 = phi i32 [ %23, %cond.true36 ], [ 0, %do.end.if.then52_crit_edge ]
  %cond24158162171 = phi i32 [ %19, %cond.true36 ], [ 0, %do.end.if.then52_crit_edge ]
  %cond19154157163170 = phi i32 [ %cond, %cond.true36 ], [ 45, %do.end.if.then52_crit_edge ]
  %cond29164169 = phi i32 [ %21, %cond.true36 ], [ 0, %do.end.if.then52_crit_edge ]
  %cond39 = phi i32 [ %25, %cond.true36 ], [ 0, %do.end.if.then52_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 911, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %5, ptr noundef %9, i32 noundef %11, i32 noundef %15, i32 noundef %cond19154157163170, i32 noundef %cond24158162171, i32 noundef %cond29164169, i32 noundef %cond34172, i32 noundef %cond39) #7
  tail call fastcc void @usdhi6_sg_unmap(ptr noundef %host, i1 noundef zeroext true)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.end.if.end53_crit_edge
  %cmd54 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %cmd54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd54, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool55.not = icmp eq i32 %29, 0
  br i1 %tobool55.not, label %lor.lhs.false, label %if.end53.do.body66_crit_edge

if.end53.do.body66_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

lor.lhs.false:                                    ; preds = %if.end53
  %tobool56.not = icmp eq ptr %3, null
  br i1 %tobool56.not, label %lor.lhs.false.lor.lhs.false59_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false59_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false59

land.lhs.true:                                    ; preds = %lor.lhs.false
  %error57 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %error57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool58.not = icmp eq i32 %31, 0
  br i1 %tobool58.not, label %land.lhs.true.lor.lhs.false59_crit_edge, label %land.lhs.true.do.body66_crit_edge

land.lhs.true.do.body66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

land.lhs.true.lor.lhs.false59_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true.lor.lhs.false59_crit_edge, %lor.lhs.false.lor.lhs.false59_crit_edge
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stop, align 4
  %tobool60.not = icmp eq ptr %33, null
  br i1 %tobool60.not, label %lor.lhs.false59.if.end109_crit_edge, label %land.lhs.true61

lor.lhs.false59.if.end109_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

land.lhs.true61:                                  ; preds = %lor.lhs.false59
  %error63 = getelementptr inbounds %struct.mmc_command, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %error63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool64.not = icmp eq i32 %35, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end109_crit_edge, label %land.lhs.true61.do.body66_crit_edge

land.lhs.true61.do.body66_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

land.lhs.true61.if.end109_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.body66:                                        ; preds = %land.lhs.true61.do.body66_crit_edge, %land.lhs.true.do.body66_crit_edge, %if.end53.do.body66_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_request_done.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_request_done, %if.then75)) #7
          to label %if.end109 [label %if.then75], !srcloc !265

if.then75:                                        ; preds = %do.body66
  %36 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  %40 = ptrtoint ptr %cmd54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd54, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %tobool78.not = icmp eq ptr %3, null
  br i1 %tobool78.not, label %if.then75.cond.end96_crit_edge, label %cond.true93

if.then75.cond.end96_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end96

cond.true93:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  %blocks80 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %blocks80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blocks80, align 4
  %blksz86 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %46 = ptrtoint ptr %blksz86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blksz86, align 4
  %error94 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %48 = ptrtoint ptr %error94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error94, align 4
  br label %cond.end96

cond.end96:                                       ; preds = %cond.true93, %if.then75.cond.end96_crit_edge
  %cond89180 = phi i32 [ %47, %cond.true93 ], [ 0, %if.then75.cond.end96_crit_edge ]
  %cond83175179 = phi i32 [ %45, %cond.true93 ], [ 0, %if.then75.cond.end96_crit_edge ]
  %cond97 = phi i32 [ %49, %cond.true93 ], [ 1, %if.then75.cond.end96_crit_edge ]
  %.in = getelementptr inbounds %struct.mmc_command, ptr %41, i32 0, i32 5
  %50 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %.in, align 4
  %stop98 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %stop98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stop98, align 4
  %tobool99.not = icmp eq ptr %53, null
  br i1 %tobool99.not, label %cond.end96.cond.end104_crit_edge, label %cond.true100

cond.end96.cond.end104_crit_edge:                 ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end104

cond.true100:                                     ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #9
  %error102 = getelementptr inbounds %struct.mmc_command, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %error102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %error102, align 4
  br label %cond.end104

cond.end104:                                      ; preds = %cond.true100, %cond.end96.cond.end104_crit_edge
  %cond105 = phi i32 [ %55, %cond.true100 ], [ 1, %cond.end96.cond.end104_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_request_done.__UNIQUE_ID_ddebug289, ptr noundef %39, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %43, i32 noundef %cond83175179, i32 noundef %cond89180, i32 noundef %51, i32 noundef %cond97, i32 noundef %cond105) #7
  br label %if.end109

if.end109:                                        ; preds = %cond.end104, %do.body66, %land.lhs.true61.if.end109_crit_edge, %lor.lhs.false59.if.end109_crit_edge
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !264
  %wait110 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %58 = ptrtoint ptr %wait110 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %wait110, align 4
  %59 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %mrq1, align 4
  %60 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %host, align 4
  tail call void @mmc_request_done(ptr noundef %61, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usdhi6_stop_cmd(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %5, label %entry.do.end_crit_edge [
    i32 18, label %entry.sw.bb_crit_edge
    i32 25, label %entry.sw.bb_crit_edge14
  ]

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stop, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %10)
  %cmp = icmp eq i32 %10, 12
  br i1 %cmp, label %if.then, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %wait, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.bb.do.end_crit_edge, %entry.do.end_crit_edge
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %stop3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %stop3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop3, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.63, i32 noundef %19, i32 noundef %5) #10
  %20 = ptrtoint ptr %stop3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stop3, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -95, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_wait_for_resp(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status_mask.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %status_mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 768, ptr %status_mask.i, align 4
  %status2_mask.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 15
  %1 = ptrtoint ptr %status2_mask.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2816, ptr %status2_mask.i, align 4
  %base.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 196608) #7, !srcloc !264
  %4 = ptrtoint ptr %status2_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2_mask.i, align 4
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %8) #7, !srcloc !264
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_sg_unmap(ptr nocapture noundef %host, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %head_pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 8
  %4 = ptrtoint ptr %head_pg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head_pg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %entry
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  %sg3 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 11
  %sg4 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %cond.in = select i1 %cmp, ptr %sg3, ptr %sg4
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load ptr, ptr %cond.in, align 4
  %head_len = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 7
  %9 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %head_len, align 4
  %idx.neg = sub i32 0, %10
  %error = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mapped = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapped, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4096
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %bounce_buf = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 10
  %17 = call ptr @memcpy(ptr %add.ptr9, ptr %bounce_buf, i32 %10)
  %mapped10 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %mapped10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mapped10, align 4
  %add.ptr13 = getelementptr i8, ptr %bounce_buf, i32 %10
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blksz, align 4
  %sub = sub i32 %21, %10
  %22 = call ptr @memcpy(ptr %19, ptr %add.ptr13, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @flush_dcache_page(ptr noundef nonnull %5) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.39, i32 noundef 55) #7
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %shr.i.i = lshr i32 %24, 30
  %25 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %shr.i.i, label %if.end.kunmap.exit_crit_edge [
    i32 2, label %if.end.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.kunmap.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %26 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp2.i.not.i = icmp eq i32 %26, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %5) #7
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.end.kunmap.exit_crit_edge
  %27 = ptrtoint ptr %head_pg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %head_pg, align 4
  br i1 %force, label %kunmap.exit.if.end25_crit_edge, label %land.lhs.true17

kunmap.exit.if.end25_crit_edge:                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true17:                                  ; preds = %kunmap.exit
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 4
  %28 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 1
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %add = add i32 %31, %29
  %page_idx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 12
  %32 = ptrtoint ptr %page_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %page_idx, align 4
  %shl = shl i32 %33, 12
  %blksz18 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %blksz18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blksz18, align 4
  %add19 = sub i32 %35, %10
  %sub20 = add i32 %add19, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub20)
  %cmp21 = icmp ugt i32 %add, %sub20
  br i1 %cmp21, label %land.lhs.true17.cleanup33_crit_edge, label %land.lhs.true17.if.end25_crit_edge

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true17.cleanup33_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.end25:                                         ; preds = %land.lhs.true17.if.end25_crit_edge, %kunmap.exit.if.end25_crit_edge, %entry.if.end25_crit_edge
  %pg26 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %pg26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pg26, align 4
  %tobool28.not = icmp eq ptr %37, null
  br i1 %tobool28.not, label %if.end25.cleanup33_crit_edge, label %if.end30

if.end25.cleanup33_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.end30:                                         ; preds = %if.end25
  tail call void @flush_dcache_page(ptr noundef nonnull %37) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.39, i32 noundef 55) #7
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %shr.i.i65 = lshr i32 %39, 30
  %40 = zext i32 %shr.i.i65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %shr.i.i65, label %if.end30.kunmap.exit69_crit_edge [
    i32 2, label %if.end30.if.end.i68_crit_edge
    i32 3, label %is_highmem_idx.exit.i67
  ]

if.end30.if.end.i68_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i68

if.end30.kunmap.exit69_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit69

is_highmem_idx.exit.i67:                          ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %41 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp2.i.not.i66 = icmp eq i32 %41, 2
  br i1 %cmp2.i.not.i66, label %is_highmem_idx.exit.i67.if.end.i68_crit_edge, label %is_highmem_idx.exit.i67.kunmap.exit69_crit_edge

is_highmem_idx.exit.i67.kunmap.exit69_crit_edge:  ; preds = %is_highmem_idx.exit.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit69

is_highmem_idx.exit.i67.if.end.i68_crit_edge:     ; preds = %is_highmem_idx.exit.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i68

if.end.i68:                                       ; preds = %is_highmem_idx.exit.i67.if.end.i68_crit_edge, %if.end30.if.end.i68_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %37) #7
  br label %kunmap.exit69

kunmap.exit69:                                    ; preds = %if.end.i68, %is_highmem_idx.exit.i67.kunmap.exit69_crit_edge, %if.end30.kunmap.exit69_crit_edge
  %42 = ptrtoint ptr %pg26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pg26, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %kunmap.exit69, %if.end25.cleanup33_crit_edge, %land.lhs.true17.cleanup33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_resp_read(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1, align 4
  %resp = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %flags = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_status = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 18
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_status, align 4
  %and2 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31, i32 noundef %13) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and7 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.end13.3

if.end13.3:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %shl = shl i32 %17, 8
  %arrayidx15 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %or = or i32 %19, %shl
  store i32 %or, ptr %arrayidx15, align 4
  %shr.1 = lshr i32 %17, 24
  %arrayidx.1 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.1, ptr %arrayidx.1, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %22, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #7, !srcloc !261
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %shl.1 = shl i32 %24, 8
  %arrayidx15.1 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15.1, align 4
  %or.1 = or i32 %26, %shl.1
  store i32 %or.1, ptr %arrayidx15.1, align 4
  %shr.2 = lshr i32 %24, 24
  %arrayidx.2 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr.2, ptr %arrayidx.2, align 4
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %29, i32 40
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #7, !srcloc !261
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %shl.2 = shl i32 %31, 8
  %arrayidx15.2 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15.2, align 4
  %or.2 = or i32 %33, %shl.2
  store i32 %or.2, ptr %arrayidx15.2, align 4
  %shr.3 = lshr i32 %31, 24
  %34 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr.3, ptr %resp, align 4
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %36, i32 48
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #7, !srcloc !261
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %shl.3 = shl i32 %38, 8
  %39 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resp, align 4
  %or.3 = or i32 %40, %shl.3
  br label %do.body28

if.else:                                          ; preds = %if.end4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %42, label %if.else23 [
    i32 18, label %if.else.if.then20_crit_edge
    i32 25, label %if.else.if.then20_crit_edge72
  ]

if.else.if.then20_crit_edge72:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.else.if.then20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %if.else.if.then20_crit_edge, %if.else.if.then20_crit_edge72
  %base.i65 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %44 = ptrtoint ptr %base.i65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %45, i32 40
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #7, !srcloc !261
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  br label %do.body28

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %base.i67 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %48 = ptrtoint ptr %base.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %49, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #7, !srcloc !261
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  br label %do.body28

do.body28:                                        ; preds = %if.else23, %if.then20, %if.end13.3
  %or.3.sink = phi i32 [ %or.3, %if.end13.3 ], [ %51, %if.else23 ], [ %47, %if.then20 ]
  %52 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.3.sink, ptr %resp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_resp_read.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_resp_read, %if.then34)) #7
          to label %cleanup [label %if.then34], !srcloc !265

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 128
  %57 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %resp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_resp_read.__UNIQUE_ID_ddebug295, ptr noundef %56, ptr noundef nonnull @.str.33, i32 noundef %58) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body28, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usdhi6_blk_read(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %io_error = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 17
  %4 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @usdhi6_error_code(ptr noundef %host)
  br label %do.body

if.end:                                           ; preds = %entry
  %pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pg, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %blk_page = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 5
  %8 = ptrtoint ptr %blk_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blk_page, align 4
  %offset = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call4 = tail call fastcc ptr @usdhi6_sg_map(ptr noundef %host)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else.do.body_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then3
  %p.0 = phi ptr [ %add.ptr, %if.then3 ], [ %call4, %if.else.if.end9_crit_edge ]
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp73.not = icmp ult i32 %13, 4
  br i1 %cmp73.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.175 = phi ptr [ %p.0, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %18 = ptrtoint ptr %p.175 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %p.175, align 4
  %inc = add nuw nsw i32 %i.074, 1
  %incdec.ptr = getelementptr i32, ptr %p.175, i32 1
  %19 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz, align 4
  %div67 = lshr i32 %20, 2
  %cmp = icmp ult i32 %inc, %div67
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %p.1.lcssa = phi ptr [ %p.0, %if.end9.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %13, %if.end9.for.end_crit_edge ], [ %20, %for.body.for.end_crit_edge ]
  %rem = and i32 %.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1477.not = icmp eq i32 %rem, 0
  br i1 %cmp1477.not, label %for.end.cleanup_crit_edge, label %for.body15.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body15.lr.ph:                                 ; preds = %for.end
  %add = add nuw nsw i32 %rem, 1
  %base.i69 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem)
  %cmp18.not = icmp eq i32 %rem, 1
  %21 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %22, i32 96
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i70) #7, !srcloc !269
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !270
  %d.sroa.0.0.extract.shift = lshr i16 %24, 8
  %d.sroa.0.0.extract.trunc = trunc i16 %d.sroa.0.0.extract.shift to i8
  %25 = ptrtoint ptr %p.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %d.sroa.0.0.extract.trunc, ptr %p.1.lcssa, align 1
  br i1 %cmp18.not, label %for.body15.lr.ph.if.end25_crit_edge, label %if.then20

for.body15.lr.ph.if.end25_crit_edge:              ; preds = %for.body15.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %for.body15.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  %d.sroa.5.0.extract.trunc = trunc i16 %24 to i8
  %arrayidx24 = getelementptr i8, ptr %p.1.lcssa, i32 1
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %d.sroa.5.0.extract.trunc, ptr %arrayidx24, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %for.body15.lr.ph.if.end25_crit_edge
  %div1368.mask = and i32 %add, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div1368.mask)
  %exitcond.not = icmp eq i32 %div1368.mask, 2
  br i1 %exitcond.not, label %if.end25.cleanup_crit_edge, label %for.body15.1

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body15.1:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i69, align 4
  %add.ptr.i70.1 = getelementptr i8, ptr %28, i32 96
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i70.1) #7, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !270
  %d.sroa.0.0.extract.trunc.1 = trunc i16 %29 to i8
  %arrayidx17.1 = getelementptr i8, ptr %p.1.lcssa, i32 2
  %30 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %d.sroa.0.0.extract.trunc.1, ptr %arrayidx17.1, align 1
  br label %cleanup

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.then
  %call.sink = phi i32 [ %call, %if.then ], [ -12, %if.else.do.body_crit_edge ]
  %error = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.sink, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_blk_read.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_blk_read, %if.then34)) #7
          to label %do.end [label %if.then34], !srcloc !265

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  %error35 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %error35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_blk_read.__UNIQUE_ID_ddebug296, ptr noundef %35, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.34, i32 noundef %37) #7
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %38 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wait, align 4
  %error37 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %error37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error37, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body15.1, %if.end25.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %40, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.body15.1 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_sg_advance(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %head_pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 8
  %4 = ptrtoint ptr %head_pg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head_pg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %page_idx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 12
  %6 = ptrtoint ptr %page_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_idx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %page_idx, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blksz, align 4
  %head_len = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 7
  %10 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head_len, align 4
  %sub = sub i32 %9, %11
  %offset = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %offset, align 4
  %mapped = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapped, align 4
  %blk_page = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 5
  %15 = ptrtoint ptr %blk_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %blk_page, align 4
  tail call fastcc void @usdhi6_sg_unmap(ptr noundef %host, i1 noundef zeroext false)
  br label %if.end9

if.else:                                          ; preds = %entry
  %blksz2 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %blksz2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blksz2, align 4
  %offset3 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %18 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset3, align 4
  %add = add i32 %19, %17
  store i32 %add, ptr %offset3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp eq i32 %add, 4096
  br i1 %cmp, label %if.then5, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %offset3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %offset3, align 4
  %page_idx7 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 12
  %21 = ptrtoint ptr %page_idx7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_idx7, align 4
  %inc8 = add i32 %22, 1
  store i32 %inc8, ptr %page_idx7, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else.if.end9_crit_edge, %if.then
  %page_idx10 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 12
  %23 = ptrtoint ptr %page_idx10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_idx10, align 4
  %shl = shl i32 %24, 12
  %offset11 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %25 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset11, align 4
  %add12 = add i32 %shl, %26
  %sg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 11
  %27 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg, align 4
  %offset13 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %offset13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset13, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length, align 4
  %add15 = add i32 %32, %30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_sg_advance.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_sg_advance, %if.then19)) #7
          to label %do.end [label %if.then19], !srcloc !265

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %37 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_sg_advance.__UNIQUE_ID_ddebug278, ptr noundef %36, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %add12, i32 noundef %add15, i32 noundef %38) #7
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %add15)
  %cmp22 = icmp ult i32 %add12, %add15
  br i1 %cmp22, label %land.lhs.true, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %do.end
  %39 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool24.not = icmp eq i32 %40, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end33_crit_edge, label %if.then25

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then25:                                        ; preds = %land.lhs.true
  %blksz27 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %blksz27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %blksz27, align 4
  %add28 = add i32 %42, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add28)
  %cmp29 = icmp ugt i32 %add28, 4096
  br i1 %cmp29, label %if.then30, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sg, align 4
  tail call fastcc void @usdhi6_blk_bounce(ptr noundef %host, ptr noundef %44)
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %do.end.if.end33_crit_edge
  tail call fastcc void @usdhi6_sg_unmap(ptr noundef %host, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %add15)
  %cmp34 = icmp eq i32 %add12, %add15
  %45 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sg, align 4
  br i1 %cmp34, label %if.then35, label %if.end81

if.then35:                                        ; preds = %if.end33
  %call37 = tail call ptr @sg_next(ptr noundef %46) #7
  %47 = ptrtoint ptr %page_idx10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %page_idx10, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %if.then40, label %land.rhs.critedge

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %48 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6, ptr %wait, align 4
  %49 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %sg, align 4
  br label %cleanup

land.rhs.critedge:                                ; preds = %if.then35
  %50 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call37, ptr %sg, align 4
  %dma_length44 = getelementptr inbounds %struct.scatterlist, ptr %call37, i32 0, i32 4
  %51 = ptrtoint ptr %dma_length44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_length44, align 4
  %blksz45 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %53 = ptrtoint ptr %blksz45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blksz45, align 4
  %rem = urem i32 %52, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool46.not = icmp eq i32 %rem, 0
  br i1 %tobool46.not, label %land.rhs.critedge.cleanup_crit_edge, label %do.end62, !prof !268

land.rhs.critedge.cleanup_crit_edge:              ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end62:                                         ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 497, i32 noundef 9, ptr noundef nonnull @.str.36, i32 noundef %52, i32 noundef %54) #7
  %error = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %55 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -22, ptr %error, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end33
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %46, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !268

do.body2.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !271
  unreachable

sg_page.exit:                                     ; preds = %if.end81
  %and.i = and i32 %57, -4
  %58 = inttoptr i32 %and.i to ptr
  %59 = ptrtoint ptr %page_idx10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page_idx10, align 4
  %add.ptr = getelementptr %struct.page, ptr %58, i32 %60
  %pg85 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4
  %61 = ptrtoint ptr %pg85 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr, ptr %pg85, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.39, i32 noundef 44) #7
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr, align 4
  %shr.i.i = lshr i32 %63, 30
  %64 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %shr.i.i, label %sg_page.exit.if.then.i_crit_edge [
    i32 2, label %sg_page.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_page.exit.if.else.i_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

sg_page.exit.if.then.i_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %sg_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %65 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp2.i.not.i = icmp eq i32 %65, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %sg_page.exit.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %add.ptr) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %sg_page.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %add.ptr) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %mapped91 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %mapped91 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %addr.0.i, ptr %mapped91, align 4
  %blk_page94 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 5
  %67 = ptrtoint ptr %blk_page94 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %addr.0.i, ptr %blk_page94, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_sg_advance.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_sg_advance, %if.then107)) #7
          to label %cleanup [label %if.then107], !srcloc !265

if.then107:                                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 128
  %72 = ptrtoint ptr %pg85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pg85, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %74 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %74 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %75 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add114 = add i32 %sub.ptr.div, %75
  %76 = ptrtoint ptr %mapped91 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mapped91, align 4
  %78 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cmd, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_sg_advance.__UNIQUE_ID_ddebug279, ptr noundef %71, ptr noundef nonnull @.str.44, ptr noundef %73, i32 noundef %add114, ptr noundef %77, i32 noundef %83, ptr noundef %79) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %kmap.exit, %do.end62, %land.rhs.critedge.cleanup_crit_edge, %if.then40, %if.then30, %if.then25.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @usdhi6_sg_map(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  %sg2 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 11
  %sg3 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %cond.in = select i1 %cmp, ptr %sg2, ptr %sg3
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load ptr, ptr %cond.in, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %sub = sub i32 4096, %8
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blksz, align 4
  %rem = urem i32 %sub, %10
  %pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4
  %11 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pg, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !268

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 362, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull %12) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length, align 4
  %15 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blksz, align 4
  %rem27 = urem i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem27)
  %tobool28.not = icmp eq i32 %rem27, 0
  br i1 %tobool28.not, label %if.end62, label %do.end44, !prof !268

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 365, i32 noundef 9, ptr noundef nonnull @.str.36, i32 noundef %14, i32 noundef %16) #7
  br label %cleanup

if.end62:                                         ; preds = %if.end
  %17 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cond, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !268

do.body2.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !271
  unreachable

sg_page.exit:                                     ; preds = %if.end62
  %and.i = and i32 %18, -4
  %19 = inttoptr i32 %and.i to ptr
  %20 = ptrtoint ptr %pg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pg, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.39, i32 noundef 44) #7
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %19, align 4
  %shr.i.i = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %shr.i.i, label %sg_page.exit.if.then.i_crit_edge [
    i32 2, label %sg_page.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_page.exit.if.else.i_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

sg_page.exit.if.then.i_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %sg_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %sg_page.exit.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %19) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %sg_page.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %19) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %mapped = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %mapped to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %addr.0.i, ptr %mapped, align 4
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %offset70 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %28 = ptrtoint ptr %offset70 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %offset70, align 4
  %head_len = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 7
  %29 = ptrtoint ptr %head_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rem, ptr %head_len, align 4
  %30 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blksz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %31)
  %cmp72 = icmp ult i32 %sub, %31
  br i1 %cmp72, label %if.then73, label %if.else

if.then73:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @usdhi6_blk_bounce(ptr noundef %host, ptr noundef %cond)
  br label %do.body77

if.else:                                          ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %blk_page = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 5
  %32 = ptrtoint ptr %blk_page to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %addr.0.i, ptr %blk_page, align 4
  br label %do.body77

do.body77:                                        ; preds = %if.else, %if.then73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_sg_map.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_sg_map, %if.then87)) #7
          to label %do.end99 [label %if.then87], !srcloc !265

if.then87:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %37 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %39 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %40
  %41 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mapped, align 4
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset, align 4
  %45 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_sg_map.__UNIQUE_ID_ddebug277, ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef %38, i32 noundef %add, ptr noundef %42, i32 noundef %44, i32 noundef %50, ptr noundef %46) #7
  br label %do.end99

do.end99:                                         ; preds = %if.then87, %do.body77
  %blk_page100 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 5
  %51 = ptrtoint ptr %blk_page100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %blk_page100, align 4
  %53 = ptrtoint ptr %offset70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset70, align 4
  %add.ptr = getelementptr i8, ptr %52, i32 %54
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %do.end44
  %retval.0 = phi ptr [ null, %do.end44 ], [ %add.ptr, %do.end99 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_blk_bounce(ptr noundef %host, ptr nocapture noundef readonly %sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %head_len = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 7
  %4 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_blk_bounce.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_blk_bounce, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %10 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_len, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blocks, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_blk_bounce.__UNIQUE_ID_ddebug276, ptr noundef %9, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4
  %24 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pg, align 4
  %head_pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 8
  %26 = ptrtoint ptr %head_pg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %head_pg, align 4
  %mapped = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mapped, align 4
  %mapped8 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %mapped8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %mapped8, align 4
  %add.ptr = getelementptr %struct.page, ptr %25, i32 1
  store ptr %add.ptr, ptr %pg, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.39, i32 noundef 44) #7
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %shr.i.i = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %shr.i.i, label %do.end.if.then.i_crit_edge [
    i32 2, label %do.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

do.end.if.else.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not.i = icmp eq i32 %33, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %do.end.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %add.ptr) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %do.end.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %add.ptr) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %34 = ptrtoint ptr %mapped to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %addr.0.i, ptr %mapped, align 4
  %bounce_buf = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 10
  %blk_page = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 5
  %35 = ptrtoint ptr %blk_page to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %bounce_buf, ptr %blk_page, align 4
  %offset18 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %36 = ptrtoint ptr %offset18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %offset18, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %kmap.exit.cleanup_crit_edge

kmap.exit.cleanup_crit_edge:                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %mapped8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mapped8, align 4
  %add.ptr26 = getelementptr i8, ptr %40, i32 4096
  %idx.neg = sub i32 0, %5
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 %idx.neg
  %41 = call ptr @memcpy(ptr %bounce_buf, ptr %add.ptr27, i32 %5)
  %add.ptr30 = getelementptr i8, ptr %bounce_buf, i32 %5
  %blksz33 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %blksz33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blksz33, align 4
  %sub = sub i32 %43, %5
  %44 = call ptr @memcpy(ptr %add.ptr30, ptr %addr.0.i, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %kmap.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usdhi6_blk_write(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %io_error = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 17
  %4 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @usdhi6_error_code(ptr noundef %host)
  br label %do.body

if.end:                                           ; preds = %entry
  %pg = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pg, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %blk_page = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 5
  %8 = ptrtoint ptr %blk_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blk_page, align 4
  %offset = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call4 = tail call fastcc ptr @usdhi6_sg_map(ptr noundef %host)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else.do.body_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then3
  %p.0 = phi ptr [ %add.ptr, %if.then3 ], [ %call4, %if.else.if.end9_crit_edge ]
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp73.not = icmp ult i32 %13, 4
  br i1 %cmp73.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %p.174 = phi ptr [ %p.0, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %p.174 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p.174, align 4
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #7, !srcloc !264
  %inc = add nuw nsw i32 %i.075, 1
  %incdec.ptr = getelementptr i32, ptr %p.174, i32 1
  %19 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz, align 4
  %div67 = lshr i32 %20, 2
  %cmp = icmp ult i32 %inc, %div67
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %p.1.lcssa = phi ptr [ %p.0, %if.end9.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %13, %if.end9.for.end_crit_edge ], [ %20, %for.body.for.end_crit_edge ]
  %rem = and i32 %.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1377.not = icmp eq i32 %rem, 0
  br i1 %cmp1377.not, label %for.end.cleanup_crit_edge, label %for.body14.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body14.lr.ph:                                 ; preds = %for.end
  %add = add nuw nsw i32 %rem, 1
  %base.i69 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem)
  %cmp16.not = icmp eq i32 %rem, 1
  %21 = ptrtoint ptr %p.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %p.1.lcssa, align 1
  br i1 %cmp16.not, label %for.body14.lr.ph.if.end25_crit_edge, label %if.then18

for.body14.lr.ph.if.end25_crit_edge:              ; preds = %for.body14.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then18:                                        ; preds = %for.body14.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx21 = getelementptr i8, ptr %p.1.lcssa, i32 1
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %for.body14.lr.ph.if.end25_crit_edge
  %d.sroa.5.0 = phi i8 [ %24, %if.then18 ], [ 0, %for.body14.lr.ph.if.end25_crit_edge ]
  %d.sroa.5.0.insert.ext = zext i8 %d.sroa.5.0 to i16
  %d.sroa.0.0.insert.ext = zext i8 %22 to i16
  %d.sroa.0.0.insert.shift = shl nuw i16 %d.sroa.0.0.insert.ext, 8
  %d.sroa.0.0.insert.insert = or i16 %d.sroa.0.0.insert.shift, %d.sroa.5.0.insert.ext
  %25 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %26, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !272
  tail call void @arm_heavy_mb() #7
  %27 = tail call i16 @llvm.bswap.i16(i16 %d.sroa.0.0.insert.insert) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i70, i16 %27) #7, !srcloc !273
  %div1268.mask = and i32 %add, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div1268.mask)
  %exitcond.not = icmp eq i32 %div1268.mask, 2
  br i1 %exitcond.not, label %if.end25.cleanup_crit_edge, label %for.body14.1

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body14.1:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr i8, ptr %p.1.lcssa, i32 2
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1, align 1
  %d.sroa.0.0.insert.ext.1 = zext i8 %29 to i16
  %30 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i69, align 4
  %add.ptr.i70.1 = getelementptr i8, ptr %31, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !272
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i70.1, i16 %d.sroa.0.0.insert.ext.1) #7, !srcloc !273
  br label %cleanup

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.then
  %call.sink = phi i32 [ %call, %if.then ], [ -12, %if.else.do.body_crit_edge ]
  %error = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.sink, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_blk_write.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_blk_write, %if.then34)) #7
          to label %do.end [label %if.then34], !srcloc !265

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %error35 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %error35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_blk_write.__UNIQUE_ID_ddebug297, ptr noundef %36, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.45, i32 noundef %38) #7
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %39 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wait, align 4
  %error37 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %40 = ptrtoint ptr %error37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error37, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body14.1, %if.end25.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %41, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.body14.1 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_dma_kill(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_dma_kill.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_dma_kill, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_dma_kill.__UNIQUE_ID_ddebug282, ptr noundef %7, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %chan_rx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 24
  %16 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan_rx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then5.if.end8_crit_edge, label %dmaengine_terminate_async.exit.i

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

dmaengine_terminate_async.exit.i:                 ; preds = %if.then5
  %call.i.i = tail call i32 %21(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end8_crit_edge

dmaengine_terminate_async.exit.i.if.end8_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.54, i32 noundef 1169) #7
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 48
  %24 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %25, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end8_crit_edge, label %if.then.i2.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %25(ptr noundef %17) #7
  br label %if.end8

if.else:                                          ; preds = %do.end
  %chan_tx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 25
  %26 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan_tx, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %device_terminate_all.i.i15 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 47
  %30 = ptrtoint ptr %device_terminate_all.i.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_terminate_all.i.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i16, label %if.else.if.end8_crit_edge, label %dmaengine_terminate_async.exit.i19

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

dmaengine_terminate_async.exit.i19:               ; preds = %if.else
  %call.i.i17 = tail call i32 %31(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i18 = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i18, label %if.end.i22, label %dmaengine_terminate_async.exit.i19.if.end8_crit_edge

dmaengine_terminate_async.exit.i19.if.end8_crit_edge: ; preds = %dmaengine_terminate_async.exit.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i22:                                       ; preds = %dmaengine_terminate_async.exit.i19
  tail call void @__might_sleep(ptr noundef nonnull @.str.54, i32 noundef 1169) #7
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 4
  %device_synchronize.i.i20 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 48
  %34 = ptrtoint ptr %device_synchronize.i.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_synchronize.i.i20, align 4
  %tobool.not.i1.i21 = icmp eq ptr %35, null
  br i1 %tobool.not.i1.i21, label %if.end.i22.if.end8_crit_edge, label %if.then.i2.i23

if.end.i22.if.end8_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.i2.i23:                                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %35(ptr noundef %27) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then.i2.i23, %if.end.i22.if.end8_crit_edge, %dmaengine_terminate_async.exit.i19.if.end8_crit_edge, %if.else.if.end8_crit_edge, %if.then.i2.i, %if.end.i.if.end8_crit_edge, %dmaengine_terminate_async.exit.i.if.end8_crit_edge, %if.then5.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usdhi6_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %timeout_work = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #7
  %mrq2 = getelementptr inbounds %struct.usdhi6_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mrq, ptr %mrq2, align 4
  %sg = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10
  %1 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sg, align 4
  tail call fastcc void @usdhi6_timeout_set(ptr noundef %private.i)
  %call3 = tail call fastcc i32 @usdhi6_rq_start(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %error, align 4
  tail call fastcc void @usdhi6_request_done(ptr noundef %private.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usdhi6_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_set_ios.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_set_ios, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios, align 4
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdd, align 4
  %conv = zext i16 %5 to i32
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %6 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mode, align 2
  %conv4 = zext i8 %7 to i32
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %8 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bus_width, align 1
  %conv5 = zext i8 %9 to i32
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %10 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %timing, align 4
  %conv6 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_set_ios.__UNIQUE_ID_ddebug287, ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef %3, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %power_mode7 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %12 = ptrtoint ptr %power_mode7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %power_mode7, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %13, label %do.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb9
    i8 2, label %sw.bb18
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i, align 4
  %supply.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %supply.i, align 16
  %cmp.i.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sw.bb.usdhi6_set_power.exit_crit_edge, label %cond.end.i

sw.bb.usdhi6_set_power.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_set_power.exit

cond.end.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @mmc_regulator_set_ocr(ptr noundef %16, ptr noundef %18, i16 noundef zeroext 0) #7
  br label %usdhi6_set_power.exit

usdhi6_set_power.exit:                            ; preds = %cond.end.i, %sw.bb.usdhi6_set_power.exit_crit_edge
  %status_mask.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 2
  %19 = ptrtoint ptr %status_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 773, ptr %status_mask.i.i, align 4
  %status2_mask.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3
  %20 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 35711, ptr %status2_mask.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 84082688) #7, !srcloc !264
  %23 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status2_mask.i.i, align 4
  %25 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %27) #7, !srcloc !264
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  %base.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 100663296) #7, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !274
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !275
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %31, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 117440512) #7, !srcloc !264
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %dec.i = add nsw i32 %i.017.i, -1
  %tobool.not.i72 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i72, label %do.end15, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb9
  %i.017.i = phi i32 [ 1000, %sw.bb9 ], [ %dec.i, %for.cond.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %33, i32 448
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #7, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool7.not.i = icmp eq i32 %35, 0
  br i1 %tobool7.not.i, label %for.cond.i, label %if.else

do.end15:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.101) #10
  br label %sw.epilog

if.else:                                          ; preds = %for.body.i
  %38 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private.i, align 4
  %supply.i74 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 54
  %40 = ptrtoint ptr %supply.i74 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %supply.i74, align 16
  %cmp.i.i75 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i75, label %if.else.usdhi6_set_power.exit84_crit_edge, label %if.then.i78

if.else.usdhi6_set_power.exit84_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_set_power.exit84

if.then.i78:                                      ; preds = %if.else
  %42 = ptrtoint ptr %power_mode7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %power_mode7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i77 = icmp eq i8 %43, 0
  br i1 %tobool.not.i77, label %if.then.i78.cond.end.i83_crit_edge, label %cond.true.i80

if.then.i78.cond.end.i83_crit_edge:               ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i83

cond.true.i80:                                    ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #9
  %vdd.i79 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %44 = ptrtoint ptr %vdd.i79 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vdd.i79, align 4
  br label %cond.end.i83

cond.end.i83:                                     ; preds = %cond.true.i80, %if.then.i78.cond.end.i83_crit_edge
  %cond.i81 = phi i16 [ %45, %cond.true.i80 ], [ 0, %if.then.i78.cond.end.i83_crit_edge ]
  %call6.i82 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %39, ptr noundef %41, i16 noundef zeroext %cond.i81) #7
  br label %usdhi6_set_power.exit84

usdhi6_set_power.exit84:                          ; preds = %cond.end.i83, %if.else.usdhi6_set_power.exit84_crit_edge
  %status_mask.i.i85 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 2
  %46 = ptrtoint ptr %status_mask.i.i85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 773, ptr %status_mask.i.i85, align 4
  %status2_mask.i.i86 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3
  %47 = ptrtoint ptr %status2_mask.i.i86 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 35711, ptr %status2_mask.i.i86, align 4
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i88 = getelementptr i8, ptr %49, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i88, i32 84082688) #7, !srcloc !264
  %50 = ptrtoint ptr %status2_mask.i.i86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status2_mask.i.i86, align 4
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i.i89 = getelementptr i8, ptr %53, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i89, i32 %54) #7, !srcloc !264
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 80
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %bus_width20 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %59 = ptrtoint ptr %bus_width20 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bus_width20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp22 = icmp eq i8 %60, 0
  br i1 %cmp22, label %if.then24, label %if.else35

if.then24:                                        ; preds = %sw.bb18
  %timing25 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %61 = ptrtoint ptr %timing25 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %timing25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %62)
  %cmp27 = icmp eq i8 %62, 7
  br i1 %cmp27, label %do.end32, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.103) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.then24.if.end34_crit_edge
  %or = or i32 %58, 32768
  br label %if.end40

if.else35:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %58, -32769
  %timing36 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %65 = ptrtoint ptr %timing36 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %timing36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %66)
  %cmp38 = icmp eq i8 %66, 7
  %phi.bo = select i1 %cmp38, i32 16777216, i32 0
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.end34
  %mode.0 = phi i32 [ 0, %if.end34 ], [ %phi.bo, %if.else35 ]
  %option.0 = phi i32 [ %or, %if.end34 ], [ %and, %if.else35 ]
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %68, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %option.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %69) #7, !srcloc !264
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %71, i32 460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %mode.0) #7, !srcloc !264
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %usdhi6_set_power.exit84, %do.end15, %usdhi6_set_power.exit, %do.end.sw.epilog_crit_edge
  %rate = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 6
  %72 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rate, align 4
  %74 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp42.not = icmp eq i32 %73, %75
  br i1 %cmp42.not, label %sw.epilog.if.end45_crit_edge, label %if.then44

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @usdhi6_clk_set(ptr noundef %private.i, ptr noundef %ios)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %sw.epilog.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %3 = lshr i32 %2, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 17
  %4 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps2, align 4
  %and2 = lshr i32 %5, 11
  %and2.masked = and i32 %and2, 1
  %xor = xor i32 %and2.masked, %3
  ret i32 %xor
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_get_cd(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  %3 = lshr i32 %2, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 17
  %4 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps2, align 4
  %and2 = lshr i32 %5, 10
  %and.lobit7 = xor i32 %and2, %3
  %xor = and i32 %and.lobit7, 1
  ret i32 %xor
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usdhi6_enable_sdio_irq(ptr nocapture noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_enable_sdio_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_enable_sdio_irq, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool4.not, ptr @.str.111, ptr @.str.110
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_enable_sdio_irq.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool5.not = icmp eq i32 %enable, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sdio_mask = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 1
  %2 = ptrtoint ptr %sdio_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 49154, ptr %sdio_mask, align 4
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 46137344) #7, !srcloc !264
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %6, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 16777216) #7, !srcloc !264
  br label %if.end9

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i20 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %7 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 0) #7, !srcloc !264
  %9 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i20, align 4
  %add.ptr.i23 = getelementptr i8, ptr %10, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 62914560) #7, !srcloc !264
  %sdio_mask8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 1
  %11 = ptrtoint ptr %sdio_mask8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 49155, ptr %sdio_mask8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_sig_volt_switch(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pins_uhs.i = getelementptr inbounds %struct.usdhi6_host, ptr %private.i, i32 0, i32 28
  %0 = ptrtoint ptr %pins_uhs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins_uhs.i, align 4
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %2 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_voltage, align 1
  %conv = zext i8 %3 to i32
  %voltage.off.i = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage.off.i)
  %switch.i = icmp ult i32 %voltage.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pinctrl.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 25
  %4 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pinctrl.i, align 4
  %call2.i = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef %1) #7
  br label %usdhi6_set_pinstates.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %call3.i = tail call i32 @pinctrl_select_default_state(ptr noundef %9) #7
  br label %usdhi6_set_pinstates.exit

usdhi6_set_pinstates.exit:                        ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call3.i, %sw.default.i ], [ %call2.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %usdhi6_set_pinstates.exit.cleanup_crit_edge, label %do.body

usdhi6_set_pinstates.exit.cleanup_crit_edge:      ; preds = %usdhi6_set_pinstates.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %usdhi6_set_pinstates.exit
  %.b18 = load i1, ptr @usdhi6_sig_volt_switch.__print_once, align 1
  br i1 %.b18, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @usdhi6_sig_volt_switch.__print_once, align 1
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.112, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body.cleanup_crit_edge, %usdhi6_set_pinstates.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %do.body.cleanup_crit_edge ], [ %retval.0.i, %if.then5 ], [ 0, %usdhi6_set_pinstates.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhi6_card_busy(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %3 = xor i32 %2, -1
  %4 = lshr i32 %3, 31
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_timeout_set(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  %rate = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 20
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %5, 1000
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %busy_timeout, align 4
  %mul = mul i32 %9, %div
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div3 = udiv i32 %5, 1000000
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %div5 = udiv i32 %11, 1000
  %mul6 = mul i32 %div5, %div3
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout_clks, align 4
  %add = add i32 %mul6, %13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ticks.0 = phi i32 [ %add, %if.else ], [ %mul, %if.then ]
  %14 = add i32 %ticks.0, -134217729
  call void @__sanitizer_cov_trace_const_cmp4(i32 -134217728, i32 %14)
  %15 = icmp ult i32 %14, -134217728
  br i1 %15, label %if.end.do.body_crit_edge, label %if.else10

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %ticks.0)
  %cmp11 = icmp ult i32 %ticks.0, 8192
  br i1 %cmp11, label %if.else10.do.body_crit_edge, label %cond.end34

if.else10.do.body_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cond.end34:                                       ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %ticks.0, -1
  %16 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #7, !range !276
  %sub.i.op.i.i = shl nuw nsw i32 %16, 4
  %cond35 = xor i32 %sub.i.op.i.i, 496
  %phi.bo = add nsw i32 %cond35, -192
  br label %do.body

do.body:                                          ; preds = %cond.end34, %if.else10.do.body_crit_edge, %if.end.do.body_crit_edge
  %val.0 = phi i32 [ %phi.bo, %cond.end34 ], [ 224, %if.end.do.body_crit_edge ], [ 0, %if.else10.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_timeout_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_timeout_set, %if.then43)) #7
          to label %do.end [label %if.then43], !srcloc !265

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %tobool45.not = icmp eq ptr %22, null
  %cond46 = select i1 %tobool45.not, ptr @.str.81, ptr @.str.2
  %rate47 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 20
  %23 = ptrtoint ptr %rate47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_timeout_set.__UNIQUE_ID_ddebug288, ptr noundef %20, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond46, i32 noundef %ticks.0, i32 noundef %24) #7
  br label %do.end

do.end:                                           ; preds = %if.then43, %do.body
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 80
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %28 = and i32 %27, 268435455
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %or = or i32 %29, %val.0
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %31, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %32) #7, !srcloc !264
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usdhi6_rq_start(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 4
  %data3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %conv.i = trunc i32 %7 to i16
  %app_cmd.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 21
  %8 = ptrtoint ptr %app_cmd.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %app_cmd.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %app_cmd.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %app_cmd.i, align 4
  %conv5.i = or i16 %conv.i, 64
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %opc.0.i = phi i16 [ %conv5.i, %if.then.i ], [ %conv.i, %entry.if.end.i_crit_edge ]
  %11 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data3, align 4
  %tobool6.not.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i, label %if.end.i.usdhi6_cmd_flags.exit_crit_edge, label %if.then7.i

if.end.i.usdhi6_cmd_flags.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_cmd_flags.exit

if.then7.i:                                       ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  %spec.select.v.i = select i1 %tobool12.not.i, i16 2048, i16 6144
  %spec.select.i = or i16 %spec.select.v.i, %opc.0.i
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %16, label %if.then7.i.if.end40.i_crit_edge [
    i32 18, label %if.then7.i.if.then30.i_crit_edge
    i32 25, label %if.then7.i.if.then30.i_crit_edge306
    i32 53, label %land.lhs.true.i
  ]

if.then7.i.if.then30.i_crit_edge306:              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i

if.then7.i.if.then30.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i

if.then7.i.if.end40.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %if.then7.i
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp28.i = icmp ugt i32 %19, 1
  br i1 %cmp28.i, label %land.lhs.true.i.if.then30.i_crit_edge, label %land.lhs.true.i.if.end40.i_crit_edge

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

land.lhs.true.i.if.then30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true.i.if.then30.i_crit_edge, %if.then7.i.if.then30.i_crit_edge, %if.then7.i.if.then30.i_crit_edge306
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stop.i, align 4
  %tobool34.not.i = icmp eq ptr %21, null
  %spec.select91.v.i = select i1 %tobool34.not.i, i16 24576, i16 8192
  %spec.select91.i = or i16 %spec.select91.v.i, %spec.select.i
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then30.i, %land.lhs.true.i.if.end40.i_crit_edge, %if.then7.i.if.end40.i_crit_edge
  %opc.2.i = phi i16 [ %spec.select.i, %land.lhs.true.i.if.end40.i_crit_edge ], [ %spec.select.i, %if.then7.i.if.end40.i_crit_edge ], [ %spec.select91.i, %if.then30.i ]
  %flags41.i = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %flags41.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags41.i, align 4
  %and42.i = and i32 %23, 31
  %24 = zext i32 %and42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %and42.i, label %usdhi6_cmd_flags.exit.thread [
    i32 0, label %sw.bb.i
    i32 21, label %sw.bb46.i
    i32 29, label %sw.bb50.i
    i32 7, label %sw.bb54.i
    i32 1, label %sw.bb58.i
  ]

sw.bb.i:                                          ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = or i16 %opc.2.i, 768
  br label %usdhi6_cmd_flags.exit

sw.bb46.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = or i16 %opc.2.i, 1024
  br label %usdhi6_cmd_flags.exit

sw.bb50.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = or i16 %opc.2.i, 1280
  br label %usdhi6_cmd_flags.exit

sw.bb54.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = or i16 %opc.2.i, 1536
  br label %usdhi6_cmd_flags.exit

sw.bb58.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = or i16 %opc.2.i, 1792
  br label %usdhi6_cmd_flags.exit

usdhi6_cmd_flags.exit.thread:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.92, i32 noundef %and42.i) #10
  br label %cleanup166

usdhi6_cmd_flags.exit:                            ; preds = %sw.bb58.i, %sw.bb54.i, %sw.bb50.i, %sw.bb46.i, %sw.bb.i, %if.end.i.usdhi6_cmd_flags.exit_crit_edge
  %opc.3.i = phi i16 [ %29, %sw.bb58.i ], [ %28, %sw.bb54.i ], [ %27, %sw.bb50.i ], [ %26, %sw.bb46.i ], [ %25, %sw.bb.i ], [ %opc.0.i, %if.end.i.usdhi6_cmd_flags.exit_crit_edge ]
  %conv65.i = zext i16 %opc.3.i to i32
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %usdhi6_cmd_flags.exit
  %i.0302 = phi i32 [ 1000, %usdhi6_cmd_flags.exit ], [ %dec, %if.end7.for.body_crit_edge ]
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 60
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %37 = and i32 %36, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool5.not = icmp eq i32 %37, 0
  br i1 %tobool5.not, label %if.end16, label %if.end7

if.end7:                                          ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %dec = add nsw i32 %i.0302, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.critedge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body.critedge:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_rq_start, %if.then14)) #7
          to label %cleanup166 [label %if.then14], !srcloc !265

if.then14:                                        ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_rq_start.__UNIQUE_ID_ddebug290, ptr noundef %41, ptr noundef nonnull @.str.83) #7
  br label %cleanup166

if.end16:                                         ; preds = %for.body
  %tobool17.not = icmp eq ptr %5, null
  br i1 %tobool17.not, label %do.body139, label %if.then18

if.then18:                                        ; preds = %if.end16
  %page_idx = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 12
  %42 = ptrtoint ptr %page_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %page_idx, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %3, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %44, label %if.then18.if.end57_crit_edge [
    i32 53, label %land.lhs.true
    i32 18, label %if.then18.if.end34_crit_edge
    i32 25, label %if.then18.if.end34_crit_edge307
  ]

if.then18.if.end34_crit_edge307:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then18.if.end34_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then18.if.end57_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then18
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %46 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp20 = icmp ugt i32 %47, 1
  br i1 %cmp20, label %if.then21, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then21:                                        ; preds = %land.lhs.true
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %blksz, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %49, label %if.then21.cleanup.thread_crit_edge [
    i32 512, label %if.then21.if.then56_crit_edge
    i32 32, label %if.then21.sw.bb_crit_edge
    i32 64, label %if.then21.sw.bb_crit_edge308
    i32 128, label %if.then21.sw.bb_crit_edge309
    i32 256, label %if.then21.sw.bb_crit_edge310
  ]

if.then21.sw.bb_crit_edge310:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then21.sw.bb_crit_edge309:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then21.sw.bb_crit_edge308:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then21.sw.bb_crit_edge:                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then21.if.then56_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.then21.cleanup.thread_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

sw.bb:                                            ; preds = %if.then21.sw.bb_crit_edge, %if.then21.sw.bb_crit_edge308, %if.then21.sw.bb_crit_edge309, %if.then21.sw.bb_crit_edge310
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stop, align 4
  %tobool22.not.not = icmp eq ptr %52, null
  br i1 %tobool22.not.not, label %land.lhs.true53, label %sw.bb.cleanup.thread_crit_edge

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end34:                                         ; preds = %if.then18.if.end34_crit_edge, %if.then18.if.end34_crit_edge307
  %blksz30 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %53 = ptrtoint ptr %blksz30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blksz30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %54)
  %cmp31.not.not = icmp eq i32 %54, 512
  br i1 %cmp31.not.not, label %if.end44, label %if.end34.cleanup.thread_crit_edge

if.end34.cleanup.thread_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end34.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge, %if.then21.cleanup.thread_crit_edge
  %55 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 128
  %blocks42 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %59 = ptrtoint ptr %blocks42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blocks42, align 4
  %blksz43 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %61 = ptrtoint ptr %blksz43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blksz43, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %60, i32 noundef %62) #10
  br label %cleanup166

if.end44:                                         ; preds = %if.end34
  %63 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %44, label %if.end44.if.end57_crit_edge [
    i32 18, label %if.end44.if.then56_crit_edge
    i32 25, label %if.end44.if.then56_crit_edge311
  ]

if.end44.if.then56_crit_edge311:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.end44.if.then56_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true53:                                  ; preds = %sw.bb
  %64 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp55 = icmp ugt i32 %.pr, 1
  br i1 %cmp55, label %land.lhs.true53.if.then56_crit_edge, label %land.lhs.true53.if.end57_crit_edge

land.lhs.true53.if.end57_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true53.if.then56_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.then56:                                        ; preds = %land.lhs.true53.if.then56_crit_edge, %if.end44.if.then56_crit_edge, %if.end44.if.then56_crit_edge311, %if.then21.if.then56_crit_edge
  %65 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mrq1, align 4
  %data2.i = getelementptr inbounds %struct.mmc_request, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data2.i, align 4
  %blocks.i250 = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %blocks.i250 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %blocks.i250, align 4
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %73) #7, !srcloc !264
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 12
  %74 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sg.i, align 4
  %sg3.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 11
  %76 = ptrtoint ptr %sg3.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %sg3.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 1
  %77 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i, align 4
  %offset5.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 6
  %79 = ptrtoint ptr %offset5.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %offset5.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true53.if.end57_crit_edge, %if.end44.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.then18.if.end57_crit_edge
  %blksz58 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %80 = ptrtoint ptr %blksz58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blksz58, align 4
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i252 = getelementptr i8, ptr %83, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %84 = tail call i32 @llvm.bswap.i32(i32 %81) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i252, i32 %84) #7, !srcloc !264
  %85 = ptrtoint ptr %blksz58 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %blksz58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %86)
  %cmp60 = icmp ugt i32 %86, 63
  br i1 %cmp60, label %if.end57.land.lhs.true64_crit_edge, label %lor.lhs.false61

if.end57.land.lhs.true64_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true64

lor.lhs.false61:                                  ; preds = %if.end57
  %blocks62 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %87 = ptrtoint ptr %blocks62 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blocks62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp63 = icmp ugt i32 %88, 1
  br i1 %cmp63, label %lor.lhs.false61.land.lhs.true64_crit_edge, label %lor.lhs.false61.if.end93_crit_edge

lor.lhs.false61.if.end93_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

lor.lhs.false61.land.lhs.true64_crit_edge:        ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true64

land.lhs.true64:                                  ; preds = %lor.lhs.false61.land.lhs.true64_crit_edge, %if.end57.land.lhs.true64_crit_edge
  %rem = and i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool66.not = icmp eq i32 %rem, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %land.lhs.true64.do.body71_crit_edge

land.lhs.true64.do.body71_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body71

lor.lhs.false67:                                  ; preds = %land.lhs.true64
  %sg = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %89 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sg, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset, align 4
  %rem68 = and i32 %92, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem68)
  %tobool69.not = icmp eq i32 %rem68, 0
  br i1 %tobool69.not, label %lor.lhs.false67.if.end93_crit_edge, label %lor.lhs.false67.do.body71_crit_edge

lor.lhs.false67.do.body71_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body71

lor.lhs.false67.if.end93_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.body71:                                        ; preds = %lor.lhs.false67.do.body71_crit_edge, %land.lhs.true64.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_rq_start, %if.then83)) #7
          to label %if.end93 [label %if.then83], !srcloc !265

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %host, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 128
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %97 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sg_len, align 4
  %99 = ptrtoint ptr %blksz58 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blksz58, align 4
  %blocks87 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %101 = ptrtoint ptr %blocks87 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %blocks87, align 4
  %sg88 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %103 = ptrtoint ptr %sg88 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sg88, align 4
  %offset89 = getelementptr inbounds %struct.scatterlist, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %offset89 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_rq_start.__UNIQUE_ID_ddebug291, ptr noundef %96, ptr noundef nonnull @.str.85, i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %106) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then83, %do.body71, %lor.lhs.false67.if.end93_crit_edge, %lor.lhs.false61.if.end93_crit_edge
  %107 = ptrtoint ptr %blksz58 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %blksz58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %108)
  %cmp95 = icmp ugt i32 %108, 63
  %rem98 = and i32 %108, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem98)
  %tobool99.not = icmp eq i32 %rem98, 0
  %or.cond = and i1 %cmp95, %tobool99.not
  br i1 %or.cond, label %land.rhs, label %if.end93.do.body106_crit_edge

if.end93.do.body106_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body106

land.rhs:                                         ; preds = %if.end93
  %chan_rx.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 24
  %109 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chan_rx.i, align 4
  %tobool.not.i253 = icmp eq ptr %110, null
  br i1 %tobool.not.i253, label %land.rhs.do.body106_crit_edge, label %lor.lhs.false.i

land.rhs.do.body106_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body106

lor.lhs.false.i:                                  ; preds = %land.rhs
  %chan_tx.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 25
  %111 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chan_tx.i, align 4
  %tobool1.not.i = icmp eq ptr %112, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body106_crit_edge, label %if.end.i257

lor.lhs.false.i.do.body106_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body106

if.end.i257:                                      ; preds = %lor.lhs.false.i
  %113 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mrq1, align 4
  %data.i254 = getelementptr inbounds %struct.mmc_request, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %data.i254 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i254, align 4
  %flags.i255 = getelementptr inbounds %struct.mmc_data, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %flags.i255 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags.i255, align 4
  %and.i256 = and i32 %118, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool2.not.i = icmp eq i32 %and.i256, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @usdhi6_dma_setup(ptr noundef %host, ptr noundef nonnull %110, i32 noundef 2) #7
  br label %land.end

if.end5.i:                                        ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call fastcc i32 @usdhi6_dma_setup(ptr noundef %host, ptr noundef nonnull %112, i32 noundef 1) #7
  br label %land.end

land.end:                                         ; preds = %if.end5.i, %if.then3.i
  %retval.0.i258 = phi i32 [ %call.i, %if.then3.i ], [ %call7.i, %if.end5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i258)
  %cmp101 = icmp sgt i32 %retval.0.i258, 0
  br i1 %cmp101, label %if.then104, label %land.end.do.body106_crit_edge

land.end.do.body106_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body106

if.then104:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i, align 4
  %add.ptr.i260 = getelementptr i8, ptr %120, i32 432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 33554432) #7, !srcloc !264
  br label %do.body106

do.body106:                                       ; preds = %if.then104, %land.end.do.body106_crit_edge, %lor.lhs.false.i.do.body106_crit_edge, %land.rhs.do.body106_crit_edge, %if.end93.do.body106_crit_edge
  %121 = phi ptr [ @.str.70, %land.end.do.body106_crit_edge ], [ @.str.69, %if.then104 ], [ @.str.70, %if.end93.do.body106_crit_edge ], [ @.str.70, %lor.lhs.false.i.do.body106_crit_edge ], [ @.str.70, %land.rhs.do.body106_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_rq_start, %cleanup.thread297)) #7
          to label %land.rhs161 [label %cleanup.thread297], !srcloc !265

cleanup.thread297:                                ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %host, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 128
  %126 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %3, align 4
  %blocks122 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %128 = ptrtoint ptr %blocks122 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %blocks122, align 4
  %130 = ptrtoint ptr %blksz58 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %blksz58, align 4
  %sg_len124 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %132 = ptrtoint ptr %sg_len124 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sg_len124, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %134 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags, align 4
  %and126 = and i32 %135, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %cond128 = select i1 %tobool127.not, ptr @.str.88, ptr @.str.87
  %sg129 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %136 = ptrtoint ptr %sg129 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sg129, align 4
  %offset130 = getelementptr inbounds %struct.scatterlist, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %offset130 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %offset130, align 4
  %stop131 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %140 = ptrtoint ptr %stop131 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %stop131, align 4
  %tobool132.not = icmp eq ptr %141, null
  %cond133 = select i1 %tobool132.not, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_rq_start.__UNIQUE_ID_ddebug292, ptr noundef %125, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.82, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133, ptr noundef nonnull %121, ptr noundef nonnull %cond128, i32 noundef %139, ptr noundef nonnull %cond133) #7
  br label %land.rhs161

do.body139:                                       ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_rq_start, %if.then151)) #7
          to label %land.end164.critedge [label %if.then151], !srcloc !265

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %host, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 128
  %146 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_rq_start.__UNIQUE_ID_ddebug293, ptr noundef %145, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.82, i32 noundef %147) #7
  %status_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 14
  %148 = ptrtoint ptr %status_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 768, ptr %status_mask.i.i, align 4
  %status2_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 15
  %149 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2816, ptr %status2_mask.i.i, align 4
  %150 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %151, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 196608) #7, !srcloc !264
  %152 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %status2_mask.i.i, align 4
  %154 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %155, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %156 = tail call i32 @llvm.bswap.i32(i32 %153) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %156) #7, !srcloc !264
  %wait.c236 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %157 = ptrtoint ptr %wait.c236 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %wait.c236, align 4
  %timeout_work.c237 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 22
  %timeout.c238 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 23
  %158 = ptrtoint ptr %timeout.c238 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %timeout.c238, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %160 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %160, ptr noundef %timeout_work.c237, i32 noundef %159) #7
  br label %land.end164

land.rhs161:                                      ; preds = %cleanup.thread297, %do.body106
  %status_mask.i.i261 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 14
  %161 = ptrtoint ptr %status_mask.i.i261 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 768, ptr %status_mask.i.i261, align 4
  %status2_mask.i.i262 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 15
  %162 = ptrtoint ptr %status2_mask.i.i262 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 2816, ptr %status2_mask.i.i262, align 4
  %163 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i264 = getelementptr i8, ptr %164, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i264, i32 196608) #7, !srcloc !264
  %165 = ptrtoint ptr %status2_mask.i.i262 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %status2_mask.i.i262, align 4
  %167 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i.i265 = getelementptr i8, ptr %168, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %169 = tail call i32 @llvm.bswap.i32(i32 %166) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i265, i32 %169) #7, !srcloc !264
  %wait = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %170 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %wait, align 4
  %timeout_work = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 22
  %timeout = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 23
  %171 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %173 = load ptr, ptr @system_wq, align 4
  %call.i.i266 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %173, ptr noundef %timeout_work, i32 noundef %172) #7
  %blocks162 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %174 = ptrtoint ptr %blocks162 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %blocks162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp163 = icmp ugt i32 %175, 1
  %phi.sel = select i1 %cmp163, i32 65536, i32 0
  br label %land.end164

land.end164.critedge:                             ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #9
  %status_mask.i.i267 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 14
  %176 = ptrtoint ptr %status_mask.i.i267 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 768, ptr %status_mask.i.i267, align 4
  %status2_mask.i.i268 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 15
  %177 = ptrtoint ptr %status2_mask.i.i268 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2816, ptr %status2_mask.i.i268, align 4
  %178 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i270 = getelementptr i8, ptr %179, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i270, i32 196608) #7, !srcloc !264
  %180 = ptrtoint ptr %status2_mask.i.i268 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %status2_mask.i.i268, align 4
  %182 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i.i271 = getelementptr i8, ptr %183, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %184 = tail call i32 @llvm.bswap.i32(i32 %181) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i271, i32 %184) #7, !srcloc !264
  %wait.c = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 13
  %185 = ptrtoint ptr %wait.c to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %wait.c, align 4
  %timeout_work.c = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 22
  %timeout.c = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 23
  %186 = ptrtoint ptr %timeout.c to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %timeout.c, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %188 = load ptr, ptr @system_wq, align 4
  %call.i.i272 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %188, ptr noundef %timeout_work.c, i32 noundef %187) #7
  br label %land.end164

land.end164:                                      ; preds = %land.end164.critedge, %land.rhs161, %if.then151
  %189 = phi i32 [ %phi.sel, %land.rhs161 ], [ 0, %land.end164.critedge ], [ 0, %if.then151 ]
  %190 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base.i, align 4
  %add.ptr.i274 = getelementptr i8, ptr %191, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 %189) #7, !srcloc !264
  %arg = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  %192 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arg, align 4
  %194 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base.i, align 4
  %add.ptr.i276 = getelementptr i8, ptr %195, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %196 = tail call i32 @llvm.bswap.i32(i32 %193) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 %196) #7, !srcloc !264
  %197 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %199 = tail call i32 @llvm.bswap.i32(i32 %conv65.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %199) #7, !srcloc !264
  br label %cleanup166

cleanup166:                                       ; preds = %land.end164, %cleanup.thread, %if.then14, %do.body.critedge, %usdhi6_cmd_flags.exit.thread
  %retval.1 = phi i32 [ 0, %land.end164 ], [ -11, %if.then14 ], [ -22, %usdhi6_cmd_flags.exit.thread ], [ -11, %do.body.critedge ], [ -22, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usdhi6_dma_setup(ptr noundef %host, ptr noundef %chan, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %sg2 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg2, align 4
  %dir.off = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir.off)
  %switch = icmp ult i32 %dir.off, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %9, ptr noundef %5, i32 noundef %11, i32 noundef %dir, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %sw.epilog
  %dma_active = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 26
  %12 = ptrtoint ptr %dma_active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dma_active, align 4
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %lor.lhs.false.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.then
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  %15 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body_crit_edge, label %if.end

lor.lhs.false2.i.do.body_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %16(ptr noundef nonnull %chan, ptr noundef %5, i32 noundef %call, i32 noundef %dir, i32 noundef 3, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @usdhi6_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %host, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_submit.i, align 4
  %call.i53 = tail call i32 %20(ptr noundef nonnull %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end.do.body_crit_edge, %lor.lhs.false2.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.then.do.body_crit_edge, %sw.epilog.do.body_crit_edge
  %desc.058 = phi ptr [ %call.i, %if.then5 ], [ null, %if.end.do.body_crit_edge ], [ null, %sw.epilog.do.body_crit_edge ], [ null, %lor.lhs.false2.i.do.body_crit_edge ], [ null, %lor.lhs.false.i.do.body_crit_edge ], [ null, %if.then.do.body_crit_edge ]
  %cookie.0 = phi i32 [ %call.i53, %if.then5 ], [ -22, %if.end.do.body_crit_edge ], [ -22, %sw.epilog.do.body_crit_edge ], [ -22, %lor.lhs.false2.i.do.body_crit_edge ], [ -22, %lor.lhs.false.i.do.body_crit_edge ], [ -22, %if.then.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_dma_setup.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_dma_setup, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !265

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  %25 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_dma_setup.__UNIQUE_ID_ddebug281, ptr noundef %24, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, i32 noundef %26, i32 noundef %call, i32 noundef %cookie.0, ptr noundef %desc.058) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cookie.0)
  %cmp15 = icmp slt i32 %cookie.0, 0
  br i1 %cmp15, label %if.then16, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1760 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1760, i32 %call, i32 %cookie.0
  %dma_active.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 26
  %27 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dma_active.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 25
  %28 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i54 = icmp eq ptr %29, null
  br i1 %tobool.not.i54, label %if.then16.if.end.i55_crit_edge, label %if.then.i

if.then16.if.end.i55_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i55

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %chan_tx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %29) #7
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.then.i, %if.then16.if.end.i55_crit_edge
  %chan_rx.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 24
  %31 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan_rx.i, align 4
  %tobool3.not.i = icmp eq ptr %32, null
  br i1 %tobool3.not.i, label %if.end.i55.usdhi6_dma_release.exit_crit_edge, label %if.then4.i

if.end.i55.usdhi6_dma_release.exit_crit_edge:     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_dma_release.exit

if.then4.i:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %chan_rx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %32) #7
  br label %usdhi6_dma_release.exit

usdhi6_dma_release.exit:                          ; preds = %if.then4.i, %if.end.i55.usdhi6_dma_release.exit_crit_edge
  %34 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.48, i32 noundef %spec.select) #10
  br label %cleanup

cleanup:                                          ; preds = %usdhi6_dma_release.exit, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %cookie.0, %usdhi6_dma_release.exit ], [ %cookie.0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usdhi6_dma_complete(ptr nocapture noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.rhs.do.end_crit_edge, label %do.body26, !prof !277

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i54 = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 556, i32 noundef 9, ptr noundef nonnull @.str.96, ptr noundef %retval.0.i54, ptr noundef %1) #7
  br label %cleanup

do.body26:                                        ; preds = %lor.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_dma_complete.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_dma_complete, %if.then36)) #7
          to label %do.end41 [label %if.then36], !srcloc !265

if.then36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_dma_complete.__UNIQUE_ID_ddebug280, ptr noundef %15, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef %19) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.body26
  %dma_active.i = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 26
  %20 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_active.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i55 = icmp eq i8 %21, 0
  br i1 %tobool.not.i55, label %do.end41.usdhi6_dma_stop_unmap.exit_crit_edge, label %if.end.i56

do.end41.usdhi6_dma_stop_unmap.exit_crit_edge:    ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %usdhi6_dma_stop_unmap.exit

if.end.i56:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mrq1, align 4
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data1.i, align 4
  %base.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 2
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !264
  %28 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %dma_active.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %25, i32 0, i32 6
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %chan_rx.i = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 24
  %chan_tx.i = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 25
  %chan_rx.sink.i = select i1 %tobool3.not.i, ptr %chan_tx.i, ptr %chan_rx.i
  %.sink21.i = select i1 %tobool3.not.i, i32 1, i32 2
  %31 = ptrtoint ptr %chan_rx.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan_rx.sink.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %25, i32 0, i32 12
  %37 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %25, i32 0, i32 10
  %39 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sg_len.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %36, ptr noundef %38, i32 noundef %40, i32 noundef %.sink21.i, i32 noundef 0) #7
  br label %usdhi6_dma_stop_unmap.exit

usdhi6_dma_stop_unmap.exit:                       ; preds = %if.end.i56, %do.end41.usdhi6_dma_stop_unmap.exit_crit_edge
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  %status_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 14
  %45 = ptrtoint ptr %status_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 769, ptr %status_mask.i.i, align 4
  %and2.i.i = select i1 %tobool43.not, i32 2304, i32 2560
  %status2_mask.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 15
  %46 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and2.i.i, ptr %status2_mask.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.usdhi6_host, ptr %arg, i32 0, i32 2
  %47 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16973824) #7, !srcloc !264
  %49 = ptrtoint ptr %status2_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status2_mask.i.i, align 4
  %51 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %52, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %53) #7, !srcloc !264
  br label %cleanup

cleanup:                                          ; preds = %usdhi6_dma_stop_unmap.exit, %dev_name.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usdhi6_clk_set(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  %base.i = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0202 = phi i32 [ 1000, %entry ], [ %dec, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %5 = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %if.end4

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %dec = add nsw i32 %i.0202, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end.critedge:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.105) #10
  br label %cleanup123

if.end4:                                          ; preds = %for.body
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i193 = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #7, !srcloc !261
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %and6 = and i32 %13, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.end4.if.end92_crit_edge, label %if.then8

if.end4.if.end92_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then8:                                         ; preds = %if.end4
  %imclk = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 19
  %14 = ptrtoint ptr %imclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp.not = icmp ugt i32 %15, %1
  br i1 %cmp.not, label %cond.end67, label %if.then9

if.then9:                                         ; preds = %if.then8
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %16 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp10.not = icmp eq i8 %17, 7
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %13, 255
  br label %if.end72

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %div190 = lshr i32 %15, 1
  br label %if.end72

cond.end67:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %1, -1
  %sub = add i32 %add, %15
  %div19 = udiv i32 %sub, %1
  %sub.i194 = add i32 %div19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i194)
  %tobool.not.i.i.i = icmp eq i32 %sub.i194, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %sub.i194, i1 true) #7, !range !276
  %sub.i.i.i = sub nuw nsw i32 32, %18
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %sub.i.i.op.i.op = lshr i32 %sub.i.i.op.i, 2
  %shr = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.op.i.op
  %or69 = or i32 %shr, %and6
  %19 = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %div71203 = lshr i32 %15, %19
  br label %if.end72

if.end72:                                         ; preds = %cond.end67, %if.else, %if.then12
  %new_rate.0 = phi i32 [ %15, %if.then12 ], [ %div190, %if.else ], [ %div71203, %cond.end67 ]
  %val.0 = phi i32 [ %or, %if.then12 ], [ %and6, %if.else ], [ %or69, %cond.end67 ]
  %rate73 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 20
  %20 = ptrtoint ptr %rate73 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %new_rate.0)
  %cmp74 = icmp eq i32 %21, %new_rate.0
  br i1 %cmp74, label %if.end72.cleanup123_crit_edge, label %if.end77

if.end72.cleanup123_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

if.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %rate73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %new_rate.0, ptr %rate73, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usdhi6_clk_set.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usdhi6_clk_set, %if.then84)) #7
          to label %if.end92 [label %if.then84], !srcloc !265

if.then84:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 128
  %and87 = shl i32 %val.0, 2
  %shl88 = and i32 %and87, 1020
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usdhi6_clk_set.__UNIQUE_ID_ddebug286, ptr noundef %26, ptr noundef nonnull @.str.107, i32 noundef %1, i32 noundef %shl88, i32 noundef %new_rate.0) #7
  br label %if.end92

if.end92:                                         ; preds = %if.then84, %if.end77, %if.end4.if.end92_crit_edge
  %val.1 = phi i32 [ %and6, %if.end4.if.end92_crit_edge ], [ %val.0, %if.then84 ], [ %val.0, %if.end77 ]
  %imclk93 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 19
  %27 = ptrtoint ptr %imclk93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %imclk93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %1)
  %cmp94 = icmp eq i32 %28, %1
  br i1 %cmp94, label %if.end92.if.then102_crit_edge, label %lor.lhs.false

if.end92.if.then102_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false:                                    ; preds = %if.end92
  %rate97 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 20
  %29 = ptrtoint ptr %rate97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp98 = icmp eq i32 %28, %30
  %brmerge = select i1 %cmp98, i1 true, i1 %tobool7.not
  br i1 %brmerge, label %lor.lhs.false.if.then102_crit_edge, label %lor.lhs.false.if.end104_crit_edge

lor.lhs.false.if.end104_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false.if.then102_crit_edge, %if.end92.if.then102_crit_edge
  %and103 = and i32 %val.1, -257
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %32, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %and103) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %33) #7, !srcloc !264
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %lor.lhs.false.if.end104_crit_edge
  br i1 %tobool7.not, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %rate107 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 20
  %34 = ptrtoint ptr %rate107 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rate107, align 4
  br label %cleanup123

if.end108:                                        ; preds = %if.end104
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %36, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %val.1) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %37) #7, !srcloc !264
  %38 = ptrtoint ptr %imclk93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %imclk93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %1)
  %cmp110 = icmp eq i32 %39, %1
  br i1 %cmp110, label %if.end108.if.then120_crit_edge, label %lor.lhs.false112

if.end108.if.then120_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120

lor.lhs.false112:                                 ; preds = %if.end108
  %rate114 = getelementptr inbounds %struct.usdhi6_host, ptr %host, i32 0, i32 20
  %40 = ptrtoint ptr %rate114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rate114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp115 = icmp eq i32 %39, %41
  %and118 = and i32 %val.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  %or.cond = select i1 %cmp115, i1 true, i1 %tobool119.not
  br i1 %or.cond, label %lor.lhs.false112.if.then120_crit_edge, label %lor.lhs.false112.cleanup123_crit_edge

lor.lhs.false112.cleanup123_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

lor.lhs.false112.if.then120_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120

if.then120:                                       ; preds = %lor.lhs.false112.if.then120_crit_edge, %if.end108.if.then120_crit_edge
  %or121 = or i32 %val.1, 256
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %43, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or121) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %44) #7, !srcloc !264
  br label %cleanup123

cleanup123:                                       ; preds = %if.then120, %lor.lhs.false112.cleanup123_crit_edge, %if.then106, %if.end72.cleanup123_crit_edge, %do.end.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !154, !155, !157, !158, !160, !161, !163, !165, !166, !167, !169, !171, !172, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !194, !195, !196, !197, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !240, !241, !242, !243, !244, !246, !247, !248, !249, !250}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @__initcall__kmod_usdhi6rol0__302_1911_usdhi6_driver_init6, !1, !"__initcall__kmod_usdhi6rol0__302_1911_usdhi6_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1911, i32 1}
!2 = !{ptr @__exitcall_usdhi6_driver_exit, !1, !"__exitcall_usdhi6_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1913, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1914, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias306, !9, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1915, i32 1}
!10 = !{ptr @__UNIQUE_ID_author307, !11, !"__UNIQUE_ID_author307", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1916, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1905, i32 11}
!14 = !{ptr @usdhi6_driver, !15, !"usdhi6_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1901, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1757, i32 41}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1758, i32 41}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1759, i32 43}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1791, i32 55}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1815, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @usdhi6_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @usdhi6_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1819, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @usdhi6_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @usdhi6_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @usdhi6_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1843, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @usdhi6_probe.__key.15, !38, !"__key", i1 false, i1 false}
!41 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1592, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @usdhi6_sd.__UNIQUE_ID_ddebug298, !43, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1621, i32 4}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @usdhi6_sd._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @usdhi6_sd._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @usdhi6_sd.__UNIQUE_ID_ddebug299, !52, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1625, i32 4}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1520, i32 4}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @usdhi6_sd_bh._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @usdhi6_sd_bh._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @usdhi6_sd_bh._entry.23, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1529, i32 4}
!60 = !{ptr @usdhi6_sd_bh._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1535, i32 3}
!63 = !{ptr @usdhi6_sd_bh._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @usdhi6_sd_bh._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1567, i32 5}
!67 = !{ptr @usdhi6_sd_bh._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @usdhi6_sd_bh._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1240, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @usdhi6_resp_read._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @usdhi6_resp_read._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1259, i32 2}
!76 = !{ptr @usdhi6_resp_read.__UNIQUE_ID_ddebug295, !75, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1297, i32 2}
!79 = !{ptr @usdhi6_blk_read.__UNIQUE_ID_ddebug296, !78, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 362, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 363, i32 6}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 387, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @usdhi6_sg_map.__UNIQUE_ID_ddebug277, !85, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 320, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @usdhi6_blk_bounce.__UNIQUE_ID_ddebug276, !91, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 466, i32 2}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @usdhi6_sg_advance.__UNIQUE_ID_ddebug278, !95, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 510, i32 2}
!100 = !{ptr @usdhi6_sg_advance.__UNIQUE_ID_ddebug279, !99, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1340, i32 2}
!103 = !{ptr @usdhi6_blk_write.__UNIQUE_ID_ddebug297, !102, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 643, i32 2}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @usdhi6_dma_check_error.__UNIQUE_ID_ddebug283, !105, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 651, i32 3}
!110 = !{ptr @usdhi6_dma_check_error._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @usdhi6_dma_check_error._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 662, i32 3}
!114 = !{ptr @usdhi6_dma_check_error._entry.49, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @usdhi6_dma_check_error._entry_ptr.51, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 630, i32 2}
!118 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @usdhi6_dma_kill.__UNIQUE_ID_ddebug282, !117, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 286, i32 4}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @usdhi6_error_code.__UNIQUE_ID_ddebug275, !123, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!126 = !{ptr @usdhi6_error_code._entry, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 290, i32 4}
!128 = !{ptr @usdhi6_error_code._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 298, i32 3}
!131 = !{ptr @usdhi6_error_code._entry.57, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @usdhi6_error_code._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 906, i32 6}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 917, i32 3}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @usdhi6_request_done.__UNIQUE_ID_ddebug289, !136, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1358, i32 3}
!141 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @usdhi6_stop_cmd._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @usdhi6_stop_cmd._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1638, i32 2}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @usdhi6_sdio.__UNIQUE_ID_ddebug300, !145, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1689, i32 2}
!150 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @usdhi6_timeout_work._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @usdhi6_timeout_work._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @usdhi6_timeout_work._entry.71, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1703, i32 3}
!157 = !{ptr @usdhi6_timeout_work._entry_ptr.72, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1720, i32 3}
!160 = !{ptr @usdhi6_timeout_work.__UNIQUE_ID_ddebug301, !159, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 681, i32 55}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 682, i32 2}
!165 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @usdhi6_dma_request.__UNIQUE_ID_ddebug284, !164, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 698, i32 55}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 699, i32 2}
!171 = !{ptr @usdhi6_dma_request.__UNIQUE_ID_ddebug285, !170, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!172 = !{ptr @usdhi6_ops, !173, !"usdhi6_ops", i1 false, i1 false}
!173 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1198, i32 34}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 893, i32 2}
!176 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @usdhi6_timeout_set.__UNIQUE_ID_ddebug288, !175, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!178 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1003, i32 3}
!181 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug290, !180, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1034, i32 4}
!185 = !{ptr @usdhi6_rq_start._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @usdhi6_rq_start._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1051, i32 4}
!189 = !{ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug291, !188, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1063, i32 3}
!192 = !{ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug292, !191, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!193 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1070, i32 3}
!199 = !{ptr @usdhi6_rq_start.__UNIQUE_ID_ddebug293, !198, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 975, i32 4}
!202 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @usdhi6_cmd_flags._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @usdhi6_cmd_flags._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 600, i32 2}
!207 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @usdhi6_dma_setup.__UNIQUE_ID_ddebug281, !206, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!209 = !{ptr @usdhi6_dma_setup._entry, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 608, i32 3}
!211 = !{ptr @usdhi6_dma_setup._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.96, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 555, i32 6}
!214 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 559, i32 2}
!216 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @usdhi6_dma_complete.__UNIQUE_ID_ddebug280, !215, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!218 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 824, i32 2}
!220 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @usdhi6_set_ios.__UNIQUE_ID_ddebug287, !219, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!222 = !{ptr @.str.101, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 839, i32 4}
!224 = !{ptr @usdhi6_set_ios._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @usdhi6_set_ios._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.103, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 854, i32 5}
!228 = !{ptr @usdhi6_set_ios._entry.102, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @usdhi6_set_ios._entry_ptr.104, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.105, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 740, i32 3}
!232 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @usdhi6_clk_set._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @usdhi6_clk_set._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 769, i32 3}
!237 = !{ptr @usdhi6_clk_set.__UNIQUE_ID_ddebug286, !236, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1145, i32 2}
!240 = !{ptr @.str.109, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @usdhi6_enable_sdio_irq.__UNIQUE_ID_ddebug294, !239, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!242 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!244 = distinct !{null, !245, !"__print_once", i1 false, i1 false}
!245 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1184, i32 3}
!246 = !{ptr @.str.112, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @usdhi6_sig_volt_switch._entry, !245, !"_entry", i1 false, i1 false}
!249 = !{ptr @usdhi6_sig_volt_switch._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @usdhi6_of_match, !251, !"usdhi6_of_match", i1 false, i1 false}
!251 = !{!"../drivers/mmc/host/usdhi6rol0.c", i32 1738, i32 34}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{i64 6304245}
!262 = !{i64 2153844594}
!263 = !{i64 2153845949}
!264 = !{i64 6303827}
!265 = !{i64 2148769679, i64 2148769684, i64 2148769697, i64 2148769741, i64 2148769775, i64 2148769796}
!266 = !{i8 0, i8 2}
!267 = !{!"branch_weights", i32 2146410443, i32 1073205}
!268 = !{!"branch_weights", i32 2000, i32 1}
!269 = !{i64 6303407}
!270 = !{i64 2153843982}
!271 = !{i64 2153865511, i64 2153866003, i64 2153865548, i64 2153865604, i64 2153865638, i64 2153865662, i64 2153865703, i64 2153865724, i64 2153865752, i64 2153865786}
!272 = !{i64 2153845399}
!273 = !{i64 6303207}
!274 = !{i64 2154902100}
!275 = !{i64 2154901942}
!276 = !{i32 0, i32 33}
!277 = !{!"branch_weights", i32 1, i32 2000}
