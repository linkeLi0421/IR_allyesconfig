; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/moxart-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/moxart-mmc.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.moxart_host = type { %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_moxart_mmc__276_734_moxart_mmc_driver_init6 = internal global ptr @moxart_mmc_driver_init, section ".initcall6.init", align 4
@moxart_mmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @moxart_probe, ptr @moxart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @moxart_mmc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_moxart_mmc_driver_exit = internal global ptr @moxart_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias277 = internal constant [37 x i8] c"moxart_mmc.alias=platform:mmc-moxart\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [43 x i8] c"moxart_mmc.description=MOXA ART MMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file279 = internal constant [44 x i8] c"moxart_mmc.file=drivers/mmc/host/moxart-mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [26 x i8] c"moxart_mmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [56 x i8] c"moxart_mmc.author=Jonas Jensen <jonas.jensen@gmail.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmc-moxart\00", [21 x i8] zeroinitializer }, align 32
@moxart_mmc_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"moxa,moxart-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,ftsdc010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@moxart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc_alloc_host failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"moxart_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mmc/host/moxart-mmc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@moxart_probe._entry_ptr = internal global ptr @moxart_probe._entry, section ".printk_index", align 4
@moxart_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"of_address_to_resource failed\0A\00", [33 x i8] zeroinitializer }, align 32
@moxart_probe._entry_ptr.8 = internal global ptr @moxart_probe._entry.6, section ".printk_index", align 4
@moxart_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq_of_parse_and_map failed\0A\00", [35 x i8] zeroinitializer }, align 32
@moxart_probe._entry_ptr.11 = internal global ptr @moxart_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@moxart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@moxart_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @moxart_request, ptr null, ptr @moxart_set_ios, ptr @moxart_get_ro, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@moxart_probe.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"moxart_mmc\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PIO mode transfer enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@moxart_probe.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA channels found (%p,%p)\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"moxart-mmc\00", [21 x i8] zeroinitializer }, align 32
@moxart_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ=%d, FIFO is %d bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@moxart_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"card removed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"moxart_request\00", [17 x i8] zeroinitializer }, align 32
@moxart_request._entry_ptr = internal global ptr @moxart_request._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@moxart_transfer_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dma_map_sg returned zero length\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"moxart_transfer_dma\00", [44 x i8] zeroinitializer }, align 32
@moxart_transfer_dma._entry_ptr = internal global ptr @moxart_transfer_dma._entry, section ".printk_index", align 4
@moxart_wait_for_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timed out waiting for status\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"moxart_wait_for_status\00", [41 x i8] zeroinitializer }, align 32
@moxart_wait_for_status._entry_ptr = internal global ptr @moxart_wait_for_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 13, i64 22, i64 41, i64 51]
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"moxart_mmc_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 725, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 729, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"moxart_mmc_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 718, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 567, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 574, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 580, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 608, i32 44 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 609, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 611, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"moxart_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 546, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 632, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 635, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 674, i32 50 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 681, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 439, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 283, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [33 x i8] c"../drivers/mmc/host/moxart-mmc.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 198, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @__exitcall_moxart_mmc_driver_exit, ptr @__initcall__kmod_moxart_mmc__276_734_moxart_mmc_driver_init6, ptr @moxart_mmc_driver_exit, ptr @moxart_probe._entry, ptr @moxart_probe._entry.6, ptr @moxart_probe._entry.9, ptr @moxart_probe._entry_ptr, ptr @moxart_probe._entry_ptr.11, ptr @moxart_probe._entry_ptr.8, ptr @moxart_request._entry, ptr @moxart_request._entry_ptr, ptr @moxart_transfer_dma._entry, ptr @moxart_transfer_dma._entry_ptr, ptr @moxart_wait_for_status._entry, ptr @moxart_wait_for_status._entry_ptr, ptr @moxart_mmc_driver, ptr @.str, ptr @moxart_mmc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @moxart_probe.__key, ptr @.str.14, ptr @moxart_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_mmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_mmc_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_transfer_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_wait_for_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_mmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @moxart_mmc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @moxart_mmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @moxart_mmc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res_mmc = alloca %struct.resource, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res_mmc) #6
  %2 = call ptr @memset(ptr %res_mmc, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #6
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 48)
  %call = tail call ptr @mmc_alloc_host(i32 noundef 220, ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %out_mmc.thread338, label %if.end

out_mmc.thread338:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res_mmc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %if.then209

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp = icmp slt i32 %call9, 1
  br i1 %cmp, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %if.then209

if.end14:                                         ; preds = %if.end8
  %call15 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call15 to i32
  br label %if.then209

if.end19:                                         ; preds = %if.end14
  %call20 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res_mmc) #6
  %cmp.i317 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call20 to i32
  br label %if.then209

if.end24:                                         ; preds = %if.end19
  %call25 = call i32 @mmc_of_parse(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.if.then209_crit_edge

if.end24.if.then209_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then209

if.end28:                                         ; preds = %if.end24
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %mmc30 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %mmc30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %mmc30, align 4
  %base = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call20, ptr %base, align 4
  %8 = ptrtoint ptr %res_mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res_mmc, align 4
  %reg_phys = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %reg_phys to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %reg_phys, align 4
  %timeout = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100, ptr %timeout, align 4
  %call32 = call i32 @clk_get_rate(ptr noundef %call15) #6
  %sysclk = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 1, i32 4, i32 3
  %12 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call32, ptr %sysclk, align 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 68
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %shl = shl i32 %16, 2
  %fifo_width = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %17 = ptrtoint ptr %fifo_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %fifo_width, align 4
  %call36 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.12) #6
  %dma_chan_tx = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %18 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call36, ptr %dma_chan_tx, align 4
  %call37 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  %dma_chan_rx = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %19 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call37, ptr %dma_chan_rx, align 4
  call void @__raw_spin_lock_init(ptr noundef %private.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @moxart_probe.__key, i16 noundef signext 3) #6
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @moxart_ops, ptr %ops, align 4
  %21 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp44 = icmp sgt i32 %22, 0
  %cond.in.v = select i1 %cmp44, i32 1, i32 -1
  %cond.in = add i32 %cond.in.v, %22
  %cond = sdiv i32 %cond.in, 2
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 6
  %23 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %f_max, align 8
  %cond71.in.v = select i1 %cmp44, i32 127, i32 -127
  %cond71.in = add i32 %cond71.in.v, %22
  %cond71 = sdiv i32 %cond71.in, 254
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond71, ptr %f_min, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 8
  %25 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16776960, ptr %ocr_avail, align 64
  %26 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_chan_tx, align 4
  %cmp.i318 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i318, label %if.end28.if.then78_crit_edge, label %lor.lhs.false

