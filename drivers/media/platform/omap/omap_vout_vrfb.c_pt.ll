; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap/omap_vout_vrfb.c_pt.bc'
source_filename = "../drivers/media/platform/omap/omap_vout_vrfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.omap_vout_device = type { %struct.omapvideo_info, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_window, %struct.v4l2_framebuffer, %struct.mutex, i32, i8, i32, i32, i32, %struct.vid_vrfb_dma, [4 x i32], [4 x i32], [4 x %struct.vrfb], i8, i32, i8, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.list_head, [32 x i32], i32, i32, ptr, %struct.vb2_queue }
%struct.omapvideo_info = type { i32, i32, [3 x ptr], i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.103, i32, i32 }
%union.anon.103 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.104 }
%struct.anon.104 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vid_vrfb_dma = type { ptr, ptr, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vrfb = type { i8, [4 x ptr], [4 x i32], i16, i16, i16, i16, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.102, i32 }
%union.anon.102 = type { i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@omap_vout_setup_vrfb_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c": VRFB allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_vout_setup_vrfb_bufs\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/omap/omap_vout_vrfb.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_vout_setup_vrfb_bufs._entry_ptr = internal global ptr @omap_vout_setup_vrfb_bufs._entry, section ".printk_index", align 4
@omap_vout_setup_vrfb_bufs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c": failed to allocate DMA Channel for video%d\0A\00", [50 x i8] zeroinitializer }, align 32
@omap_vout_setup_vrfb_bufs._entry_ptr.7 = internal global ptr @omap_vout_setup_vrfb_bufs._entry.5, section ".printk_index", align 4
@omap_vout_setup_vrfb_bufs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&vout->vrfb_dma_tx.wait\00", [40 x i8] zeroinitializer }, align 32
@omap_vout_prepare_vrfb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: DMA interleaved prep error\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_vout_prepare_vrfb\00", [41 x i8] zeroinitializer }, align 32
@omap_vout_prepare_vrfb._entry_ptr = internal global ptr @omap_vout_prepare_vrfb._entry, section ".printk_index", align 4
@omap_vout_prepare_vrfb._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: dmaengine_submit failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_vout_prepare_vrfb._entry_ptr.13 = internal global ptr @omap_vout_prepare_vrfb._entry.11, section ".printk_index", align 4
@omap_vout_prepare_vrfb._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Timeout while waiting for DMA\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_vout_prepare_vrfb._entry_ptr.16 = internal global ptr @omap_vout_prepare_vrfb._entry.14, section ".printk_index", align 4
@omap_vout_prepare_vrfb._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: DMA completion %s status\0A\00", [32 x i8] zeroinitializer }, align 32
@omap_vout_prepare_vrfb._entry_ptr.19 = internal global ptr @omap_vout_prepare_vrfb._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@switch.table.omap_vout_prepare_vrfb = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.omap_vout_calculate_vrfb_offset = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 859981650, i64 876758866, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 108, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 150, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 154, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 272, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 281, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 295, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private constant [48 x i8] c"../drivers/media/platform/omap/omap_vout_vrfb.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 299, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1169, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [36 x i8] c"switch.table.omap_vout_prepare_vrfb\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [45 x i8] c"switch.table.omap_vout_calculate_vrfb_offset\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @omap_vout_prepare_vrfb._entry, ptr @omap_vout_prepare_vrfb._entry.11, ptr @omap_vout_prepare_vrfb._entry.14, ptr @omap_vout_prepare_vrfb._entry.17, ptr @omap_vout_prepare_vrfb._entry_ptr, ptr @omap_vout_prepare_vrfb._entry_ptr.13, ptr @omap_vout_prepare_vrfb._entry_ptr.16, ptr @omap_vout_prepare_vrfb._entry_ptr.19, ptr @omap_vout_setup_vrfb_bufs._entry, ptr @omap_vout_setup_vrfb_bufs._entry.5, ptr @omap_vout_setup_vrfb_bufs._entry_ptr, ptr @omap_vout_setup_vrfb_bufs._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @omap_vout_setup_vrfb_bufs.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @switch.table.omap_vout_prepare_vrfb, ptr @switch.table.omap_vout_calculate_vrfb_offset], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_setup_vrfb_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_setup_vrfb_bufs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_setup_vrfb_bufs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_prepare_vrfb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_prepare_vrfb._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_prepare_vrfb._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_prepare_vrfb._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_vout_prepare_vrfb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_vout_calculate_vrfb_offset to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vout_free_vrfb_buffers(ptr nocapture noundef %vout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smsshado_size = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 23
  %arrayidx = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 20, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smsshado_size, align 4
  tail call void @omap_vout_free_buffer(i32 noundef %1, i32 noundef %3) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 19, i32 0
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 20, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smsshado_size, align 4
  tail call void @omap_vout_free_buffer(i32 noundef %7, i32 noundef %9) #7
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx5.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.2 = icmp eq i32 %13, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smsshado_size, align 4
  tail call void @omap_vout_free_buffer(i32 noundef %13, i32 noundef %15) #7
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 19, i32 2
  %17 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx5.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3 = icmp eq i32 %19, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smsshado_size, align 4
  tail call void @omap_vout_free_buffer(i32 noundef %19, i32 noundef %21) #7
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 19, i32 3
  %23 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx5.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vout_free_buffer(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vout_setup_vrfb_bufs(ptr noundef %pdev, i32 noundef %vid_num, i1 noundef zeroext %static_vrfb_allocation) local_unnamed_addr #0 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vouts = getelementptr i8, ptr %1, i32 128
  %arrayidx = getelementptr [2 x ptr], ptr %vouts, i32 0, i32 %vid_num
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %vfd1 = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vfd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfd1, align 4
  %arrayidx2 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 21, i32 0
  %call3 = tail call i32 @omap_vrfb_request_ctx(ptr noundef %arrayidx2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.inc9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

for.body6.preheader:                              ; preds = %for.inc9.2.for.body6.preheader_crit_edge, %for.inc9.1.for.body6.preheader_crit_edge, %for.inc9.for.body6.preheader_crit_edge
  %exitcond.not.1 = phi i1 [ false, %for.inc9.2.for.body6.preheader_crit_edge ], [ true, %for.inc9.1.for.body6.preheader_crit_edge ], [ false, %for.inc9.for.body6.preheader_crit_edge ]
  %dev118 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev118, ptr noundef nonnull @.str) #10
  %arrayidx8 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 21, i32 0
  tail call void @omap_vrfb_release_ctx(ptr noundef %arrayidx8) #7
  br i1 %tobool.not.1, label %for.body6.1, label %for.body6.preheader.cleanup_crit_edge

for.body6.preheader.cleanup_crit_edge:            ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body6.1:                                      ; preds = %for.body6.preheader
  %arrayidx8.1 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 21, i32 1
  tail call void @omap_vrfb_release_ctx(ptr noundef %arrayidx8.1) #7
  br i1 %exitcond.not.1, label %for.body6.1.cleanup_crit_edge, label %for.body6.2

for.body6.1.cleanup_crit_edge:                    ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body6.2:                                      ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8.2 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 21, i32 2
  tail call void @omap_vrfb_release_ctx(ptr noundef %arrayidx8.2) #7
  br label %cleanup

for.inc9:                                         ; preds = %entry
  %arrayidx2.1 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 21, i32 1
  %call3.1 = tail call i32 @omap_vrfb_request_ctx(ptr noundef %arrayidx2.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool.not.1, label %for.inc9.1, label %for.inc9.for.body6.preheader_crit_edge

for.inc9.for.body6.preheader_crit_edge:           ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.preheader

for.inc9.1:                                       ; preds = %for.inc9
  %arrayidx2.2 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 21, i32 2
  %call3.2 = tail call i32 @omap_vrfb_request_ctx(ptr noundef %arrayidx2.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool.not.2, label %for.inc9.2, label %for.inc9.1.for.body6.preheader_crit_edge

for.inc9.1.for.body6.preheader_crit_edge:         ; preds = %for.inc9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.preheader

for.inc9.2:                                       ; preds = %for.inc9.1
  %arrayidx2.3 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 21, i32 3
  %call3.3 = tail call i32 @omap_vrfb_request_ctx(ptr noundef %arrayidx2.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %tobool.not.3 = icmp eq i32 %call3.3, 0
  br i1 %tobool.not.3, label %for.inc9.3, label %for.inc9.2.for.body6.preheader_crit_edge

for.inc9.2.for.body6.preheader_crit_edge:         ; preds = %for.inc9.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.preheader

for.inc9.3:                                       ; preds = %for.inc9.2
  %smsshado_size = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3768320, ptr %smsshado_size, align 4
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 13, ptr noundef nonnull %mask) #7
  %call17 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %mask) #7
  %vrfb_dma_tx = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %vrfb_dma_tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %vrfb_dma_tx, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.inc9.3.if.end34.sink.split_crit_edge, label %if.else

for.inc9.3.if.end34.sink.split_crit_edge:         ; preds = %for.inc9.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

if.else:                                          ; preds = %for.inc9.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #11
  %xt = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %xt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %xt, align 4
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.then28, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %vrfb_dma_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vrfb_dma_tx, align 4
  call void @dma_release_channel(ptr noundef %12) #7
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then28, %for.inc9.3.if.end34.sink.split_crit_edge
  %req_status32 = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 18, i32 2
  %13 = ptrtoint ptr %req_status32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %req_status32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge
  %req_status36 = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 18, i32 2
  %14 = ptrtoint ptr %req_status36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req_status36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37 = icmp eq i32 %15, 0
  br i1 %cmp37, label %do.end41, label %if.end34.do.body44_crit_edge

if.end34.do.body44_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %minor = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 15
  %16 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %minor, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42, ptr noundef nonnull @.str.6, i32 noundef %17) #10
  br label %do.body44

do.body44:                                        ; preds = %do.end41, %if.end34.do.body44_crit_edge
  %wait = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 18, i32 4
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @omap_vout_setup_vrfb_bufs.__key) #7
  br i1 %static_vrfb_allocation, label %for.body.i.preheader, label %do.body44.cleanup_crit_edge

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.preheader:                             ; preds = %do.body44
  %arrayidx.i = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 20, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.preheader.if.end29.i_crit_edge

for.body.i.preheader.if.end29.i_crit_edge:        ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end.i:                                         ; preds = %for.body.i.preheader
  %20 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smsshado_size, align 4
  %arrayidx1.i = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 19, i32 0
  %call.i = call i32 @omap_vout_alloc_buffer(i32 noundef %21, ptr noundef %arrayidx1.i) #7
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_vout_allocate_vrfb_buffers.exit

for.body21.i:                                     ; preds = %if.end.i.3.for.body21.i_crit_edge, %if.end.i.2.for.body21.i_crit_edge, %if.end.i.1.for.body21.i_crit_edge
  %exitcond.not.i = phi i1 [ false, %if.end.i.3.for.body21.i_crit_edge ], [ false, %if.end.i.2.for.body21.i_crit_edge ], [ true, %if.end.i.1.for.body21.i_crit_edge ]
  %exitcond.not.i.1 = phi i1 [ false, %if.end.i.3.for.body21.i_crit_edge ], [ true, %if.end.i.2.for.body21.i_crit_edge ], [ false, %if.end.i.1.for.body21.i_crit_edge ]
  %arrayidx23.i = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 20, i32 0
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx23.i, align 4
  %25 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smsshado_size, align 4
  call void @omap_vout_free_buffer(i32 noundef %24, i32 noundef %26) #7
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx23.i, align 4
  %arrayidx28.i = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 19, i32 0
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx28.i, align 4
  br i1 %exitcond.not.i, label %for.body21.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge, label %for.body21.i.1

for.body21.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_vout_allocate_vrfb_buffers.exit

for.body21.i.1:                                   ; preds = %for.body21.i
  %arrayidx23.i.1 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 20, i32 1
  %29 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx23.i.1, align 4
  %31 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %smsshado_size, align 4
  call void @omap_vout_free_buffer(i32 noundef %30, i32 noundef %32) #7
  %33 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx23.i.1, align 4
  %arrayidx28.i.1 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 19, i32 1
  %34 = ptrtoint ptr %arrayidx28.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx28.i.1, align 4
  br i1 %exitcond.not.i.1, label %for.body21.i.1.omap_vout_allocate_vrfb_buffers.exit_crit_edge, label %for.body21.i.2

for.body21.i.1.omap_vout_allocate_vrfb_buffers.exit_crit_edge: ; preds = %for.body21.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_vout_allocate_vrfb_buffers.exit

for.body21.i.2:                                   ; preds = %for.body21.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx23.i.2 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 20, i32 2
  %35 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx23.i.2, align 4
  %37 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smsshado_size, align 4
  call void @omap_vout_free_buffer(i32 noundef %36, i32 noundef %38) #7
  %39 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx23.i.2, align 4
  %arrayidx28.i.2 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 19, i32 2
  %40 = ptrtoint ptr %arrayidx28.i.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx28.i.2, align 4
  br label %omap_vout_allocate_vrfb_buffers.exit

if.end29.i:                                       ; preds = %if.end.i.if.end29.i_crit_edge, %for.body.i.preheader.if.end29.i_crit_edge
  %41 = phi i32 [ %call.i, %if.end.i.if.end29.i_crit_edge ], [ %19, %for.body.i.preheader.if.end29.i_crit_edge ]
  %42 = inttoptr i32 %41 to ptr
  %43 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %smsshado_size, align 4
  %45 = call ptr @memset(ptr %42, i32 0, i32 %44)
  %arrayidx.i.1 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 20, i32 1
  %46 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.1 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end29.i.if.end29.i.1_crit_edge

if.end29.i.if.end29.i.1_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.1

if.end.i.1:                                       ; preds = %if.end29.i
  %48 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %smsshado_size, align 4
  %arrayidx1.i.1 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 19, i32 1
  %call.i.1 = call i32 @omap_vout_alloc_buffer(i32 noundef %49, ptr noundef %arrayidx1.i.1) #7
  %50 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i.1, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool17.not.i.1, label %if.end.i.1.for.body21.i_crit_edge, label %if.end.i.1.if.end29.i.1_crit_edge

if.end.i.1.if.end29.i.1_crit_edge:                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.1

if.end.i.1.for.body21.i_crit_edge:                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

if.end29.i.1:                                     ; preds = %if.end.i.1.if.end29.i.1_crit_edge, %if.end29.i.if.end29.i.1_crit_edge
  %51 = phi i32 [ %call.i.1, %if.end.i.1.if.end29.i.1_crit_edge ], [ %47, %if.end29.i.if.end29.i.1_crit_edge ]
  %52 = inttoptr i32 %51 to ptr
  %53 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %smsshado_size, align 4
  %55 = call ptr @memset(ptr %52, i32 0, i32 %54)
  %arrayidx.i.2 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 20, i32 2
  %56 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.2 = icmp eq i32 %57, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %if.end29.i.1.if.end29.i.2_crit_edge

if.end29.i.1.if.end29.i.2_crit_edge:              ; preds = %if.end29.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.2

if.end.i.2:                                       ; preds = %if.end29.i.1
  %58 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %smsshado_size, align 4
  %arrayidx1.i.2 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 19, i32 2
  %call.i.2 = call i32 @omap_vout_alloc_buffer(i32 noundef %59, ptr noundef %arrayidx1.i.2) #7
  %60 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call.i.2, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool17.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool17.not.i.2, label %if.end.i.2.for.body21.i_crit_edge, label %if.end.i.2.if.end29.i.2_crit_edge

if.end.i.2.if.end29.i.2_crit_edge:                ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.2

if.end.i.2.for.body21.i_crit_edge:                ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

if.end29.i.2:                                     ; preds = %if.end.i.2.if.end29.i.2_crit_edge, %if.end29.i.1.if.end29.i.2_crit_edge
  %61 = phi i32 [ %call.i.2, %if.end.i.2.if.end29.i.2_crit_edge ], [ %57, %if.end29.i.1.if.end29.i.2_crit_edge ]
  %62 = inttoptr i32 %61 to ptr
  %63 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %smsshado_size, align 4
  %65 = call ptr @memset(ptr %62, i32 0, i32 %64)
  %arrayidx.i.3 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 20, i32 3
  %66 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.3 = icmp eq i32 %67, 0
  br i1 %tobool.not.i.3, label %if.end.i.3, label %if.end29.i.2.if.end29.i.3_crit_edge

if.end29.i.2.if.end29.i.3_crit_edge:              ; preds = %if.end29.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.3

if.end.i.3:                                       ; preds = %if.end29.i.2
  %68 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %smsshado_size, align 4
  %arrayidx1.i.3 = getelementptr %struct.omap_vout_device, ptr %3, i32 0, i32 19, i32 3
  %call.i.3 = call i32 @omap_vout_alloc_buffer(i32 noundef %69, ptr noundef %arrayidx1.i.3) #7
  %70 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.i.3, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool17.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool17.not.i.3, label %if.end.i.3.for.body21.i_crit_edge, label %if.end.i.3.if.end29.i.3_crit_edge

if.end.i.3.if.end29.i.3_crit_edge:                ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.3

if.end.i.3.for.body21.i_crit_edge:                ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

if.end29.i.3:                                     ; preds = %if.end.i.3.if.end29.i.3_crit_edge, %if.end29.i.2.if.end29.i.3_crit_edge
  %71 = phi i32 [ %call.i.3, %if.end.i.3.if.end29.i.3_crit_edge ], [ %67, %if.end29.i.2.if.end29.i.3_crit_edge ]
  %72 = inttoptr i32 %71 to ptr
  %73 = ptrtoint ptr %smsshado_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %smsshado_size, align 4
  %75 = call ptr @memset(ptr %72, i32 0, i32 %74)
  %vrfb_static_allocation = getelementptr inbounds %struct.omap_vout_device, ptr %3, i32 0, i32 22
  %76 = ptrtoint ptr %vrfb_static_allocation to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %vrfb_static_allocation, align 4
  br label %cleanup

omap_vout_allocate_vrfb_buffers.exit:             ; preds = %for.body21.i.2, %for.body21.i.1.omap_vout_allocate_vrfb_buffers.exit_crit_edge, %for.body21.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge, %if.end.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge
  call void @omap_vrfb_release_ctx(ptr noundef %arrayidx2) #7
  call void @omap_vrfb_release_ctx(ptr noundef %arrayidx2.1) #7
  call void @omap_vrfb_release_ctx(ptr noundef %arrayidx2.2) #7
  call void @omap_vrfb_release_ctx(ptr noundef %arrayidx2.3) #7
  br label %cleanup

cleanup:                                          ; preds = %omap_vout_allocate_vrfb_buffers.exit, %if.end29.i.3, %do.body44.cleanup_crit_edge, %for.body6.2, %for.body6.1.cleanup_crit_edge, %for.body6.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end29.i.3 ], [ 0, %do.body44.cleanup_crit_edge ], [ -12, %do.end ], [ -12, %omap_vout_allocate_vrfb_buffers.exit ], [ -12, %for.body6.2 ], [ -12, %for.body6.1.cleanup_crit_edge ], [ -12, %for.body6.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vrfb_request_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vrfb_release_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vout_release_vrfb(ptr noundef %vout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0
  tail call void @omap_vrfb_release_ctx(ptr noundef %arrayidx) #7
  %arrayidx.1 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 1
  tail call void @omap_vrfb_release_ctx(ptr noundef %arrayidx.1) #7
  %arrayidx.2 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 2
  tail call void @omap_vrfb_release_ctx(ptr noundef %arrayidx.2) #7
  %arrayidx.3 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 3
  tail call void @omap_vrfb_release_ctx(ptr noundef %arrayidx.3) #7
  %req_status = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %req_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %vrfb_dma_tx = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 18
  %2 = ptrtoint ptr %req_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %req_status, align 4
  %xt = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xt, align 4
  tail call void @kfree(ptr noundef %4) #7
  %5 = ptrtoint ptr %vrfb_dma_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vrfb_dma_tx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %9 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %10(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 1169) #7
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 48
  %13 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %14, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %14(ptr noundef %6) #7
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %15 = ptrtoint ptr %vrfb_dma_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vrfb_dma_tx, align 4
  tail call void @dma_release_channel(ptr noundef %16) #7
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_sync.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vout_vrfb_buffer_setup(ptr noundef %vout, ptr nocapture noundef %count, i32 noundef %startindex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rotation.i = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 13
  %0 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rotation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %is_rotation_enabled.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

is_rotation_enabled.exit:                         ; preds = %entry
  %mirror.i = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 14
  %2 = ptrtoint ptr %mirror.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mirror.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %is_rotation_enabled.exit.cleanup_crit_edge, label %is_rotation_enabled.exit.if.end_crit_edge

is_rotation_enabled.exit.if.end_crit_edge:        ; preds = %is_rotation_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

is_rotation_enabled.exit.cleanup_crit_edge:       ; preds = %is_rotation_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %is_rotation_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 4)
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 4
  %vrfb_static_allocation = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 22
  %8 = ptrtoint ptr %vrfb_static_allocation to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vrfb_static_allocation, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp70.not.i = icmp eq i32 %6, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp70.not.i
  br i1 %or.cond, label %if.end.if.end7thread-pre-split_crit_edge, label %for.body.lr.ph.i

if.end.if.end7thread-pre-split_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7thread-pre-split

for.body.lr.ph.i:                                 ; preds = %if.end
  %smsshado_size.i = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %startindex)
  %cmp7.not.i = icmp eq i32 %startindex, -1
  %memory.i = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 38, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc34.i, %if.end29.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 20, i32 %i.071.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i36 = icmp eq i32 %11, 0
  br i1 %tobool.not.i36, label %if.end.i, label %for.body.i.if.end29.i_crit_edge

for.body.i.if.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %smsshado_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smsshado_size.i, align 4
  %arrayidx1.i = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 19, i32 %i.071.i
  %call.i = tail call i32 @omap_vout_alloc_buffer(i32 noundef %13, ptr noundef %arrayidx1.i) #7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp ne i32 %call.i, 0
  %or.cond.i = or i1 %cmp7.not.i, %tobool6.not.i
  br i1 %or.cond.i, label %if.end14.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %memory.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp9.i = icmp ne i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.071.i, i32 %startindex)
  %cmp11.not.i = icmp slt i32 %i.071.i, %startindex
  %or.cond64.i = select i1 %cmp9.i, i1 true, i1 %cmp11.not.i
  br i1 %or.cond64.i, label %if.then8.i.for.cond19.preheader.i_crit_edge, label %if.then8.i.if.end7thread-pre-split_crit_edge

