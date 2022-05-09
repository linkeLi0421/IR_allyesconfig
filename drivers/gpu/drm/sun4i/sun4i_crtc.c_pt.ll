; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.anon.86 = type { i32, ptr }
%struct.sun4i_crtc = type { %struct.drm_crtc, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@sun4i_crtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't create the planes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_crtc_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/sun4i/sun4i_crtc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_crtc_init._entry_ptr = internal global ptr @sun4i_crtc_init._entry, section ".printk_index", align 4
@sun4i_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_crtc_enable_vblank, ptr @sun4i_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@sun4i_crtc_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't init DRM CRTC\0A\00", [40 x i8] zeroinitializer }, align 32
@sun4i_crtc_init._entry_ptr.7 = internal global ptr @sun4i_crtc_init._entry.5, section ".printk_index", align 4
@sun4i_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @sun4i_crtc_atomic_check, ptr @sun4i_crtc_atomic_begin, ptr @sun4i_crtc_atomic_flush, ptr @sun4i_crtc_atomic_enable, ptr @sun4i_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling VBLANK on crtc %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Disabling VBLANK on crtc %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Committing plane changes\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enabling the CRTC\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Disabling the CRTC\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 209, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"sun4i_crtc_funcs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 180, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 235, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"sun4i_crtc_helper_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 151, i32 43 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 164, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 175, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 92, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 135, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [38 x i8] c"../drivers/gpu/drm/sun4i/sun4i_crtc.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 114, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @sun4i_crtc_init._entry, ptr @sun4i_crtc_init._entry.5, ptr @sun4i_crtc_init._entry_ptr, ptr @sun4i_crtc_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sun4i_crtc_funcs, ptr @.str.6, ptr @sun4i_crtc_helper_funcs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_crtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_crtc_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sun4i_crtc_init(ptr noundef %drm, ptr noundef %engine, ptr noundef %tcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 1008, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %engine2 = getelementptr inbounds %struct.sun4i_crtc, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %engine2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %engine, ptr %engine2, align 4
  %tcon3 = getelementptr inbounds %struct.sun4i_crtc, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %tcon3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tcon, ptr %tcon3, align 8
  %4 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %land.lhs.true.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.end
  %layers_init.i = getelementptr inbounds %struct.sunxi_engine_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %layers_init.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layers_init.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end_crit_edge, label %sunxi_engine_layers_init.exit

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

sunxi_engine_layers_init.exit:                    ; preds = %land.lhs.true.i
  %call.i72 = tail call ptr %7(ptr noundef %drm, ptr noundef %engine) #3
  %cmp.i = icmp ugt ptr %call.i72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sunxi_engine_layers_init.exit.do.end_crit_edge, label %for.cond.preheader

sunxi_engine_layers_init.exit.do.end_crit_edge:   ; preds = %sunxi_engine_layers_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.cond.preheader:                               ; preds = %sunxi_engine_layers_init.exit
  %8 = ptrtoint ptr %call.i72 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i72, align 4
  %tobool9.not75 = icmp eq ptr %9, null
  br i1 %tobool9.not75, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.end:                                           ; preds = %sunxi_engine_layers_init.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str) #6
  br label %cleanup

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %12 = phi ptr [ %17, %sw.epilog.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %i.078 = phi i32 [ %inc, %sw.epilog.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %cursor.077 = phi ptr [ %cursor.1, %sw.epilog.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %primary.076 = phi ptr [ %primary.1, %sw.epilog.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.drm_plane, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %for.body.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb, %for.body.sw.epilog_crit_edge
  %primary.1 = phi ptr [ %primary.076, %for.body.sw.epilog_crit_edge ], [ %primary.076, %sw.bb11 ], [ %12, %sw.bb ]
  %cursor.1 = phi ptr [ %cursor.077, %for.body.sw.epilog_crit_edge ], [ %12, %sw.bb11 ], [ %cursor.077, %sw.bb ]
  %inc = add i32 %i.078, 1
  %arrayidx = getelementptr ptr, ptr %call.i72, i32 %inc
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %primary.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %primary.1, %sw.epilog.for.end_crit_edge ]
  %cursor.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %cursor.1, %sw.epilog.for.end_crit_edge ]
  %call12 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm, ptr noundef nonnull %call.i, ptr noundef %primary.0.lcssa, ptr noundef %cursor.0.lcssa, ptr noundef nonnull @sun4i_crtc_funcs, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.6) #6
  %20 = inttoptr i32 %call12 to ptr
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 19
  %21 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sun4i_crtc_helper_funcs, ptr %helper_private.i, align 8
  %22 = ptrtoint ptr %tcon3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tcon3, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call24 = tail call ptr @of_graph_get_port_by_id(ptr noundef %27, i32 noundef 1) #3
  %port = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call24, ptr %port, align 4
  %29 = ptrtoint ptr %call.i72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i72, align 4
  %tobool28.not80 = icmp eq ptr %30, null
  br i1 %tobool28.not80, label %if.end20.cleanup_crit_edge, label %for.body29.lr.ph

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body29.lr.ph:                                 ; preds = %if.end20
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 8
  br label %for.body29

for.body29:                                       ; preds = %if.end37.for.body29_crit_edge, %for.body29.lr.ph
  %31 = phi ptr [ %30, %for.body29.lr.ph ], [ %38, %if.end37.for.body29_crit_edge ]
  %i.181 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc39, %if.end37.for.body29_crit_edge ]
  %type34 = getelementptr inbounds %struct.drm_plane, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %type34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then35, label %for.body29.if.end37_crit_edge

