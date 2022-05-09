; ModuleID = '/llk/IR_all_yes/drivers/dma/dma-axi-dmac.c_pt.bc'
source_filename = "../drivers/dma/dma-axi-dmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.axi_dmac = type { ptr, i32, ptr, %struct.dma_device, %struct.axi_dmac_chan }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.axi_dmac_chan = type { %struct.virt_dma_chan, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.axi_dmac_desc = type { %struct.virt_dma_desc, i8, i8, i32, i32, i32, [0 x %struct.axi_dmac_sg] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.axi_dmac_sg = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }

@__initcall__kmod_dma_axi_dmac__262_1046_axi_dmac_driver_init6 = internal global ptr @axi_dmac_driver_init, section ".initcall6.init", align 4
@axi_dmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axi_dmac_probe, ptr @axi_dmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axi_dmac_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axi_dmac_driver_exit = internal global ptr @axi_dmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author263 = internal constant [57 x i8] c"dma_axi_dmac.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [75 x i8] c"dma_axi_dmac.description=DMA controller driver for the AXI-DMAC controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file265 = internal constant [43 x i8] c"dma_axi_dmac.file=drivers/dma/dma-axi-dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [28 x i8] c"dma_axi_dmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-axi-dmac\00", [19 x i8] zeroinitializer }, align 32
@axi_dmac_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,axi-dmac-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@axi_dmac_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@axi_dmac_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @axi_dmac_regmap_rdwr, ptr @axi_dmac_regmap_rdwr, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1104, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dma_axi_dmac:999:(&axi_dmac_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@axi_dmac_read_chan_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 820, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DMA interface register reads zero\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"axi_dmac_read_chan_config\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/dma/dma-axi-dmac.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axi_dmac_read_chan_config._entry_ptr = internal global ptr @axi_dmac_read_chan_config._entry, section ".printk_index", align 4
@axi_dmac_read_chan_config._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 826, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid source bus type read: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@axi_dmac_read_chan_config._entry_ptr.9 = internal global ptr @axi_dmac_read_chan_config._entry.7, section ".printk_index", align 4
@axi_dmac_read_chan_config._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 833, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid destination bus type read: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@axi_dmac_read_chan_config._entry_ptr.12 = internal global ptr @axi_dmac_read_chan_config._entry.10, section ".printk_index", align 4
@axi_dmac_read_chan_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 840, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Source bus width is zero\0A\00", [38 x i8] zeroinitializer }, align 32
@axi_dmac_read_chan_config._entry_ptr.15 = internal global ptr @axi_dmac_read_chan_config._entry.13, section ".printk_index", align 4
@axi_dmac_read_chan_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 848, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Destination bus width is zero\0A\00", [33 x i8] zeroinitializer }, align 32
@axi_dmac_read_chan_config._entry_ptr.18 = internal global ptr @axi_dmac_read_chan_config._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adi,channels\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adi,source-bus-type\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adi,destination-bus-type\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,source-bus-width\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,destination-bus-width\00", [38 x i8] zeroinitializer }, align 32
@axi_dmac_detect_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 879, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Destination memory-mapped interface not supported.\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"axi_dmac_detect_caps\00", [43 x i8] zeroinitializer }, align 32
@axi_dmac_detect_caps._entry_ptr = internal global ptr @axi_dmac_detect_caps._entry, section ".printk_index", align 4
@axi_dmac_detect_caps._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 887, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Source memory-mapped interface not supported.\00", [50 x i8] zeroinitializer }, align 32
@axi_dmac_detect_caps._entry_ptr.29 = internal global ptr @axi_dmac_detect_caps._entry.27, section ".printk_index", align 4
@axi_dmac_dequeue_partial_xfers.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma_axi_dmac\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"axi_dmac_dequeue_partial_xfers\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Found partial segment id=%u, len=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@axi_dmac_dequeue_partial_xfers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 326, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Not found partial segment id=%u, len=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@axi_dmac_dequeue_partial_xfers._entry_ptr = internal global ptr @axi_dmac_dequeue_partial_xfers._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.35, ptr @.str.36, ptr @.str.37, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 128, i64 132, i64 136, i64 1024, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1052, i64 1056, i64 1060, i64 1064, i64 1068, i64 1072, i64 1076, i64 1080, i64 1100, i64 1104]
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"axi_dmac_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1038, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1040, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"axi_dmac_of_match_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1032, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"axi_dmac_regmap_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 720, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 998, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 820, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 826, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 833, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 840, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 848, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 796, i32 51 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 754, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 762, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 769, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 776, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 781, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 878, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 886, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 320, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private constant [30 x i8] c"../drivers/dma/dma-axi-dmac.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 324, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 101, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__exitcall_axi_dmac_driver_exit, ptr @__initcall__kmod_dma_axi_dmac__262_1046_axi_dmac_driver_init6, ptr @axi_dmac_dequeue_partial_xfers._entry, ptr @axi_dmac_dequeue_partial_xfers._entry_ptr, ptr @axi_dmac_detect_caps._entry, ptr @axi_dmac_detect_caps._entry.27, ptr @axi_dmac_detect_caps._entry_ptr, ptr @axi_dmac_detect_caps._entry_ptr.29, ptr @axi_dmac_driver_exit, ptr @axi_dmac_read_chan_config._entry, ptr @axi_dmac_read_chan_config._entry.10, ptr @axi_dmac_read_chan_config._entry.13, ptr @axi_dmac_read_chan_config._entry.16, ptr @axi_dmac_read_chan_config._entry.7, ptr @axi_dmac_read_chan_config._entry_ptr, ptr @axi_dmac_read_chan_config._entry_ptr.12, ptr @axi_dmac_read_chan_config._entry_ptr.15, ptr @axi_dmac_read_chan_config._entry_ptr.18, ptr @axi_dmac_read_chan_config._entry_ptr.9, ptr @axi_dmac_driver, ptr @.str, ptr @axi_dmac_of_match_table, ptr @axi_dmac_probe._key, ptr @axi_dmac_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_read_chan_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_read_chan_config._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_read_chan_config._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_read_chan_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_read_chan_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_detect_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_detect_caps._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_dmac_dequeue_partial_xfers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_dmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axi_dmac_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axi_dmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @axi_dmac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_dmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 604, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp7 = icmp eq i32 %call1, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #9
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call12, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call20, ptr %clk, align 4
  %cmp.i172 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call.i173 = tail call i32 @clk_prepare(ptr noundef %call20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool.not.i = icmp eq i32 %call.i173, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.clk_prepare_enable.exit_crit_edge

if.end26.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %call20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end31_crit_edge, label %if.then3.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call20) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end26.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i173, %if.end26.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp29 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp29, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end31_crit_edge

clk_prepare_enable.exit.if.end31_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %clk_prepare_enable.exit.if.end31_crit_edge, %if.end.i.if.end31_crit_edge
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !90
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 263008, i32 %8)
  %cmp33 = icmp ugt i32 %8, 263008
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call fastcc i32 @axi_dmac_read_chan_config(ptr noundef %dev, ptr noundef nonnull %call.i)
  br label %if.end39

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call fastcc i32 @axi_dmac_parse_dt(ptr noundef %dev, ptr noundef nonnull %call.i)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then34
  %ret.0 = phi i32 [ %call36, %if.then34 ], [ %call38, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp40 = icmp slt i32 %ret.0, 0
  br i1 %cmp40, label %if.end39.err_clk_disable_crit_edge, label %if.end42

if.end39.err_clk_disable_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_disable

if.end42:                                         ; preds = %if.end39
  %chan = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4
  %active_descs = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %active_descs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %active_descs, ptr %active_descs, align 4
  %prev.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %active_descs, ptr %prev.i, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %11 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i174 = icmp eq ptr %12, null
  br i1 %tobool.not.i174, label %if.end42.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end42.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end42.dma_set_max_seg_size.exit_crit_edge
  %dma_dev45 = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3
  %cap_mask = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask) #9
  %device_free_chan_resources = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 29
  %14 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @axi_dmac_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 49
  %15 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 50
  %16 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @axi_dmac_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 39
  %17 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @axi_dmac_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 40
  %18 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @axi_dmac_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_interleaved_dma = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 41
  %19 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @axi_dmac_prep_interleaved, ptr %device_prep_interleaved_dma, align 4
  %device_terminate_all = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 47
  %20 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @axi_dmac_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 48
  %21 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @axi_dmac_synchronize, ptr %device_synchronize, align 4
  %dev49 = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 15
  %22 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev49, align 4
  %chancnt = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %chancnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %chancnt, align 4
  %src_width = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_width, align 4
  %shl = shl nuw i32 1, %25
  %src_addr_widths = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 19
  %26 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl, ptr %src_addr_widths, align 4
  %dest_width = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 5
  %27 = ptrtoint ptr %dest_width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dest_width, align 4
  %shl52 = shl nuw i32 1, %28
  %dst_addr_widths = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 20
  %29 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl52, ptr %dst_addr_widths, align 4
  %direction = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %direction, align 4
  %shl54 = shl nuw i32 1, %31
  %directions = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 21
  %32 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl54, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 26
  %33 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %residue_granularity, align 4
  %channels = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i175 = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %35 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %channels, ptr %prev.i175, align 4
  %desc_free = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %36 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @axi_dmac_desc_free, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %chan, ptr noundef %dma_dev45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !93
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %40, i32 1036
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %41)
  %cmp.i176 = icmp eq i32 %41, 16777216
  br i1 %cmp.i176, label %if.then.i177, label %dma_set_max_seg_size.exit.if.end.i178_crit_edge

dma_set_max_seg_size.exit.if.end.i178_crit_edge:  ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i178

if.then.i177:                                     ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hw_cyclic.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 12
  %42 = ptrtoint ptr %hw_cyclic.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %hw_cyclic.i, align 1
  br label %if.end.i178

if.end.i178:                                      ; preds = %if.then.i177, %dma_set_max_seg_size.exit.if.end.i178_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %44, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 16777216) #9, !srcloc !93
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %46, i32 1052
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %47)
  %cmp3.i = icmp eq i32 %47, 16777216
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i178.if.end5.i_crit_edge

