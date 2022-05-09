; ModuleID = '/llk/IR_all_yes/drivers/dma/sh/rz-dmac.c_pt.bc'
source_filename = "../drivers/dma/sh/rz-dmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rz_dmac = type { %struct.dma_device, ptr, ptr, ptr, i32, ptr, [32 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rz_dmac_chan = type { %struct.virt_dma_chan, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.75 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.anon.75 = type { ptr, ptr, ptr, i32 }
%struct.rz_lmdesc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.rz_dmac_desc = type { %struct.virt_dma_desc, i32, i32, i32, %struct.list_head, i32, i32, ptr, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_rz_dmac__242_979_rz_dmac_driver_init6 = internal global ptr @rz_dmac_driver_init, section ".initcall6.init", align 4
@rz_dmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rz_dmac_probe, ptr @rz_dmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_rz_dmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rz_dmac_driver_exit = internal global ptr @rz_dmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [57 x i8] c"rz_dmac.description=Renesas RZ/G2L DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [53 x i8] c"rz_dmac.author=Biju Das <biju.das.jz@bp.renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [36 x i8] c"rz_dmac.file=drivers/dma/sh/rz-dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [23 x i8] c"rz_dmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rz-dmac\00", [24 x i8] zeroinitializer }, align 32
@of_rz_dmac_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rz-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@rz_dmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 869, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request IRQ %u (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rz_dmac_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/dma/sh/rz-dmac.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rz_dmac_probe._entry_ptr = internal global ptr @rz_dmac_probe._entry, section ".printk_index", align 4
@rz_dmac_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 879, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pm_runtime_resume_and_get failed\0A\00", [62 x i8] zeroinitializer }, align 32
@rz_dmac_probe._entry_ptr.9 = internal global ptr @rz_dmac_probe._entry.7, section ".printk_index", align 4
@rz_dmac_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 918, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@rz_dmac_probe._entry_ptr.12 = internal global ptr @rz_dmac_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@rz_dmac_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 813, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to read dma-channels property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rz_dmac_parse_of\00", [47 x i8] zeroinitializer }, align 32
@rz_dmac_parse_of._entry_ptr = internal global ptr @rz_dmac_parse_of._entry, section ".printk_index", align 4
@rz_dmac_parse_of._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid number of channels %u\0A\00", [33 x i8] zeroinitializer }, align 32
@rz_dmac_parse_of._entry_ptr.18 = internal global ptr @rz_dmac_parse_of._entry.16, section ".printk_index", align 4
@rz_dmac_irq_handle_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMAC err CHSTAT_%d = %08X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rz_dmac_irq_handle_channel\00", [37 x i8] zeroinitializer }, align 32
@rz_dmac_irq_handle_channel._entry_ptr = internal global ptr @rz_dmac_irq_handle_channel._entry, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch%u\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%u\00", [26 x i8] zeroinitializer }, align 32
@rz_dmac_chan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.23, ptr @.str.4, i32 769, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rz_dmac_chan_probe\00", [45 x i8] zeroinitializer }, align 32
@rz_dmac_chan_probe._entry_ptr = internal global ptr @rz_dmac_chan_probe._entry, section ".printk_index", align 4
@rz_dmac_chan_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't allocate memory (lmdesc)\0A\00", [32 x i8] zeroinitializer }, align 32
@rz_dmac_chan_probe._entry_ptr.26 = internal global ptr @rz_dmac_chan_probe._entry.24, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rz_dmac\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma/sh/../virt-dma.h\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@rz_dmac_enable_hw.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rz_dmac_enable_hw\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s channel %d\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rz_dmac_disable_hw.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.33, ptr @.str.4, ptr @.str.32, i8 0, i8 72, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rz_dmac_disable_hw\00", [45 x i8] zeroinitializer }, align 32
@rz_dmac_prep_dma_memcpy.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rz_dmac_prep_dma_memcpy\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s channel: %d src=0x%pad dst=0x%pad len=%zu\0A\00", [50 x i8] zeroinitializer }, align 32
@rz_dmac_issue_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 564, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ch: %d couldn't issue DMA xfer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rz_dmac_issue_pending\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rz_dmac_issue_pending._entry_ptr = internal global ptr @rz_dmac_issue_pending._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.39 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"rz_dmac_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 970, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 972, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"of_rz_dmac_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 964, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 827, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 868, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 879, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 918, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 811, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 813, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 818, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 646, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 753, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 758, i32 50 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 768, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 789, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [32 x i8] c"../drivers/dma/sh/../virt-dma.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 101, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 260, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 288, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 477, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [28 x i8] c"../drivers/dma/sh/rz-dmac.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 563, i32 5 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_rz_dmac_driver_exit, ptr @__initcall__kmod_rz_dmac__242_979_rz_dmac_driver_init6, ptr @rz_dmac_chan_probe._entry, ptr @rz_dmac_chan_probe._entry.24, ptr @rz_dmac_chan_probe._entry_ptr, ptr @rz_dmac_chan_probe._entry_ptr.26, ptr @rz_dmac_driver_exit, ptr @rz_dmac_irq_handle_channel._entry, ptr @rz_dmac_irq_handle_channel._entry_ptr, ptr @rz_dmac_issue_pending._entry, ptr @rz_dmac_issue_pending._entry_ptr, ptr @rz_dmac_parse_of._entry, ptr @rz_dmac_parse_of._entry.16, ptr @rz_dmac_parse_of._entry_ptr, ptr @rz_dmac_parse_of._entry_ptr.18, ptr @rz_dmac_probe._entry, ptr @rz_dmac_probe._entry.10, ptr @rz_dmac_probe._entry.7, ptr @rz_dmac_probe._entry_ptr, ptr @rz_dmac_probe._entry_ptr.12, ptr @rz_dmac_probe._entry_ptr.9, ptr @rz_dmac_driver, ptr @.str, ptr @of_rz_dmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rz_dmac_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_parse_of._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_irq_handle_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_chan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_chan_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_dmac_issue_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_dmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rz_dmac_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rz_dmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @rz_dmac_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_dmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdev_irqname.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 512, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.rz_dmac, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %n_channels.i = getelementptr inbounds %struct.rz_dmac, ptr %call.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %n_channels.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels.i, align 4
  %6 = add i32 %5, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %6)
  %7 = icmp ult i32 %6, -16
  br i1 %7, label %do.end7.i, label %if.end6

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %5) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels.i, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 272) #12
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !96

devm_kcalloc.exit.thread:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %channels195 = getelementptr inbounds %struct.rz_dmac, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %channels195 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %channels195, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end6
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #12
  %channels = getelementptr inbounds %struct.rz_dmac, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %channels, align 4
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %base = getelementptr inbounds %struct.rz_dmac, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %base, align 4
  %cmp.i172 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #12
  %ext_base = getelementptr inbounds %struct.rz_dmac, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %ext_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %ext_base, align 4
  %cmp.i173 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call27 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call.i174 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call27, ptr noundef nonnull @rz_dmac_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool33.not = icmp eq i32 %call.i174, 0
  br i1 %tobool33.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call27, i32 noundef %call.i174) #15
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %channels38 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %channels38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %channels38, ptr %channels38, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %channels38, ptr %prev.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  %call.i175 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %cmp.i176 = icmp slt i32 %call.i175, 0
  br i1 %cmp.i176, label %if.then.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end36
  %21 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp50214.not = icmp eq i32 %22, 0
  br i1 %cmp50214.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.i:                                        ; preds = %if.end36
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end46_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end46_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  br label %do.end46

