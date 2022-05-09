; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.89 = type { i32, ptr }
%struct.komeda_kms_dev = type { %struct.drm_device, i32, [2 x %struct.komeda_crtc] }
%struct.komeda_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.komeda_events = type { i64, [2 x i64] }
%struct.komeda_dev_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.komeda_plane_state = type { %struct.drm_plane_state, %struct.list_head, i8 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.komeda_crtc_state = type { %struct.drm_crtc_state, i32, i32, i64, i32 }

@komeda_kms_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @komeda_gem_cma_dumb_create, ptr null, ptr null, i32 0, i32 1, i32 0, ptr @.str, ptr @.str.1, ptr @.str.2, i32 19, ptr null, i32 0, ptr @komeda_cma_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"komeda\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Arm Komeda Display Processor driver\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20181101\00", [23 x i8] zeroinitializer }, align 32
@komeda_cma_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@komeda_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @komeda_fb_create, ptr null, ptr null, ptr null, ptr @komeda_kms_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@komeda_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @komeda_kms_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[CRTC:%d:%s] calculating normalized zpos values\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[PLANE:%d:%s] zpos:%d, normalized zpos: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PLANE: %s and PLANE: %s are configured same zpos: %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"komeda_kms_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 60, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 65, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 66, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 67, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"komeda_cma_fops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 24, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"komeda_mode_config_funcs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 229, i32 43 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"komeda_mode_config_helpers\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 93, i32 50 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 148, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 181, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [51 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 127, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @komeda_kms_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @komeda_cma_fops, ptr @komeda_mode_config_funcs, ptr @komeda_mode_config_helpers, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_kms_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_cma_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_kms_attach(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %1, ptr noundef nonnull @komeda_kms_driver, i32 noundef 4368, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdev, ptr %dev_private, align 4
  %call.i.i = tail call i32 @drmm_mode_config_init(ptr noundef %call) #4
  %call2.i = tail call i32 @komeda_kms_setup_crtcs(ptr noundef %call, ptr noundef %mdev) #4
  %min_width.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 23
  %3 = ptrtoint ptr %min_width.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %min_width.i, align 4
  %min_height.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 24
  %4 = ptrtoint ptr %min_height.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %min_height.i, align 4
  %max_width.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 25
  %5 = ptrtoint ptr %max_width.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %max_width.i, align 4
  %max_height.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 26
  %6 = ptrtoint ptr %max_height.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %max_height.i, align 4
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 27
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @komeda_mode_config_funcs, ptr %funcs.i, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 103
  %8 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @komeda_mode_config_helpers, ptr %helper_private.i, align 4
  %call2 = tail call i32 @komeda_kms_add_private_objs(ptr noundef %call, ptr noundef %mdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_mode_config_crit_edge

if.end.cleanup_mode_config_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup_mode_config

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @komeda_kms_add_planes(ptr noundef %call, ptr noundef %mdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_mode_config_crit_edge

if.end4.cleanup_mode_config_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup_mode_config

if.end8:                                          ; preds = %if.end4
  %n_crtcs = getelementptr inbounds %struct.komeda_kms_dev, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_crtcs, align 4
  %call9 = tail call i32 @drm_vblank_init(ptr noundef %call, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_mode_config_crit_edge

if.end8.cleanup_mode_config_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup_mode_config

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @komeda_kms_add_crtcs(ptr noundef %call, ptr noundef %mdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_mode_config_crit_edge

if.end12.cleanup_mode_config_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup_mode_config

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @komeda_kms_add_wb_connectors(ptr noundef %call, ptr noundef %mdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_mode_config_crit_edge

if.end16.cleanup_mode_config_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup_mode_config

if.end20:                                         ; preds = %if.end16
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %call22 = tail call i32 @component_bind_all(ptr noundef %12, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_mode_config_crit_edge

if.end20.cleanup_mode_config_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup_mode_config

if.end25:                                         ; preds = %if.end20
  tail call void @drm_mode_config_reset(ptr noundef %call) #4
  %dev26 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev26, align 4
  %irq = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 5
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %14, i32 noundef %16, ptr noundef nonnull @komeda_kms_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %20, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.free_component_binding_crit_edge

if.end25.free_component_binding_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_component_binding

if.end30:                                         ; preds = %if.end25
  tail call void @drm_kms_helper_poll_init(ptr noundef %call) #4
  %call31 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %free_interrupts

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

free_interrupts:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call) #4
  br label %free_component_binding

free_component_binding:                           ; preds = %free_interrupts, %if.end25.free_component_binding_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end25.free_component_binding_crit_edge ], [ %call31, %free_interrupts ]
  %21 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev, align 4
  tail call void @component_unbind_all(ptr noundef %22, ptr noundef %call) #4
  br label %cleanup_mode_config

cleanup_mode_config:                              ; preds = %free_component_binding, %if.end20.cleanup_mode_config_crit_edge, %if.end16.cleanup_mode_config_crit_edge, %if.end12.cleanup_mode_config_crit_edge, %if.end8.cleanup_mode_config_crit_edge, %if.end4.cleanup_mode_config_crit_edge, %if.end.cleanup_mode_config_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.cleanup_mode_config_crit_edge ], [ %call5, %if.end4.cleanup_mode_config_crit_edge ], [ %call9, %if.end8.cleanup_mode_config_crit_edge ], [ %call13, %if.end12.cleanup_mode_config_crit_edge ], [ %call17, %if.end16.cleanup_mode_config_crit_edge ], [ %call22, %if.end20.cleanup_mode_config_crit_edge ], [ %err.0, %free_component_binding ]
  tail call void @drm_mode_config_cleanup(ptr noundef %call) #4
  tail call void @komeda_kms_cleanup_private_objs(ptr noundef %call) #4
  %23 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dev_private, align 4
  %24 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %cleanup_mode_config, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %24, %cleanup_mode_config ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end30.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_kms_add_private_objs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_kms_add_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_kms_add_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_kms_add_wb_connectors(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_kms_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %evts = alloca %struct.komeda_events, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %evts) #4
  %2 = call ptr @memset(ptr %evts, i32 0, i32 24)
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %irq_handler = getelementptr inbounds %struct.komeda_dev_funcs, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_handler, align 4
  %call = call i32 %6(ptr noundef %1, ptr noundef nonnull %evts) #4
  call void @komeda_print_events(ptr noundef nonnull %evts, ptr noundef %data) #4
  %n_crtcs = getelementptr inbounds %struct.komeda_kms_dev, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.komeda_kms_dev, ptr %data, i32 0, i32 2, i32 %i.08
  call void @komeda_crtc_handle_event(ptr noundef %arrayidx, ptr noundef nonnull %evts) #4
  %inc = add nuw i32 %i.08, 1
  %9 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_crtcs, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %evts) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_kms_cleanup_private_objs(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_kms_detach(ptr noundef %kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %kms, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @drm_dev_unregister(ptr noundef %kms) #4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %kms) #4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %kms) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @component_unbind_all(ptr noundef %3, ptr noundef %kms) #4
  tail call void @drm_mode_config_cleanup(ptr noundef %kms) #4
  tail call void @komeda_kms_cleanup_private_objs(ptr noundef %kms) #4
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dev_private, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_gem_cma_dumb_create(ptr noundef %file, ptr noundef %dev, ptr noundef %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bpp, align 8
  %mul = mul i32 %5, %3
  %sub = add i32 %mul, 7
  %div12 = lshr i32 %sub, 3
  %bus_width = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_width, align 4
  %sub1 = add i32 %7, -1
  %add2 = add i32 %sub1, %div12
  %neg = sub i32 0, %7
  %and = and i32 %add2, %neg
  %pitch6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %8 = ptrtoint ptr %pitch6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %pitch6, align 4
  %call = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %file, ptr noundef %dev, ptr noundef %args) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_kms_setup_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_fb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_kms_check(ptr noundef %dev, ptr noundef %state) #0 align 64 {
entry:
  %zorder_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_helper_check_modeset(ptr noundef %dev, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %num_crtc56 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc56 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp57 = icmp sgt i32 %3, 0
  br i1 %cmp57, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %4 = getelementptr inbounds %struct.list_head, ptr %zorder_list.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %6, i32 %i.058
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %6, i32 %i.058, i32 3
  %9 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new_state, align 4
  %call9 = call i32 @drm_atomic_add_affected_planes(ptr noundef %state, ptr noundef nonnull %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true
  %state1.i = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %zorder_list.i) #4
  %base.i = getelementptr inbounds %struct.drm_crtc, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i, align 8
  %name.i = getelementptr inbounds %struct.drm_crtc, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %14, ptr noundef %16) #4
  %17 = ptrtoint ptr %zorder_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %zorder_list.i, ptr %zorder_list.i, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %zorder_list.i, ptr %4, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 8
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 18
  %21 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn111.i = load ptr, ptr %plane_list.i, align 4
  %cmp.not114.i = icmp eq ptr %.pn111.i, %plane_list.i
  br i1 %cmp.not114.i, label %if.end12.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end12.for.end.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end12
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn115.i = phi ptr [ %.pn111.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %plane_mask.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn115.i, i32 480
  %24 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %25
  %and.i = and i32 %shl.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %plane.0116.i = getelementptr i8, ptr %.pn115.i, i32 -4
  %call11.i = call ptr @drm_atomic_get_plane_state(ptr noundef %12, ptr noundef %plane.0116.i) #4
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %komeda_crtc_normalize_zpos.exit, label %if.end.i

if.end.i:                                         ; preds = %if.else.i
  %26 = ptrtoint ptr %zorder_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %zorder_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %zorder_list.i
  br i1 %cmp.i.not.i.i, label %if.end.i.if.then.i.i_crit_edge, label %cond.end.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

cond.end.i.i:                                     ; preds = %if.end.i
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %4, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %29, i32 -124
  %tobool4.not.i.i = icmp eq ptr %add.ptr3.i.i, null
  br i1 %tobool4.not.i.i, label %cond.end.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

cond.end.i.i.if.then.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %cond.end.i.i
  %zpos.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call11.i, i32 0, i32 15
  %30 = ptrtoint ptr %zpos.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %zpos.i.i, align 4
  %zpos6.i.i = getelementptr i8, ptr %29, i32 -68
  %32 = ptrtoint ptr %zpos6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %zpos6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i104.i = icmp ugt i32 %31, %33
  br i1 %cmp.i104.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.for.cond.i.i_crit_edge

lor.lhs.false.i.i.for.cond.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  br label %for.cond.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %cond.end.i.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %zlist_node.i.i = getelementptr inbounds %struct.komeda_plane_state, ptr %call11.i, i32 0, i32 1
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %4, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %zlist_node.i.i, ptr noundef %35, ptr noundef nonnull %zorder_list.i) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %zlist_node.i.i, ptr %4, align 4
  %37 = ptrtoint ptr %zlist_node.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %zorder_list.i, ptr %zlist_node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.komeda_plane_state, ptr %call11.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %zlist_node.i.i, ptr %35, align 4
  br label %for.inc.i

for.cond.i.i:                                     ; preds = %if.else.i.i.for.cond.i.i_crit_edge, %lor.lhs.false.i.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %if.else.i.i.for.cond.i.i_crit_edge ], [ %zorder_list.i, %lor.lhs.false.i.i.for.cond.i.i_crit_edge ]
  %40 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp11.not.i.i = icmp eq ptr %.pn.i.i, %zorder_list.i
  br i1 %cmp11.not.i.i, label %for.cond.i.i.for.inc.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.inc.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %zpos15.i.i = getelementptr i8, ptr %.pn.i.i, i32 -68
  %41 = ptrtoint ptr %zpos15.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %zpos15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %42)
  %cmp16.i.i = icmp ult i32 %31, %42
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %for.body.i.i
  %zlist_node18.i.i = getelementptr inbounds %struct.komeda_plane_state, ptr %call11.i, i32 0, i32 1
  %prev.i58.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i58.i.i, align 4
  %call.i.i59.i.i = call zeroext i1 @__list_add_valid(ptr noundef %zlist_node18.i.i, ptr noundef %44, ptr noundef %.pn.i.i) #4
  br i1 %call.i.i59.i.i, label %if.end.i.i61.i.i, label %if.then17.i.i.for.inc.i_crit_edge

if.then17.i.i.for.inc.i_crit_edge:                ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i.i61.i.i:                                 ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %prev.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %zlist_node18.i.i, ptr %prev.i58.i.i, align 4
  %46 = ptrtoint ptr %zlist_node18.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn.i.i, ptr %zlist_node18.i.i, align 4
  %prev3.i.i60.i.i = getelementptr inbounds %struct.komeda_plane_state, ptr %call11.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev3.i.i60.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i60.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %zlist_node18.i.i, ptr %44, align 4
  br label %for.inc.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %cmp24.i.i = icmp eq i32 %42, %31
  br i1 %cmp24.i.i, label %komeda_crtc_normalize_zpos.exit.thread48, label %if.else.i.i.for.cond.i.i_crit_edge

if.else.i.i.for.cond.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

komeda_crtc_normalize_zpos.exit.thread48:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %node.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -124
  %49 = ptrtoint ptr %node.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %node.0.le.i.i, align 4
  %51 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call11.i, align 4
  %name.i.i = getelementptr inbounds %struct.drm_plane, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name.i.i, align 4
  %name29.i.i = getelementptr inbounds %struct.drm_plane, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %name29.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name29.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %54, ptr noundef %56, i32 noundef %31) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %zorder_list.i) #4
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i.i61.i.i, %if.then17.i.i.for.inc.i_crit_edge, %for.cond.i.i.for.inc.i_crit_edge, %if.end.i.i.i.i, %if.then.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %57 = ptrtoint ptr %.pn115.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i = load ptr, ptr %.pn115.i, align 4
  %58 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %8, align 8
  %plane_list10.i = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 30, i32 18
  %cmp.not.i = icmp eq ptr %.pn.i, %plane_list10.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end12.for.end.i_crit_edge
  %max_slave_zorder.i = getelementptr inbounds %struct.komeda_crtc_state, ptr %10, i32 0, i32 4
  %60 = ptrtoint ptr %max_slave_zorder.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %max_slave_zorder.i, align 8
  %61 = ptrtoint ptr %zorder_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn102117.i = load ptr, ptr %zorder_list.i, align 4
  %cmp30.not118.i = icmp eq ptr %.pn102117.i, %zorder_list.i
  br i1 %cmp30.not118.i, label %for.end.i.komeda_crtc_normalize_zpos.exit.thread_crit_edge, label %for.body32.lr.ph.i

for.end.i.komeda_crtc_normalize_zpos.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %komeda_crtc_normalize_zpos.exit.thread

for.body32.lr.ph.i:                               ; preds = %for.end.i
  %slave_planes.i = getelementptr inbounds %struct.komeda_crtc, ptr %8, i32 0, i32 3
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc56.i.for.body32.i_crit_edge, %for.body32.lr.ph.i
  %.pn102120.i = phi ptr [ %.pn102117.i, %for.body32.lr.ph.i ], [ %.pn102.i, %for.inc56.i.for.body32.i_crit_edge ]
  %order.0119.i = phi i32 [ 0, %for.body32.lr.ph.i ], [ %spec.select.i, %for.inc56.i.for.body32.i_crit_edge ]
  %kplane_st.0.i = getelementptr i8, ptr %.pn102120.i, i32 -124
  %62 = ptrtoint ptr %kplane_st.0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %kplane_st.0.i, align 4
  %normalized_zpos.i = getelementptr i8, ptr %.pn102120.i, i32 -64
  %64 = ptrtoint ptr %normalized_zpos.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %order.0119.i, ptr %normalized_zpos.i, align 4
  %layer_split.i = getelementptr i8, ptr %.pn102120.i, i32 8
  %65 = ptrtoint ptr %layer_split.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %layer_split.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool38.not107.i = icmp slt i8 %bf.load.i, 0
  %spec.select.v.i = select i1 %tobool38.not107.i, i32 2, i32 1
  %spec.select.i = add i32 %spec.select.v.i, %order.0119.i
  %base42.i = getelementptr inbounds %struct.drm_plane, ptr %63, i32 0, i32 4
  %66 = ptrtoint ptr %base42.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base42.i, align 4
  %name44.i = getelementptr inbounds %struct.drm_plane, ptr %63, i32 0, i32 2
  %68 = ptrtoint ptr %name44.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name44.i, align 4
  %zpos.i = getelementptr i8, ptr %.pn102120.i, i32 -68
  %70 = ptrtoint ptr %zpos.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %zpos.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %67, ptr noundef %69, i32 noundef %71, i32 noundef %order.0119.i) #4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %63, i32 0, i32 17
  %72 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %73
  %74 = ptrtoint ptr %slave_planes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %slave_planes.i, align 8
  %and47.i = and i32 %shl.i, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %for.body32.i.for.inc56.i_crit_edge, label %if.then49.i

for.body32.i.for.inc56.i_crit_edge:               ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc56.i

if.then49.i:                                      ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #6
  %76 = ptrtoint ptr %normalized_zpos.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %normalized_zpos.i, align 4
  %78 = ptrtoint ptr %max_slave_zorder.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_slave_zorder.i, align 8
  %80 = call i32 @llvm.umax.i32(i32 %77, i32 %79) #4
  %81 = ptrtoint ptr %max_slave_zorder.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %max_slave_zorder.i, align 8
  br label %for.inc56.i

for.inc56.i:                                      ; preds = %if.then49.i, %for.body32.i.for.inc56.i_crit_edge
  %82 = ptrtoint ptr %.pn102120.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn102.i = load ptr, ptr %.pn102120.i, align 4
  %cmp30.not.i = icmp eq ptr %.pn102.i, %zorder_list.i
  br i1 %cmp30.not.i, label %for.inc56.i.komeda_crtc_normalize_zpos.exit.thread_crit_edge, label %for.inc56.i.for.body32.i_crit_edge

for.inc56.i.for.body32.i_crit_edge:               ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body32.i

for.inc56.i.komeda_crtc_normalize_zpos.exit.thread_crit_edge: ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %komeda_crtc_normalize_zpos.exit.thread

komeda_crtc_normalize_zpos.exit.thread:           ; preds = %for.inc56.i.komeda_crtc_normalize_zpos.exit.thread_crit_edge, %for.end.i.komeda_crtc_normalize_zpos.exit.thread_crit_edge
  %zpos_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 3
  %83 = ptrtoint ptr %zpos_changed.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load63.i = load i8, ptr %zpos_changed.i, align 2
  %bf.set.i = or i8 %bf.load63.i, 8
  store i8 %bf.set.i, ptr %zpos_changed.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %zorder_list.i) #4
  br label %for.inc