if.end28.if.then78_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

lor.lhs.false:                                    ; preds = %if.end28
  %28 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_chan_rx, align 4
  %cmp.i319 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i319, label %lor.lhs.false.if.then78_crit_edge, label %do.body112

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

if.then78:                                        ; preds = %lor.lhs.false.if.then78_crit_edge, %if.end28.if.then78_crit_edge
  %cmp81 = icmp eq ptr %27, inttoptr (i32 -517 to ptr)
  br i1 %cmp81, label %if.then78.out_crit_edge, label %lor.lhs.false83

if.then78.out_crit_edge:                          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false83:                                  ; preds = %if.then78
  %30 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_chan_rx, align 4
  %cmp86 = icmp eq ptr %31, inttoptr (i32 -517 to ptr)
  br i1 %cmp86, label %lor.lhs.false83.out_crit_edge, label %if.end89

lor.lhs.false83.out_crit_edge:                    ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end89:                                         ; preds = %lor.lhs.false83
  br i1 %cmp.i318, label %if.end89.if.end95_crit_edge, label %if.then92

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef %27) #6
  %32 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dma_chan_tx, align 4
  %33 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load ptr, ptr %dma_chan_rx, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end89.if.end95_crit_edge
  %34 = phi ptr [ %.pr, %if.then92 ], [ %31, %if.end89.if.end95_crit_edge ]
  %cmp.i321 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.end95.do.body102_crit_edge, label %if.then98

if.end95.do.body102_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef %34) #6
  %35 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dma_chan_rx, align 4
  br label %do.body102

do.body102:                                       ; preds = %if.then98, %if.end95.do.body102_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_probe.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxart_probe, %if.then108)) #6
          to label %do.end111 [label %if.then108], !srcloc !84

if.then108:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_probe.__UNIQUE_ID_ddebug273, ptr noundef %dev1, ptr noundef nonnull @.str.16) #6
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %do.body102
  %have_dma = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %36 = ptrtoint ptr %have_dma to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %have_dma, align 4
  br label %if.end142

do.body112:                                       ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_probe.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxart_probe, %if.then124)) #6
          to label %do.end129 [label %if.then124], !srcloc !84

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_chan_tx, align 4
  %39 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_chan_rx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_probe.__UNIQUE_ID_ddebug274, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %38, ptr noundef %40) #6
  br label %do.end129

do.end129:                                        ; preds = %if.then124, %do.body112
  %have_dma130 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %41 = ptrtoint ptr %have_dma130 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %have_dma130, align 4
  %42 = getelementptr inbounds i8, ptr %cfg, i32 20
  %43 = call ptr @memset(ptr %42, i32 0, i32 28)
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %44 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %45 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %dst_addr_width, align 4
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %cfg, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %47 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %src_addr, align 4
  %48 = ptrtoint ptr %reg_phys to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg_phys, align 4
  %add132 = add i32 %49, 64
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %50 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add132, ptr %dst_addr, align 4
  %51 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_chan_tx, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %do.end129.dmaengine_slave_config.exit_crit_edge, label %if.then.i

do.end129.dmaengine_slave_config.exit_crit_edge:  ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %56(ptr noundef %52, ptr noundef nonnull %cfg) #6
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %do.end129.dmaengine_slave_config.exit_crit_edge
  %57 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %cfg, align 4
  %58 = ptrtoint ptr %reg_phys to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_phys, align 4
  %add137 = add i32 %59, 64
  %60 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add137, ptr %src_addr, align 4
  %61 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %dst_addr, align 4
  %62 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_chan_rx, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %device_config.i322 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %device_config.i322 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_config.i322, align 4
  %tobool.not.i323 = icmp eq ptr %67, null
  br i1 %tobool.not.i323, label %dmaengine_slave_config.exit.if.end142_crit_edge, label %if.then.i325

dmaengine_slave_config.exit.if.end142_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then.i325:                                     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i324 = call i32 %67(ptr noundef %63, ptr noundef nonnull %cfg) #6
  br label %if.end142

if.end142:                                        ; preds = %if.then.i325, %dmaengine_slave_config.exit.if.end142_crit_edge, %do.end111
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr146 = getelementptr i8, ptr %69, i32 60
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #6, !srcloc !82
  %71 = lshr i32 %70, 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %and = and i32 %71, 3
  %72 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end142.do.body153_crit_edge [
    i32 1, label %if.end142.do.body153.sink.split_crit_edge
    i32 2, label %sw.bb150
  ]

if.end142.do.body153.sink.split_crit_edge:        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body153.sink.split

if.end142.do.body153_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body153

sw.bb150:                                         ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body153.sink.split

do.body153.sink.split:                            ; preds = %sw.bb150, %if.end142.do.body153.sink.split_crit_edge
  %.sink341 = phi i32 [ 65, %sw.bb150 ], [ %and, %if.end142.do.body153.sink.split_crit_edge ]
  %caps151 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %73 = ptrtoint ptr %caps151 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %caps151, align 32
  %or = or i32 %74, %.sink341
  store i32 %or, ptr %caps151, align 32
  br label %do.body153

do.body153:                                       ; preds = %do.body153.sink.split, %if.end142.do.body153_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr157 = getelementptr i8, ptr %76, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 0) #6, !srcloc !87
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 262144) #6, !srcloc !87
  br label %for.body

for.body:                                         ; preds = %if.end175.for.body_crit_edge, %do.body153
  %i.0340 = phi i32 [ 0, %do.body153 ], [ %inc, %if.end175.for.body_crit_edge ]
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #6, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %82 = and i32 %81, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool173.not = icmp eq i32 %82, 0
  br i1 %tobool173.not, label %for.body.for.end_crit_edge, label %if.end175

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end175:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 1073740) #6
  %inc = add nuw nsw i32 %i.0340, 1
  %exitcond.not = icmp eq i32 %inc, 500000
  br i1 %exitcond.not, label %if.end175.for.end_crit_edge, label %if.end175.for.body_crit_edge

if.end175.for.body_crit_edge:                     ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end175.for.end_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end175.for.end_crit_edge, %for.body.for.end_crit_edge
  %call.i327 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @moxart_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool177.not = icmp eq i32 %call.i327, 0
  br i1 %tobool177.not, label %if.end179, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end179:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call, ptr %driver_data.i, align 4
  %call180 = call i32 @mmc_add_host(ptr noundef nonnull %call) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxart_probe, %if.then193)) #6
          to label %cleanup [label %if.then193], !srcloc !84