do.end46:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end46_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #15
  br label %err_pm_disable

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0215 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 -16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  %index1.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 3
  %28 = call ptr @memset(ptr %pdev_irqname.i, i32 255, i32 5)
  %29 = ptrtoint ptr %index1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.0215, ptr %index1.i, align 4
  %mid_rid.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 13
  %30 = ptrtoint ptr %mid_rid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -22, ptr %mid_rid.i, align 4
  %call.i178 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pdev_irqname.i, ptr noundef nonnull @.str.21, i32 noundef %i.0215) #12
  %call3.i = call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i, ptr noundef nonnull %pdev_irqname.i) #12
  %irq.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 4
  %31 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call3.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i179 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i179, label %for.body.rz_dmac_chan_probe.exit.thread_crit_edge, label %if.end.i180

for.body.rz_dmac_chan_probe.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_chan_probe.exit.thread

if.end.i180:                                      ; preds = %for.body
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.i181, label %if.end.i180.dev_name.exit.i_crit_edge

if.end.i180.dev_name.exit.i_crit_edge:            ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i181:                                    ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i181, %if.end.i180.dev_name.exit.i_crit_edge
  %retval.0.i.i182 = phi ptr [ %37, %if.end.i.i181 ], [ %35, %if.end.i180.dev_name.exit.i_crit_edge ]
  %call9.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %33, i32 noundef 3264, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i182, i32 noundef %i.0215) #12
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %dev_name.exit.i.rz_dmac_chan_probe.exit.thread_crit_edge, label %if.end11.i

dev_name.exit.i.rz_dmac_chan_probe.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_chan_probe.exit.thread

if.end11.i:                                       ; preds = %dev_name.exit.i
  %38 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2, align 4
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq.i, align 4
  %call14.i = call i32 @devm_request_threaded_irq(ptr noundef %39, i32 noundef %41, ptr noundef nonnull @rz_dmac_irq_handler, ptr noundef nonnull @rz_dmac_irq_handler_thread, i32 noundef 0, ptr noundef nonnull %call9.i, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end19.i, label %rz_dmac_chan_probe.exit

if.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0215)
  %cmp20.i = icmp ult i32 %i.0215, 8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr27.i = getelementptr i8, ptr %43, i32 1024
  %sub.i = shl i32 %i.0215, 6
  %mul28.i = add i32 %sub.i, -512
  %add.ptr29.i = getelementptr i8, ptr %add.ptr27.i, i32 %mul28.i
  %add.ptr23.i = getelementptr i8, ptr %43, i32 %sub.i
  %add.ptr29.sink.i = select i1 %cmp20.i, ptr %add.ptr23.i, ptr %add.ptr29.i
  %.sink92.i = select i1 %cmp20.i, i32 768, i32 1792
  %ch_base30.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 1
  %44 = ptrtoint ptr %ch_base30.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr29.sink.i, ptr %ch_base30.i, align 4
  %45 = load ptr, ptr %base, align 4
  %add.ptr32.i = getelementptr i8, ptr %45, i32 %.sink92.i
  %46 = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr32.i, ptr %46, align 4
  %base_dma.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 17, i32 3
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %27, i32 noundef 2048, ptr noundef %base_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool38.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool38.not.i, label %do.end42.i, label %if.end44.i

do.end42.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.25) #15
  br label %rz_dmac_chan_probe.exit.thread

if.end44.i:                                       ; preds = %if.end19.i
  %lmdesc1.i.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 17
  %48 = ptrtoint ptr %lmdesc1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i, ptr %lmdesc1.i.i, align 4
  %head.i.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 17, i32 1
  %49 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %head.i.i, align 4
  %tail.i.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 17, i32 2
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i, ptr %tail.i.i, align 4
  %add.ptr26.i.i = getelementptr %struct.rz_lmdesc, ptr %call.i.i, i32 63
  %cmp27.i.i = icmp ugt ptr %add.ptr26.i.i, %call.i.i
  br i1 %cmp27.i.i, label %while.body.preheader.i.i, label %if.end44.i.rz_dmac_chan_probe.exit.thread203_crit_edge

if.end44.i.rz_dmac_chan_probe.exit.thread203_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_chan_probe.exit.thread203

while.body.preheader.i.i:                         ; preds = %if.end44.i
  %51 = ptrtoint ptr %base_dma.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_dma.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %nxla.029.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %52, %while.body.preheader.i.i ]
  %lmdesc.addr.028.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i.i, %while.body.preheader.i.i ]
  %53 = ptrtoint ptr %lmdesc.addr.028.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %lmdesc.addr.028.i.i, align 4
  %add.i.i = add i32 %nxla.029.i.i, 32
  %nxla7.i.i = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.addr.028.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %nxla7.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i.i, ptr %nxla7.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.rz_lmdesc, ptr %lmdesc.addr.028.i.i, i32 1
  %55 = ptrtoint ptr %lmdesc1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmdesc1.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rz_lmdesc, ptr %56, i32 63
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.rz_dmac_chan_probe.exit.thread203_crit_edge

while.body.i.i.rz_dmac_chan_probe.exit.thread203_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_chan_probe.exit.thread203

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

rz_dmac_chan_probe.exit.thread203:                ; preds = %while.body.i.i.rz_dmac_chan_probe.exit.thread203_crit_edge, %if.end44.i.rz_dmac_chan_probe.exit.thread203_crit_edge
  %lmdesc.addr.0.lcssa.i.i = phi ptr [ %call.i.i, %if.end44.i.rz_dmac_chan_probe.exit.thread203_crit_edge ], [ %incdec.ptr.i.i, %while.body.i.i.rz_dmac_chan_probe.exit.thread203_crit_edge ]
  %57 = ptrtoint ptr %lmdesc.addr.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %lmdesc.addr.0.lcssa.i.i, align 4
  %58 = ptrtoint ptr %base_dma.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_dma.i, align 4
  %nxla11.i.i = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.addr.0.lcssa.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %nxla11.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %nxla11.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  call void @arm_heavy_mb() #12
  %61 = ptrtoint ptr %ch_base30.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ch_base30.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %62, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 2046951936) #12, !srcloc !101
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %63 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @rz_dmac_virt_desc_free, ptr %desc_free.i, align 4
  call void @vchan_init(ptr noundef %arrayidx, ptr noundef %call.i) #12
  %ld_queue.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 15
  %64 = ptrtoint ptr %ld_queue.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %ld_queue.i, ptr %ld_queue.i, align 4
  %prev.i.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 15, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ld_queue.i, ptr %prev.i.i, align 4
  %ld_free.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 14
  %66 = ptrtoint ptr %ld_free.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %ld_free.i, ptr %ld_free.i, align 4
  %prev.i90.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 14, i32 1
  %67 = ptrtoint ptr %prev.i90.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %ld_free.i, ptr %prev.i90.i, align 4
  %ld_active.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 16
  %68 = ptrtoint ptr %ld_active.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %ld_active.i, ptr %ld_active.i, align 4
  %prev.i91.i = getelementptr %struct.rz_dmac_chan, ptr %25, i32 %i.0215, i32 16, i32 1
  %69 = ptrtoint ptr %prev.i91.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ld_active.i, ptr %prev.i91.i, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  br label %for.inc

rz_dmac_chan_probe.exit.thread:                   ; preds = %do.end42.i, %dev_name.exit.i.rz_dmac_chan_probe.exit.thread_crit_edge, %for.body.rz_dmac_chan_probe.exit.thread_crit_edge
  %retval.0.i184.ph = phi i32 [ -12, %do.end42.i ], [ %call3.i, %for.body.rz_dmac_chan_probe.exit.thread_crit_edge ], [ -12, %dev_name.exit.i.rz_dmac_chan_probe.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  br label %err

rz_dmac_chan_probe.exit:                          ; preds = %if.end11.i
  %70 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev2, align 4
  %72 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.2, i32 noundef %73, i32 noundef %call14.i) #15
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp53 = icmp slt i32 %call14.i, 0
  br i1 %cmp53, label %rz_dmac_chan_probe.exit.err_crit_edge, label %rz_dmac_chan_probe.exit.for.inc_crit_edge