komeda_crtc_normalize_zpos.exit:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %call11.i to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %zorder_list.i) #4
  br label %cleanup

for.inc:                                          ; preds = %komeda_crtc_normalize_zpos.exit.thread, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %85 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev1, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %86, i32 0, i32 30, i32 19
  %87 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %88
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call18 = call i32 @drm_atomic_helper_check_planes(ptr noundef %dev, ptr noundef %state) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %komeda_crtc_normalize_zpos.exit, %komeda_crtc_normalize_zpos.exit.thread48, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %84, %komeda_crtc_normalize_zpos.exit ], [ %call18, %for.end ], [ -22, %komeda_crtc_normalize_zpos.exit.thread48 ], [ %call9, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_modeset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_kms_commit_tail(ptr noundef %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call zeroext i1 @dma_fence_begin_signalling() #4
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %old_state) #4
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %old_state, i32 noundef 1) #4
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %old_state) #4
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %old_state) #4
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %1, ptr noundef %old_state) #4
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call) #4
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %old_state) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_begin_signalling() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_end_signalling(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_print_events(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_crtc_handle_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 65, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 66, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 67, i32 10}
!6 = !{ptr @komeda_kms_driver, !7, !"komeda_kms_driver", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 60, i32 32}
!8 = !{ptr @komeda_cma_fops, !9, !"komeda_cma_fops", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 24, i32 1}
!10 = !{ptr @komeda_mode_config_funcs, !11, !"komeda_mode_config_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 229, i32 43}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 148, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 181, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 127, i32 4}
!18 = !{ptr @komeda_mode_config_helpers, !19, !"komeda_mode_config_helpers", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_kms.c", i32 93, i32 50}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