if.then8.i.if.end7thread-pre-split_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7thread-pre-split

if.then8.i.for.cond19.preheader.i_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.for.cond19.preheader.i_crit_edge, label %if.end14.i.if.end29.i_crit_edge

if.end14.i.if.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end14.i.for.cond19.preheader.i_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %if.end14.i.for.cond19.preheader.i_crit_edge, %if.then8.i.for.cond19.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.071.i)
  %cmp2073.i = icmp sgt i32 %i.071.i, 0
  br i1 %cmp2073.i, label %for.cond19.preheader.i.for.body21.i_crit_edge, label %for.cond19.preheader.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge

for.cond19.preheader.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge: ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_vout_allocate_vrfb_buffers.exit

for.cond19.preheader.i.for.body21.i_crit_edge:    ; preds = %for.cond19.preheader.i
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.cond19.preheader.i.for.body21.i_crit_edge
  %j.074.i = phi i32 [ %inc.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.cond19.preheader.i.for.body21.i_crit_edge ]
  %arrayidx23.i = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 20, i32 %j.074.i
  %17 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx23.i, align 4
  %19 = ptrtoint ptr %smsshado_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %smsshado_size.i, align 4
  tail call void @omap_vout_free_buffer(i32 noundef %18, i32 noundef %20) #7
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx23.i, align 4
  %arrayidx28.i = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 19, i32 %j.074.i
  %22 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx28.i, align 4
  %inc.i = add nuw nsw i32 %j.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.071.i
  br i1 %exitcond.not.i, label %for.body21.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