if.end.i178.if.end5.i_crit_edge:                  ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #11
  %hw_2d.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 13
  %48 = ptrtoint ptr %hw_2d.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %hw_2d.i, align 2
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i178.if.end5.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %50, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 -1) #9, !srcloc !93
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %52, i32 1048
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #9, !srcloc !90
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %max_length.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp8.not.i = icmp eq i32 %53, -1
  %inc.i = add i32 %54, 1
  %spec.select.i = select i1 %cmp8.not.i, i32 -1, i32 %inc.i
  %55 = ptrtoint ptr %max_length.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select.i, ptr %max_length.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %57, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 -1) #9, !srcloc !93
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %59, i32 1040
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp13.i = icmp eq i32 %60, 0
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end5.i.if.end16.i_crit_edge

if.end5.i.if.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %dest_type.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 7
  %61 = ptrtoint ptr %dest_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dest_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp14.i = icmp eq i32 %62, 0
  br i1 %cmp14.i, label %do.end.i, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.25) #12
  br label %err_clk_disable

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.end5.i.if.end16.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %66, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 -1) #9, !srcloc !93
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %68, i32 1044
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp18.i = icmp eq i32 %69, 0
  br i1 %cmp18.i, label %land.lhs.true19.i, label %if.end16.i.if.end27.i_crit_edge

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

land.lhs.true19.i:                                ; preds = %if.end16.i
  %src_type.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 6
  %70 = ptrtoint ptr %src_type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp20.i = icmp eq i32 %71, 0
  br i1 %cmp20.i, label %do.end24.i, label %land.lhs.true19.i.if.end27.i_crit_edge

land.lhs.true19.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

do.end24.i:                                       ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.28) #12
  br label %err_clk_disable

if.end27.i:                                       ; preds = %land.lhs.true19.i.if.end27.i_crit_edge, %if.end16.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 262752, i32 %8)
  %cmp28.i = icmp ugt i32 %8, 262752
  br i1 %cmp28.i, label %if.end30.thread.i, label %if.end30.i

if.end30.thread.i:                                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw_partial_xfer.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 11
  %74 = ptrtoint ptr %hw_partial_xfer.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %hw_partial_xfer.i, align 4
  br label %if.then32.i

if.end30.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 262496, i32 %8)
  %cmp31.i = icmp ugt i32 %8, 262496
  br i1 %cmp31.i, label %if.end30.i.if.then32.i_crit_edge, label %if.else.i

if.end30.i.if.then32.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i.if.then32.i_crit_edge, %if.end30.thread.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %76, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 0) #9, !srcloc !93
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %78, i32 1048
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #9, !srcloc !90
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  br label %if.end61

if.else.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %address_align_mask.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 9
  %81 = ptrtoint ptr %address_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %address_align_mask.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else.i, %if.then32.i
  %.sink = phi i32 [ %82, %if.else.i ], [ %80, %if.then32.i ]
  %length_align_mask34.i = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 10
  %83 = ptrtoint ptr %length_align_mask34.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.sink, ptr %length_align_mask34.i, align 4
  %address_align_mask = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 4, i32 9
  %84 = ptrtoint ptr %address_align_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %address_align_mask, align 4
  %add = add i32 %85, 1
  %copy_align = getelementptr inbounds %struct.axi_dmac, ptr %call.i, i32 0, i32 3, i32 10
  %86 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add, ptr %copy_align, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %88, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !93
  %call63 = tail call i32 @dma_async_device_register(ptr noundef %dma_dev45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end61.err_clk_disable_crit_edge

if.end61.err_clk_disable_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_disable

if.end66:                                         ; preds = %if.end61
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %89 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %of_node, align 8
  %call68 = tail call i32 @of_dma_controller_register(ptr noundef %90, ptr noundef nonnull @of_dma_xlate_by_chan_id, ptr noundef %dma_dev45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.err_unregister_device_crit_edge

if.end66.err_unregister_device_crit_edge:         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister_device

if.end71:                                         ; preds = %if.end66
  %91 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %93 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i180 = icmp eq ptr %94, null
  br i1 %tobool.not.i180, label %if.end.i181, label %if.end71.dev_name.exit_crit_edge

if.end71.dev_name.exit_crit_edge:                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i181:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i181, %if.end71.dev_name.exit_crit_edge
  %retval.0.i182 = phi ptr [ %96, %if.end.i181 ], [ %94, %if.end71.dev_name.exit_crit_edge ]
  %call.i183 = tail call i32 @request_threaded_irq(i32 noundef %92, ptr noundef nonnull @axi_dmac_interrupt_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i182, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool76.not = icmp eq i32 %call.i183, 0
  br i1 %tobool76.not, label %if.end78, label %dev_name.exit.err_unregister_of_crit_edge

dev_name.exit.err_unregister_of_crit_edge:        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unregister_of

if.end78:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %97 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  %call81 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %99, ptr noundef nonnull @axi_dmac_regmap_config, ptr noundef nonnull @axi_dmac_probe._key, ptr noundef nonnull @.str.1) #9
  %cmp.i184 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then83, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %call81 to i32
  %101 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %irq, align 4
  %call87 = tail call ptr @free_irq(i32 noundef %102, ptr noundef nonnull %call.i) #9
  br label %err_unregister_of

err_unregister_of:                                ; preds = %if.then83, %dev_name.exit.err_unregister_of_crit_edge
  %ret.1 = phi i32 [ %call.i183, %dev_name.exit.err_unregister_of_crit_edge ], [ %100, %if.then83 ]
  %103 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %104) #9
  br label %err_unregister_device

err_unregister_device:                            ; preds = %err_unregister_of, %if.end66.err_unregister_device_crit_edge
  %ret.2 = phi i32 [ %call68, %if.end66.err_unregister_device_crit_edge ], [ %ret.1, %err_unregister_of ]
  tail call void @dma_async_device_unregister(ptr noundef %dma_dev45) #9
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_unregister_device, %if.end61.err_clk_disable_crit_edge, %do.end24.i, %do.end.i, %if.end39.err_clk_disable_crit_edge
  %ret.3 = phi i32 [ %ret.0, %if.end39.err_clk_disable_crit_edge ], [ %call63, %if.end61.err_clk_disable_crit_edge ], [ %ret.2, %err_unregister_device ], [ -19, %do.end.i ], [ -19, %do.end24.i ]
  %105 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %106) #9
  tail call void @clk_unprepare(ptr noundef %106) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.end78.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then23, %if.then15, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then15 ], [ %4, %if.then23 ], [ %ret.3, %err_clk_disable ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_dmac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %irq = getelementptr inbounds %struct.axi_dmac, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #9
  %task = getelementptr inbounds %struct.axi_dmac, ptr %1, i32 0, i32 4, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #9
  %dma_dev = getelementptr inbounds %struct.axi_dmac, ptr %1, i32 0, i32 3
  tail call void @dma_async_device_unregister(ptr noundef %dma_dev) #9
  %clk = getelementptr inbounds %struct.axi_dmac, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axi_dmac_read_chan_config(ptr noundef %dev, ptr nocapture noundef %dmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !90
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end, label %do.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

do.end16:                                         ; preds = %entry
  %and = lshr i32 %3, 12
  %shr = and i32 %and, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp17 = icmp eq i32 %shr, 3
  br i1 %cmp17, label %do.end21, label %if.end22

do.end21:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 3) #12
  br label %cleanup

if.end22:                                         ; preds = %do.end16
  %src_type = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %src_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %src_type, align 4
  %and39 = lshr i32 %3, 4
  %shr40 = and i32 %and39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr40)
  %cmp41 = icmp eq i32 %shr40, 3
  br i1 %cmp41, label %do.end45, label %if.end46

do.end45:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 3) #12
  br label %cleanup

if.end46:                                         ; preds = %if.end22
  %dest_type = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %dest_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr40, ptr %dest_type, align 4
  %and63 = lshr i32 %3, 8
  %shr64 = and i32 %and63, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr64)
  %cmp65 = icmp eq i32 %shr64, 0
  br i1 %cmp65, label %do.end69, label %if.end70

do.end69:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end70:                                         ; preds = %if.end46
  %shl = shl nuw nsw i32 1, %shr64
  %src_width = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %src_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %src_width, align 4
  %and87 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %cmp89 = icmp eq i32 %and87, 0
  br i1 %cmp89, label %do.end93, label %if.end94

