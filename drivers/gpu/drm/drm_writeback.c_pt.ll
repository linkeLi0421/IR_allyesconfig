; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_writeback.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_writeback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_writeback_connector_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_writeback_connector_init\09\09\09\09"
module asm "\09.long\09__crc_drm_writeback_connector_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_connector_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_writeback_prepare_job\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_writeback_prepare_job\09\09\09\09"
module asm "\09.long\09__crc_drm_writeback_prepare_job\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_prepare_job:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_prepare_job\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_prepare_job:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_writeback_queue_job\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_writeback_queue_job\09\09\09\09"
module asm "\09.long\09__crc_drm_writeback_queue_job\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_queue_job:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_queue_job\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_queue_job:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_writeback_cleanup_job\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_writeback_cleanup_job\09\09\09\09"
module asm "\09.long\09__crc_drm_writeback_cleanup_job\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_cleanup_job:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_cleanup_job\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_cleanup_job:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_writeback_signal_completion\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_writeback_signal_completion\09\09\09\09"
module asm "\09.long\09__crc_drm_writeback_signal_completion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_signal_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_signal_completion\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_signal_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_writeback_get_out_fence\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_writeback_get_out_fence\09\09\09\09"
module asm "\09.long\09__crc_drm_writeback_get_out_fence\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_writeback_get_out_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_writeback_get_out_fence\22\09\09\09\09\09"
module asm "__kstrtabns_drm_writeback_get_out_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.87, i64, i64, i32, %struct.kref, i32 }
%union.anon.87 = type { i64 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@drm_writeback_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@drm_writeback_connector_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&wb_connector->job_lock\00", [40 x i8] zeroinitializer }, align 32
@drm_writeback_connector_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&wb_connector->fence_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CONNECTOR:%d-%s\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_drm_writeback_connector_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_connector_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_connector_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_connector_init to i32), ptr @__kstrtab_drm_writeback_connector_init, ptr @__kstrtabns_drm_writeback_connector_init }, section "___ksymtab+drm_writeback_connector_init", align 4
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/drm_writeback.c\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_drm_writeback_prepare_job = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_prepare_job = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_prepare_job = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_prepare_job to i32), ptr @__kstrtab_drm_writeback_prepare_job, ptr @__kstrtabns_drm_writeback_prepare_job }, section "___ksymtab+drm_writeback_prepare_job", align 4
@__kstrtab_drm_writeback_queue_job = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_queue_job = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_queue_job = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_queue_job to i32), ptr @__kstrtab_drm_writeback_queue_job, ptr @__kstrtabns_drm_writeback_queue_job }, section "___ksymtab+drm_writeback_queue_job", align 4
@__kstrtab_drm_writeback_cleanup_job = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_cleanup_job = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_cleanup_job = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_cleanup_job to i32), ptr @__kstrtab_drm_writeback_cleanup_job, ptr @__kstrtabns_drm_writeback_cleanup_job }, section "___ksymtab+drm_writeback_cleanup_job", align 4
@drm_writeback_signal_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&job->cleanup_work)\00", [58 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_drm_writeback_signal_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_signal_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_signal_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_signal_completion to i32), ptr @__kstrtab_drm_writeback_signal_completion, ptr @__kstrtabns_drm_writeback_signal_completion }, section "___ksymtab+drm_writeback_signal_completion", align 4
@drm_writeback_fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @drm_writeback_fence_get_driver_name, ptr @drm_writeback_fence_get_timeline_name, ptr @drm_writeback_fence_enable_signaling, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_drm_writeback_get_out_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_writeback_get_out_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_writeback_get_out_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_writeback_get_out_fence to i32), ptr @__kstrtab_drm_writeback_get_out_fence, ptr @__kstrtabns_drm_writeback_get_out_fence }, section "___ksymtab+drm_writeback_get_out_fence", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WRITEBACK_FB_ID\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WRITEBACK_PIXEL_FORMATS\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WRITEBACK_OUT_FENCE_PTR\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"drm_writeback_encoder_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 148, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 212, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 215, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 218, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 246, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 394, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"drm_writeback_fence_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 107, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 119, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 130, i32 9 }
@___asan_gen_.47 = private constant [35 x i8] c"../drivers/gpu/drm/drm_writeback.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 138, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 545, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_drm_writeback_cleanup_job, ptr @__ksymtab_drm_writeback_connector_init, ptr @__ksymtab_drm_writeback_get_out_fence, ptr @__ksymtab_drm_writeback_prepare_job, ptr @__ksymtab_drm_writeback_queue_job, ptr @__ksymtab_drm_writeback_signal_completion, ptr @drm_writeback_encoder_funcs, ptr @drm_writeback_connector_init.__key, ptr @.str, ptr @drm_writeback_connector_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @drm_writeback_signal_completion.__key, ptr @.str.5, ptr @drm_writeback_fence_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_writeback_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_writeback_connector_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_writeback_connector_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_writeback_signal_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_writeback_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_writeback_connector_init(ptr noundef %dev, ptr noundef %wb_connector, ptr noundef %con_funcs, ptr noundef %enc_helper_funcs, ptr noundef %formats, i32 noundef %n_formats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %writeback_fb_id_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 85
  %0 = ptrtoint ptr %writeback_fb_id_property.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %writeback_fb_id_property.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end5.i_crit_edge

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @drm_property_create_object(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.6, i32 noundef -67372037) #8
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %writeback_fb_id_property.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %writeback_fb_id_property.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %entry.if.end5.i_crit_edge
  %writeback_pixel_formats_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 86
  %3 = ptrtoint ptr %writeback_pixel_formats_property.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %writeback_pixel_formats_property.i, align 4
  %tobool7.not.i = icmp eq ptr %4, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.if.end15.i_crit_edge