rz_dmac_chan_probe.exit.for.inc_crit_edge:        ; preds = %rz_dmac_chan_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

rz_dmac_chan_probe.exit.err_crit_edge:            ; preds = %rz_dmac_chan_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

for.inc:                                          ; preds = %rz_dmac_chan_probe.exit.for.inc_crit_edge, %rz_dmac_chan_probe.exit.thread203
  %inc = add nuw i32 %i.0215, 1
  %74 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %n_channels.i, align 4
  %cmp50 = icmp ult i32 %inc, %75
  br i1 %cmp50, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %76 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %of_node.i, align 8
  %call57 = call i32 @of_dma_controller_register(ptr noundef %77, ptr noundef nonnull @rz_dmac_of_xlate, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %for.end.err_crit_edge, label %if.end60

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end60:                                         ; preds = %for.end
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #12
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @arm_heavy_mb() #12
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr.i186 = getelementptr i8, ptr %79, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 50331648) #12, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @arm_heavy_mb() #12
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr.i188 = getelementptr i8, ptr %81, i32 1792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 50331648) #12, !srcloc !101
  %dev64 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %82 = ptrtoint ptr %dev64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %dev, ptr %dev64, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %83 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @rz_dmac_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %84 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @rz_dmac_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %85 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %86 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @rz_dmac_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %87 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @rz_dmac_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %88 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @rz_dmac_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %89 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @rz_dmac_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %90 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @rz_dmac_issue_pending, ptr %device_issue_pending, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %91 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %copy_align, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %92 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i189 = icmp eq ptr %93, null
  br i1 %tobool.not.i189, label %if.end60.dma_set_max_seg_size.exit_crit_edge, label %if.then.i190

if.end60.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_set_max_seg_size.exit

if.then.i190:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %93, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i190, %if.end60.dma_set_max_seg_size.exit_crit_edge
  %call67 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end72, label %dma_set_max_seg_size.exit.cleanup_crit_edge

dma_set_max_seg_size.exit.cleanup_crit_edge:      ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end72:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #15
  %95 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %of_node.i, align 8
  call void @of_dma_controller_free(ptr noundef %96) #12
  br label %err

err:                                              ; preds = %do.end72, %for.end.err_crit_edge, %rz_dmac_chan_probe.exit.err_crit_edge, %rz_dmac_chan_probe.exit.thread
  %i.0209 = phi i32 [ %i.0.lcssa, %for.end.err_crit_edge ], [ %i.0.lcssa, %do.end72 ], [ %i.0215, %rz_dmac_chan_probe.exit.thread ], [ %i.0215, %rz_dmac_chan_probe.exit.err_crit_edge ]
  %ret.0 = phi i32 [ %call57, %for.end.err_crit_edge ], [ %call67, %do.end72 ], [ %retval.0.i184.ph, %rz_dmac_chan_probe.exit.thread ], [ %call14.i, %rz_dmac_chan_probe.exit.err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0209)
  %97 = icmp ult i32 %i.0209, 2
  br i1 %97, label %err.for.end88_crit_edge, label %for.body80.preheader

err.for.end88_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.body80.preheader:                             ; preds = %err
  %98 = add i32 %i.0209, -2
  br label %for.body80

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %for.body80.preheader
  %i.1218 = phi i32 [ %inc87, %for.body80.for.body80_crit_edge ], [ 0, %for.body80.preheader ]
  %99 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %channels, align 4
  %lmdesc = getelementptr %struct.rz_dmac_chan, ptr %100, i32 %i.1218, i32 17
  %101 = ptrtoint ptr %lmdesc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lmdesc, align 4
  %base_dma = getelementptr %struct.rz_dmac_chan, ptr %100, i32 %i.1218, i32 17, i32 3
  %103 = ptrtoint ptr %base_dma to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %base_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 2048, ptr noundef %102, i32 noundef %104, i32 noundef 0) #12
  %inc87 = add nuw i32 %i.1218, 1
  %exitcond.not = icmp eq i32 %i.1218, %98
  br i1 %exitcond.not, label %for.body80.for.end88_crit_edge, label %for.body80.for.body80_crit_edge

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body80

for.body80.for.end88_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.end88:                                        ; preds = %for.body80.for.end88_crit_edge, %err.for.end88_crit_edge
  %call.i191 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %for.end88, %do.end46
  %ret.1 = phi i32 [ %call.i175, %do.end46 ], [ %ret.0, %for.end88 ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %dma_set_max_seg_size.exit.cleanup_crit_edge, %do.end, %if.end26.cleanup_crit_edge, %if.then23, %if.then16, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end7.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then16 ], [ %18, %if.then23 ], [ %call.i174, %do.end ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ 0, %dma_set_max_seg_size.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -22, %do.end7.i ], [ %call.i.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_dmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %n_channels = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %lmdesc = getelementptr %struct.rz_dmac_chan, ptr %5, i32 %i.016, i32 17
  %6 = ptrtoint ptr %lmdesc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmdesc, align 4
  %base_dma = getelementptr %struct.rz_dmac_chan, ptr %5, i32 %i.016, i32 17, i32 3
  %8 = ptrtoint ptr %base_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 2048, ptr noundef %7, i32 noundef %9, i32 noundef 0) #12
  %inc = add nuw i32 %i.016, 1
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %13) #12
  tail call void @dma_async_device_unregister(ptr noundef %1) #12
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 5) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_dmac_irq_handler(i32 noundef %irq, ptr noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %ch_base.i.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %ch_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !104
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %index.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %9, i32 noundef %5) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %ch_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 2046951936) #12, !srcloc !101
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %ch_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch_base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #12, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !104
  %15 = or i32 %14, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %ch_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %15) #12, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %do.end.i ], [ 2, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rz_dmac_of_xlate(ptr noundef %dma_spec, ptr nocapture noundef readnone %ofdma) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #12
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @rz_dmac_chan_filter, ptr noundef %dma_spec, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_dmac_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %descs_allocated = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %descs_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp15 = icmp slt i32 %1, 16
  br i1 %cmp15, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ld_free = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 152) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  %node = getelementptr inbounds %struct.rz_dmac_desc, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %4, ptr noundef %ld_free) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node, ptr %prev.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ld_free, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.rz_dmac_desc, ptr %call7.i.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %node, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge
  %9 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %descs_allocated, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %descs_allocated, align 4
  %cmp = icmp slt i32 %inc, 16
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %11 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %descs_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  %. = select i1 %tobool3.not, i32 -12, i32 %12
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rz_dmac_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lmdesc4 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 17
  %2 = ptrtoint ptr %lmdesc4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmdesc4, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rz_lmdesc, ptr %3, i32 %i.071
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @rz_dmac_disable_hw(ptr noundef %chan)
  %ld_active = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 16
  %ld_free = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14
  %5 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not.i = icmp eq ptr %6, %ld_active
  br i1 %cmp.i.not.i, label %for.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end.list_splice_tail_init.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 16, i32 1
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
  store ptr %ld_free, ptr %10, align 4
  store ptr %10, ptr %prev.i, align 4
  %14 = ptrtoint ptr %ld_active to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ld_active, ptr %ld_active, align 4
  store ptr %ld_active, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end.list_splice_tail_init.exit_crit_edge
  %ld_queue = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15
  %15 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i.not.i64 = icmp eq ptr %16, %ld_queue
  br i1 %cmp.i.not.i64, label %list_splice_tail_init.exit.list_splice_tail_init.exit69_crit_edge, label %if.then.i68

list_splice_tail_init.exit.list_splice_tail_init.exit69_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit69