do.end93:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end94:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %shl95 = shl nuw nsw i32 1, %and87
  %dest_width = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %dest_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl95, ptr %dest_width, align 4
  %8 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_width, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %shl95, i32 %9) #9
  %sub.i = add i32 %10, -1
  %address_align_mask.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 9
  %11 = ptrtoint ptr %address_align_mask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %address_align_mask.i, align 4
  %12 = ptrtoint ptr %dest_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dest_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %src_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i37.not.i = icmp eq i32 %15, 0
  %spec.select = select i1 %cmp.i37.not.i, i32 0, i32 2
  %spec.select120 = select i1 %cmp.i37.not.i, i32 1, i32 3
  %.sink.i = select i1 %cmp.i.not.i, i32 %spec.select, i32 %spec.select120
  %direction9.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %direction9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %direction9.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end93, %do.end69, %do.end45, %do.end21, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -22, %do.end21 ], [ -22, %do.end45 ], [ -22, %do.end69 ], [ -22, %do.end93 ], [ 0, %if.end94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axi_dmac_parse_dt(ptr nocapture noundef readonly %dev, ptr nocapture noundef %dmac) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.19) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #9
  %cmp2.not27 = icmp eq ptr %call1, null
  br i1 %cmp2.not27, label %if.end.cleanup.sink.split_crit_edge, label %for.body.lr.ph

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %src_type.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 6
  %dest_type.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 7
  %src_width.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 4
  %dest_width.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 5
  %address_align_mask.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 9
  %direction9.i = getelementptr inbounds %struct.axi_dmac, ptr %dmac, i32 0, i32 4, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %of_chan.028 = phi ptr [ %call1, %for.body.lr.ph ], [ %call6, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !94
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %of_chan.028, ptr noundef nonnull @.str.20, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body.axi_dmac_parse_chan_dt.exit_crit_edge

for.body.axi_dmac_parse_chan_dt.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge

if.end.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %call.i.i47.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %of_chan.028, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  %6 = call i32 @llvm.smin.i32(i32 %call.i.i47.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i47.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i47.i, -1
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end2.i.axi_dmac_parse_chan_dt.exit_crit_edge

if.end2.i.axi_dmac_parse_chan_dt.exit_crit_edge:  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit

if.end6.i:                                        ; preds = %if.end2.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp7.i = icmp ugt i32 %8, 2
  br i1 %cmp7.i, label %if.end6.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge, label %if.end9.i

if.end6.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit.thread

if.end9.i:                                        ; preds = %if.end6.i
  %9 = ptrtoint ptr %src_type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %src_type.i, align 4
  %call.i.i48.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %of_chan.028, ptr noundef nonnull @.str.22, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i48.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i48.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i48.i, -1
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.axi_dmac_parse_chan_dt.exit_crit_edge

if.end9.i.axi_dmac_parse_chan_dt.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit

if.end13.i:                                       ; preds = %if.end9.i
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp14.i = icmp ugt i32 %12, 2
  br i1 %cmp14.i, label %if.end13.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge, label %if.end16.i

if.end13.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit.thread

if.end16.i:                                       ; preds = %if.end13.i
  %13 = ptrtoint ptr %dest_type.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dest_type.i, align 4
  %call.i.i49.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %of_chan.028, ptr noundef nonnull @.str.23, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  %14 = call i32 @llvm.smin.i32(i32 %call.i.i49.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i49.i)
  %tobool18.not.i = icmp sgt i32 %call.i.i49.i, -1
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.axi_dmac_parse_chan_dt.exit_crit_edge

if.end16.i.axi_dmac_parse_chan_dt.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit

if.end20.i:                                       ; preds = %if.end16.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  %div45.i = lshr i32 %16, 3
  %17 = ptrtoint ptr %src_width.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div45.i, ptr %src_width.i, align 4
  %call.i.i50.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %of_chan.028, ptr noundef nonnull @.str.24, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  %18 = call i32 @llvm.smin.i32(i32 %call.i.i50.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i50.i)
  %tobool22.not.i = icmp sgt i32 %call.i.i50.i, -1
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.axi_dmac_parse_chan_dt.exit_crit_edge

if.end20.i.axi_dmac_parse_chan_dt.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_parse_chan_dt.exit

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %div2546.i = lshr i32 %20, 3
  %21 = ptrtoint ptr %dest_width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div2546.i, ptr %dest_width.i, align 4
  %22 = ptrtoint ptr %src_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_width.i, align 4
  %24 = call i32 @llvm.umax.i32(i32 %div2546.i, i32 %23) #9
  %sub.i = add i32 %24, -1
  %25 = ptrtoint ptr %address_align_mask.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i, ptr %address_align_mask.i, align 4
  %26 = ptrtoint ptr %dest_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dest_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.not.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %src_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i37.not.i = icmp eq i32 %29, 0
  %spec.select = select i1 %cmp.i37.not.i, i32 0, i32 2
  %spec.select23 = select i1 %cmp.i37.not.i, i32 1, i32 3
  %.sink.i = select i1 %cmp.i.not.i, i32 %spec.select, i32 %spec.select23
  %30 = ptrtoint ptr %direction9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %direction9.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %for.inc

axi_dmac_parse_chan_dt.exit.thread:               ; preds = %if.end13.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge, %if.end6.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge, %if.end.i.axi_dmac_parse_chan_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.then4

axi_dmac_parse_chan_dt.exit:                      ; preds = %if.end20.i.axi_dmac_parse_chan_dt.exit_crit_edge, %if.end16.i.axi_dmac_parse_chan_dt.exit_crit_edge, %if.end9.i.axi_dmac_parse_chan_dt.exit_crit_edge, %if.end2.i.axi_dmac_parse_chan_dt.exit_crit_edge, %for.body.axi_dmac_parse_chan_dt.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %for.body.axi_dmac_parse_chan_dt.exit_crit_edge ], [ %6, %if.end2.i.axi_dmac_parse_chan_dt.exit_crit_edge ], [ %10, %if.end9.i.axi_dmac_parse_chan_dt.exit_crit_edge ], [ %14, %if.end16.i.axi_dmac_parse_chan_dt.exit_crit_edge ], [ %18, %if.end20.i.axi_dmac_parse_chan_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %axi_dmac_parse_chan_dt.exit.for.inc_crit_edge, label %axi_dmac_parse_chan_dt.exit.if.then4_crit_edge

axi_dmac_parse_chan_dt.exit.if.then4_crit_edge:   ; preds = %axi_dmac_parse_chan_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

axi_dmac_parse_chan_dt.exit.for.inc_crit_edge:    ; preds = %axi_dmac_parse_chan_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %axi_dmac_parse_chan_dt.exit.if.then4_crit_edge, %axi_dmac_parse_chan_dt.exit.thread
  call void @of_node_put(ptr noundef nonnull %of_chan.028) #9
  br label %cleanup.sink.split

for.inc:                                          ; preds = %axi_dmac_parse_chan_dt.exit.for.inc_crit_edge, %if.end24.i
  %call6 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %of_chan.028) #9
  %cmp2.not = icmp eq ptr %call6, null
  br i1 %cmp2.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.then4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.then4 ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %for.inc.cleanup.sink.split_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axi_dmac_free_chan_resources(ptr noundef %c) #2 align 64 {
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
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
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
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
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
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
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
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
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
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
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
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
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
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
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
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
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
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
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
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
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
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axi_dmac_issue_pending(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %3, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 16777216) #9, !srcloc !93
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %4 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
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

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %15, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %if.then

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @axi_dmac_start_transfer(ptr noundef %c)
  br label %if.end

if.end:                                           ; preds = %if.then, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @axi_dmac_prep_slave_sg(ptr noundef %c, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %direction1 = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %direction1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %direction)
  %cmp.not = icmp eq i32 %1, %direction
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp263.not = icmp eq i32 %sg_len, 0
  br i1 %cmp263.not, label %for.cond.preheader.if.end8.i.i.i_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end8.i.i.i_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_length = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %num_sgs.065 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %for.body.for.body_crit_edge ]
  %sg.064 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call5, %for.body.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.064, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length, align 4
  %4 = ptrtoint ptr %max_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_length, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %5
  %div = udiv i32 %sub, %5
  %add4 = add i32 %div, %num_sgs.065
  %inc = add nuw i32 %i.066, 1
  %call5 = tail call ptr @sg_next(ptr noundef %sg.064) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.body.if.end8.i.i.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end8.i.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %for.body.if.end8.i.i.i_crit_edge, %for.cond.preheader.if.end8.i.i.i_crit_edge
  %num_sgs.0.lcssa = phi i32 [ 0, %for.cond.preheader.if.end8.i.i.i_crit_edge ], [ %add4, %for.body.if.end8.i.i.i_crit_edge ]
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_sgs.0.lcssa, i32 36) #9
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 132) #9
  %retval.0.i.i = select i1 %7, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 2304) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sgs.0.lcssa)
  %cmp11.not.i = icmp eq i32 %num_sgs.0.lcssa, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.if.end8_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end8_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 6, i32 %i.012.i, i32 6
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %id.i, align 4
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_sgs.0.lcssa
  br i1 %exitcond.not.i, label %for.body.i.if.end8_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %for.body.i.if.end8_crit_edge, %for.cond.preheader.i.if.end8_crit_edge
  %num_sgs.0.lcssa.sink = phi i32 [ 0, %for.cond.preheader.i.if.end8_crit_edge ], [ %num_sgs.0.lcssa, %for.body.i.if.end8_crit_edge ]
  %num_sgs2.i = getelementptr inbounds %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %num_sgs2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %num_sgs.0.lcssa.sink, ptr %num_sgs2.i, align 128
  br i1 %cmp263.not, label %if.end8.for.end24_crit_edge, label %for.body12.lr.ph

if.end8.for.end24_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.body12.lr.ph:                                 ; preds = %if.end8
  %sg9 = getelementptr inbounds %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 6
  %address_align_mask.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 9
  %length_align_mask.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 10
  %max_length.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp8.i = icmp eq i32 %direction, 2
  br label %for.body12

for.body12:                                       ; preds = %while.end.i.for.body12_crit_edge, %for.body12.lr.ph
  %i.170 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc22, %while.end.i.for.body12_crit_edge ]
  %sg.169 = phi ptr [ %sgl, %for.body12.lr.ph ], [ %call23, %while.end.i.for.body12_crit_edge ]
  %dsg.068 = phi ptr [ %sg9, %for.body12.lr.ph ], [ %incdec.ptr19.i, %while.end.i.for.body12_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.169, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %13 = ptrtoint ptr %address_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address_align_mask.i, align 4
  %and.i = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false, label %for.body12.if.then16_crit_edge

for.body12.if.then16_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

lor.lhs.false:                                    ; preds = %for.body12
  %dma_length14 = getelementptr inbounds %struct.scatterlist, ptr %sg.169, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %lor.lhs.false.if.then16_crit_edge, label %axi_dmac_check_len.exit

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

axi_dmac_check_len.exit:                          ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %length_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length_align_mask.i, align 4
  %and.i54 = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %cmp1.not.i = icmp eq i32 %and.i54, 0
  br i1 %cmp1.not.i, label %if.end17, label %axi_dmac_check_len.exit.if.then16_crit_edge

axi_dmac_check_len.exit.if.then16_crit_edge:      ; preds = %axi_dmac_check_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %axi_dmac_check_len.exit.if.then16_crit_edge, %lor.lhs.false.if.then16_crit_edge, %for.body12.if.then16_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %cleanup

if.end17:                                         ; preds = %axi_dmac_check_len.exit
  %19 = ptrtoint ptr %max_length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_length.i, align 4
  %add.i = add i32 %16, -1
  %sub.i = add i32 %20, %add.i
  %div.i = udiv i32 %sub.i, %20
  %sub3.i = add i32 %div.i, %add.i
  %div4.i = udiv i32 %sub3.i, %div.i
  %sub5.i = add i32 %div4.i, -1
  %21 = ptrtoint ptr %length_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length_align_mask.i, align 4
  %or.i = or i32 %sub5.i, %22
  %add6.i = add i32 %or.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %16)
  %cmp750.i = icmp ult i32 %add6.i, %16
  br i1 %cmp750.i, label %if.end17.while.body.i_crit_edge, label %if.end17.while.end.i_crit_edge