for.body21.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_vout_allocate_vrfb_buffers.exit

if.end29.i:                                       ; preds = %if.end14.i.if.end29.i_crit_edge, %for.body.i.if.end29.i_crit_edge
  %23 = phi i32 [ %call.i, %if.end14.i.if.end29.i_crit_edge ], [ %11, %for.body.i.if.end29.i_crit_edge ]
  %24 = inttoptr i32 %23 to ptr
  %25 = ptrtoint ptr %smsshado_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smsshado_size.i, align 4
  %27 = call ptr @memset(ptr %24, i32 0, i32 %26)
  %inc34.i = add nuw i32 %i.071.i, 1
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count, align 4
  %cmp.i = icmp ult i32 %inc34.i, %29
  br i1 %cmp.i, label %if.end29.i.for.body.i_crit_edge, label %if.end29.i.if.end7_crit_edge

if.end29.i.if.end7_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

omap_vout_allocate_vrfb_buffers.exit:             ; preds = %for.body21.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge, %for.cond19.preheader.i.omap_vout_allocate_vrfb_buffers.exit_crit_edge
  %30 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %count, align 4
  br label %cleanup

if.end7thread-pre-split:                          ; preds = %if.then8.i.if.end7thread-pre-split_crit_edge, %if.end.if.end7thread-pre-split_crit_edge
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.end29.i.if.end7_crit_edge
  %32 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %29, %if.end29.i.if.end7_crit_edge ]
  %dss_mode = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 6
  %33 = ptrtoint ptr %dss_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dss_mode, align 4
  %35 = add i32 %34, -512
  %switch.and = and i32 %35, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1343.not = icmp eq i32 %32, 0
  br i1 %cmp1343.not, label %if.end7.cleanup_crit_edge, label %for.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %pix = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 8
  %height = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 8, i32 1
  %bpp = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 %i.044
  %arrayidx14 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 19, i32 %i.044
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14, align 4
  %38 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pix, align 4
  %conv = trunc i32 %39 to i16
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %conv16 = trunc i32 %41 to i16
  %42 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bpp, align 4
  tail call void @omap_vrfb_setup(ptr noundef %arrayidx, i32 noundef %37, i16 noundef zeroext %conv, i16 noundef zeroext %conv16, i32 noundef %43, i1 noundef zeroext %switch.selectcmp) #7
  %inc = add nuw i32 %i.044, 1
  %44 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count, align 4
  %cmp13 = icmp ult i32 %inc, %45
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %omap_vout_allocate_vrfb_buffers.exit, %is_rotation_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %is_rotation_enabled.exit.cleanup_crit_edge ], [ -12, %omap_vout_allocate_vrfb_buffers.exit ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vrfb_setup(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vout_prepare_vrfb(ptr noundef %vout, ptr noundef %vb) local_unnamed_addr #0 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vrfb_dma_tx = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 18
  %0 = ptrtoint ptr %vrfb_dma_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrfb_dma_tx, align 4
  %xt3 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %xt3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xt3, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  %rotation.i = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 13
  %6 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rotation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %is_rotation_enabled.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

is_rotation_enabled.exit:                         ; preds = %entry
  %mirror.i = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 14
  %8 = ptrtoint ptr %mirror.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mirror.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %is_rotation_enabled.exit.cleanup113_crit_edge, label %is_rotation_enabled.exit.if.end_crit_edge

is_rotation_enabled.exit.if.end_crit_edge:        ; preds = %is_rotation_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

is_rotation_enabled.exit.cleanup113_crit_edge:    ; preds = %is_rotation_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

if.end:                                           ; preds = %is_rotation_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %bpp = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 16
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bpp, align 4
  %vrfb_bpp = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 17
  %12 = ptrtoint ptr %vrfb_bpp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vrfb_bpp, align 4
  %mul = shl i32 %11, 11
  %mul5 = mul i32 %mul, %13
  %pix = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 8
  %14 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pix, align 4
  %mul7 = mul i32 %15, %11
  %sub = sub i32 %mul5, %mul7
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %3, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %paddr = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 %18, i32 2
  %19 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %paddr, align 4
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %dst_start to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dst_start, align 4
  %height = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %numf to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %numf, align 4
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %frame_size, align 4
  %26 = load i32, ptr %pix, align 4
  %27 = load i32, ptr %bpp, align 4
  %mul13 = mul i32 %27, %26
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul13, ptr %sgl, align 4
  %icg = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 1, i32 1
  %29 = ptrtoint ptr %icg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %icg, align 4
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dir, align 4
  %src_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %src_sgl to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %src_sgl, align 2
  %src_inc = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %src_inc to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %src_inc, align 4
  %dst_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dst_sgl, align 1
  %dst_inc = getelementptr inbounds %struct.dma_interleaved_template, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %dst_inc to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %dst_inc, align 1
  %tobool.not.i176 = icmp eq ptr %1, null
  br i1 %tobool.not.i176, label %if.end.do.end_crit_edge, label %lor.lhs.false.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_interleaved_dma.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 41
  %37 = ptrtoint ptr %device_prep_interleaved_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_prep_interleaved_dma.i, align 4
  %tobool4.not.i = icmp eq ptr %38, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_interleaved_dma.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

dmaengine_prep_interleaved_dma.exit:              ; preds = %lor.lhs.false2.i
  %call12.i = tail call ptr %38(ptr noundef nonnull %1, ptr noundef %3, i32 noundef 3) #7
  %cmp = icmp eq ptr %call12.i, null
  br i1 %cmp, label %dmaengine_prep_interleaved_dma.exit.do.end_crit_edge, label %if.end20

dmaengine_prep_interleaved_dma.exit.do.end_crit_edge: ; preds = %dmaengine_prep_interleaved_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_interleaved_dma.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #10
  br label %cleanup113

if.end20:                                         ; preds = %dmaengine_prep_interleaved_dma.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call12.i, i32 0, i32 6
  %39 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @omap_vout_vrfb_dma_tx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call12.i, i32 0, i32 8
  %40 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %vrfb_dma_tx, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call12.i, i32 0, i32 4
  %41 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_submit.i, align 4
  %call.i177 = tail call i32 %42(ptr noundef nonnull %call12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i177)
  %tobool24.not = icmp sgt i32 %call.i177, -1
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %call.i177) #10
  br label %cleanup113

if.end31:                                         ; preds = %if.end20
  %tx_status = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 18, i32 3
  %43 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_status, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 50
  %46 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %47(ptr noundef nonnull %1) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 290) #7
  %48 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp41 = icmp eq i32 %49, 1
  br i1 %cmp41, label %if.end31.if.end81_crit_edge, label %if.then50