for.body29.if.end37_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then35:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %35
  %possible_crtcs36 = getelementptr inbounds %struct.drm_plane, ptr %31, i32 0, i32 5
  %36 = ptrtoint ptr %possible_crtcs36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl.i, ptr %possible_crtcs36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %for.body29.if.end37_crit_edge
  %inc39 = add i32 %i.181, 1
  %arrayidx27 = getelementptr ptr, ptr %call.i72, i32 %inc39
  %37 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %38, null
  br i1 %tobool28.not, label %if.end37.cleanup_crit_edge, label %if.end37.for.body29_crit_edge

if.end37.for.body29_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body29

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %20, %do.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %if.end20.cleanup_crit_edge ], [ %call.i, %if.end37.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %crtc) #3
  %tcon = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 8
  tail call void @sun4i_tcon_enable_vblank(ptr noundef %1, i1 noundef zeroext true) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_crtc_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %crtc) #3
  %tcon = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 8
  tail call void @sun4i_tcon_enable_vblank(ptr noundef %1, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_tcon_enable_vblank(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_crtc_mode_set_nofb(ptr noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge, label %for.body.i

for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sun4i_crtc_get_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %crtc4.i = getelementptr i8, ptr %.pn.i, i32 48
  %5 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtc4.i, align 4
  %cmp5.i = icmp eq ptr %6, %crtc
  br i1 %cmp5.i, label %cleanup.split.loop.exit16.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

cleanup.split.loop.exit16.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %sun4i_crtc_get_encoder.exit

sun4i_crtc_get_encoder.exit:                      ; preds = %cleanup.split.loop.exit16.i, %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit16.i ], [ null, %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge ]
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %tcon = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 3
  %7 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcon, align 8
  tail call void @sun4i_tcon_mode_set(ptr noundef %8, ptr noundef %retval.0.i, ptr noundef %adjusted_mode) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %engine2 = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 2
  %6 = ptrtoint ptr %engine2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %engine2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %atomic_check = getelementptr inbounds %struct.sunxi_engine_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %atomic_check to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_check, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 %11(ptr noundef nonnull %7, ptr noundef %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then ], [ 0, %land.lhs.true4.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %engine3 = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 2
  %8 = ptrtoint ptr %engine3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %engine3, align 4
  %state4 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %10 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state4, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %if.then

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !35

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #3
  %14 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state4, align 4
  %event37 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %event37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %event37, align 4
  %event38 = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 1
  %18 = ptrtoint ptr %event38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %event38, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call31) #3
  %19 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state4, align 4
  %event41 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %event41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %event41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end, %entry.if.end42_crit_edge
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool43.not = icmp eq ptr %25, null
  br i1 %tobool43.not, label %if.end42.if.end47_crit_edge, label %if.then44

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %25(ptr noundef %9, ptr noundef %5) #3
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #3
  %engine = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 2
  %4 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.sunxi_engine_commit.exit_crit_edge, label %land.lhs.true.i

entry.sunxi_engine_commit.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sunxi_engine_commit.exit

land.lhs.true.i:                                  ; preds = %entry
  %commit.i = getelementptr inbounds %struct.sunxi_engine_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %commit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %commit.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.sunxi_engine_commit.exit_crit_edge, label %if.then.i

land.lhs.true.i.sunxi_engine_commit.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sunxi_engine_commit.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %9(ptr noundef %5) #3
  br label %sunxi_engine_commit.exit

sunxi_engine_commit.exit:                         ; preds = %if.then.i, %land.lhs.true.i.sunxi_engine_commit.exit_crit_edge, %entry.sunxi_engine_commit.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sunxi_engine_commit.exit.if.end9_crit_edge, label %if.then

sunxi_engine_commit.exit.if.end9_crit_edge:       ; preds = %sunxi_engine_commit.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then:                                          ; preds = %sunxi_engine_commit.exit
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state1, align 4
  %event4 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %event4, align 4
  %13 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #3
  %call5 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %3) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %3) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %15 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crtc, align 8
  %event_lock8 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock8) #3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %sunxi_engine_commit.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge, label %for.body.i