if.end17.while.end.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end17.while.body.i_crit_edge:                  ; preds = %if.end17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end17.while.body.i_crit_edge
  %len.055.i = phi i32 [ %sub10.i, %while.body.i.while.body.i_crit_edge ], [ %16, %if.end17.while.body.i_crit_edge ]
  %addr.addr.153.i = phi i32 [ %add9.i, %while.body.i.while.body.i_crit_edge ], [ %12, %if.end17.while.body.i_crit_edge ]
  %sg.addr.151.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %dsg.068, %if.end17.while.body.i_crit_edge ]
  %dest_addr.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 0, i32 1
  %sg.addr.151.sink.i = select i1 %cmp8.i, ptr %dest_addr.i, ptr %sg.addr.151.i
  %23 = ptrtoint ptr %sg.addr.151.sink.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %addr.addr.153.i, ptr %sg.addr.151.sink.i, align 4
  %x_len.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 0, i32 2
  %24 = ptrtoint ptr %x_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add6.i, ptr %x_len.i, align 4
  %y_len.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 0, i32 3
  %25 = ptrtoint ptr %y_len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %y_len.i, align 4
  %incdec.ptr.i = getelementptr %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 1
  %add9.i = add i32 %addr.addr.153.i, %add6.i
  %sub10.i = sub i32 %len.055.i, %add6.i
  %cmp7.i = icmp ugt i32 %sub10.i, %add6.i
  br i1 %cmp7.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end17.while.end.i_crit_edge
  %sg.addr.1.lcssa.i = phi ptr [ %dsg.068, %if.end17.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %addr.addr.1.lcssa.i = phi i32 [ %12, %if.end17.while.end.i_crit_edge ], [ %add9.i, %while.body.i.while.end.i_crit_edge ]
  %len.0.lcssa.i = phi i32 [ %16, %if.end17.while.end.i_crit_edge ], [ %sub10.i, %while.body.i.while.end.i_crit_edge ]
  %dest_addr13.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 0, i32 1
  %sg.addr.1.lcssa.sink.i = select i1 %cmp8.i, ptr %dest_addr13.i, ptr %sg.addr.1.lcssa.i
  %26 = ptrtoint ptr %sg.addr.1.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %addr.addr.1.lcssa.i, ptr %sg.addr.1.lcssa.sink.i, align 4
  %x_len17.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 0, i32 2
  %27 = ptrtoint ptr %x_len17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %len.0.lcssa.i, ptr %x_len17.i, align 4
  %y_len18.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 0, i32 3
  %28 = ptrtoint ptr %y_len18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %y_len18.i, align 4
  %incdec.ptr19.i = getelementptr %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 1
  %inc22 = add nuw i32 %i.170, 1
  %call23 = tail call ptr @sg_next(ptr noundef %sg.169) #9
  %exitcond71.not = icmp eq i32 %inc22, %sg_len
  br i1 %exitcond71.not, label %while.end.i.for.end24_crit_edge, label %while.end.i.for.body12_crit_edge

while.end.i.for.body12_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

while.end.i.for.end24_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.end24:                                        ; preds = %while.end.i.for.end24_crit_edge, %if.end8.for.end24_crit_edge
  %cyclic = getelementptr inbounds %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %cyclic, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i.i, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %36, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i59, label %for.end24.vchan_tx_prep.exit_crit_edge

for.end24.vchan_tx_prep.exit_crit_edge:           ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i59:                                   ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %node.i, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 16
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %node.i, ptr %36, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i59, %for.end24.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then16, %if.end8.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then16 ], [ %call9.i.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @axi_dmac_prep_dma_cyclic(ptr noundef %c, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %direction1 = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %direction1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %direction)
  %cmp.not = icmp ne i32 %1, %direction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp.i = icmp eq i32 %buf_len, 0
  %or.cond48 = or i1 %cmp.i, %cmp.not
  br i1 %or.cond48, label %entry.cleanup_crit_edge, label %axi_dmac_check_len.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

axi_dmac_check_len.exit:                          ; preds = %entry
  %length_align_mask.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 10
  %2 = ptrtoint ptr %length_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_align_mask.i, align 4
  %and.i = and i32 %3, %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.not.i, label %lor.lhs.false, label %axi_dmac_check_len.exit.cleanup_crit_edge

axi_dmac_check_len.exit.cleanup_crit_edge:        ; preds = %axi_dmac_check_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %axi_dmac_check_len.exit
  %address_align_mask.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 9
  %4 = ptrtoint ptr %address_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address_align_mask.i, align 4
  %and.i39 = and i32 %5, %buf_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %cmp.not.i = icmp ne i32 %and.i39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %cmp6 = icmp eq i32 %period_len, 0
  %or.cond = or i1 %cmp6, %cmp.not.i
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %div = udiv i32 %buf_len, %period_len
  %6 = mul i32 %div, %period_len
  %rem.decomposed = sub i32 %buf_len, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %if.end9, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false7
  %max_length = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 8
  %7 = ptrtoint ptr %max_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_length, align 4
  %add = add i32 %period_len, -1
  %sub = add i32 %add, %8
  %div11 = udiv i32 %sub, %8
  %mul = mul i32 %div11, %div
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 36) #9
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 132) #9
  %retval.0.i.i = select i1 %10, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 2304) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %for.cond.preheader.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp11.not.i = icmp eq i32 %mul, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.if.end15_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end15_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 6, i32 %i.012.i, i32 6
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %id.i, align 4
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i, label %for.body.i.if.end15_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end15_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %for.body.i.if.end15_crit_edge, %for.cond.preheader.i.if.end15_crit_edge
  %mul.sink = phi i32 [ 0, %for.cond.preheader.i.if.end15_crit_edge ], [ %mul, %for.body.i.if.end15_crit_edge ]
  %num_sgs2.i = getelementptr inbounds %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %num_sgs2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.sink, ptr %num_sgs2.i, align 128
  %14 = ptrtoint ptr %max_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_length, align 4
  %sub.i = add i32 %15, %add
  %div.i = udiv i32 %sub.i, %15
  %sub3.i = add i32 %div.i, %add
  %div4.i = udiv i32 %sub3.i, %div.i
  %sub5.i = add i32 %div4.i, -1
  %16 = ptrtoint ptr %length_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length_align_mask.i, align 4
  %or.i = or i32 %sub5.i, %17
  %add6.i = add i32 %or.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp58.not.i = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp58.not.i, label %if.end15.axi_dmac_fill_linear_sg.exit_crit_edge, label %while.cond.preheader.lr.ph.i

if.end15.axi_dmac_fill_linear_sg.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_fill_linear_sg.exit