if.end31.if.end81_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then50:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %50 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wait = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 18, i32 4
  %call53204 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %51 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp57205 = icmp eq i32 %52, 1
  br i1 %cmp57205, label %if.then50.for.end_crit_edge, label %if.then50.if.end73_crit_edge

if.then50.if.end73_crit_edge:                     ; preds = %if.then50
  br label %if.end73

if.then50.for.end_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end73:                                         ; preds = %cleanup.if.end73_crit_edge, %if.then50.if.end73_crit_edge
  %__ret51.1207 = phi i32 [ %__ret51.1, %cleanup.if.end73_crit_edge ], [ 1000, %if.then50.if.end73_crit_edge ]
  %call53206 = phi i32 [ %call53, %cleanup.if.end73_crit_edge ], [ %call53204, %if.then50.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53206)
  %tobool74.not = icmp eq i32 %call53206, 0
  br i1 %tobool74.not, label %cleanup, label %if.end73.__out_crit_edge

if.end73.__out_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end73
  %call77 = call i32 @schedule_timeout(i32 noundef %__ret51.1207) #7
  %call53 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %53 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp57 = icmp eq i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool61.not = icmp eq i32 %call77, 0
  %55 = select i1 %cmp57, i1 %tobool61.not, i1 false
  %__ret51.1 = select i1 %55, i32 1, i32 %call77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret51.1)
  %tobool67.not = icmp eq i32 %__ret51.1, 0
  %56 = select i1 %cmp57, i1 true, i1 %tobool67.not
  br i1 %56, label %cleanup.for.end_crit_edge, label %cleanup.if.end73_crit_edge