if.then.i68:                                      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i65 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i65, align 4
  %prev2.i.i66 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %prev2.i.i66 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i66, align 4
  %prev3.i.i67 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i67 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i67, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ld_free, ptr %20, align 4
  store ptr %20, ptr %prev.i65, align 4
  %24 = ptrtoint ptr %ld_queue to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %ld_queue, ptr %ld_queue, align 4
  store ptr %ld_queue, ptr %prev2.i.i66, align 4
  br label %list_splice_tail_init.exit69

list_splice_tail_init.exit69:                     ; preds = %if.then.i68, %list_splice_tail_init.exit.list_splice_tail_init.exit69_crit_edge
  %mid_rid = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 13
  %25 = ptrtoint ptr %mid_rid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mid_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp13 = icmp sgt i32 %26, -1
  br i1 %cmp13, label %if.then, label %list_splice_tail_init.exit69.if.end_crit_edge

list_splice_tail_init.exit69.if.end_crit_edge:    ; preds = %list_splice_tail_init.exit69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_splice_tail_init.exit69
  call void @__sanitizer_cov_trace_pc() #14
  %modules = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %26, ptr noundef %modules) #12
  %27 = ptrtoint ptr %mid_rid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -22, ptr %mid_rid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_splice_tail_init.exit69.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  %28 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ld_free, align 4
  %cmp30.not72 = icmp eq ptr %29, %ld_free
  br i1 %cmp30.not72, label %if.end.for.end39_crit_edge, label %for.body32.lr.ph

if.end.for.end39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

for.body32.lr.ph:                                 ; preds = %if.end
  %descs_allocated = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 6
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.body32.lr.ph
  %.pn.in73 = phi ptr [ %29, %for.body32.lr.ph ], [ %.pn, %for.body32.for.body32_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in73, i32 -128
  %30 = ptrtoint ptr %.pn.in73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn.in73, align 4
  tail call void @kfree(ptr noundef %desc.0) #12
  %31 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %descs_allocated, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %descs_allocated, align 4
  %cmp30.not = icmp eq ptr %.pn, %ld_free
  br i1 %cmp30.not, label %for.body32.for.end39_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32

for.body32.for.end39_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

for.end39:                                        ; preds = %for.body32.for.end39_crit_edge, %if.end.for.end39_crit_edge
  %33 = ptrtoint ptr %ld_free to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %ld_free, ptr %ld_free, align 4
  %prev.i70 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ld_free, ptr %prev.i70, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #12
  %35 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head.i, ptr %head.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %head.i, ptr %35, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %38 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %39, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %for.end39.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

for.end39.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %41, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %head.i, ptr %43, align 4
  store ptr %43, ptr %35, align 4
  %47 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %for.end39.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %48 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %49, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i12.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head.i, ptr %53, align 4
  store ptr %53, ptr %35, align 4
  %57 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %58 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %59, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %35, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i18.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %61, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %head.i, ptr %63, align 4
  store ptr %63, ptr %35, align 4
  %67 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %68 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %69, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %35, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i24.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %69, ptr %71, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %head.i, ptr %73, align 4
  store ptr %73, ptr %35, align 4
  %77 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %78 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %79, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %35, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev3.i.i30.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %79, ptr %81, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %head.i, ptr %83, align 4
  store ptr %83, ptr %35, align 4
  %87 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %88 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %88)
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
  %89 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %90, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %91 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %91)
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #12
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !105
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2, align 4
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue, align 4
  %in_flight_bytes = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %or.cond.i = or i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.then.i.dma_async_is_complete.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rz_dmac_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ld_free = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ld_free, align 4
  %cmp.i.not = icmp eq ptr %1, %ld_free
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %1, i32 -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp42.not = icmp eq i32 %sg_len, 0
  br i1 %cmp42.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %dma_length.044 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sg.043 = phi ptr [ %call6, %for.body.for.body_crit_edge ], [ %sgl, %if.end.for.body_crit_edge ]
  %dma_length5 = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length5, align 4
  %add = add i32 %3, %dma_length.044
  %inc = add nuw i32 %i.045, 1
  %call6 = tail call ptr @sg_next(ptr noundef %sg.043) #12
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %dma_length.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %type = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %sg7 = getelementptr i8, ptr %1, i32 16
  %5 = ptrtoint ptr %sg7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sgl, ptr %sg7, align 4
  %sgcount = getelementptr i8, ptr %1, i32 20
  %6 = ptrtoint ptr %sgcount to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sg_len, ptr %sgcount, align 4
  %len = getelementptr i8, ptr %1, i32 -4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dma_length.0.lcssa, ptr %len, align 4
  %direction8 = getelementptr i8, ptr %1, i32 8
  %8 = ptrtoint ptr %direction8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %direction, ptr %direction8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp9 = icmp eq i32 %direction, 2
  %dst_per_address = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 10
  %src_per_address = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 9
  %dst_per_address.sink = select i1 %cmp9, ptr %src_per_address, ptr %dst_per_address
  %.sink46 = select i1 %cmp9, i32 -12, i32 -8
  %9 = ptrtoint ptr %dst_per_address.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_per_address.sink, align 4
  %dest = getelementptr i8, ptr %1, i32 %.sink46
  %11 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dest, align 4
  %12 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ld_free, align 4
  %ld_queue = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.end.__list_del_entry.exit.i_crit_edge

for.end.__list_del_entry.exit.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %21, ptr noundef %ld_queue) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %13, ptr %prev.i2.i, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ld_queue, ptr %13, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %13, ptr %21, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef %add.ptr4, ptr noundef %chan) #12
  %flags2.i = getelementptr i8, ptr %1, i32 -124
  %26 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr i8, ptr %1, i32 -112
  %27 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr i8, ptr %1, i32 -108
  %28 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr i8, ptr %1, i32 -28
  %29 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr i8, ptr %1, i32 -24
  %30 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr i8, ptr %1, i32 -20
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i38 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i38, align 4
  %call.i.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %32, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i39, label %if.end.i.i.i41, label %list_move_tail.exit.vchan_tx_prep.exit_crit_edge

list_move_tail.exit.vchan_tx_prep.exit_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i41:                                   ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %node.i, ptr %prev.i.i38, align 4
  %34 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i40 = getelementptr i8, ptr %1, i32 -16
  %35 = ptrtoint ptr %prev3.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i40, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %node.i, ptr %32, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i41, %list_move_tail.exit.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr4, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rz_dmac_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %dest.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  %1 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src, ptr %src.addr, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rz_dmac_prep_dma_memcpy.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rz_dmac_prep_dma_memcpy, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rz_dmac, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rz_dmac_prep_dma_memcpy.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %7, ptr noundef nonnull %src.addr, ptr noundef nonnull %dest.addr, i32 noundef %len) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ld_free = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14
  %8 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ld_free, align 4
  %cmp.i.not = icmp eq ptr %9, %ld_free
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %add.ptr15 = getelementptr i8, ptr %9, i32 -128
  %type = getelementptr i8, ptr %9, i32 12
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %11 = ptrtoint ptr %src.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src.addr, align 4
  %src16 = getelementptr i8, ptr %9, i32 -12
  %13 = ptrtoint ptr %src16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %src16, align 4
  %14 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dest.addr, align 4
  %dest17 = getelementptr i8, ptr %9, i32 -8
  %16 = ptrtoint ptr %dest17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dest17, align 4
  %len18 = getelementptr i8, ptr %9, i32 -4
  %17 = ptrtoint ptr %len18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %len18, align 4
  %direction = getelementptr i8, ptr %9, i32 8
  %18 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %direction, align 4
  %19 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ld_free, align 4
  %ld_queue = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.__list_del_entry.exit.i_crit_edge