if.then193:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %fifo_width to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fifo_width, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call9, i32 noundef %86) #6
  br label %cleanup

out:                                              ; preds = %for.end.out_crit_edge, %lor.lhs.false83.out_crit_edge, %if.then78.out_crit_edge
  %ret.0 = phi i32 [ %call.i327, %for.end.out_crit_edge ], [ -517, %lor.lhs.false83.out_crit_edge ], [ -517, %if.then78.out_crit_edge ]
  %87 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_chan_tx, align 4
  %tobool.not.i328 = icmp eq ptr %88, null
  %cmp.i329 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i328, %cmp.i329
  br i1 %spec.select.i, label %out.if.end202_crit_edge, label %if.then200

out.if.end202_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202

if.then200:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef nonnull %88) #6
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %out.if.end202_crit_edge
  %89 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_chan_rx, align 4
  %tobool.not.i330 = icmp eq ptr %90, null
  %cmp.i331 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  %spec.select.i332 = or i1 %tobool.not.i330, %cmp.i331
  br i1 %spec.select.i332, label %if.end202.if.then209_crit_edge, label %if.then205

if.end202.if.then209_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then209

if.then205:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef nonnull %90) #6
  br label %if.then209

if.then209:                                       ; preds = %if.then205, %if.end202.if.then209_crit_edge, %if.end24.if.then209_crit_edge, %if.then22, %if.then17, %do.end13, %do.end7
  %ret.1337 = phi i32 [ %call25, %if.end24.if.then209_crit_edge ], [ %5, %if.then22 ], [ %4, %if.then17 ], [ -22, %do.end13 ], [ %call2, %do.end7 ], [ %ret.0, %if.end202.if.then209_crit_edge ], [ %ret.0, %if.then205 ]
  call void @mmc_free_host(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then209, %if.then193, %if.end179, %out_mmc.thread338
  %retval.0 = phi i32 [ 0, %if.then193 ], [ %ret.1337, %if.then209 ], [ 0, %if.end179 ], [ -12, %out_mmc.thread338 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_mmc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  store ptr null, ptr %driver_data.i, align 4
  %dma_chan_tx = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan_tx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_chan_rx = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %4 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_chan_rx, align 4
  %tobool.not.i34 = icmp eq ptr %5, null
  %cmp.i35 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i36 = or i1 %tobool.not.i34, %cmp.i35
  br i1 %spec.select.i36, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %5) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @mmc_remove_host(ptr noundef %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 56
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %13 = or i32 %12, 65536
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %13) #6, !srcloc !87
  tail call void @mmc_free_host(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %devid) #6
  %base = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %and2 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %is_removed = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 19
  %and2.lobit = lshr exact i32 %and2, 11
  %4 = trunc i32 %and2.lobit to i8
  %5 = ptrtoint ptr %is_removed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %is_removed, align 1
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %have_dma = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 18
  %6 = ptrtoint ptr %have_dma to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %have_dma, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %dma_chan_tx = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 3
  %8 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_chan_tx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then7.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then7.dmaengine_terminate_all.exit_crit_edge:  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %13(ptr noundef %9) #6
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then7.dmaengine_terminate_all.exit_crit_edge
  %dma_chan_rx = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 4
  %14 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_chan_rx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %device_terminate_all.i41 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_terminate_all.i41, align 4
  %tobool.not.i42 = icmp eq ptr %19, null
  br i1 %tobool.not.i42, label %dmaengine_terminate_all.exit.if.end_crit_edge, label %if.then.i44

dmaengine_terminate_all.exit.if.end_crit_edge:    ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i44:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i43 = tail call i32 %19(ptr noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i44, %dmaengine_terminate_all.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %mrq = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 7
  %20 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mrq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 458752) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 262144) #6, !srcloc !87
  %mmc = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 6
  %25 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmc, align 4
  tail call void @mmc_detect_change(ptr noundef %26, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry.if.end17_crit_edge
  %and18 = and i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %land.lhs.true20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end17
  %mrq21 = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 7
  %27 = ptrtoint ptr %mrq21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mrq21, align 4
  %tobool22.not = icmp eq ptr %28, null
  br i1 %tobool22.not, label %land.lhs.true20.if.end24_crit_edge, label %if.then23

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd.i, align 4
  %data1.i = getelementptr inbounds %struct.mmc_command, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data1.i, align 4
  %data_len.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 13
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 4
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 7
  %35 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytes_xfered.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp.i = icmp eq i32 %34, %36
  br i1 %cmp.i, label %if.then23.if.end24_crit_edge, label %if.end.i

if.then23.if.end24_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i:                                         ; preds = %if.then23
  %cur_sg.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 8
  %37 = ptrtoint ptr %cur_sg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_sg.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !98

do.body2.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !99
  unreachable

sg_virt.exit.i:                                   ; preds = %if.end.i
  %and.i.i.i = and i32 %40, -4
  %41 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %41) #6
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %43
  %data_remain.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 12
  %44 = ptrtoint ptr %data_remain.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_remain.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 6
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i46 = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp11.not145.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i46, label %while.cond10.preheader.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %sg_virt.exit.i
  br i1 %cmp11.not145.i, label %while.cond.preheader.i.if.end43.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.end43.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %fifo_width.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 14
  br label %while.body.i

while.cond10.preheader.i:                         ; preds = %sg_virt.exit.i
  br i1 %cmp11.not145.i, label %while.cond10.preheader.i.if.end43.i_crit_edge, label %while.body12.lr.ph.i

while.cond10.preheader.i.if.end43.i_crit_edge:    ; preds = %while.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

while.body12.lr.ph.i:                             ; preds = %while.cond10.preheader.i
  %fifo_width22.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 14
  %mrq26.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 9
  br label %while.body12.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sgp.0137.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i ], [ %sgp.1.lcssa.i, %for.end.i.while.body.i_crit_edge ]
  %remain.0135.i = phi i32 [ %45, %while.body.lr.ph.i ], [ %sub.i, %for.end.i.while.body.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.then.i.i.for.body.i.i_crit_edge, %while.body.i
  %i.020.i.i = phi i32 [ 0, %while.body.i ], [ %inc.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %49, i32 40
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #6, !srcloc !82
  %51 = lshr i32 %50, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and.i.i = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %moxart_wait_for_status.exit.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 1073740) #6
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 500000
  br i1 %exitcond.not.i.i, label %if.then6.i, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

moxart_wait_for_status.exit.i:                    ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %53 = shl nuw nsw i32 %and.i.i, 8
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %55, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %53) #6, !srcloc !87
  br label %land.rhs.i