cleanup.if.end73_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then50.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end73.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end81

if.end81:                                         ; preds = %__out, %if.end31.if.end81_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #7
  %57 = call ptr @memset(ptr %state.i, i32 255, i32 16)
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 49
  %60 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_tx_status.i, align 4
  %call.i178 = call i32 %61(ptr noundef nonnull %1, i32 noundef %call.i177, ptr noundef nonnull %state.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #7
  %62 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp86 = icmp eq i32 %63, 0
  br i1 %cmp86, label %do.end90, label %if.else

do.end90:                                         ; preds = %if.end81
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10) #10
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 47
  %66 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %do.end90.cleanup113_crit_edge, label %dmaengine_terminate_async.exit.i

do.end90.cleanup113_crit_edge:                    ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

dmaengine_terminate_async.exit.i:                 ; preds = %do.end90
  %call.i.i = call i32 %67(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i179 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i179, label %if.end.i, label %dmaengine_terminate_async.exit.i.cleanup113_crit_edge

dmaengine_terminate_async.exit.i.cleanup113_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 1169) #7
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %69, i32 0, i32 48
  %70 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %71, null
  br i1 %tobool.not.i1.i, label %if.end.i.cleanup113_crit_edge, label %if.then.i2.i

if.end.i.cleanup113_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %71(ptr noundef nonnull %1) #7
  br label %cleanup113