if.end5.i.if.end15.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.end5.i
  %call9.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef -2147483628, ptr noundef nonnull @.str.7, i32 noundef 0) #8
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then8.i.cleanup_crit_edge, label %if.end12.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %writeback_pixel_formats_property.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %writeback_pixel_formats_property.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end12.i, %if.end5.i.if.end15.i_crit_edge
  %writeback_out_fence_ptr_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 87
  %6 = ptrtoint ptr %writeback_out_fence_ptr_property.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %writeback_out_fence_ptr_property.i, align 4
  %tobool17.not.i = icmp eq ptr %7, null
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end15.i.if.end_crit_edge

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then18.i:                                      ; preds = %if.end15.i
  %call19.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef -1) #8
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.then18.i.cleanup_crit_edge, label %if.end22.i

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %writeback_out_fence_ptr_property.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19.i, ptr %writeback_out_fence_ptr_property.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end22.i, %if.end15.i.if.end_crit_edge
  %mul = shl i32 %n_formats, 2
  %call1 = tail call ptr @drm_property_create_blob(ptr noundef %dev, i32 noundef %mul, ptr noundef %formats) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %encoder = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 1
  %helper_private.i = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 1, i32 11
  %10 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %enc_helper_funcs, ptr %helper_private.i, align 4
  %call7 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef %encoder, ptr noundef nonnull @drm_writeback_encoder_funcs, i32 noundef 5, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end5.fail_crit_edge

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end9:                                          ; preds = %if.end5
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %wb_connector, i32 0, i32 12
  %11 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %interlace_allowed, align 8
  %call10 = tail call i32 @drm_connector_init(ptr noundef %dev, ptr noundef %wb_connector, ptr noundef %con_funcs, i32 noundef 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.connector_fail_crit_edge

if.end9.connector_fail_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %connector_fail

if.end13:                                         ; preds = %if.end9
  %call15 = tail call i32 @drm_connector_attach_encoder(ptr noundef %wb_connector, ptr noundef %encoder) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %attach_fail

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 4
  %12 = ptrtoint ptr %job_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %job_queue, ptr %job_queue, align 4
  %prev.i = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %job_queue, ptr %prev.i, align 4
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %job_lock, ptr noundef nonnull @.str, ptr noundef nonnull @drm_writeback_connector_init.__key, i16 noundef signext 3) #8
  %call20 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #8
  %conv = trunc i64 %call20 to i32
  %fence_context = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 5
  %14 = ptrtoint ptr %fence_context to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %fence_context, align 8
  %fence_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %fence_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @drm_writeback_connector_init.__key.1, i16 noundef signext 3) #8
  %timeline_name = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 8
  %base25 = getelementptr inbounds %struct.drm_connector, ptr %wb_connector, i32 0, i32 6
  %15 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base25, align 8
  %name = getelementptr inbounds %struct.drm_connector, ptr %wb_connector, i32 0, i32 7
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %timeline_name, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %16, ptr noundef %18)
  %19 = ptrtoint ptr %writeback_out_fence_ptr_property.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %writeback_out_fence_ptr_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base25, ptr noundef %20, i64 noundef 0) #8
  %21 = ptrtoint ptr %writeback_fb_id_property.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %writeback_fb_id_property.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base25, ptr noundef %22, i64 noundef 0) #8
  %23 = ptrtoint ptr %writeback_pixel_formats_property.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %writeback_pixel_formats_property.i, align 4
  %25 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call1, align 4
  %conv32 = zext i32 %26 to i64
  tail call void @drm_object_attach_property(ptr noundef %base25, ptr noundef %24, i64 noundef %conv32) #8
  %pixel_formats_blob_ptr = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 2
  %27 = ptrtoint ptr %pixel_formats_blob_ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call1, ptr %pixel_formats_blob_ptr, align 8
  br label %cleanup