if.end11.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end11.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %28, ptr noundef %ld_queue) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %20, ptr %prev.i2.i, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ld_queue, ptr %20, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %20, ptr %28, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @dma_async_tx_descriptor_init(ptr noundef %add.ptr15, ptr noundef %chan) #12
  %flags2.i = getelementptr i8, ptr %9, i32 -124
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr i8, ptr %9, i32 -112
  %34 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr i8, ptr %9, i32 -108
  %35 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr i8, ptr %9, i32 -28
  %36 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr i8, ptr %9, i32 -24
  %37 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr i8, ptr %9, i32 -20
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i36 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i36, align 4
  %call.i.i.i37 = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %39, ptr noundef %desc_allocated.i) #12
  br i1 %call.i.i.i37, label %if.end.i.i.i39, label %list_move_tail.exit.vchan_tx_prep.exit_crit_edge

list_move_tail.exit.vchan_tx_prep.exit_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_tx_prep.exit

if.end.i.i.i39:                                   ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node.i, ptr %prev.i.i36, align 4
  %41 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i38 = getelementptr i8, ptr %9, i32 -16
  %42 = ptrtoint ptr %prev3.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i38, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node.i, ptr %39, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i39, %list_move_tail.exit.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr15, %vchan_tx_prep.exit ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rz_dmac_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %config) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr, align 4
  %src_per_address = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %src_per_address to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %src_per_address, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_addr_width, align 4
  %src_word_size = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 7
  %5 = ptrtoint ptr %src_word_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %src_word_size, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_addr, align 4
  %dst_per_address = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 10
  %8 = ptrtoint ptr %dst_per_address to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dst_per_address, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %9 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_addr_width, align 4
  %dst_word_size = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 8
  %11 = ptrtoint ptr %dst_word_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst_word_size, align 4
  %12 = load i32, ptr %dst_addr_width, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %cleanup.fold.split.i
    i32 4, label %cleanup.fold.split8.i
    i32 8, label %cleanup.fold.split9.i
    i32 16, label %cleanup.fold.split10.i
    i32 32, label %cleanup.fold.split11.i
    i32 64, label %cleanup.fold.split12.i
    i32 128, label %cleanup.fold.split13.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 458752, %cleanup.fold.split13.i ], [ 393216, %cleanup.fold.split12.i ], [ 327680, %cleanup.fold.split11.i ], [ 262144, %cleanup.fold.split10.i ], [ 196608, %cleanup.fold.split9.i ], [ 131072, %cleanup.fold.split8.i ], [ 65536, %cleanup.fold.split.i ], [ 0, %entry.if.end_crit_edge ]
  %chcfg = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 11
  %14 = ptrtoint ptr %chcfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chcfg, align 4
  %or = or i32 %15, %retval.0.i.ph
  store i32 %or, ptr %chcfg, align 4
  %16 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_addr_width, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %17, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end9_crit_edge
    i32 2, label %cleanup.fold.split.i29
    i32 4, label %cleanup.fold.split8.i30
    i32 8, label %cleanup.fold.split9.i31
    i32 16, label %cleanup.fold.split10.i32
    i32 32, label %cleanup.fold.split11.i33
    i32 64, label %cleanup.fold.split12.i34
    i32 128, label %cleanup.fold.split13.i35
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split.i29:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cleanup.fold.split8.i30:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cleanup.fold.split9.i31:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cleanup.fold.split10.i32:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cleanup.fold.split11.i33:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cleanup.fold.split12.i34:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cleanup.fold.split13.i35:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end9:                                          ; preds = %cleanup.fold.split13.i35, %cleanup.fold.split12.i34, %cleanup.fold.split11.i33, %cleanup.fold.split10.i32, %cleanup.fold.split9.i31, %cleanup.fold.split8.i30, %cleanup.fold.split.i29, %if.end.if.end9_crit_edge
  %retval.0.i36.ph = phi i32 [ 28672, %cleanup.fold.split13.i35 ], [ 24576, %cleanup.fold.split12.i34 ], [ 20480, %cleanup.fold.split11.i33 ], [ 16384, %cleanup.fold.split10.i32 ], [ 12288, %cleanup.fold.split9.i31 ], [ 8192, %cleanup.fold.split8.i30 ], [ 4096, %cleanup.fold.split.i29 ], [ 0, %if.end.if.end9_crit_edge ]
  %or13 = or i32 %retval.0.i36.ph, %or
  %19 = ptrtoint ptr %chcfg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or13, ptr %chcfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_dmac_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  call fastcc void @rz_dmac_disable_hw(ptr noundef %chan)
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ld_active = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 16
  %ld_free = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14
  %3 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not.i = icmp eq ptr %4, %ld_active
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ld_free, ptr %8, align 4
  store ptr %8, ptr %prev.i, align 4
  %12 = ptrtoint ptr %ld_active to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ld_active, ptr %ld_active, align 4
  store ptr %ld_active, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %ld_queue = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15
  %13 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i.not.i19 = icmp eq ptr %14, %ld_queue
  br i1 %cmp.i.not.i19, label %list_splice_tail_init.exit.list_splice_tail_init.exit24_crit_edge, label %if.then.i23

list_splice_tail_init.exit.list_splice_tail_init.exit24_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit24

if.then.i23:                                      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i20 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i20, align 4
  %prev2.i.i21 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %prev2.i.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i21, align 4
  %prev3.i.i22 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i22, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ld_free, ptr %18, align 4
  store ptr %18, ptr %prev.i20, align 4
  %22 = ptrtoint ptr %ld_queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %ld_queue, ptr %ld_queue, align 4
  store ptr %ld_queue, ptr %prev2.i.i21, align 4
  br label %list_splice_tail_init.exit24

list_splice_tail_init.exit24:                     ; preds = %if.then.i23, %list_splice_tail_init.exit.list_splice_tail_init.exit24_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %23 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %24, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %list_splice_tail_init.exit24.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

list_splice_tail_init.exit24.list_splice_tail_init.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit24
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %list_splice_tail_init.exit24
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %list_splice_tail_init.exit24.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %34, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i12.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %43 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %44, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i18.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %53 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %54, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i24.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %56, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %head, ptr %58, align 4
  store ptr %58, ptr %0, align 4
  %62 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %63 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %64, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i30.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %66, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %head, ptr %68, align 4
  store ptr %68, ptr %0, align 4
  %72 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rz_dmac_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ld_queue = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 15
  %2 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %ld_queue
  br i1 %cmp.i.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then:                                          ; preds = %entry
  %add.ptr13 = getelementptr i8, ptr %3, i32 -128
  %desc14 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %desc14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr13, ptr %desc14, align 4
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %5 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %6, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %if.then.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

if.then.vchan_issue_pending.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
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
  store ptr %desc_issued.i, ptr %10, align 4
  store ptr %10, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %if.then.vchan_issue_pending.exit_crit_edge
  %15 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %16, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end28_crit_edge, label %if.then17

vchan_issue_pending.exit.if.end28_crit_edge:      ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then17:                                        ; preds = %vchan_issue_pending.exit
  %call18 = tail call fastcc i32 @rz_dmac_xfer_desc(ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end24, label %if.else

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 3
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.36, i32 noundef %20) #15
  br label %if.end28

if.else:                                          ; preds = %if.then17
  %21 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ld_queue, align 4
  %ld_active = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i41 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i41, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 16, i32 1
  %29 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %30, ptr noundef %ld_active) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end28_crit_edge

__list_del_entry.exit.i.if.end28_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %22, ptr %prev.i2.i, align 4
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ld_active, ptr %22, align 4
  %prev3.i.i.i42 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i42, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %22, ptr %30, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end28_crit_edge, %do.end24, %vchan_issue_pending.exit.if.end28_crit_edge, %entry.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_dmac_irq_handler_thread(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dev_id, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ld_active = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 16
  %0 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not = icmp eq ptr %1, %ld_active
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %chan.i = getelementptr i8, ptr %1, i32 -116
  %2 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !96

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !107
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.end
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %completed_cookie.i.i, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rz_dmac_irq_handler_thread, %do.end.i)) #12
          to label %if.then.i [label %do.end.i], !srcloc !106

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %11, ptr noundef nonnull @.str.30, ptr noundef %add.ptr, i32 noundef %5) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr i8, ptr %1, i32 -20
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %13, ptr noundef %desc_completed.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %1, i32 -16
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node.i, ptr %13, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #12
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %18 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ld_active, align 4
  %ld_free = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 14
  %call.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #12
  br i1 %call.i.i42, label %if.end.i.i, label %vchan_cookie_complete.exit.__list_del_entry.exit.i_crit_edge