if.then6.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 6
  %56 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmc.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.25) #9
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 5
  %60 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -110, ptr %error.i, align 4
  %pio_complete.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 10
  tail call void @complete(ptr noundef %pio_complete.i) #6
  br label %if.end24

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %moxart_wait_for_status.exit.i
  %sgp.1130.i = phi ptr [ %sgp.0137.i, %moxart_wait_for_status.exit.i ], [ %incdec.ptr.i, %for.body.i.land.rhs.i_crit_edge ]
  %len.0129.i = phi i32 [ 0, %moxart_wait_for_status.exit.i ], [ %add.i, %for.body.i.land.rhs.i_crit_edge ]
  %61 = ptrtoint ptr %fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fifo_width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0129.i, i32 %62)
  %cmp9.i = icmp ult i32 %len.0129.i, %62
  br i1 %cmp9.i, label %for.body.i, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %63 = ptrtoint ptr %sgp.1130.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sgp.1130.i, align 4
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %66, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %67) #6, !srcloc !87
  %incdec.ptr.i = getelementptr i32, ptr %sgp.1130.i, i32 1
  %add.i = add i32 %len.0129.i, 4
  %cmp8.i = icmp ugt i32 %remain.0135.i, %add.i
  br i1 %cmp8.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %len.0.lcssa.i = phi i32 [ %add.i, %for.body.i.for.end.i_crit_edge ], [ %len.0129.i, %land.rhs.i.for.end.i_crit_edge ]
  %sgp.1.lcssa.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.end.i_crit_edge ], [ %sgp.1130.i, %land.rhs.i.for.end.i_crit_edge ]
  %sub.i = sub i32 %remain.0135.i, %len.0.lcssa.i
  %cmp3.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp3.not.i, label %for.end.i.if.end43.i_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

for.end.i.if.end43.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

while.body12.i:                                   ; preds = %for.end40.i.while.body12.i_crit_edge, %while.body12.lr.ph.i
  %sgp.2148.i = phi ptr [ %add.ptr.i.i, %while.body12.lr.ph.i ], [ %sgp.3.lcssa.i, %for.end40.i.while.body12.i_crit_edge ]
  %remain.1146.i = phi i32 [ %45, %while.body12.lr.ph.i ], [ %sub41.i, %for.end40.i.while.body12.i_crit_edge ]
  br label %for.body.i108.i

for.body.i108.i:                                  ; preds = %if.then.i111.i.for.body.i108.i_crit_edge, %while.body12.i
  %i.020.i104.i = phi i32 [ 0, %while.body12.i ], [ %inc.i109.i, %if.then.i111.i.for.body.i108.i_crit_edge ]
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %69, i32 40
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105.i) #6, !srcloc !82
  %71 = lshr i32 %70, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and.i106.i = and i32 %71, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i)
  %tobool.not.i107.i = icmp eq i32 %and.i106.i, 0
  br i1 %tobool.not.i107.i, label %if.then.i111.i, label %moxart_wait_for_status.exit118.i

if.then.i111.i:                                   ; preds = %for.body.i108.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 1073740) #6
  %inc.i109.i = add nuw nsw i32 %i.020.i104.i, 1
  %exitcond.not.i110.i = icmp eq i32 %inc.i109.i, 500000
  br i1 %exitcond.not.i110.i, label %if.then15.i, label %if.then.i111.i.for.body.i108.i_crit_edge

if.then.i111.i.for.body.i108.i_crit_edge:         ; preds = %if.then.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i108.i

moxart_wait_for_status.exit118.i:                 ; preds = %for.body.i108.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %73 = shl nuw nsw i32 %and.i106.i, 8
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr4.i113.i = getelementptr i8, ptr %75, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i113.i, i32 %73) #6, !srcloc !87
  br label %land.rhs21.i

if.then15.i:                                      ; preds = %if.then.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i115.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 6
  %76 = ptrtoint ptr %mmc.i115.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmc.i115.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.25) #9
  %error16.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 5
  %80 = ptrtoint ptr %error16.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -110, ptr %error16.i, align 4
  %pio_complete17.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 10
  tail call void @complete(ptr noundef %pio_complete17.i) #6
  br label %if.end24

land.rhs21.i:                                     ; preds = %if.end37.i.land.rhs21.i_crit_edge, %moxart_wait_for_status.exit118.i
  %sgp.3140.i = phi ptr [ %sgp.2148.i, %moxart_wait_for_status.exit118.i ], [ %incdec.ptr38.i, %if.end37.i.land.rhs21.i_crit_edge ]
  %len.1139.i = phi i32 [ 0, %moxart_wait_for_status.exit118.i ], [ %add39.i, %if.end37.i.land.rhs21.i_crit_edge ]
  %81 = ptrtoint ptr %fifo_width22.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fifo_width22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1139.i, i32 %82)
  %cmp23.i = icmp ult i32 %len.1139.i, %82
  br i1 %cmp23.i, label %for.body25.i, label %land.rhs21.i.for.end40.i_crit_edge

land.rhs21.i.for.end40.i_crit_edge:               ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40.i

for.body25.i:                                     ; preds = %land.rhs21.i
  %83 = ptrtoint ptr %mrq26.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mrq26.i, align 4
  %cmd27.i = getelementptr inbounds %struct.mmc_request, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %cmd27.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cmd27.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %88)
  %cmp28.i = icmp eq i32 %88, 51
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  %add.ptr31.i = getelementptr i8, ptr %90, i32 64
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #6
  br i1 %cmp28.i, label %if.then29.i, label %if.else33.i

if.then29.i:                                      ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %if.end37.i

if.else33.i:                                      ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else33.i, %if.then29.i
  %storemerge.i = phi i32 [ %92, %if.else33.i ], [ %91, %if.then29.i ]
  %93 = ptrtoint ptr %sgp.3140.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %storemerge.i, ptr %sgp.3140.i, align 4
  %incdec.ptr38.i = getelementptr i32, ptr %sgp.3140.i, i32 1
  %add39.i = add i32 %len.1139.i, 4
  %cmp20.i = icmp ugt i32 %remain.1146.i, %add39.i
  br i1 %cmp20.i, label %if.end37.i.land.rhs21.i_crit_edge, label %if.end37.i.for.end40.i_crit_edge

if.end37.i.for.end40.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40.i

if.end37.i.land.rhs21.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs21.i