while.cond.preheader.lr.ph.i:                     ; preds = %if.end15
  %sg = getelementptr inbounds %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %period_len)
  %cmp750.i = icmp ult i32 %add6.i, %period_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp8.i = icmp eq i32 %direction, 2
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.end.i.while.cond.preheader.i_crit_edge, %while.cond.preheader.lr.ph.i
  %i.061.i = phi i32 [ 0, %while.cond.preheader.lr.ph.i ], [ %inc.i41, %while.end.i.while.cond.preheader.i_crit_edge ]
  %addr.addr.060.i = phi i32 [ %buf_addr, %while.cond.preheader.lr.ph.i ], [ %add20.i, %while.end.i.while.cond.preheader.i_crit_edge ]
  %sg.addr.059.i = phi ptr [ %sg, %while.cond.preheader.lr.ph.i ], [ %incdec.ptr19.i, %while.end.i.while.cond.preheader.i_crit_edge ]
  br i1 %cmp750.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %len.055.i = phi i32 [ %sub10.i, %while.body.i.while.body.i_crit_edge ], [ %period_len, %while.cond.preheader.i.while.body.i_crit_edge ]
  %addr.addr.153.i = phi i32 [ %add9.i, %while.body.i.while.body.i_crit_edge ], [ %addr.addr.060.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %sg.addr.151.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %sg.addr.059.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dest_addr.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 0, i32 1
  %sg.addr.151.sink.i = select i1 %cmp8.i, ptr %dest_addr.i, ptr %sg.addr.151.i
  %18 = ptrtoint ptr %sg.addr.151.sink.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %addr.addr.153.i, ptr %sg.addr.151.sink.i, align 4
  %x_len.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 0, i32 2
  %19 = ptrtoint ptr %x_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add6.i, ptr %x_len.i, align 4
  %y_len.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 0, i32 3
  %20 = ptrtoint ptr %y_len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %y_len.i, align 4
  %incdec.ptr.i = getelementptr %struct.axi_dmac_sg, ptr %sg.addr.151.i, i32 1
  %add9.i = add i32 %addr.addr.153.i, %add6.i
  %sub10.i = sub i32 %len.055.i, %add6.i
  %cmp7.i = icmp ugt i32 %sub10.i, %add6.i
  br i1 %cmp7.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %sg.addr.1.lcssa.i = phi ptr [ %sg.addr.059.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %addr.addr.1.lcssa.i = phi i32 [ %addr.addr.060.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %add9.i, %while.body.i.while.end.i_crit_edge ]
  %len.0.lcssa.i = phi i32 [ %period_len, %while.cond.preheader.i.while.end.i_crit_edge ], [ %sub10.i, %while.body.i.while.end.i_crit_edge ]
  %dest_addr13.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 0, i32 1
  %sg.addr.1.lcssa.sink.i = select i1 %cmp8.i, ptr %dest_addr13.i, ptr %sg.addr.1.lcssa.i
  %21 = ptrtoint ptr %sg.addr.1.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %addr.addr.1.lcssa.i, ptr %sg.addr.1.lcssa.sink.i, align 4
  %x_len17.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 0, i32 2
  %22 = ptrtoint ptr %x_len17.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %len.0.lcssa.i, ptr %x_len17.i, align 4
  %y_len18.i = getelementptr inbounds %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 0, i32 3
  %23 = ptrtoint ptr %y_len18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %y_len18.i, align 4
  %incdec.ptr19.i = getelementptr %struct.axi_dmac_sg, ptr %sg.addr.1.lcssa.i, i32 1
  %add20.i = add i32 %len.0.lcssa.i, %addr.addr.1.lcssa.i
  %inc.i41 = add nuw i32 %i.061.i, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, %div
  br i1 %exitcond.not.i42, label %while.end.i.axi_dmac_fill_linear_sg.exit_crit_edge, label %while.end.i.while.cond.preheader.i_crit_edge

while.end.i.while.cond.preheader.i_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i

while.end.i.axi_dmac_fill_linear_sg.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_fill_linear_sg.exit

axi_dmac_fill_linear_sg.exit:                     ; preds = %while.end.i.axi_dmac_fill_linear_sg.exit_crit_edge, %if.end15.axi_dmac_fill_linear_sg.exit_crit_edge
  %cyclic = getelementptr inbounds %struct.axi_dmac_desc, ptr %call9.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %cyclic, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i.i, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %31, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i44, label %axi_dmac_fill_linear_sg.exit.vchan_tx_prep.exit_crit_edge

axi_dmac_fill_linear_sg.exit.vchan_tx_prep.exit_crit_edge: ; preds = %axi_dmac_fill_linear_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i44:                                   ; preds = %axi_dmac_fill_linear_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %node.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 16
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %node.i, ptr %31, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i44, %axi_dmac_fill_linear_sg.exit.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %axi_dmac_check_len.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %axi_dmac_check_len.exit.cleanup_crit_edge ], [ null, %lor.lhs.false7.cleanup_crit_edge ], [ null, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @axi_dmac_prep_interleaved(ptr noundef %c, ptr nocapture noundef readonly %xt, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %0 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %direction = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 3
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1.not = icmp eq i32 %3, %5
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %src_type.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 6
  %6 = ptrtoint ptr %src_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.then5, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %src_inc = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %8 = ptrtoint ptr %src_inc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %src_inc, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %lor.lhs.false

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then5
  %10 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xt, align 4
  %address_align_mask.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 9
  %12 = ptrtoint ptr %address_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %address_align_mask.i, align 4
  %and.i = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %lor.lhs.false.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %dest_type.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 7
  %14 = ptrtoint ptr %dest_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dest_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i183.not = icmp eq i32 %15, 0
  br i1 %cmp.i183.not, label %if.then13, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  %dst_inc = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %16 = ptrtoint ptr %dst_inc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dst_inc, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.then13.cleanup_crit_edge, label %lor.lhs.false15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false15:                                  ; preds = %if.then13
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %18 = ptrtoint ptr %dst_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_start, align 4
  %address_align_mask.i185 = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 9
  %20 = ptrtoint ptr %address_align_mask.i185 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %address_align_mask.i185, align 4
  %and.i186 = and i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %cmp.not.i187 = icmp eq i32 %and.i186, 0
  br i1 %cmp.not.i187, label %lor.lhs.false15.if.end19_crit_edge, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false15.if.end19_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %lor.lhs.false15.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %dst_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %22 = ptrtoint ptr %dst_inc.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dst_inc.i, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end19.if.end7.i.i_crit_edge, label %if.then.i.i

if.end19.if.end7.i.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.end19
  %dst_icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 2
  %24 = ptrtoint ptr %dst_icg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_icg.i, align 4
  %icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %26 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %icg.i, align 4
  %dst_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %28 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dst_sgl.i, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.i = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i.i = icmp ne i32 %25, 0
  %brmerge.i.i = or i1 %tobool2.not.i.i, %tobool1.i
  %dir_icg.mux.i.i = select i1 %tobool2.not.i.i, i32 %25, i32 %27
  br i1 %brmerge.i.i, label %if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge, label %if.then.i.i.if.end7.i.i_crit_edge

if.then.i.i.if.end7.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_get_dst_icg.exit

if.end7.i.i:                                      ; preds = %if.then.i.i.if.end7.i.i_crit_edge, %if.end19.if.end7.i.i_crit_edge
  br label %dmaengine_get_dst_icg.exit

dmaengine_get_dst_icg.exit:                       ; preds = %if.end7.i.i, %if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end7.i.i ], [ %dir_icg.mux.i.i, %if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge ]
  %src_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %30 = ptrtoint ptr %src_inc.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %src_inc.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i188 = icmp eq i8 %31, 0
  br i1 %tobool.not.i188, label %dmaengine_get_dst_icg.exit.if.end7.i.i195_crit_edge, label %if.then.i.i194

dmaengine_get_dst_icg.exit.if.end7.i.i195_crit_edge: ; preds = %dmaengine_get_dst_icg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i195

if.then.i.i194:                                   ; preds = %dmaengine_get_dst_icg.exit
  %src_icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 3
  %32 = ptrtoint ptr %src_icg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_icg.i, align 4
  %icg.i189 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %34 = ptrtoint ptr %icg.i189 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %icg.i189, align 4
  %src_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %36 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %src_sgl.i, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.i190 = icmp ne i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i.i191 = icmp ne i32 %33, 0
  %brmerge.i.i192 = or i1 %tobool2.not.i.i191, %tobool1.i190
  %dir_icg.mux.i.i193 = select i1 %tobool2.not.i.i191, i32 %33, i32 %35
  br i1 %brmerge.i.i192, label %if.then.i.i194.dmaengine_get_src_icg.exit_crit_edge, label %if.then.i.i194.if.end7.i.i195_crit_edge

if.then.i.i194.if.end7.i.i195_crit_edge:          ; preds = %if.then.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i195

if.then.i.i194.dmaengine_get_src_icg.exit_crit_edge: ; preds = %if.then.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_get_src_icg.exit

if.end7.i.i195:                                   ; preds = %if.then.i.i194.if.end7.i.i195_crit_edge, %dmaengine_get_dst_icg.exit.if.end7.i.i195_crit_edge
  br label %dmaengine_get_src_icg.exit

dmaengine_get_src_icg.exit:                       ; preds = %if.end7.i.i195, %if.then.i.i194.dmaengine_get_src_icg.exit_crit_edge
  %retval.0.i.i196 = phi i32 [ 0, %if.end7.i.i195 ], [ %dir_icg.mux.i.i193, %if.then.i.i194.dmaengine_get_src_icg.exit_crit_edge ]
  %hw_2d = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 13
  %38 = ptrtoint ptr %hw_2d to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hw_2d, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool24.not = icmp eq i8 %39, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %dmaengine_get_src_icg.exit
  %40 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i197 = icmp eq i32 %41, 0
  br i1 %cmp.i197, label %if.then25.cleanup_crit_edge, label %axi_dmac_check_len.exit

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

axi_dmac_check_len.exit:                          ; preds = %if.then25
  %length_align_mask.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 10
  %42 = ptrtoint ptr %length_align_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length_align_mask.i, align 4
  %and.i198 = and i32 %43, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %cmp1.not.i = icmp eq i32 %and.i198, 0
  br i1 %cmp1.not.i, label %lor.lhs.false29, label %axi_dmac_check_len.exit.cleanup_crit_edge

axi_dmac_check_len.exit.cleanup_crit_edge:        ; preds = %axi_dmac_check_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false29:                                  ; preds = %axi_dmac_check_len.exit
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %44 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp30 = icmp eq i32 %45, 0
  br i1 %cmp30, label %lor.lhs.false29.cleanup_crit_edge, label %if.end32

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false29
  %add = add i32 %41, %retval.0.i.i
  %max_length = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 8
  %46 = ptrtoint ptr %max_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %47)
  %cmp36 = icmp ugt i32 %add, %47
  %add41 = add i32 %41, %retval.0.i.i196
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %47)
  %cmp43 = icmp ugt i32 %add41, %47
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp43
  br i1 %or.cond, label %if.end32.cleanup_crit_edge, label %if.end32.if.end66_crit_edge

if.end32.if.end66_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %dmaengine_get_src_icg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp46.not = icmp eq i32 %retval.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i196)
  %cmp48.not = icmp eq i32 %retval.0.i.i196, 0
  %or.cond182 = select i1 %cmp46.not, i1 %cmp48.not, i1 false
  br i1 %or.cond182, label %if.end50, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.else
  %max_length51 = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 8
  %48 = ptrtoint ptr %max_length51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_length51, align 4
  %50 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sgl, align 4
  %div = udiv i32 %49, %51
  %numf55 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %52 = ptrtoint ptr %numf55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %numf55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %53)
  %cmp56 = icmp ult i32 %div, %53
  br i1 %cmp56, label %if.end50.cleanup_crit_edge, label %if.end58

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end58:                                         ; preds = %if.end50
  %mul = mul i32 %53, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.i199 = icmp eq i32 %mul, 0
  br i1 %cmp.i199, label %if.end58.cleanup_crit_edge, label %axi_dmac_check_len.exit205

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

axi_dmac_check_len.exit205:                       ; preds = %if.end58
  %length_align_mask.i200 = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 10
  %54 = ptrtoint ptr %length_align_mask.i200 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length_align_mask.i200, align 4
  %and.i201 = and i32 %55, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %cmp1.not.i202 = icmp eq i32 %and.i201, 0
  br i1 %cmp1.not.i202, label %axi_dmac_check_len.exit205.if.end66_crit_edge, label %axi_dmac_check_len.exit205.cleanup_crit_edge

axi_dmac_check_len.exit205.cleanup_crit_edge:     ; preds = %axi_dmac_check_len.exit205
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

axi_dmac_check_len.exit205.if.end66_crit_edge:    ; preds = %axi_dmac_check_len.exit205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %axi_dmac_check_len.exit205.if.end66_crit_edge, %if.end32.if.end66_crit_edge
  %call67 = tail call fastcc ptr @axi_dmac_alloc_desc(i32 noundef 1)
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.end70

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %56 = ptrtoint ptr %src_type.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i207.not = icmp eq i32 %57, 0
  br i1 %cmp.i207.not, label %if.then73, label %if.end70.if.end82_crit_edge

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xt, align 4
  %sg = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 0, i32 6
  %60 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sg, align 4
  %61 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sgl, align 4
  %add79 = add i32 %62, %retval.0.i.i196
  %src_stride = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 1, i32 0, i32 0, i32 5
  %63 = ptrtoint ptr %src_stride to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add79, ptr %src_stride, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then73, %if.end70.if.end82_crit_edge
  %64 = ptrtoint ptr %dest_type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dest_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i210.not = icmp eq i32 %65, 0
  br i1 %cmp.i210.not, label %if.then85, label %if.end82.if.end95_crit_edge

