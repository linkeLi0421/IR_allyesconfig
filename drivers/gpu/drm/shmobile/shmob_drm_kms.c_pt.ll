; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/shmobile/shmob_drm_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/shmobile/shmob_drm_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shmob_drm_format_info = type { i32, i32, i8, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.shmob_drm_device = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, ptr, %struct.shmob_drm_crtc, %struct.shmob_drm_encoder, %struct.shmob_drm_connector }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.shmob_drm_crtc = type { %struct.drm_crtc, ptr, i32, ptr, [2 x i32], i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.shmob_drm_encoder = type { %struct.drm_encoder, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.shmob_drm_connector = type { %struct.drm_connector, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }

@shmob_drm_format_infos = internal constant { [9 x %struct.shmob_drm_format_info], [48 x i8] } { [9 x %struct.shmob_drm_format_info] [%struct.shmob_drm_format_info { i32 909199186, i32 16, i8 0, i32 3 }, %struct.shmob_drm_format_info { i32 875710290, i32 24, i8 0, i32 11 }, %struct.shmob_drm_format_info { i32 875713089, i32 32, i8 0, i32 0 }, %struct.shmob_drm_format_info { i32 842094158, i32 12, i8 1, i32 65536 }, %struct.shmob_drm_format_info { i32 825382478, i32 12, i8 1, i32 65536 }, %struct.shmob_drm_format_info { i32 909203022, i32 16, i8 1, i32 65792 }, %struct.shmob_drm_format_info { i32 825644622, i32 16, i8 1, i32 65792 }, %struct.shmob_drm_format_info { i32 875714126, i32 24, i8 1, i32 66048 }, %struct.shmob_drm_format_info { i32 842290766, i32 24, i8 1, i32 66048 }], [48 x i8] zeroinitializer }, align 32
@shmob_drm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @shmob_drm_fb_create, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@shmob_drm_fb_create.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shmob_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shmob_drm_fb_create\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/shmobile/shmob_drm_kms.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported pixel format %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@shmob_drm_fb_create.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid pitch value %u\0A\00", [40 x i8] zeroinitializer }, align 32
@shmob_drm_fb_create.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"luma and chroma pitches do not match\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 875710290, i64 875713089, i64 875714126, i64 909199186, i64 909203022]
@__sancov_gen_cov_switch_values.6 = internal global [11 x i64] [i64 9, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 875710290, i64 875713089, i64 875714126, i64 909199186, i64 909203022]
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"shmob_drm_format_infos\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 26, i32 43 }
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"shmob_drm_mode_config_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 123, i32 43 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 99, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 105, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [44 x i8] c"../drivers/gpu/drm/shmobile/shmob_drm_kms.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 114, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @shmob_drm_format_infos, ptr @shmob_drm_mode_config_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_format_infos to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @shmob_drm_format_info(i32 noundef %fourcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fourcc, label %for.cond.8 [
    i32 909199186, label %entry.cleanup_crit_edge
    i32 875710290, label %cleanup.fold.split
    i32 875713089, label %cleanup.fold.split8
    i32 842094158, label %cleanup.fold.split9
    i32 825382478, label %cleanup.fold.split10
    i32 909203022, label %cleanup.fold.split11
    i32 825644622, label %cleanup.fold.split12
    i32 875714126, label %cleanup.fold.split13
    i32 842290766, label %cleanup.fold.split14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.8:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split, %for.cond.8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @shmob_drm_format_infos, %entry.cleanup_crit_edge ], [ null, %for.cond.8 ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 2), %cleanup.fold.split8 ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 3), %cleanup.fold.split9 ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 4), %cleanup.fold.split10 ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 5), %cleanup.fold.split11 ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 6), %cleanup.fold.split12 ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 7), %cleanup.fold.split13 ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 8), %cleanup.fold.split14 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmob_drm_modeset_init(ptr noundef %sdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 8
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 8
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @shmob_drm_crtc_create(ptr noundef %sdev) #3
  %call2 = tail call i32 @shmob_drm_encoder_create(ptr noundef %sdev) #3
  %encoder = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 10
  %call4 = tail call i32 @shmob_drm_connector_create(ptr noundef %sdev, ptr noundef %encoder) #3
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 8
  tail call void @drm_kms_helper_poll_init(ptr noundef %3) #3
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 8
  %min_width = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 23
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %min_width, align 4
  %7 = load ptr, ptr %ddev, align 8
  %min_height = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 24
  %8 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %min_height, align 4
  %9 = load ptr, ptr %ddev, align 8
  %max_width = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 25
  %10 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4095, ptr %max_width, align 4
  %11 = load ptr, ptr %ddev, align 8
  %max_height = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 26
  %12 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4095, ptr %max_height, align 4
  %13 = load ptr, ptr %ddev, align 8
  %funcs = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 27
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @shmob_drm_mode_config_funcs, ptr %funcs, align 4
  %15 = load ptr, ptr %ddev, align 8
  tail call void @drm_helper_disable_unused_functions(ptr noundef %15) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmob_drm_crtc_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmob_drm_encoder_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmob_drm_connector_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_disable_unused_functions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @shmob_drm_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %1, label %do.body [
    i32 909199186, label %entry.if.end8_crit_edge
    i32 875710290, label %cleanup.fold.split.i
    i32 875713089, label %cleanup.fold.split8.i
    i32 842094158, label %cleanup.fold.split9.i
    i32 825382478, label %cleanup.fold.split10.i
    i32 909203022, label %cleanup.fold.split11.i
    i32 825644622, label %cleanup.fold.split12.i
    i32 875714126, label %cleanup.fold.split13.i
    i32 842290766, label %cleanup.fold.split14.i
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

cleanup.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shmob_drm_fb_create.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shmob_drm_fb_create, %if.then4)) #3
          to label %cleanup65 [label %if.then4], !srcloc !25

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 4
  %5 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixel_format, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shmob_drm_fb_create.__UNIQUE_ID_ddebug318, ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %6) #3
  br label %cleanup65