vchan_cookie_complete.exit.__list_del_entry.exit.i_crit_edge: ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i43 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i43, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %vchan_cookie_complete.exit.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i44 = tail call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %27, ptr noundef %ld_free) #12
  br i1 %call.i.i.i44, label %if.end.i.i.i46, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i46:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %19, ptr %prev.i2.i, align 4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ld_free, ptr %19, align 4
  %prev3.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i45, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %19, ptr %27, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i46, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %ld_queue = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 15
  %32 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i48.not = icmp eq ptr %33, %ld_queue
  br i1 %cmp.i48.not, label %list_move_tail.exit.out_crit_edge, label %if.then12

list_move_tail.exit.out_crit_edge:                ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then12:                                        ; preds = %list_move_tail.exit
  %add.ptr17 = getelementptr i8, ptr %33, i32 -128
  %desc18 = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 5
  %34 = ptrtoint ptr %desc18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr17, ptr %desc18, align 4
  %call19 = tail call fastcc i32 @rz_dmac_xfer_desc(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then22:                                        ; preds = %if.then12
  %35 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ld_queue, align 4
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #12
  br i1 %call.i.i50, label %if.end.i.i53, label %if.then22.__list_del_entry.exit.i56_crit_edge

if.then22.__list_del_entry.exit.i56_crit_edge:    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i56

if.end.i.i53:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i51 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i51, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %prev1.i.i.i52 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i52, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %__list_del_entry.exit.i56

__list_del_entry.exit.i56:                        ; preds = %if.end.i.i53, %if.then22.__list_del_entry.exit.i56_crit_edge
  %prev.i2.i54 = getelementptr inbounds %struct.rz_dmac_chan, ptr %dev_id, i32 0, i32 16, i32 1
  %43 = ptrtoint ptr %prev.i2.i54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i2.i54, align 4
  %call.i.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef %36, ptr noundef %44, ptr noundef %ld_active) #12
  br i1 %call.i.i.i55, label %if.end.i.i.i58, label %__list_del_entry.exit.i56.out_crit_edge

__list_del_entry.exit.i56.out_crit_edge:          ; preds = %__list_del_entry.exit.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i.i58:                                   ; preds = %__list_del_entry.exit.i56
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %prev.i2.i54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %36, ptr %prev.i2.i54, align 4
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ld_active, ptr %36, align 4
  %prev3.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i57, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %36, ptr %44, align 4
  br label %out

out:                                              ; preds = %if.end.i.i.i58, %__list_del_entry.exit.i56.out_crit_edge, %if.then12.out_crit_edge, %list_move_tail.exit.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rz_dmac_virt_desc_free(ptr nocapture noundef %vd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rz_dmac_xfer_desc(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %3, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -108
  %tobool.not27 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not27
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %type = getelementptr inbounds %struct.rz_dmac_desc, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %13, label %list_del.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan, align 4
  %tail.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i, align 4
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %src.i = getelementptr inbounds %struct.rz_dmac_desc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src.i, align 4
  %sa.i = getelementptr inbounds %struct.rz_lmdesc, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %sa.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sa.i, align 4
  %dest.i = getelementptr inbounds %struct.rz_dmac_desc, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dest.i, align 4
  %da.i = getelementptr inbounds %struct.rz_lmdesc, ptr %18, i32 0, i32 2
  %26 = ptrtoint ptr %da.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %da.i, align 4
  %len.i = getelementptr inbounds %struct.rz_dmac_desc, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  %tb.i = getelementptr inbounds %struct.rz_lmdesc, ptr %18, i32 0, i32 3
  %29 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tb.i, align 4
  %chcfg3.i = getelementptr inbounds %struct.rz_lmdesc, ptr %18, i32 0, i32 4
  %30 = ptrtoint ptr %chcfg3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2143289336, ptr %chcfg3.i, align 4
  %chitvl.i = getelementptr inbounds %struct.rz_lmdesc, ptr %18, i32 0, i32 5
  %31 = ptrtoint ptr %chitvl.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %chitvl.i, align 4
  %chext.i = getelementptr inbounds %struct.rz_lmdesc, ptr %18, i32 0, i32 6
  %32 = ptrtoint ptr %chext.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %chext.i, align 4
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %18, align 4
  %index.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 3
  %34 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i, align 4
  %.frozen = freeze i32 %35
  %div.i.i = sdiv i32 %.frozen, 2
  %mul.i.i = shl i32 %div.i.i, 2
  %36 = mul i32 %div.i.i, 2
  %rem.i.i.decomposed = sub i32 %.frozen, %36
  %mul1.i.i = shl nsw i32 %rem.i.i.decomposed, 4
  %ext_base.i.i.i = getelementptr inbounds %struct.rz_dmac, ptr %16, i32 0, i32 3
  %37 = ptrtoint ptr %ext_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %mul.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !103
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %shl.i.i = shl i32 65535, %mul1.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %40, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #12
  %42 = ptrtoint ptr %ext_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ext_base.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %43, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %41) #12, !srcloc !101
  %chcfg4.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 11
  %44 = ptrtoint ptr %chcfg4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -2143289336, ptr %chcfg4.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %list_del.exit
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan, align 4
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc, align 4
  %sg2.i = getelementptr inbounds %struct.rz_dmac_desc, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sg2.i, align 4
  %sgcount.i = getelementptr inbounds %struct.rz_dmac_desc, ptr %48, i32 0, i32 8
  %51 = ptrtoint ptr %sgcount.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sgcount.i, align 4
  %index.i9 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 3
  %53 = ptrtoint ptr %index.i9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index.i9, align 4
  %and.i = and i32 %54, 7
  %chcfg.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 11
  %55 = ptrtoint ptr %chcfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chcfg.i, align 4
  %or3.i = or i32 %and.i, %56
  %or4.i = or i32 %or3.i, -2130706432
  store i32 %or4.i, ptr %chcfg.i, align 4
  %direction.i = getelementptr inbounds %struct.rz_dmac_desc, ptr %48, i32 0, i32 5
  %57 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp.i = icmp eq i32 %58, 2
  %or10.i = or i32 %or3.i, -2128609272
  %or6.i = and i32 %or4.i, -1048585
  %and8.i = or i32 %or6.i, 1048576
  %storemerge.i = select i1 %cmp.i, i32 %and8.i, i32 %or10.i
  %59 = ptrtoint ptr %chcfg.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge.i, ptr %chcfg.i, align 4
  %lmdesc11.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 17
  %tail.i10 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 17, i32 2
  %60 = ptrtoint ptr %tail.i10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp1279.not.i = icmp eq i32 %52, 0
  br i1 %cmp1279.not.i, label %sw.bb1.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge, label %for.body.lr.ph.i

sw.bb1.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_prepare_descs_for_slave_sg.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb1
  %dst_per_address.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 10
  %src_per_address.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 9
  %sub.i = add i32 %52, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lmdesc.082.i = phi ptr [ %61, %for.body.lr.ph.i ], [ %spec.select.i15, %for.body.i.for.body.i_crit_edge ]
  %sg.080.i = phi ptr [ %50, %for.body.lr.ph.i ], [ %call.i, %for.body.i.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp14.i = icmp eq i32 %63, 2
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.080.i, i32 0, i32 3
  %src_per_address.i.dma_address.i = select i1 %cmp14.i, ptr %src_per_address.i, ptr %dma_address.i
  %dma_address.i.dst_per_address.i = select i1 %cmp14.i, ptr %dma_address.i, ptr %dst_per_address.i
  %64 = ptrtoint ptr %src_per_address.i.dma_address.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.sink = load i32, ptr %src_per_address.i.dma_address.i, align 4
  %65 = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.082.i, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink, ptr %65, align 4
  %67 = ptrtoint ptr %dma_address.i.dst_per_address.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.sink.i = load i32, ptr %dma_address.i.dst_per_address.i, align 4
  %68 = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.082.i, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink.i, ptr %68, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.080.i, i32 0, i32 4
  %70 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_length.i, align 4
  %tb.i12 = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.082.i, i32 0, i32 3
  %72 = ptrtoint ptr %tb.i12 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tb.i12, align 4
  %chitvl.i13 = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.082.i, i32 0, i32 5
  %73 = ptrtoint ptr %chitvl.i13 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %chitvl.i13, align 4
  %chext.i14 = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.082.i, i32 0, i32 6
  %74 = ptrtoint ptr %chext.i14 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %chext.i14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083.i, i32 %sub.i)
  %cmp21.i = icmp eq i32 %i.083.i, %sub.i
  %75 = ptrtoint ptr %chcfg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chcfg.i, align 4
  %and24.i = and i32 %76, -16777217
  %.sink84.i = select i1 %cmp21.i, i32 %and24.i, i32 %76
  %77 = getelementptr inbounds %struct.rz_lmdesc, ptr %lmdesc.082.i, i32 0, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink84.i, ptr %77, align 4
  %79 = ptrtoint ptr %lmdesc.082.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %lmdesc.082.i, align 4
  %incdec.ptr.i = getelementptr %struct.rz_lmdesc, ptr %lmdesc.082.i, i32 1
  %80 = ptrtoint ptr %lmdesc11.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lmdesc11.i, align 4
  %add.ptr32.i = getelementptr %struct.rz_lmdesc, ptr %81, i32 64
  %cmp33.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr32.i
  %spec.select.i15 = select i1 %cmp33.not.i, ptr %incdec.ptr.i, ptr %81
  %inc.i = add nuw i32 %i.083.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.080.i) #12
  %exitcond.not.i = icmp eq i32 %inc.i, %52
  br i1 %exitcond.not.i, label %for.body.i.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_prepare_descs_for_slave_sg.exit