for.end40.i:                                      ; preds = %if.end37.i.for.end40.i_crit_edge, %land.rhs21.i.for.end40.i_crit_edge
  %len.1.lcssa.i = phi i32 [ %add39.i, %if.end37.i.for.end40.i_crit_edge ], [ %len.1139.i, %land.rhs21.i.for.end40.i_crit_edge ]
  %sgp.3.lcssa.i = phi ptr [ %incdec.ptr38.i, %if.end37.i.for.end40.i_crit_edge ], [ %sgp.3140.i, %land.rhs21.i.for.end40.i_crit_edge ]
  %sub41.i = sub i32 %remain.1146.i, %len.1.lcssa.i
  %cmp11.not.i = icmp eq i32 %sub41.i, 0
  br i1 %cmp11.not.i, label %for.end40.i.if.end43.i_crit_edge, label %for.end40.i.while.body12.i_crit_edge

for.end40.i.while.body12.i_crit_edge:             ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body12.i

for.end40.i.if.end43.i_crit_edge:                 ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %for.end40.i.if.end43.i_crit_edge, %for.end.i.if.end43.i_crit_edge, %while.cond10.preheader.i.if.end43.i_crit_edge, %while.cond.preheader.i.if.end43.i_crit_edge
  %94 = ptrtoint ptr %data_remain.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_remain.i, align 4
  %96 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytes_xfered.i, align 4
  %add47.i = add i32 %97, %95
  store i32 %add47.i, ptr %bytes_xfered.i, align 4
  store i32 0, ptr %data_remain.i, align 4
  %98 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data_len.i, align 4
  %100 = load i32, ptr %bytes_xfered.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %100)
  %cmp51.not.i = icmp eq i32 %99, %100
  br i1 %cmp51.not.i, label %if.else54.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end43.i
  %101 = ptrtoint ptr %mrq21 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mrq21, align 4
  %cmd.i.i = getelementptr inbounds %struct.mmc_request, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cmd.i.i, align 4
  %data1.i.i = getelementptr inbounds %struct.mmc_command, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data1.i.i, align 4
  %107 = ptrtoint ptr %cur_sg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur_sg.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.scatterlist, ptr %108, i32 1
  store ptr %incdec.ptr.i.i, ptr %cur_sg.i, align 4
  %num_sg.i.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 11
  %109 = ptrtoint ptr %num_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_sg.i.i, align 4
  %dec.i.i = add i32 %110, -1
  store i32 %dec.i.i, ptr %num_sg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.then52.i.if.end24_crit_edge, label %if.then.i119.i

if.then52.i.if.end24_crit_edge:                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then.i119.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  %length.i.i = getelementptr %struct.scatterlist, ptr %108, i32 1, i32 2
  %111 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %length.i.i, align 4
  %113 = ptrtoint ptr %data_remain.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %data_remain.i, align 4
  %bytes_xfered.i.i = getelementptr inbounds %struct.mmc_data, ptr %106, i32 0, i32 7
  %114 = ptrtoint ptr %bytes_xfered.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bytes_xfered.i.i, align 4
  %sub.i.i = sub i32 %99, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp4.i.i = icmp sgt i32 %sub.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %112)
  %cmp6.i.i = icmp ult i32 %sub.i.i, %112
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp6.i.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i.i, i32 %sub.i.i, i32 %112
  %116 = ptrtoint ptr %data_remain.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.store.select.i, ptr %data_remain.i, align 4
  br label %if.end24

if.else54.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %pio_complete55.i = getelementptr inbounds %struct.moxart_host, ptr %devid, i32 0, i32 10
  tail call void @complete(ptr noundef %pio_complete55.i) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else54.i, %if.then.i119.i, %if.then52.i.if.end24_crit_edge, %if.then15.i, %if.then6.i, %if.then23.if.end24_crit_edge, %land.lhs.true20.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %devid) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxart_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %private.i) #6
  %dma_complete = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #6
  %pio_complete = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %1 = ptrtoint ptr %pio_complete to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pio_complete, align 4
  %wait.i136 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  tail call void @__init_swait_queue_head(ptr noundef %wait.i136, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #6
  %mrq6 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %mrq6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mrq, ptr %mrq6, align 4
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -110, ptr %error, align 4
  br label %request_done

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %mrq6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrq6, align 4
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd.i, align 4
  %data1.i = getelementptr inbounds %struct.mmc_command, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.moxart_prepare_data.exit_crit_edge, label %if.end.i

if.end.moxart_prepare_data.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %moxart_prepare_data.exit

if.end.i:                                         ; preds = %if.end
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blocks.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %19, %17
  %data_len.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4
  %20 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %data_len.i, align 4
  %21 = load i32, ptr %blksz.i, align 4
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true) #6, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %iszero.i = icmp eq i32 %21, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %22
  %shl.i = shl nuw i32 1, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %21)
  %cmp.not.i = icmp eq i32 %shl.i, %21
  br i1 %cmp.not.i, label %do.end13.i, label %do.body7.i, !prof !98

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/moxart-mmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #6, !srcloc !107
  unreachable

do.end13.i:                                       ; preds = %if.end.i
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 12
  %23 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg.i.i, align 4
  %cur_sg.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %cur_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %cur_sg.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 10
  %26 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_len.i.i, align 4
  %num_sg.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 2
  %28 = ptrtoint ptr %num_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_sg.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i.i, align 4
  %data_remain.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 3
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %mul.i) #6
  %32 = ptrtoint ptr %data_remain.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %data_remain.i.i, align 4
  %and.i = and i32 %sub.i, 15
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 6
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and14.i = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %spec.select.v.i = select i1 %tobool15.not.i, i32 64, i32 80
  %spec.select.i = or i32 %spec.select.v.i, %and.i
  %fifo_width.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %35 = ptrtoint ptr %fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fifo_width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %36)
  %cmp20.i = icmp ugt i32 %mul.i, %36
  br i1 %cmp20.i, label %land.lhs.true.i, label %do.end13.i.do.body25.i_crit_edge

do.end13.i.do.body25.i_crit_edge:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25.i

land.lhs.true.i:                                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %have_dma.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %37 = ptrtoint ptr %have_dma.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %have_dma.i, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool21.not.i = icmp eq i8 %38, 0
  %or23.i = or i32 %spec.select.i, 32
  %spec.select72.i = select i1 %tobool21.not.i, i32 %spec.select.i, i32 %or23.i
  br label %do.body25.i

do.body25.i:                                      ; preds = %land.lhs.true.i, %do.end13.i.do.body25.i_crit_edge
  %datactrl.1.i = phi i32 [ %spec.select.i, %do.end13.i.do.body25.i_crit_edge ], [ %spec.select72.i, %land.lhs.true.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr32.i = getelementptr i8, ptr %42, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 -1442643968) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %rate.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 2
  %43 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rate.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr37.i = getelementptr i8, ptr %47, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %45) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr43.i = getelementptr i8, ptr %52, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %50) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %datactrl.1.i) #6
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr48.i = getelementptr i8, ptr %55, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %53) #6, !srcloc !87
  br label %moxart_prepare_data.exit