if.else:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp94.not = icmp eq i32 %call.i178, 0
  br i1 %cmp94.not, label %if.end104, label %do.end98

do.end98:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i178)
  %cmp100 = icmp eq i32 %call.i178, 3
  %cond = select i1 %cmp100, ptr @.str.20, ptr @.str.21
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #10
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i180 = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 47
  %74 = ptrtoint ptr %device_terminate_all.i.i180 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device_terminate_all.i.i180, align 4
  %tobool.not.i.i181 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i181, label %do.end98.cleanup113_crit_edge, label %dmaengine_terminate_async.exit.i184

do.end98.cleanup113_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

dmaengine_terminate_async.exit.i184:              ; preds = %do.end98
  %call.i.i182 = call i32 %75(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool.not.i183 = icmp eq i32 %call.i.i182, 0
  br i1 %tobool.not.i183, label %if.end.i187, label %dmaengine_terminate_async.exit.i184.cleanup113_crit_edge

dmaengine_terminate_async.exit.i184.cleanup113_crit_edge: ; preds = %dmaengine_terminate_async.exit.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

if.end.i187:                                      ; preds = %dmaengine_terminate_async.exit.i184
  call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 1169) #7
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %device_synchronize.i.i185 = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 48
  %78 = ptrtoint ptr %device_synchronize.i.i185 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_synchronize.i.i185, align 4
  %tobool.not.i1.i186 = icmp eq ptr %79, null
  br i1 %tobool.not.i1.i186, label %if.end.i187.cleanup113_crit_edge, label %if.then.i2.i188

if.end.i187.cleanup113_crit_edge:                 ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

if.then.i2.i188:                                  ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  call void %79(ptr noundef nonnull %1) #7
  br label %cleanup113

if.end104:                                        ; preds = %if.else
  %mirror.i190 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 14
  %80 = ptrtoint ptr %mirror.i190 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %mirror.i190, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i191 = icmp eq i8 %81, 0
  %82 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rotation.i, align 4
  br i1 %tobool.not.i191, label %if.end104.calc_rotation.exit_crit_edge, label %if.end.i193

if.end104.calc_rotation.exit_crit_edge:           ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_rotation.exit

if.end.i193:                                      ; preds = %if.end104
  %switch.tableidx = add i32 %83, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %84 = icmp ult i32 %switch.tableidx, 3
  br i1 %84, label %switch.lookup, label %if.end.i193.calc_rotation.exit_crit_edge

if.end.i193.calc_rotation.exit_crit_edge:         ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_rotation.exit

switch.lookup:                                    ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.omap_vout_prepare_vrfb, i32 0, i32 %switch.tableidx
  %85 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %calc_rotation.exit

calc_rotation.exit:                               ; preds = %switch.lookup, %if.end.i193.calc_rotation.exit_crit_edge, %if.end104.calc_rotation.exit_crit_edge
  %retval.0.i194 = phi i32 [ %83, %if.end104.calc_rotation.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 2, %if.end.i193.calc_rotation.exit_crit_edge ]
  %86 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index, align 4
  %arrayidx110 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 %87, i32 2, i32 %retval.0.i194
  %88 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx110, align 4
  %arrayidx112 = getelementptr %struct.omap_vout_device, ptr %vout, i32 0, i32 34, i32 %87
  %90 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx112, align 4
  br label %cleanup113