rz_dmac_prepare_descs_for_slave_sg.exit:          ; preds = %for.body.i.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge, %sw.bb1.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge
  %lmdesc.0.lcssa.i = phi ptr [ %61, %sw.bb1.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge ], [ %spec.select.i15, %for.body.i.rz_dmac_prepare_descs_for_slave_sg.exit_crit_edge ]
  %82 = ptrtoint ptr %tail.i10 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %lmdesc.0.lcssa.i, ptr %tail.i10, align 4
  %83 = ptrtoint ptr %index.i9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %index.i9, align 4
  %mid_rid.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 13
  %85 = ptrtoint ptr %mid_rid.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mid_rid.i, align 4
  %.frozen29 = freeze i32 %84
  %div.i.i16 = sdiv i32 %.frozen29, 2
  %mul.i.i17 = shl i32 %div.i.i16, 2
  %87 = mul i32 %div.i.i16, 2
  %rem.i.i18.decomposed = sub i32 %.frozen29, %87
  %mul1.i.i19 = shl nsw i32 %rem.i.i18.decomposed, 4
  %ext_base.i.i.i20 = getelementptr inbounds %struct.rz_dmac, ptr %46, i32 0, i32 3
  %88 = ptrtoint ptr %ext_base.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ext_base.i.i.i20, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %89, i32 %mul.i.i17
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i21) #12, !srcloc !103
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %shl.i.i22 = shl i32 65535, %mul1.i.i19
  %neg.i.i23 = xor i32 %shl.i.i22, -1
  %and.i.i24 = and i32 %91, %neg.i.i23
  %shl2.i.i = shl i32 %86, %mul1.i.i19
  %or.i.i = or i32 %and.i.i24, %shl2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %93 = ptrtoint ptr %ext_base.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ext_base.i.i.i20, align 4
  %add.ptr.i10.i.i25 = getelementptr i8, ptr %94, i32 %mul.i.i17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i25, i32 %92) #12, !srcloc !101
  br label %sw.epilog

sw.epilog:                                        ; preds = %rz_dmac_prepare_descs_for_slave_sg.exit, %sw.bb
  %.sink28 = phi i32 [ 1, %rz_dmac_prepare_descs_for_slave_sg.exit ], [ 5, %sw.bb ]
  %chctrl.i26 = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 12
  %95 = ptrtoint ptr %chctrl.i26 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink28, ptr %chctrl.i26, align 4
  tail call fastcc void @rz_dmac_enable_hw(ptr noundef %chan)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %list_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -22, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rz_dmac_enable_hw(ptr nocapture noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rz_dmac_enable_hw.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rz_dmac_enable_hw, %do.body7)) #12
          to label %if.then [label %do.body7], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rz_dmac_enable_hw.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %5) #12
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !110
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not = icmp eq i32 %and.i, 0
  br i1 %tobool19.not, label %if.then20, label %do.body7.do.end23_crit_edge

do.body7.do.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

if.then20:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body7.do.end23_crit_edge
  %lmdesc1.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 17
  %head.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and15.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not16.i = icmp eq i32 %and15.i, 0
  br i1 %tobool.not16.i, label %do.end23.while.body.i_crit_edge, label %do.end23.rz_dmac_lmdesc_recycle.exit_crit_edge

do.end23.rz_dmac_lmdesc_recycle.exit_crit_edge:   ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_lmdesc_recycle.exit

do.end23.while.body.i_crit_edge:                  ; preds = %do.end23
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end23.while.body.i_crit_edge
  %lmdesc.017.i = phi ptr [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ %8, %do.end23.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %lmdesc.017.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %lmdesc.017.i, align 4
  %incdec.ptr.i = getelementptr %struct.rz_lmdesc, ptr %lmdesc.017.i, i32 1
  %12 = ptrtoint ptr %lmdesc1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmdesc1.i, align 4
  %add.ptr.i = getelementptr %struct.rz_lmdesc, ptr %13, i32 64
  %cmp.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  %spec.select.i = select i1 %cmp.not.i, ptr %incdec.ptr.i, ptr %13
  %14 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spec.select.i, align 4
  %and.i81 = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.rz_dmac_lmdesc_recycle.exit_crit_edge

while.body.i.rz_dmac_lmdesc_recycle.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rz_dmac_lmdesc_recycle.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

rz_dmac_lmdesc_recycle.exit:                      ; preds = %while.body.i.rz_dmac_lmdesc_recycle.exit_crit_edge, %do.end23.rz_dmac_lmdesc_recycle.exit_crit_edge
  %lmdesc.0.lcssa.i = phi ptr [ %8, %do.end23.rz_dmac_lmdesc_recycle.exit_crit_edge ], [ %spec.select.i, %while.body.i.rz_dmac_lmdesc_recycle.exit_crit_edge ]
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lmdesc.0.lcssa.i, ptr %head.i, align 4
  %base_dma = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 17, i32 3
  %17 = ptrtoint ptr %base_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_dma, align 4
  %19 = ptrtoint ptr %lmdesc1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmdesc1.i, align 4
  %ch_base.i = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 1
  %21 = ptrtoint ptr %ch_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch_base.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %22, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #12, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !104
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %if.then28, label %rz_dmac_lmdesc_recycle.exit.do.body31_crit_edge

rz_dmac_lmdesc_recycle.exit.do.body31_crit_edge:  ; preds = %rz_dmac_lmdesc_recycle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

if.then28:                                        ; preds = %rz_dmac_lmdesc_recycle.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast = ptrtoint ptr %lmdesc.0.lcssa.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.sub = add i32 %18, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %chctrl29 = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 12
  %25 = ptrtoint ptr %chctrl29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chctrl29, align 4
  %or = or i32 %26, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  %28 = ptrtoint ptr %ch_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ch_base.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %27) #12, !srcloc !101
  %chcfg = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 11
  %30 = ptrtoint ptr %chcfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chcfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %33 = ptrtoint ptr %ch_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ch_base.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %32) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %ch_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ch_base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 134217728) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %38 = ptrtoint ptr %ch_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch_base.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %39, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %37) #12, !srcloc !101
  br label %do.body31