moxart_prepare_data.exit:                         ; preds = %do.body25.i, %if.end.moxart_prepare_data.exit_crit_edge
  %56 = ptrtoint ptr %mrq6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mrq6, align 4
  %cmd11 = getelementptr inbounds %struct.mmc_request, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %cmd11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmd11, align 4
  tail call fastcc void @moxart_send_command(ptr noundef %private.i, ptr noundef %59)
  %cmd12 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %60 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd12, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %tobool13.not = icmp eq ptr %63, null
  br i1 %tobool13.not, label %moxart_prepare_data.exit.request_done_crit_edge, label %if.then14

moxart_prepare_data.exit.request_done_crit_edge:  ; preds = %moxart_prepare_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %request_done

if.then14:                                        ; preds = %moxart_prepare_data.exit
  %data_len = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4
  %64 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len, align 4
  %fifo_width = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %66 = ptrtoint ptr %fifo_width to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fifo_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp15 = icmp ugt i32 %65, %67
  br i1 %cmp15, label %land.lhs.true, label %if.then14.do.body42_crit_edge

if.then14.do.body42_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

land.lhs.true:                                    ; preds = %if.then14
  %have_dma = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %68 = ptrtoint ptr %have_dma to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %have_dma, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool17.not = icmp eq i8 %69, 0
  br i1 %tobool17.not, label %land.lhs.true.do.body42_crit_edge, label %do.body20

land.lhs.true.do.body42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

do.body20:                                        ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %71, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 262144) #6, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %private.i, i32 noundef %call3) #6
  %72 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cmd12, align 4
  %data27 = getelementptr inbounds %struct.mmc_command, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %data27 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data27, align 4
  %76 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len, align 4
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %75, i32 0, i32 7
  %78 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bytes_xfered.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp.i = icmp eq i32 %77, %79
  br i1 %cmp.i, label %do.body20.if.end64_crit_edge, label %if.end.i141

do.body20.if.end64_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end.i141:                                      ; preds = %do.body20
  %flags.i138 = getelementptr inbounds %struct.mmc_data, ptr %75, i32 0, i32 6
  %80 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i138, align 4
  %and.i139 = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140 = icmp eq i32 %and.i139, 0
  %dma_chan_tx.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %dma_chan_rx.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %dir_slave.0.i = select i1 %tobool.not.i140, i32 2, i32 1
  %dma_chan.0.in.i = select i1 %tobool.not.i140, ptr %dma_chan_rx.i, ptr %dma_chan_tx.i
  %82 = ptrtoint ptr %dma_chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %dma_chan.0.i = load ptr, ptr %dma_chan.0.in.i, align 4
  %83 = ptrtoint ptr %dma_chan.0.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_chan.0.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 15
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %75, i32 0, i32 12
  %87 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %75, i32 0, i32 10
  %89 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sg_len.i, align 4
  %call3.i = tail call i32 @dma_map_sg_attrs(ptr noundef %86, ptr noundef %88, i32 noundef %90, i32 noundef %dir_slave.0.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %do.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i141
  %91 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sg.i, align 4
  %tobool.not.i49.i = icmp eq ptr %dma_chan.0.i, null
  br i1 %tobool.not.i49.i, label %if.then5.i.if.end13.i_crit_edge, label %lor.lhs.false.i.i

if.then5.i.if.end13.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

lor.lhs.false.i.i:                                ; preds = %if.then5.i
  %93 = ptrtoint ptr %dma_chan.0.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma_chan.0.i, align 4
  %tobool1.not.i.i = icmp eq ptr %94, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end13.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.end13.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %94, i32 0, i32 39
  %95 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %96, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.if.end13.i_crit_edge, label %if.end9.i

lor.lhs.false2.i.i.if.end13.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

do.end.i:                                         ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %97 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmc.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.23) #9
  br label %if.end13.i

if.end9.i:                                        ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %96(ptr noundef nonnull %dma_chan.0.i, ptr noundef %92, i32 noundef %call3.i, i32 noundef %dir_slave.0.i, i32 noundef 3, ptr noundef null) #6
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.end9.i.if.end13.i_crit_edge, label %if.then11.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_desc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %tx_desc.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i.i, ptr %tx_desc.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %102 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @moxart_dma_complete, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %103 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %private.i, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %104 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i50.i = tail call i32 %105(ptr noundef nonnull %call.i.i) #6
  %106 = ptrtoint ptr %dma_chan.0.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dma_chan.0.i, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %107, i32 0, i32 50
  %108 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %109(ptr noundef nonnull %dma_chan.0.i) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end13.i_crit_edge, %do.end.i, %lor.lhs.false2.i.i.if.end13.i_crit_edge, %lor.lhs.false.i.i.if.end13.i_crit_edge, %if.then5.i.if.end13.i_crit_edge
  %data_remain.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 3
  %110 = ptrtoint ptr %data_remain.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %data_remain.i, align 4
  %112 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bytes_xfered.i, align 4
  %add.i = add i32 %113, %111
  store i32 %add.i, ptr %bytes_xfered.i, align 4
  %timeout.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1, i32 1
  %114 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %timeout.i, align 4
  %call15.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %dma_complete, i32 noundef %115) #6
  %116 = ptrtoint ptr %dma_chan.0.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dma_chan.0.i, align 4
  %dev17.i = getelementptr inbounds %struct.dma_device, ptr %117, i32 0, i32 15
  %118 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev17.i, align 4
  %120 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sg.i, align 4
  %122 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sg_len.i, align 4
  %124 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags.i138, align 4
  %and.i52.i = and i32 %125, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52.i)
  %tobool.not.i53.i = icmp eq i32 %and.i52.i, 0
  %cond.i54.i = select i1 %tobool.not.i53.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %119, ptr noundef %121, i32 noundef %123, i32 noundef %cond.i54.i, i32 noundef 0) #6
  br label %if.end64

do.body42:                                        ; preds = %land.lhs.true.do.body42_crit_edge, %if.then14.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %127, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 458752) #6, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %private.i, i32 noundef %call3) #6
  %timeout = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1, i32 1
  %128 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %timeout, align 4
  %call49 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %pio_complete, i32 noundef %129) #6
  br label %if.end64