if.end82.if.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %dst_start86 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %66 = ptrtoint ptr %dst_start86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dst_start86, align 4
  %dest_addr = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 1, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %dest_addr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %dest_addr, align 4
  %69 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sgl, align 4
  %add92 = add i32 %70, %retval.0.i.i
  %dest_stride = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 1, i32 0, i32 0, i32 4
  %71 = ptrtoint ptr %dest_stride to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add92, ptr %dest_stride, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then85, %if.end82.if.end95_crit_edge
  %72 = ptrtoint ptr %hw_2d to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %hw_2d, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool97.not = icmp eq i8 %73, 0
  %74 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sgl, align 4
  br i1 %tobool97.not, label %if.else107, label %if.then98

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %x_len = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 1, i32 0, i32 0, i32 2
  %76 = ptrtoint ptr %x_len to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %x_len, align 4
  %numf104 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %77 = ptrtoint ptr %numf104 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %numf104, align 4
  br label %if.end119

if.else107:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %numf111 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %79 = ptrtoint ptr %numf111 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %numf111, align 4
  %mul112 = mul i32 %80, %75
  %x_len115 = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 1, i32 0, i32 0, i32 2
  %81 = ptrtoint ptr %x_len115 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mul112, ptr %x_len115, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.else107, %if.then98
  %.sink = phi i32 [ 1, %if.else107 ], [ %78, %if.then98 ]
  %82 = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 1, i32 0, i32 0, i32 3
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.sink, ptr %82, align 4
  %and = and i32 %flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool120.not = icmp eq i32 %and, 0
  br i1 %tobool120.not, label %if.end119.if.end122_crit_edge, label %if.then121

if.end119.if.end122_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %cyclic = getelementptr inbounds %struct.axi_dmac_desc, ptr %call67, i32 0, i32 1
  %84 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %cyclic, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end119.if.end122_crit_edge
  %call123 = tail call fastcc ptr @vchan_tx_prep(ptr noundef %c, ptr noundef nonnull %call67, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.end66.cleanup_crit_edge, %axi_dmac_check_len.exit205.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %lor.lhs.false29.cleanup_crit_edge, %axi_dmac_check_len.exit.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call67, %if.end122 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.then5.cleanup_crit_edge ], [ null, %lor.lhs.false15.cleanup_crit_edge ], [ null, %if.then13.cleanup_crit_edge ], [ null, %lor.lhs.false29.cleanup_crit_edge ], [ null, %axi_dmac_check_len.exit.cleanup_crit_edge ], [ null, %if.end32.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ null, %if.end50.cleanup_crit_edge ], [ null, %axi_dmac_check_len.exit205.cleanup_crit_edge ], [ null, %if.end66.cleanup_crit_edge ], [ null, %if.then25.cleanup_crit_edge ], [ null, %if.end58.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_dmac_terminate_all(ptr noundef %c) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %6, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #9, !srcloc !93
  %next_desc = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 1
  %7 = ptrtoint ptr %next_desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %next_desc, align 4
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %11, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %head, ptr %13, align 4
  store ptr %13, ptr %2, align 4
  %17 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %18 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %19, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i12.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %21, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %head, ptr %23, align 4
  store ptr %23, ptr %2, align 4
  %27 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %28 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %29, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i18.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %29, ptr %31, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head, ptr %33, align 4
  store ptr %33, ptr %2, align 4
  %37 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %38 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %39, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i24.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %41, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %head, ptr %43, align 4
  store ptr %43, ptr %2, align 4
  %47 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %48 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %49, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i30.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head, ptr %53, align 4
  store ptr %53, ptr %2, align 4
  %57 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %active_descs = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 2
  %58 = ptrtoint ptr %active_descs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %active_descs, align 4
  %cmp.i.not.i = icmp eq ptr %59, %active_descs
  br i1 %cmp.i.not.i, label %vchan_get_all_descriptors.exit.list_splice_tail_init.exit_crit_edge, label %if.then.i

vchan_get_all_descriptors.exit.list_splice_tail_init.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %2, align 4
  %prev2.i.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %c, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %61, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %head, ptr %63, align 4
  store ptr %63, ptr %2, align 4
  %67 = ptrtoint ptr %active_descs to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %active_descs, ptr %active_descs, align 4
  store ptr %active_descs, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %vchan_get_all_descriptors.exit.list_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axi_dmac_synchronize(ptr noundef %c) #2 align 64 {
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
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
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
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
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
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axi_dmac_desc_free(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vdesc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_xlate_by_chan_id(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axi_dmac_interrupt_handler(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devid, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !90
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devid, align 4
  %add.ptr.i27 = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %2) #9, !srcloc !93
  %chan = getelementptr inbounds %struct.axi_dmac, ptr %devid, i32 0, i32 4
  %lock = getelementptr inbounds %struct.axi_dmac, ptr %devid, i32 0, i32 4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devid, align 4
  %add.ptr.i28 = getelementptr i8, ptr %7, i32 1064
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #9, !srcloc !90
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %call5 = tail call fastcc zeroext i1 @axi_dmac_transfer_done(ptr noundef %chan, i32 noundef %9)
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %start_next.0.off0 = phi i1 [ %call5, %if.then2 ], [ false, %if.end.if.end6_crit_edge ]
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  %brmerge = select i1 %tobool8.not, i1 true, i1 %start_next.0.off0
  br i1 %brmerge, label %if.then10, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @axi_dmac_start_transfer(ptr noundef %chan)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_dmac_start_transfer(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %3, i32 1032
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_desc = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %next_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_desc, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %7 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %8, %desc_issued.i
  %add.ptr.i103 = getelementptr i8, ptr %8, i32 -108
  %tobool5.not115 = icmp eq ptr %add.ptr.i103, null
  %tobool5.not = or i1 %cmp.not.i, %tobool5.not115
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %active_descs = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.__list_del_entry.exit.i_crit_edge

if.end7.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end7.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %16, ptr noundef %active_descs) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end9_crit_edge

__list_del_entry.exit.i.if.end9_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %prev.i2.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active_descs, ptr %8, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %8, ptr %16, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %desc.0 = phi ptr [ %6, %if.end.if.end9_crit_edge ], [ %add.ptr.i103, %__list_del_entry.exit.i.if.end9_crit_edge ], [ %add.ptr.i103, %if.end.i.i.i ]
  %num_submitted = getelementptr inbounds %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 3
  %21 = ptrtoint ptr %num_submitted to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_submitted, align 4
  %arrayidx = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22
  %id = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22, i32 6
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp.not = icmp eq i32 %24, 32
  br i1 %cmp.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %schedule_when_free = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22, i32 8
  %25 = ptrtoint ptr %schedule_when_free to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %schedule_when_free, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %inc = add i32 %22, 1
  %26 = ptrtoint ptr %num_submitted to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc, ptr %num_submitted, align 4
  %num_sgs = getelementptr inbounds %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 5
  %27 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %28)
  %cmp15 = icmp eq i32 %inc, %28
  br i1 %cmp15, label %if.end12.if.then17_crit_edge, label %lor.lhs.false

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end12
  %have_partial_xfer = getelementptr inbounds %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 2
  %29 = ptrtoint ptr %have_partial_xfer to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %have_partial_xfer, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool16.not = icmp eq i8 %30, 0
  br i1 %tobool16.not, label %if.else23, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %cyclic = getelementptr inbounds %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 1
  %31 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cyclic, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool18.not = icmp eq i8 %32, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %num_submitted to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %num_submitted, align 4
  br label %if.end25

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %next_desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %next_desc, align 4
  br label %if.end25

if.else23:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %next_desc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %desc.0, ptr %next_desc, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.else, %if.then19
  %flags.0 = phi i32 [ 0, %if.else23 ], [ 2, %if.else ], [ 2, %if.then19 ]
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %37, i32 1028
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #9, !srcloc !90
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %40 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %id, align 4
  %dest_type.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 7
  %41 = ptrtoint ptr %dest_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dest_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.not = icmp eq i32 %42, 0
  br i1 %cmp.i.not, label %if.then30, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %dest_addr = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22, i32 1
  %43 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dest_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %47, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %45) #9, !srcloc !93
  %dest_stride = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22, i32 4
  %48 = ptrtoint ptr %dest_stride to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dest_stride, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %52, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %50) #9, !srcloc !93
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25.if.end31_crit_edge
  %src_type.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 6
  %53 = ptrtoint ptr %src_type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i107.not = icmp eq i32 %54, 0
  br i1 %cmp.i107.not, label %if.then34, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %59, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %57) #9, !srcloc !93
  %src_stride = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22, i32 5
  %60 = ptrtoint ptr %src_stride to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %src_stride, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %64, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %62) #9, !srcloc !93
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge
  %hw_cyclic = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 12
  %65 = ptrtoint ptr %hw_cyclic to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hw_cyclic, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool36.not = icmp eq i8 %66, 0
  br i1 %tobool36.not, label %if.end35.if.end47_crit_edge, label %land.lhs.true

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end35
  %cyclic37 = getelementptr inbounds %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 1
  %67 = ptrtoint ptr %cyclic37 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cyclic37, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool38.not = icmp eq i8 %68, 0
  br i1 %tobool38.not, label %land.lhs.true.if.end47_crit_edge, label %land.lhs.true39

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true39:                                  ; preds = %land.lhs.true
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0, i32 0, i32 6
  %69 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %callback, align 4
  %tobool41.not = icmp eq ptr %70, null
  br i1 %tobool41.not, label %land.lhs.true42, label %land.lhs.true39.if.end47_crit_edge