do.body31:                                        ; preds = %if.then28, %rz_dmac_lmdesc_recycle.exit.do.body31_crit_edge
  br i1 %tobool19.not, label %if.then40, label %do.body31.do.body42_crit_edge

do.body31.do.body42_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

if.then40:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body42

do.body42:                                        ; preds = %if.then40, %do.body31.do.body42_crit_edge
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !111
  %and.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool50.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool50.not, label %if.then59, label %do.body42.do.end62_crit_edge, !prof !96

do.body42.do.end62_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.then59:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body42.do.end62_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #12, !srcloc !112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rz_dmac_chan_filter(ptr nocapture noundef %chan, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %and = and i32 %3, 1023
  %mid_rid = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 13
  %4 = ptrtoint ptr %mid_rid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %mid_rid, align 4
  %5 = load i32, ptr %args, align 4
  %and6 = lshr i32 %5, 10
  %and7 = shl i32 %and6, 22
  %shl = and i32 %and7, 134217728
  %and8 = shl nuw nsw i32 %and6, 6
  %shl9 = and i32 %and8, 1792
  %or = or i32 %shl, %shl9
  %and10 = shl nuw nsw i32 %and6, 5
  %shl11 = and i32 %and10, 64
  %or12 = or i32 %or, %shl11
  %shl14 = and i32 %and10, 32
  %or15 = or i32 %or12, %shl14
  %chcfg = getelementptr inbounds %struct.rz_dmac_chan, ptr %chan, i32 0, i32 11
  %6 = ptrtoint ptr %chcfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or15, ptr %chcfg, align 4
  %modules = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef %and, ptr noundef %modules) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rz_dmac_disable_hw(ptr nocapture noundef readonly %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rz_dmac_disable_hw.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rz_dmac_disable_hw, %do.body7)) #12
          to label %if.then [label %do.body7], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rz_dmac, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rz_dmac_disable_hw.__UNIQUE_ID_ddebug240, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %5) #12
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !110
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not = icmp eq i32 %and.i, 0
  br i1 %tobool19.not, label %if.then20, label %do.body35.critedge

if.then20:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %ch_base.i.c = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 1
  %7 = ptrtoint ptr %ch_base.i.c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch_base.i.c, align 4
  %add.ptr.i.c = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.c, i32 2046951936) #12, !srcloc !101
  tail call void @trace_hardirqs_on() #12
  br label %do.body35

do.body35.critedge:                               ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %ch_base.i.c66 = getelementptr inbounds %struct.rz_dmac_chan, ptr %channel, i32 0, i32 1
  %9 = ptrtoint ptr %ch_base.i.c66 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch_base.i.c66, align 4
  %add.ptr.i.c67 = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.c67, i32 2046951936) #12, !srcloc !101
  br label %do.body35

do.body35:                                        ; preds = %do.body35.critedge, %if.then20
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !111
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool43.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool43.not, label %if.then52, label %do.body35.do.end55_crit_edge, !prof !96

do.body35.do.end55_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

if.then52:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body35.do.end55_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #12, !srcloc !112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_rz_dmac__242_979_rz_dmac_driver_init6, !1, !"__initcall__kmod_rz_dmac__242_979_rz_dmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/sh/rz-dmac.c", i32 979, i32 1}
!2 = !{ptr @__exitcall_rz_dmac_driver_exit, !1, !"__exitcall_rz_dmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../drivers/dma/sh/rz-dmac.c", i32 981, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../drivers/dma/sh/rz-dmac.c", i32 982, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../drivers/dma/sh/rz-dmac.c", i32 983, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/sh/rz-dmac.c", i32 972, i32 11}
!12 = !{ptr @rz_dmac_driver, !13, !"rz_dmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/sh/rz-dmac.c", i32 970, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/sh/rz-dmac.c", i32 827, i32 24}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/sh/rz-dmac.c", i32 868, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rz_dmac_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rz_dmac_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/sh/rz-dmac.c", i32 879, i32 3}
!26 = !{ptr @rz_dmac_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rz_dmac_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/sh/rz-dmac.c", i32 918, i32 3}
!30 = !{ptr @rz_dmac_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rz_dmac_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/sh/rz-dmac.c", i32 811, i32 33}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/sh/rz-dmac.c", i32 813, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rz_dmac_parse_of._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rz_dmac_parse_of._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/sh/rz-dmac.c", i32 818, i32 3}
!41 = !{ptr @rz_dmac_parse_of._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rz_dmac_parse_of._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/sh/rz-dmac.c", i32 646, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rz_dmac_irq_handle_channel._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rz_dmac_irq_handle_channel._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/sh/rz-dmac.c", i32 753, i32 24}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/sh/rz-dmac.c", i32 758, i32 50}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/sh/rz-dmac.c", i32 768, i32 3}
!54 = !{ptr @rz_dmac_chan_probe._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rz_dmac_chan_probe._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/sh/rz-dmac.c", i32 789, i32 3}
!58 = !{ptr @rz_dmac_chan_probe._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rz_dmac_chan_probe._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/sh/../virt-dma.h", i32 101, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !61, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/sh/rz-dmac.c", i32 260, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rz_dmac_enable_hw.__UNIQUE_ID_ddebug239, !67, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/sh/rz-dmac.c", i32 288, i32 2}
!72 = !{ptr @rz_dmac_disable_hw.__UNIQUE_ID_ddebug240, !71, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/sh/rz-dmac.c", i32 477, i32 2}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rz_dmac_prep_dma_memcpy.__UNIQUE_ID_ddebug241, !74, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!77 = distinct !{null, !78, !"ds_lut", i1 false, i1 false}
!78 = !{!"../drivers/dma/sh/rz-dmac.c", i32 577, i32 39}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/sh/rz-dmac.c", i32 563, i32 5}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rz_dmac_issue_pending._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @rz_dmac_issue_pending._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @of_rz_dmac_match, !86, !"of_rz_dmac_match", i1 false, i1 false}
!86 = !{!"../drivers/dma/sh/rz-dmac.c", i32 964, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2148530832}
!98 = !{i64 1017432, i64 1017457, i64 1017479, i64 1017495, i64 1017507, i64 1017527, i64 1017551, i64 1017567, i64 1017579}
!99 = !{i64 2148531020}
!100 = !{i64 2154445376}
!101 = !{i64 6239871}
!102 = !{i64 2154444066}
!103 = !{i64 6240289}
!104 = !{i64 2154446490}
!105 = !{i64 2154387659}
!106 = !{i64 2148344806, i64 2148344811, i64 2148344824, i64 2148344868, i64 2148344902, i64 2148344923}
!107 = !{i64 2154386153, i64 2154386646, i64 2154386190, i64 2154386246, i64 2154386280, i64 2154386304, i64 2154386345, i64 2154386366, i64 2154386394, i64 2154386428}
!108 = !{i64 2154445154}
!109 = !{i64 2154444463}
!110 = !{i64 925671, i64 925732}
!111 = !{i64 928403}
!112 = !{i64 928688}