if.end8:                                          ; preds = %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %entry.if.end8_crit_edge
  %retval.0.i85.ph = phi ptr [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([9 x %struct.shmob_drm_format_info], ptr @shmob_drm_format_infos, i32 0, i32 1), %cleanup.fold.split.i ], [ @shmob_drm_format_infos, %entry.if.end8_crit_edge ]
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %7 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pitches, align 4
  %9 = and i32 %8, -65529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %if.end34, label %do.body14

do.body14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shmob_drm_fb_create.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shmob_drm_fb_create, %if.then26)) #3
          to label %cleanup65 [label %if.then26], !srcloc !25

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #5
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev27, align 4
  %12 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pitches, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shmob_drm_fb_create.__UNIQUE_ID_ddebug319, ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %13) #3
  br label %cleanup65

if.end34:                                         ; preds = %if.end8
  %yuv = getelementptr inbounds %struct.shmob_drm_format_info, ptr %retval.0.i85.ph, i32 0, i32 2
  %14 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %yuv, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool35.not = icmp eq i8 %15, 0
  br i1 %tobool35.not, label %if.end34.if.end63_crit_edge, label %if.then36

if.end34.if.end63_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end63

if.then36:                                        ; preds = %if.end34
  %bpp = getelementptr inbounds %struct.shmob_drm_format_info, ptr %retval.0.i85.ph, i32 0, i32 1
  %16 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %17)
  %cmp37 = icmp eq i32 %17, 24
  %cond = select i1 %cmp37, i32 2, i32 1
  %arrayidx39 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx39, align 4
  %mul = mul nuw nsw i32 %cond, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul)
  %cmp42.not = icmp eq i32 %19, %mul
  br i1 %cmp42.not, label %if.then36.if.end63_crit_edge, label %do.body44

if.then36.if.end63_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end63

do.body44:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shmob_drm_fb_create.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shmob_drm_fb_create, %if.then56)) #3
          to label %cleanup65 [label %if.then56], !srcloc !25

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #5
  %dev57 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shmob_drm_fb_create.__UNIQUE_ID_ddebug320, ptr noundef %21, ptr noundef nonnull @.str.5) #3
  br label %cleanup65

if.end63:                                         ; preds = %if.then36.if.end63_crit_edge, %if.end34.if.end63_crit_edge
  %call64 = tail call ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #3
  br label %cleanup65

cleanup65:                                        ; preds = %if.end63, %if.then56, %do.body44, %if.then26, %do.body14, %if.then4, %do.body
  %retval.1 = phi ptr [ %call64, %if.end63 ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %if.then4 ], [ inttoptr (i32 -22 to ptr), %do.body14 ], [ inttoptr (i32 -22 to ptr), %if.then26 ], [ inttoptr (i32 -22 to ptr), %do.body44 ], [ inttoptr (i32 -22 to ptr), %if.then56 ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @shmob_drm_format_infos, !1, !"shmob_drm_format_infos", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_kms.c", i32 26, i32 43}
!2 = !{ptr @shmob_drm_mode_config_funcs, !3, !"shmob_drm_mode_config_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_kms.c", i32 123, i32 43}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_kms.c", i32 99, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @shmob_drm_fb_create.__UNIQUE_ID_ddebug318, !5, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_kms.c", i32 105, i32 3}
!12 = !{ptr @shmob_drm_fb_create.__UNIQUE_ID_ddebug319, !11, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_kms.c", i32 114, i32 4}
!15 = !{ptr @shmob_drm_fb_create.__UNIQUE_ID_ddebug320, !14, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2149034262, i64 2149034267, i64 2149034280, i64 2149034324, i64 2149034358, i64 2149034379}
!26 = !{i8 0, i8 2}