land.lhs.true39.if.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp44 = icmp eq i32 %72, 1
  %or46 = zext i1 %cmp44 to i32
  %spec.select = or i32 %flags.0, %or46
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true42, %land.lhs.true39.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %if.end35.if.end47_crit_edge
  %flags.1 = phi i32 [ %flags.0, %land.lhs.true39.if.end47_crit_edge ], [ %flags.0, %land.lhs.true.if.end47_crit_edge ], [ %flags.0, %if.end35.if.end47_crit_edge ], [ %spec.select, %land.lhs.true42 ]
  %hw_partial_xfer = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 11
  %73 = ptrtoint ptr %hw_partial_xfer to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %hw_partial_xfer, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool48.not = icmp eq i8 %74, 0
  %or50 = or i32 %flags.1, 4
  %spec.select101 = select i1 %tobool48.not, i32 %flags.1, i32 %or50
  %x_len = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22, i32 2
  %75 = ptrtoint ptr %x_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %x_len, align 4
  %sub = add i32 %76, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %77 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %79, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %77) #9, !srcloc !93
  %y_len = getelementptr %struct.axi_dmac_desc, ptr %desc.0, i32 0, i32 6, i32 %22, i32 3
  %80 = ptrtoint ptr %y_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %y_len, align 4
  %sub52 = add i32 %81, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %82 = tail call i32 @llvm.bswap.i32(i32 %sub52) #9
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %84, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %82) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %85 = tail call i32 @llvm.bswap.i32(i32 %spec.select101) #9
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %87, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %85) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %89, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 16777216) #9, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then11, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @axi_dmac_alloc_desc(i32 noundef %num_sgs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_sgs, i32 36) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 132) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sgs)
  %cmp11.not = icmp eq i32 %num_sgs, 0
  br i1 %cmp11.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %id = getelementptr %struct.axi_dmac_desc, ptr %call9.i.i, i32 0, i32 6, i32 %i.012, i32 6
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %id, align 4
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %num_sgs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_sgs2 = getelementptr inbounds %struct.axi_dmac_desc, ptr %call9.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %num_sgs2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num_sgs, ptr %num_sgs2, align 128
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vchan_tx_prep(ptr noundef %vc, ptr noundef returned %vd, i32 noundef %tx_flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %vc) #9
  %flags2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %tx_flags, ptr %flags2, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 4
  %1 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vchan_tx_submit, ptr %tx_submit, align 4
  %desc_free = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 5
  %2 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vchan_tx_desc_free, ptr %desc_free, align 4
  %tx_result = getelementptr inbounds %struct.virt_dma_desc, ptr %vd, i32 0, i32 1
  %3 = ptrtoint ptr %tx_result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tx_result, align 4
  %residue = getelementptr inbounds %struct.virt_dma_desc, ptr %vd, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %residue, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %vd, i32 0, i32 2
  %desc_allocated = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %6, ptr noundef %desc_allocated) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node, ptr %prev.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc_allocated, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %vd, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  ret ptr %vd
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @axi_dmac_transfer_done(ptr noundef %chan, i32 noundef %completed_transfers) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active_descs.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %active_descs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active_descs.i, align 4
  %cmp.not.i = icmp eq ptr %1, %active_descs.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not87 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not87
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_partial_xfer = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 11
  %2 = ptrtoint ptr %hw_partial_xfer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_partial_xfer, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %completed_transfers)
  %tobool2.not = icmp sgt i32 %completed_transfers, -1
  %or.cond = or i1 %tobool2.not, %tobool1.not
  br i1 %or.cond, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @axi_dmac_dequeue_partial_xfers(ptr noundef %chan)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %hw_2d.i.i = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end4
  %active.0 = phi ptr [ %add.ptr.i, %if.end4 ], [ %active.1, %do.cond.do.body_crit_edge ]
  %start_next.0.off0 = phi i1 [ false, %if.end4 ], [ %start_next.1.off0, %do.cond.do.body_crit_edge ]
  %num_completed = getelementptr inbounds %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 4
  %4 = ptrtoint ptr %num_completed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_completed, align 4
  %id = getelementptr %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 6, i32 %5, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp = icmp eq i32 %7, 32
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.body
  %shl = shl nuw i32 1, %7
  %and9 = and i32 %shl, %completed_transfers
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %inc = add i32 %5, 1
  %8 = ptrtoint ptr %num_completed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %num_completed, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %id, align 4
  %schedule_when_free = getelementptr %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 6, i32 %5, i32 8
  %10 = ptrtoint ptr %schedule_when_free to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %schedule_when_free, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %if.then16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %schedule_when_free to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %schedule_when_free, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %start_next.1.off0 = phi i1 [ true, %if.then16 ], [ %start_next.0.off0, %if.end12.if.end18_crit_edge ]
  %partial_len = getelementptr %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 6, i32 %5, i32 7
  %13 = ptrtoint ptr %partial_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %partial_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %active.0, i32 0, i32 1
  %15 = ptrtoint ptr %num_completed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_completed, align 4
  %sub.i = add i32 %16, -1
  %17 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %active.0, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %residue.i, align 4
  %num_sgs.i = getelementptr inbounds %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 5
  %19 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sgs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %20)
  %cmp12.i = icmp ult i32 %sub.i, %20
  br i1 %cmp12.i, label %if.then20.for.body.i_crit_edge, label %if.then20.if.end21_crit_edge

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20.for.body.i_crit_edge:                   ; preds = %if.then20
  br label %for.body.i

for.body.i:                                       ; preds = %axi_dmac_total_sg_bytes.exit.i.for.body.i_crit_edge, %if.then20.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %axi_dmac_total_sg_bytes.exit.i.for.body.i_crit_edge ], [ %sub.i, %if.then20.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %hw_2d.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hw_2d.i.i, align 2, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %x_len1.i.i = getelementptr %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 6, i32 %i.013.i, i32 2
  %23 = ptrtoint ptr %x_len1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %x_len1.i.i, align 4
  br i1 %tobool.not.i.i, label %for.body.i.axi_dmac_total_sg_bytes.exit.i_crit_edge, label %if.then.i.i

for.body.i.axi_dmac_total_sg_bytes.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %axi_dmac_total_sg_bytes.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %y_len.i.i = getelementptr %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 6, i32 %i.013.i, i32 3
  %25 = ptrtoint ptr %y_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y_len.i.i, align 4
  %mul.i.i = mul i32 %26, %24
  br label %axi_dmac_total_sg_bytes.exit.i

axi_dmac_total_sg_bytes.exit.i:                   ; preds = %if.then.i.i, %for.body.i.axi_dmac_total_sg_bytes.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul.i.i, %if.then.i.i ], [ %24, %for.body.i.axi_dmac_total_sg_bytes.exit.i_crit_edge ]
  %partial_len.i = getelementptr %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 6, i32 %i.013.i, i32 7
  %27 = ptrtoint ptr %partial_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %partial_len.i, align 4
  %sub2.i = sub i32 %retval.0.i.i, %28
  %29 = ptrtoint ptr %residue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %residue.i, align 4
  %add.i = add i32 %sub2.i, %30
  store i32 %add.i, ptr %residue.i, align 4
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %20
  br i1 %exitcond.not.i, label %axi_dmac_total_sg_bytes.exit.i.if.end21_crit_edge, label %axi_dmac_total_sg_bytes.exit.i.for.body.i_crit_edge

axi_dmac_total_sg_bytes.exit.i.for.body.i_crit_edge: ; preds = %axi_dmac_total_sg_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

axi_dmac_total_sg_bytes.exit.i.if.end21_crit_edge: ; preds = %axi_dmac_total_sg_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %axi_dmac_total_sg_bytes.exit.i.if.end21_crit_edge, %if.then20.if.end21_crit_edge, %if.end18.if.end21_crit_edge
  %cyclic = getelementptr inbounds %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 1
  %31 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cyclic, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not = icmp eq i8 %32, 0
  br i1 %tobool22.not, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %active.0, i32 0, i32 3
  %33 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %active.0, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %34, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i71 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i71, label %if.then.i.i72, label %if.then23.if.end24_crit_edge

if.then23.if.end24_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then.i.i72:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %34, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then.i.i72, %if.then23.if.end24_crit_edge, %if.end21.if.end24_crit_edge
  %36 = ptrtoint ptr %num_completed to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_completed, align 4
  %num_sgs = getelementptr inbounds %struct.axi_dmac_desc, ptr %active.0, i32 0, i32 5
  %38 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp26 = icmp eq i32 %37, %39
  br i1 %cmp26, label %if.end24.if.then29_crit_edge, label %lor.lhs.false

if.end24.if.then29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end24
  %40 = ptrtoint ptr %partial_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %partial_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool28.not = icmp eq i32 %41, 0
  br i1 %tobool28.not, label %lor.lhs.false.do.cond_crit_edge, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end24.if.then29_crit_edge
  %42 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cyclic, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool31.not = icmp eq i8 %43, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %num_completed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %num_completed, align 4
  br label %do.cond

if.else:                                          ; preds = %if.then29
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %active.0, i32 0, i32 2
  %call.i.i73 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i73, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %active.0, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %51 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %active.0, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan.i74 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %active.0, i32 0, i32 3
  %53 = ptrtoint ptr %chan.i74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chan.i74, align 4
  %55 = ptrtoint ptr %active.0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %active.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i.i = icmp slt i32 %56, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !97

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %completed_cookie.i.i, align 4
  %58 = ptrtoint ptr %active.0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %active.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_dmac_transfer_done, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !99

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %62, ptr noundef nonnull @.str.37, ptr noundef %active.0, i32 noundef %56) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %54, i32 0, i32 7
  %prev.i.i75 = getelementptr inbounds %struct.virt_dma_chan, ptr %54, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %prev.i.i75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i75, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %64, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %prev.i.i75 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %node, ptr %prev.i.i75, align 4
  %66 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %desc_completed.i, ptr %node, align 4
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %node, ptr %64, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i76 = getelementptr inbounds %struct.virt_dma_chan, ptr %54, i32 0, i32 1, i32 1
  %call.i.i77 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i76) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool.not.i.i78 = icmp eq i32 %call.i.i77, 0
  br i1 %tobool.not.i.i78, label %if.then.i.i80, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i80:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i79 = getelementptr inbounds %struct.virt_dma_chan, ptr %54, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i79) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i80, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %69 = ptrtoint ptr %active_descs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %active_descs.i, align 4
  %cmp.not.i82 = icmp eq ptr %70, %active_descs.i
  %add.ptr.i83 = getelementptr i8, ptr %70, i32 -108
  br i1 %cmp.not.i82, label %vchan_cookie_complete.exit.cleanup_crit_edge, label %vchan_cookie_complete.exit.do.cond_crit_edge