for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sun4i_crtc_get_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %crtc4.i = getelementptr i8, ptr %.pn.i, i32 48
  %3 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc4.i, align 4
  %cmp5.i = icmp eq ptr %4, %crtc
  br i1 %cmp5.i, label %cleanup.split.loop.exit16.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

cleanup.split.loop.exit16.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %sun4i_crtc_get_encoder.exit

sun4i_crtc_get_encoder.exit:                      ; preds = %cleanup.split.loop.exit16.i, %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit16.i ], [ null, %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #3
  %tcon = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 3
  %5 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcon, align 8
  tail call void @sun4i_tcon_set_status(ptr noundef %6, ptr noundef %retval.0.i, i1 noundef zeroext true) #3
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge, label %for.body.i

for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sun4i_crtc_get_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %crtc4.i = getelementptr i8, ptr %.pn.i, i32 48
  %3 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc4.i, align 4
  %cmp5.i = icmp eq ptr %4, %crtc
  br i1 %cmp5.i, label %cleanup.split.loop.exit16.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

cleanup.split.loop.exit16.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %sun4i_crtc_get_encoder.exit

sun4i_crtc_get_encoder.exit:                      ; preds = %cleanup.split.loop.exit16.i, %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit16.i ], [ null, %for.cond.i.sun4i_crtc_get_encoder.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #3
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #3
  %tcon = getelementptr inbounds %struct.sun4i_crtc, ptr %crtc, i32 0, i32 3
  %5 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcon, align 8
  tail call void @sun4i_tcon_set_status(ptr noundef %6, ptr noundef %retval.0.i, i1 noundef zeroext false) #3
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %7 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state2, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sun4i_crtc_get_encoder.exit.if.end_crit_edge, label %land.lhs.true

sun4i_crtc_get_encoder.exit.if.end_crit_edge:     ; preds = %sun4i_crtc_get_encoder.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %sun4i_crtc_get_encoder.exit
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #3
  %15 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state2, align 4
  %event6 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %event6, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %18) #3
  %19 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc, align 8
  %event_lock8 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock8) #3
  %21 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state2, align 4
  %event10 = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %event10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %event10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sun4i_crtc_get_encoder.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_tcon_mode_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_tcon_set_status(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 209, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun4i_crtc_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun4i_crtc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 235, i32 3}
!10 = !{ptr @sun4i_crtc_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun4i_crtc_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @sun4i_crtc_funcs, !13, !"sun4i_crtc_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 180, i32 36}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 164, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 175, i32 2}
!18 = !{ptr @sun4i_crtc_helper_funcs, !19, !"sun4i_crtc_helper_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 151, i32 43}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 92, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 135, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun4i_crtc.c", i32 114, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i8 0, i8 2}