if.end64:                                         ; preds = %do.body42, %if.end13.i, %do.body20.if.end64_crit_edge
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %private.i) #6
  %is_removed = getelementptr inbounds %struct.moxart_host, ptr %private.i, i32 0, i32 19
  %130 = ptrtoint ptr %is_removed to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %is_removed, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool65.not = icmp eq i8 %131, 0
  br i1 %tobool65.not, label %if.end64.for.body.i_crit_edge, label %do.end69

if.end64.for.body.i_crit_edge:                    ; preds = %if.end64
  br label %for.body.i

do.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %mmc70 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %132 = ptrtoint ptr %mmc70 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmc70, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.20) #9
  %136 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cmd12, align 4
  %error72 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %error72 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -110, ptr %error72, align 4
  br label %request_done

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %if.end64.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %if.then.i.for.body.i_crit_edge ], [ 0, %if.end64.for.body.i_crit_edge ]
  %139 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base, align 4
  %add.ptr.i143 = getelementptr i8, ptr %140, i32 40
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #6, !srcloc !82
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and.i144 = and i32 %142, 170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.not.i145 = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i145, label %if.then.i, label %if.end81

if.then.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 1073740) #6
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500000
  br i1 %exitcond.not.i, label %if.then77, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then77:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i146 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %144 = ptrtoint ptr %mmc.i146 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmc.i146, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.25) #9
  %148 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cmd12, align 4
  %data79 = getelementptr inbounds %struct.mmc_command, ptr %149, i32 0, i32 7
  %150 = ptrtoint ptr %data79 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data79, align 4
  %error80 = getelementptr inbounds %struct.mmc_data, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %error80 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -110, ptr %error80, align 4
  br label %request_done

if.end81:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %153 = shl nuw i32 %and.i144, 24
  %154 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %155, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %153) #6, !srcloc !87
  %and82 = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end88_crit_edge, label %if.then84

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cmd12, align 4
  %data86 = getelementptr inbounds %struct.mmc_command, ptr %157, i32 0, i32 7
  %158 = ptrtoint ptr %data86 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data86, align 4
  %error87 = getelementptr inbounds %struct.mmc_data, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %error87 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -110, ptr %error87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end81.if.end88_crit_edge
  %161 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cmd12, align 4
  %data90 = getelementptr inbounds %struct.mmc_command, ptr %162, i32 0, i32 7
  %163 = ptrtoint ptr %data90 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %data90, align 4
  %stop = getelementptr inbounds %struct.mmc_data, ptr %164, i32 0, i32 8
  %165 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %stop, align 4
  %tobool91.not = icmp eq ptr %166, null
  br i1 %tobool91.not, label %if.end88.request_done_crit_edge, label %if.then92

if.end88.request_done_crit_edge:                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %request_done

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @moxart_send_command(ptr noundef %private.i, ptr noundef nonnull %166)
  br label %request_done

request_done:                                     ; preds = %if.then92, %if.end88.request_done_crit_edge, %if.then77, %do.end69, %moxart_prepare_data.exit.request_done_crit_edge, %if.then
  %flags.1 = phi i32 [ %call3, %if.then ], [ %call59, %do.end69 ], [ %call59, %if.then77 ], [ %call59, %if.then92 ], [ %call59, %if.end88.request_done_crit_edge ], [ %call3, %moxart_prepare_data.exit.request_done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %private.i, i32 noundef %flags.1) #6
  %mmc99 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %167 = ptrtoint ptr %mmc99 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mmc99, align 4
  tail call void @mmc_request_done(ptr noundef %168, ptr noundef %mrq) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxart_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %private.i) #6
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %for.cond.preheader

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

for.cond.preheader:                               ; preds = %entry
  %sysclk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 3
  %2 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysclk, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %cmp7.not = icmp eq i32 %indvars.iv.next, 127
  br i1 %cmp7.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %add = shl nuw nsw i32 %indvars.iv, 1
  %mul = add nuw nsw i32 %add, 2
  %div11 = sdiv i32 %3, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div11)
  %cmp12.not = icmp ult i32 %1, %div11
  br i1 %cmp12.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %conv6.lcssa = phi i32 [ 127, %for.cond.for.end_crit_edge ], [ %indvars.iv, %for.body.for.end_crit_edge ]
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  %add18 = shl nuw nsw i32 %conv6.lcssa, 1
  %mul19 = add nuw nsw i32 %add18, 2
  %div20 = sdiv i32 %5, %mul19
  %rate = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 2
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div20, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div20, i32 %5)
  %cmp23 = icmp ugt i32 %div20, %5
  %spec.select.v = select i1 %cmp23, i32 640, i32 128
  %spec.select = or i32 %spec.select.v, %conv6.lcssa
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !87
  br label %if.end31

if.end31:                                         ; preds = %for.end, %entry.if.end31_crit_edge
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %10 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp33 = icmp eq i8 %11, 0
  br i1 %cmp33, label %do.body36, label %if.else

do.body36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %base39 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %base39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base39, align 4
  %add.ptr40 = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %15 = and i32 %14, -268435457
  %16 = ptrtoint ptr %base39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base39, align 4
  %add.ptr45 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %15) #6, !srcloc !87
  br label %if.end62

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %18 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %19)
  %cmp47 = icmp ult i16 %19, 8
  %20 = add i16 %19, 248
  %21 = and i16 %20, 239
  %22 = or i16 %21, 16
  %narrow = select i1 %cmp47, i16 16, i16 %22
  %power.0 = zext i16 %narrow to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %23 = shl nuw i32 %power.0, 24
  %base60 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base60, align 4
  %add.ptr61 = getelementptr i8, ptr %25, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %23) #6, !srcloc !87
  br label %if.end62

if.end62:                                         ; preds = %if.else, %do.body36
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %26 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bus_width, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %27, label %do.body75 [
    i8 2, label %do.body64
    i8 3, label %do.body70
  ]

do.body64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %base67 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %29 = ptrtoint ptr %base67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base67, align 4
  %add.ptr68 = getelementptr i8, ptr %30, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 33554432) #6, !srcloc !87
  br label %sw.epilog

do.body70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %base73 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %31 = ptrtoint ptr %base73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base73, align 4
  %add.ptr74 = getelementptr i8, ptr %32, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 67108864) #6, !srcloc !87
  br label %sw.epilog