attach_fail:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_connector_cleanup(ptr noundef %wb_connector) #8
  br label %connector_fail

connector_fail:                                   ; preds = %attach_fail, %if.end9.connector_fail_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.connector_fail_crit_edge ], [ %call15, %attach_fail ]
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #8
  br label %fail

fail:                                             ; preds = %connector_fail, %if.end5.fail_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end5.fail_crit_edge ], [ %ret.0, %connector_fail ]
  tail call void @drm_property_blob_put(ptr noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end18, %if.then3, %if.then18.i.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then3 ], [ %ret.1, %fail ], [ 0, %if.end18 ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.then8.i.cleanup_crit_edge ], [ -12, %if.then18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_blob(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_writeback_set_fb(ptr nocapture noundef %conn_state, ptr noundef %fb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp.not = icmp eq i32 %3, 18
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 246, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 14
  %4 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %writeback_job, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.then20, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then20:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 72) #11
  %7 = ptrtoint ptr %writeback_job to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %writeback_job, align 4
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.then20.return_crit_edge, label %if.end25

if.then20.return_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn_state, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call7.i.i, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end25, %if.end.if.end30_crit_edge
  %11 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %writeback_job, align 4
  %fb32 = getelementptr inbounds %struct.drm_writeback_job, ptr %12, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %fb, null
  br i1 %tobool.not.i, label %if.end30.if.end.i_crit_edge, label %if.then.i

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end30.if.end.i_crit_edge
  %13 = ptrtoint ptr %fb32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb32, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.drm_framebuffer_assign.exit_crit_edge, label %if.then2.i

if.end.i.drm_framebuffer_assign.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_framebuffer_assign.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %base.i8.i = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i8.i) #8
  br label %drm_framebuffer_assign.exit

drm_framebuffer_assign.exit:                      ; preds = %if.then2.i, %if.end.i.drm_framebuffer_assign.exit_crit_edge
  %15 = ptrtoint ptr %fb32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fb, ptr %fb32, align 4
  br label %return

return:                                           ; preds = %drm_framebuffer_assign.exit, %if.then20.return_crit_edge
  %retval.0 = phi i32 [ 0, %drm_framebuffer_assign.exit ], [ -12, %if.then20.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_writeback_prepare_job(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %job, align 4
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %helper_private, align 4
  %prepare_writeback_job = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %prepare_writeback_job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare_writeback_job, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %job) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %prepared = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 1
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_writeback_queue_job(ptr noundef %wb_connector, ptr nocapture noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 14
  %0 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %writeback_job, align 4
  store ptr null, ptr %writeback_job, align 4
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #8
  %list_entry = getelementptr inbounds %struct.drm_writeback_job, ptr %1, i32 0, i32 3
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %3, ptr noundef %job_queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_entry, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %job_queue, ptr %list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.drm_writeback_job, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_entry, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_writeback_cleanup_job(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %job, align 4
  %prepared = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 1
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper_private, align 4
  %cleanup_writeback_job = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cleanup_writeback_job to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cleanup_writeback_job, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %1, ptr noundef %job) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %fb = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 4
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %out_fence = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 5
  %10 = ptrtoint ptr %out_fence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_fence, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then.i

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.end7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end11_crit_edge, label %if.then10.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.if.end11_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %if.end11

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  tail call void @kfree(ptr noundef %job) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_writeback_signal_completion(ptr noundef %wb_connector, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %job_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #8
  %job_queue = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 4
  %0 = ptrtoint ptr %job_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %job_queue, align 4
  %cmp10.not = icmp eq ptr %1, %job_queue
  %add.ptr = getelementptr i8, ptr %1, i32 -52
  %tobool.not88 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp10.not, %tobool.not88
  br i1 %tobool.not, label %do.end27.critedge, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call2) #8
  %out_fence44 = getelementptr i8, ptr %1, i32 12
  %10 = ptrtoint ptr %out_fence44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_fence44, align 4
  %tobool45.not = icmp eq ptr %11, null
  br i1 %tobool45.not, label %list_del.exit.do.body53_crit_edge, label %if.then46

list_del.exit.do.body53_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

do.end27.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call2) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 382, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then46:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool47.not = icmp eq i32 %status, 0
  br i1 %tobool47.not, label %if.then46.if.then.i_crit_edge, label %if.then48

if.then46.if.then.i_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then48:                                        ; preds = %if.then46
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then48.if.end.i_crit_edge, label %do.end.i, !prof !46

if.then48.if.end.i_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 545, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then48.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %status)
  %14 = icmp ult i32 %status, -4095
  br i1 %14, label %do.end37.i, label %if.end.i.dma_fence_set_error.exit_crit_edge, !prof !51

if.end.i.dma_fence_set_error.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_set_error.exit

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 546, i32 noundef 9, ptr noundef null) #8
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end37.i, %if.end.i.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 7
  %15 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %status, ptr %error51.i, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %dma_fence_set_error.exit, %if.then46.if.then.i_crit_edge
  %call50 = tail call i32 @dma_fence_signal(ptr noundef nonnull %11) #8
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  %17 = ptrtoint ptr %out_fence44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %out_fence44, align 4
  br label %do.body53