vchan_cookie_complete.exit.do.cond_crit_edge:     ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

vchan_cookie_complete.exit.cleanup_crit_edge:     ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond:                                          ; preds = %vchan_cookie_complete.exit.do.cond_crit_edge, %if.then32, %lor.lhs.false.do.cond_crit_edge
  %active.1 = phi ptr [ %active.0, %if.then32 ], [ %add.ptr.i83, %vchan_cookie_complete.exit.do.cond_crit_edge ], [ %active.0, %lor.lhs.false.do.cond_crit_edge ]
  %tobool39.not = icmp eq ptr %active.1, null
  br i1 %tobool39.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %vchan_cookie_complete.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %start_next.1.off0, %vchan_cookie_complete.exit.cleanup_crit_edge ], [ %start_next.0.off0, %if.end7.cleanup_crit_edge ], [ %start_next.1.off0, %do.cond.cleanup_crit_edge ], [ %start_next.0.off0, %do.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axi_dmac_dequeue_partial_xfers(ptr noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %active_descs = getelementptr inbounds %struct.axi_dmac_chan, ptr %chan, i32 0, i32 2
  %dev = getelementptr i8, ptr %1, i32 72
  br label %do.body

do.body:                                          ; preds = %if.end41.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %3, i32 1100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #9, !srcloc !90
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %7, i32 1104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #9, !srcloc !90
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %10 = ptrtoint ptr %active_descs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn83 = load ptr, ptr %active_descs, align 4
  %cmp.not84 = icmp eq ptr %.pn83, %active_descs
  br i1 %cmp.not84, label %do.body.do.end38_crit_edge, label %do.body.for.cond4.preheader_crit_edge

do.body.for.cond4.preheader_crit_edge:            ; preds = %do.body
  br label %for.cond4.preheader

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

for.cond.loopexit:                                ; preds = %for.cond4.for.cond.loopexit_crit_edge, %for.cond4.preheader.for.cond.loopexit_crit_edge
  %11 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp.not = icmp eq ptr %.pn, %active_descs
  br i1 %cmp.not, label %for.cond.loopexit.do.end38_crit_edge, label %for.cond.loopexit.for.cond4.preheader_crit_edge

for.cond.loopexit.for.cond4.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader

for.cond.loopexit.do.end38_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

for.cond4.preheader:                              ; preds = %for.cond.loopexit.for.cond4.preheader_crit_edge, %do.body.for.cond4.preheader_crit_edge
  %.pn85 = phi ptr [ %.pn, %for.cond.loopexit.for.cond4.preheader_crit_edge ], [ %.pn83, %do.body.for.cond4.preheader_crit_edge ]
  %num_sgs = getelementptr i8, ptr %.pn85, i32 20
  %12 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp581.not = icmp eq i32 %13, 0
  br i1 %cmp581.not, label %for.cond4.preheader.for.cond.loopexit_crit_edge, label %for.body6.lr.ph

for.cond4.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %sg7 = getelementptr i8, ptr %.pn85, i32 24
  br label %for.body6

for.cond4:                                        ; preds = %for.body6
  %inc = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.cond4.for.cond.loopexit_crit_edge, label %for.cond4.for.body6_crit_edge

for.cond4.for.body6_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.cond4.for.cond.loopexit_crit_edge:            ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body6:                                        ; preds = %for.cond4.for.body6_crit_edge, %for.body6.lr.ph
  %i.082 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.cond4.for.body6_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.axi_dmac_sg], ptr %sg7, i32 0, i32 %i.082
  %id8 = getelementptr inbounds %struct.axi_dmac_sg, ptr %arrayidx, i32 0, i32 6
  %14 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp9 = icmp ne i32 %15, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp11 = icmp eq i32 %15, %9
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  br i1 %or.cond, label %for.end.thread, label %for.cond4

for.end.thread:                                   ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  %have_partial_xfer = getelementptr i8, ptr %.pn85, i32 9
  %16 = ptrtoint ptr %have_partial_xfer to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %have_partial_xfer, align 1
  %partial_len = getelementptr inbounds %struct.axi_dmac_sg, ptr %arrayidx, i32 0, i32 7
  %17 = ptrtoint ptr %partial_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %5, ptr %partial_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axi_dmac_dequeue_partial_xfers.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axi_dmac_dequeue_partial_xfers, %if.end41)) #9
          to label %if.then34 [label %if.end41], !srcloc !99

if.then34:                                        ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axi_dmac_dequeue_partial_xfers.__UNIQUE_ID_ddebug239, ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %9, i32 noundef %5) #9
  br label %if.end41

do.end38:                                         ; preds = %for.cond.loopexit.do.end38_crit_edge, %do.body.do.end38_crit_edge
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef %9, i32 noundef %5) #12
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.then34, %for.end.thread
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %23, i32 1064
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %.mask = and i32 %24, 128
  %tobool43.not = icmp eq i32 %.mask, 0
  br i1 %tobool43.not, label %do.end50, label %if.end41.do.body_crit_edge

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @axi_dmac_regmap_rdwr(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 128, label %entry.return_crit_edge
    i32 136, label %entry.return_crit_edge1
    i32 132, label %entry.return_crit_edge2
    i32 1024, label %entry.return_crit_edge3
    i32 1028, label %entry.return_crit_edge4
    i32 1032, label %entry.return_crit_edge5
    i32 1036, label %entry.return_crit_edge6
    i32 1040, label %entry.return_crit_edge7
    i32 1044, label %entry.return_crit_edge8
    i32 1048, label %entry.return_crit_edge9
    i32 1052, label %entry.return_crit_edge10
    i32 1056, label %entry.return_crit_edge11
    i32 1060, label %entry.return_crit_edge12
    i32 1064, label %entry.return_crit_edge13
    i32 1068, label %entry.return_crit_edge14
    i32 1072, label %entry.return_crit_edge15
    i32 1076, label %entry.return_crit_edge16
    i32 1080, label %entry.return_crit_edge17
    i32 1100, label %entry.return_crit_edge18
    i32 1104, label %entry.return_crit_edge19
  ]

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_dma_axi_dmac__262_1046_axi_dmac_driver_init6, !1, !"__initcall__kmod_dma_axi_dmac__262_1046_axi_dmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/dma-axi-dmac.c", i32 1046, i32 1}
!2 = !{ptr @__exitcall_axi_dmac_driver_exit, !1, !"__exitcall_axi_dmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author263, !4, !"__UNIQUE_ID_author263", i1 false, i1 false}
!4 = !{!"../drivers/dma/dma-axi-dmac.c", i32 1048, i32 1}
!5 = !{ptr @__UNIQUE_ID_description264, !6, !"__UNIQUE_ID_description264", i1 false, i1 false}
!6 = !{!"../drivers/dma/dma-axi-dmac.c", i32 1049, i32 1}
!7 = !{ptr @__UNIQUE_ID_file265, !8, !"__UNIQUE_ID_file265", i1 false, i1 false}
!8 = !{!"../drivers/dma/dma-axi-dmac.c", i32 1050, i32 1}
!9 = !{ptr @__UNIQUE_ID_license266, !8, !"__UNIQUE_ID_license266", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/dma-axi-dmac.c", i32 1040, i32 11}
!12 = !{ptr @axi_dmac_driver, !13, !"axi_dmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/dma-axi-dmac.c", i32 1038, i32 31}
!14 = !{ptr @axi_dmac_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/dma/dma-axi-dmac.c", i32 998, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/dma-axi-dmac.c", i32 820, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @axi_dmac_read_chan_config._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @axi_dmac_read_chan_config._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/dma-axi-dmac.c", i32 826, i32 3}
!27 = !{ptr @axi_dmac_read_chan_config._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @axi_dmac_read_chan_config._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/dma-axi-dmac.c", i32 833, i32 3}
!31 = !{ptr @axi_dmac_read_chan_config._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @axi_dmac_read_chan_config._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/dma-axi-dmac.c", i32 840, i32 3}
!35 = !{ptr @axi_dmac_read_chan_config._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @axi_dmac_read_chan_config._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/dma-axi-dmac.c", i32 848, i32 3}
!39 = !{ptr @axi_dmac_read_chan_config._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @axi_dmac_read_chan_config._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/dma-axi-dmac.c", i32 796, i32 51}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/dma-axi-dmac.c", i32 754, i32 38}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/dma-axi-dmac.c", i32 762, i32 38}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/dma-axi-dmac.c", i32 769, i32 38}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/dma-axi-dmac.c", i32 776, i32 38}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/dma-axi-dmac.c", i32 781, i32 38}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/dma-axi-dmac.c", i32 878, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @axi_dmac_detect_caps._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @axi_dmac_detect_caps._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/dma-axi-dmac.c", i32 886, i32 3}
!60 = !{ptr @axi_dmac_detect_caps._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @axi_dmac_detect_caps._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/dma-axi-dmac.c", i32 320, i32 4}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @axi_dmac_dequeue_partial_xfers.__UNIQUE_ID_ddebug239, !63, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/dma-axi-dmac.c", i32 324, i32 4}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @axi_dmac_dequeue_partial_xfers._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @axi_dmac_dequeue_partial_xfers._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !73, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!77 = !{ptr @axi_dmac_regmap_config, !78, !"axi_dmac_regmap_config", i1 false, i1 false}
!78 = !{!"../drivers/dma/dma-axi-dmac.c", i32 720, i32 35}
!79 = !{ptr @axi_dmac_of_match_table, !80, !"axi_dmac_of_match_table", i1 false, i1 false}
!80 = !{!"../drivers/dma/dma-axi-dmac.c", i32 1032, i32 34}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 6301888}
!91 = !{i64 2154520918}
!92 = !{i64 2154520242}
!93 = !{i64 6301470}
!94 = !{!"auto-init"}
!95 = !{i64 2154460277}
!96 = !{i8 0, i8 2}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2154458777, i64 2154459264, i64 2154458814, i64 2154458870, i64 2154458904, i64 2154458928, i64 2154458969, i64 2154458990, i64 2154459018, i64 2154459052}
!99 = !{i64 2148779131, i64 2148779136, i64 2148779149, i64 2148779193, i64 2148779227, i64 2148779248}