do.body75:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %base78 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %33 = ptrtoint ptr %base78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base78, align 4
  %add.ptr79 = getelementptr i8, ptr %34, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 16777216) #6, !srcloc !87
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body75, %do.body70, %do.body64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %private.i, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %3 = lshr i32 %2, 20
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @moxart_send_command(ptr nocapture noundef readonly %host, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.moxart_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1426063360) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #6, !srcloc !87
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %and = and i32 %8, 63
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and, label %entry.if.end_crit_edge [
    i32 6, label %entry.if.then_crit_edge
    i32 41, label %entry.if.then_crit_edge135
    i32 51, label %entry.if.then_crit_edge136
    i32 13, label %entry.if.then_crit_edge137
    i32 22, label %entry.if.then_crit_edge138
  ]

entry.if.then_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge135, %entry.if.then_crit_edge136, %entry.if.then_crit_edge137, %entry.if.then_crit_edge138
  %or = or i32 %and, 256
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmdctrl.0 = phi i32 [ %or, %if.then ], [ %and, %entry.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and13 = shl i32 %11, 6
  %12 = and i32 %and13, 64
  %13 = and i32 %and13, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %14 = or i32 %cmdctrl.0, %12
  %15 = or i32 %14, %13
  %or26 = or i32 %15, 512
  %16 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !87
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %if.end
  %i.020.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.then.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and.i = and i32 %22, 2133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %moxart_wait_for_status.exit

if.then.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #6
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500000
  br i1 %exitcond.not.i, label %if.then30, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

moxart_wait_for_status.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %24) #6, !srcloc !87
  br label %if.end31

if.then30:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.moxart_host, ptr %host, i32 0, i32 6
  %27 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.25) #9
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %31 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -110, ptr %error, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %moxart_wait_for_status.exit
  %and32 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %error35 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %32 = ptrtoint ptr %error35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -110, ptr %error35, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %and37 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %error40 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %33 = ptrtoint ptr %error40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -5, ptr %error40, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %and42 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.then44

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.end41
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and46 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %resp87 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx, align 4
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr56 = getelementptr i8, ptr %42, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #6, !srcloc !82
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %arrayidx61 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx61, align 4
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %47, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #6, !srcloc !82
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %arrayidx70 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx70, align 4
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr74 = getelementptr i8, ptr %52, i32 20
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #6, !srcloc !82
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %55 = ptrtoint ptr %resp87 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %resp87, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %resp87 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %39, ptr %resp87, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then48, %if.end41.cleanup_crit_edge, %if.then39, %if.then34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxart_dma_complete(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_complete = getelementptr inbounds %struct.moxart_host, ptr %param, i32 0, i32 9
  tail call void @complete(ptr noundef %dma_complete) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !41, !42, !43, !45, !46, !48, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_moxart_mmc__276_734_moxart_mmc_driver_init6, !1, !"__initcall__kmod_moxart_mmc__276_734_moxart_mmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 734, i32 1}
!2 = !{ptr @__exitcall_moxart_mmc_driver_exit, !1, !"__exitcall_moxart_mmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias277, !4, !"__UNIQUE_ID_alias277", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 736, i32 1}
!5 = !{ptr @__UNIQUE_ID_description278, !6, !"__UNIQUE_ID_description278", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 737, i32 1}
!7 = !{ptr @__UNIQUE_ID_file279, !8, !"__UNIQUE_ID_file279", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 738, i32 1}
!9 = !{ptr @__UNIQUE_ID_license280, !8, !"__UNIQUE_ID_license280", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author281, !11, !"__UNIQUE_ID_author281", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 739, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 729, i32 12}
!14 = !{ptr @moxart_mmc_driver, !15, !"moxart_mmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 725, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 567, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @moxart_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @moxart_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 574, i32 3}
!26 = !{ptr @moxart_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @moxart_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 580, i32 3}
!30 = !{ptr @moxart_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @moxart_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 608, i32 44}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 609, i32 44}
!36 = !{ptr @moxart_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 611, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 632, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @moxart_probe.__UNIQUE_ID_ddebug273, !40, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 635, i32 3}
!45 = !{ptr @moxart_probe.__UNIQUE_ID_ddebug274, !44, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 674, i32 50}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 681, i32 2}
!50 = !{ptr @moxart_probe.__UNIQUE_ID_ddebug275, !49, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!51 = !{ptr @moxart_ops, !52, !"moxart_ops", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 546, i32 34}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 439, i32 4}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @moxart_request._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @moxart_request._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 283, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @moxart_transfer_dma._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @moxart_transfer_dma._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 198, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @moxart_wait_for_status._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @moxart_wait_for_status._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @moxart_mmc_match, !72, !"moxart_mmc_match", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/moxart-mmc.c", i32 718, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 4896311}
!83 = !{i64 2154839041}
!84 = !{i64 2148969347, i64 2148969352, i64 2148969365, i64 2148969409, i64 2148969443, i64 2148969464}
!85 = !{i64 2154845083}
!86 = !{i64 2154845323}
!87 = !{i64 4895893}
!88 = !{i64 2154845812}
!89 = !{i64 2154846542}
!90 = !{i64 2154849728}
!91 = !{i64 2154850108}
!92 = !{i64 2154851325}
!93 = !{i64 2154852272}
!94 = !{i64 2154825807}
!95 = !{i8 0, i8 2}
!96 = !{i64 2154826577}
!97 = !{i64 2154827341}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2154450706, i64 2154451198, i64 2154450743, i64 2154450799, i64 2154450833, i64 2154450857, i64 2154450898, i64 2154450919, i64 2154450947, i64 2154450981}
!100 = !{i64 2154803665}
!101 = !{i64 2154804427}
!102 = !{i64 2152438015}
!103 = !{i64 2154814546}
!104 = !{i64 2152436660}
!105 = !{i64 2154820880}
!106 = !{i32 0, i32 33}
!107 = !{i64 2154814979, i64 2154815473, i64 2154815016, i64 2154815072, i64 2154815106, i64 2154815130, i64 2154815171, i64 2154815192, i64 2154815220, i64 2154815254}
!108 = !{i64 2154816887}
!109 = !{i64 2154818082}
!110 = !{i64 2154819011}
!111 = !{i64 2154819431}
!112 = !{i64 2154819857}
!113 = !{i64 2154821292}
!114 = !{i64 2154822484}
!115 = !{i64 2154828492}
!116 = !{i64 2154829722}
!117 = !{i64 2154830673}
!118 = !{i64 2154831128}
!119 = !{i64 2154831738}
!120 = !{i64 2154832306}
!121 = !{i64 2154832872}
!122 = !{i64 2154833598}
!123 = !{i64 2154806991}
!124 = !{i64 2154807724}
!125 = !{i64 2154808523}
!126 = !{i64 2154810511}
!127 = !{i64 2154810992}
!128 = !{i64 2154811473}