do.body53:                                        ; preds = %dma_fence_put.exit, %list_del.exit.do.body53_crit_edge
  %cleanup_work = getelementptr i8, ptr %1, i32 -44
  tail call void @__init_work(ptr noundef %cleanup_work, i32 noundef 0) #8
  %18 = ptrtoint ptr %cleanup_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %cleanup_work, align 4
  %lockdep_map = getelementptr i8, ptr %1, i32 -28
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @drm_writeback_signal_completion.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry57 = getelementptr i8, ptr %1, i32 -40
  %19 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i87 = getelementptr i8, ptr %1, i32 -36
  %20 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry57, ptr %prev.i87, align 4
  %func = getelementptr i8, ptr %1, i32 -32
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cleanup_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %22 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %cleanup_work) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %do.end27.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  tail call void @drm_writeback_cleanup_job(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_writeback_get_out_fence(ptr noundef %wb_connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %wb_connector, i32 0, i32 10
  %0 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp.not = icmp eq i32 %1, 18
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !46

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 405, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #11
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %fence_lock = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 6
  %fence_context = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 5
  %3 = ptrtoint ptr %fence_context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fence_context, align 8
  %conv = zext i32 %4 to i64
  %fence_seqno = getelementptr inbounds %struct.drm_writeback_connector, ptr %wb_connector, i32 0, i32 7
  %5 = ptrtoint ptr %fence_seqno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fence_seqno, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %fence_seqno, align 8
  %conv25 = zext i32 %inc to i64
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @drm_writeback_fence_ops, ptr noundef %fence_lock, i64 noundef %conv, i64 noundef %conv25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %if.end24 ], [ null, %if.end21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_object(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @drm_writeback_fence_get_driver_name(ptr nocapture noundef readonly %fence) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1172
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @drm_writeback_fence_get_timeline_name(ptr nocapture noundef readonly %fence) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %timeline_name = getelementptr i8, ptr %1, i32 48
  ret ptr %timeline_name
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @drm_writeback_fence_enable_signaling(ptr nocapture noundef readnone %fence) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @drm_writeback_connector_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 212, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @drm_writeback_connector_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 215, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 218, i32 4}
!8 = !{ptr @__ksymtab_drm_writeback_connector_init, !9, !"__ksymtab_drm_writeback_connector_init", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 241, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 246, i32 2}
!12 = !{ptr @__ksymtab_drm_writeback_prepare_job, !13, !"__ksymtab_drm_writeback_prepare_job", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 278, i32 1}
!14 = !{ptr @__ksymtab_drm_writeback_queue_job, !15, !"__ksymtab_drm_writeback_queue_job", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 312, i32 1}
!16 = !{ptr @__ksymtab_drm_writeback_cleanup_job, !17, !"__ksymtab_drm_writeback_cleanup_job", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 331, i32 1}
!18 = !{ptr @drm_writeback_signal_completion.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 394, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_drm_writeback_signal_completion, !22, !"__ksymtab_drm_writeback_signal_completion", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 397, i32 1}
!23 = !{ptr @__ksymtab_drm_writeback_get_out_fence, !24, !"__ksymtab_drm_writeback_get_out_fence", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 418, i32 1}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 119, i32 9}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 130, i32 9}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 138, i32 8}
!31 = !{ptr @drm_writeback_encoder_funcs, !32, !"drm_writeback_encoder_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 148, i32 39}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!35 = !{ptr @drm_writeback_fence_ops, !36, !"drm_writeback_fence_ops", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/drm_writeback.c", i32 107, i32 35}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i8 0, i8 2}
!48 = !{i64 2148641739}
!49 = !{i64 2148556179, i64 2148556211, i64 2148556240, i64 2148556274, i64 2148556305, i64 2148556328}
!50 = !{i64 2149288414}
!51 = !{!"branch_weights", i32 1, i32 2000}