cleanup113:                                       ; preds = %calc_rotation.exit, %if.then.i2.i188, %if.end.i187.cleanup113_crit_edge, %dmaengine_terminate_async.exit.i184.cleanup113_crit_edge, %do.end98.cleanup113_crit_edge, %if.then.i2.i, %if.end.i.cleanup113_crit_edge, %dmaengine_terminate_async.exit.i.cleanup113_crit_edge, %do.end90.cleanup113_crit_edge, %do.end28, %do.end, %is_rotation_enabled.exit.cleanup113_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ 0, %calc_rotation.exit ], [ 0, %is_rotation_enabled.exit.cleanup113_crit_edge ], [ -22, %do.end90.cleanup113_crit_edge ], [ -22, %dmaengine_terminate_async.exit.i.cleanup113_crit_edge ], [ -22, %if.end.i.cleanup113_crit_edge ], [ -22, %if.then.i2.i ], [ -22, %do.end98.cleanup113_crit_edge ], [ -22, %dmaengine_terminate_async.exit.i184.cleanup113_crit_edge ], [ -22, %if.end.i187.cleanup113_crit_edge ], [ -22, %if.then.i2.i188 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_vout_vrfb_dma_tx_callback(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_status = getelementptr inbounds %struct.vid_vrfb_dma, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %tx_status, align 4
  %wait = getelementptr inbounds %struct.vid_vrfb_dma, ptr %data, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_vout_calculate_vrfb_offset(ptr noundef %vout) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mirror = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 14
  %0 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mirror, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %crop1 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9
  %pix2 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 8
  %rotation.i = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 13
  %2 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotation.i, align 4
  br i1 %tobool.not, label %entry.calc_rotation.exit_crit_edge, label %if.end.i

entry.calc_rotation.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_rotation.exit

if.end.i:                                         ; preds = %entry
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end.i.calc_rotation.exit_crit_edge

if.end.i.calc_rotation.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_rotation.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.omap_vout_calculate_vrfb_offset, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %calc_rotation.exit

calc_rotation.exit:                               ; preds = %switch.lookup, %if.end.i.calc_rotation.exit_crit_edge, %entry.calc_rotation.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %entry.calc_rotation.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 2, %if.end.i.calc_rotation.exit_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end19.fold.split [
    i32 1448695129, label %calc_rotation.exit.if.then_crit_edge
    i32 1498831189, label %calc_rotation.exit.if.then_crit_edge317
    i32 876758866, label %calc_rotation.exit.if.end19_crit_edge
    i32 859981650, label %if.then16
  ]

calc_rotation.exit.if.end19_crit_edge:            ; preds = %calc_rotation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

calc_rotation.exit.if.then_crit_edge317:          ; preds = %calc_rotation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

calc_rotation.exit.if.then_crit_edge:             ; preds = %calc_rotation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %calc_rotation.exit.if.then_crit_edge, %calc_rotation.exit.if.then_crit_edge317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i284 = icmp eq i32 %3, 0
  %tobool7.not = select i1 %tobool.not.i284, i1 %tobool.not, i1 false
  %. = select i1 %tobool7.not, i32 1, i32 2
  %.282 = select i1 %tobool7.not, i32 2, i32 4
  br label %if.end19

if.then16:                                        ; preds = %calc_rotation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19.fold.split:                              ; preds = %calc_rotation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %if.end19.fold.split, %if.then16, %if.then, %calc_rotation.exit.if.end19_crit_edge
  %vr_ps.0 = phi i32 [ 1, %if.then16 ], [ %., %if.then ], [ 1, %calc_rotation.exit.if.end19_crit_edge ], [ 1, %if.end19.fold.split ]
  %ps.0 = phi i32 [ 3, %if.then16 ], [ %.282, %if.then ], [ 4, %calc_rotation.exit.if.end19_crit_edge ], [ 2, %if.end19.fold.split ]
  %ps20 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 25
  %9 = ptrtoint ptr %ps20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ps.0, ptr %ps20, align 4
  %vr_ps21 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 26
  %10 = ptrtoint ptr %vr_ps21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %vr_ps.0, ptr %vr_ps21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i287 = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not.i287, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.else30, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %height = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height25 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %height25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height25, align 4
  %top = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %top, align 4
  %17 = add i32 %14, %16
  %sub26 = sub i32 %12, %17
  %18 = ptrtoint ptr %pix2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pix2, align 4
  %width27 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %width27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width27, align 4
  %22 = ptrtoint ptr %crop1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crop1, align 4
  %24 = add i32 %21, %23
  %sub29 = sub i32 %19, %24
  br label %if.end32

if.else30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %pix2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pix2, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then24
  %ctop.0 = phi i32 [ %sub26, %if.then24 ], [ 0, %if.else30 ]
  %cleft.0 = phi i32 [ %sub29, %if.then24 ], [ 0, %if.else30 ]
  %line_length.0 = phi i32 [ 2048, %if.then24 ], [ %26, %if.else30 ]
  %line_length33 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 27
  %27 = ptrtoint ptr %line_length33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %line_length.0, ptr %line_length33, align 4
  %28 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %retval.0.i, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb58
    i32 3, label %sw.bb99
    i32 0, label %sw.bb133
  ]

sw.bb:                                            ; preds = %if.end32
  %yoffset = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0, i32 6
  %29 = ptrtoint ptr %yoffset to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %yoffset, align 2
  %conv = zext i16 %30 to i32
  %bytespp = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0, i32 7
  %31 = ptrtoint ptr %bytespp to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bytespp, align 4
  %conv36 = zext i8 %32 to i32
  %mul = mul nuw nsw i32 %conv36, %conv
  %div.lhs.trunc = trunc i32 %ps.0 to i8
  %div.rhs.trunc = trunc i32 %vr_ps.0 to i8
  %div292 = udiv i8 %div.lhs.trunc, %div.rhs.trunc
  %div.zext = zext i8 %div292 to i32
  %mul40 = mul i32 %line_length.0, %cleft.0
  %top41 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %top41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %top41, align 4
  br i1 %tobool.not, label %if.then38, label %if.else44

if.then38:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %reass.add315 = add i32 %34, %mul40
  %reass.mul316 = mul i32 %reass.add315, %div.zext
  %add43 = add i32 %reass.mul316, %mul
  br label %sw.epilog

if.else44:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %width51 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %width51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width51, align 4
  %div52 = udiv i32 %36, %vr_ps.0
  %sub53 = add i32 %div52, -1
  %mul54 = mul i32 %line_length.0, %ps.0
  %mul55 = mul i32 %mul54, %sub53
  %reass.add313 = add i32 %34, %mul40
  %reass.mul314 = mul i32 %reass.add313, %div.zext
  %add50 = add i32 %reass.mul314, %mul
  %add56 = add i32 %add50, %mul55
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end32
  %yoffset61 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0, i32 6
  %37 = ptrtoint ptr %yoffset61 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %yoffset61, align 2
  %conv62 = zext i16 %38 to i32
  %mul63 = shl nuw nsw i32 %conv62, 11
  %bytespp66 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0, i32 7
  %39 = ptrtoint ptr %bytespp66 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bytespp66, align 4
  %conv67 = zext i8 %40 to i32
  %xoffset = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0, i32 5
  %41 = ptrtoint ptr %xoffset to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %xoffset, align 4
  %conv71 = zext i16 %42 to i32
  %mul68281 = add nuw nsw i32 %mul63, %conv71
  %add77 = mul i32 %mul68281, %conv67
  br i1 %tobool.not, label %if.then79, label %if.else86

if.then79:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  %mul81 = mul i32 %line_length.0, %ctop.0
  %div83 = sdiv i32 %cleft.0, %vr_ps.0
  %reass.add311 = add i32 %div83, %mul81
  %reass.mul312 = mul i32 %reass.add311, %ps.0
  %add85 = add i32 %reass.mul312, %add77
  br label %sw.epilog

if.else86:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  %div90 = sdiv i32 %cleft.0, %vr_ps.0
  %height93 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 3
  %43 = ptrtoint ptr %height93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height93, align 4
  %sub94 = add i32 %ctop.0, -1
  %reass.add309 = add i32 %sub94, %44
  %reass.mul310 = mul i32 %reass.add309, %line_length.0
  %reass.add307 = add i32 %reass.mul310, %div90
  %reass.mul308 = mul i32 %reass.add307, %ps.0
  %add97 = add i32 %reass.mul308, %add77
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end32
  %xoffset102 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0, i32 5
  %45 = ptrtoint ptr %xoffset102 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %xoffset102, align 4
  %conv103 = zext i16 %46 to i32
  %mul104 = shl nuw nsw i32 %conv103, 11
  %bytespp107 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 21, i32 0, i32 7
  %47 = ptrtoint ptr %bytespp107 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bytespp107, align 4
  %conv108 = zext i8 %48 to i32
  %mul109 = mul i32 %mul104, %conv108
  %div110.lhs.trunc = trunc i32 %ps.0 to i8
  %div110.rhs.trunc = trunc i32 %vr_ps.0 to i8
  %div110293 = udiv i8 %div110.lhs.trunc, %div110.rhs.trunc
  %div110.zext = zext i8 %div110293 to i32
  br i1 %tobool.not, label %if.then112, label %if.else119

if.then112:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  %mul113 = mul i32 %line_length.0, %div110.zext
  %49 = ptrtoint ptr %crop1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crop1, align 4
  %mul115 = mul i32 %mul113, %50
  %mul117 = mul i32 %ctop.0, %ps.0
  %add116 = add i32 %mul109, %mul117
  %add118 = add i32 %add116, %mul115
  br label %sw.epilog

if.else119:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %crop1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crop1, align 4
  %mul122 = mul i32 %52, %div110.zext
  %mul124 = mul i32 %ctop.0, %ps.0
  %width126 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 2
  %53 = ptrtoint ptr %width126 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width126, align 4
  %div127 = udiv i32 %54, %vr_ps.0
  %sub128 = add i32 %div127, -1
  %mul130 = mul i32 %sub128, %ps.0
  %reass.add304 = add i32 %mul130, %mul122
  %reass.mul305 = mul i32 %reass.add304, %line_length.0
  %add125 = add i32 %mul109, %mul124
  %add131 = add i32 %add125, %reass.mul305
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end32
  %top137 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %top137 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %top137, align 4
  br i1 %tobool.not, label %if.then135, label %if.else143

if.then135:                                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #9
  %mul138 = mul i32 %56, %line_length.0
  %57 = ptrtoint ptr %crop1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %crop1, align 4
  %div140 = sdiv i32 %58, %vr_ps.0
  %reass.add = add i32 %div140, %mul138
  %reass.mul303 = mul i32 %reass.add, %ps.0
  br label %sw.epilog

if.else143:                                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %crop1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crop1, align 4
  %div148 = sdiv i32 %60, %vr_ps.0
  %height151 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 3
  %61 = ptrtoint ptr %height151 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height151, align 4
  %sub152 = add i32 %56, -1
  %reass.add301 = add i32 %sub152, %62
  %reass.mul302 = mul i32 %reass.add301, %line_length.0
  %reass.add300 = add i32 %reass.mul302, %div148
  %reass.mul = mul i32 %reass.add300, %ps.0
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %mul157 = mul i32 %line_length.0, %ps.0
  %top158 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %top158 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %top158, align 4
  %mul159 = mul i32 %mul157, %64
  %div160 = sdiv i32 %mul159, %vr_ps.0
  %65 = ptrtoint ptr %crop1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %crop1, align 4
  %mul162 = mul i32 %66, %ps.0
  %div163 = sdiv i32 %mul162, %vr_ps.0
  %add164 = add i32 %div163, %div160
  %width165 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 9, i32 2
  %67 = ptrtoint ptr %width165 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %width165, align 4
  %div166 = udiv i32 %68, %vr_ps.0
  %sub167 = add i32 %div166, -1
  %mul168 = mul i32 %sub167, %ps.0
  %add169 = add i32 %add164, %mul168
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else143, %if.then135, %if.else119, %if.then112, %if.else86, %if.then79, %if.else44, %if.then38
  %reass.mul303.sink = phi i32 [ %reass.mul303, %if.then135 ], [ %reass.mul, %if.else143 ], [ %add118, %if.then112 ], [ %add131, %if.else119 ], [ %add85, %if.then79 ], [ %add97, %if.else86 ], [ %add43, %if.then38 ], [ %add56, %if.else44 ], [ %add169, %sw.default ]
  %cropped_offset3 = getelementptr inbounds %struct.omap_vout_device, ptr %vout, i32 0, i32 35
  %69 = ptrtoint ptr %cropped_offset3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %reass.mul303.sink, ptr %cropped_offset3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vout_alloc_buffer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap/omap_vout_vrfb.c", i32 108, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap_vout_setup_vrfb_bufs._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap_vout_setup_vrfb_bufs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap/omap_vout_vrfb.c", i32 150, i32 3}
!10 = !{ptr @omap_vout_setup_vrfb_bufs._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap_vout_setup_vrfb_bufs._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @omap_vout_setup_vrfb_bufs.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap/omap_vout_vrfb.c", i32 154, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/omap/omap_vout_vrfb.c", i32 272, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @omap_vout_prepare_vrfb._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @omap_vout_prepare_vrfb._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap/omap_vout_vrfb.c", i32 281, i32 3}
!22 = !{ptr @omap_vout_prepare_vrfb._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap_vout_prepare_vrfb._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/omap/omap_vout_vrfb.c", i32 295, i32 3}
!26 = !{ptr @omap_vout_prepare_vrfb._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap_vout_prepare_vrfb._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/omap/omap_vout_vrfb.c", i32 299, i32 3}
!30 = !{ptr @omap_vout_prepare_vrfb._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @omap_vout_prepare_vrfb._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
