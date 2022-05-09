; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/kmb/kmb_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/kmb/kmb_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kmb_drm_private = type { %struct.drm_device, ptr, ptr, %struct.kmb_clock, %struct.drm_crtc, ptr, ptr, %struct.spinlock, i32, i32, [2 x %struct.disp_cfg], [2 x %struct.layer_status], i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.anon.86 = type { i32, ptr }
%struct.kmb_clock = type { ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.disp_cfg = type { i32, i32, i32 }
%struct.layer_status = type { i8, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@kmb_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmb_crtc_enable_vblank, ptr @kmb_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmb_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @kmb_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmb_crtc_atomic_begin, ptr @kmb_crtc_atomic_flush, ptr @kmb_crtc_atomic_enable, ptr @kmb_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"height = %d less than %d\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"width = %d less than %d\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"refresh = %d less than %d or greater than %d\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vfp = %d less than %d\00", [42 x i8] zeroinitializer }, align 32
@kmb_crtc_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 87, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[drm] vfp= %d vbp= %d vsync_len=%d hfp=%d hbp=%d hsync_len=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmb_crtc_set_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/kmb/kmb_crtc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_crtc_set_mode._entry_ptr = internal global ptr @kmb_crtc_set_mode._entry, section ".printk_index", align 4
@.str.9 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s : %dactive height= %d vbp=%d vfp=%d vsync-w=%d h-active=%d h-bp=%d h-fp=%d hsync-l=%d\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"kmb_crtc_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 58, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"kmb_crtc_helper_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 222, i32 43 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 198, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 203, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 209, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 215, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 80, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [34 x i8] c"../drivers/gpu/drm/kmb/kmb_crtc.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 98, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @kmb_crtc_set_mode._entry, ptr @kmb_crtc_set_mode._entry_ptr, ptr @kmb_crtc_funcs, ptr @kmb_crtc_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_crtc_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmb_setup_crtc(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @kmb_plane_init(ptr noundef %drm) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc = getelementptr inbounds %struct.kmb_drm_private, ptr %drm, i32 0, i32 4
  %call4 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm, ptr noundef %crtc, ptr noundef %call1, ptr noundef null, ptr noundef nonnull @kmb_crtc_funcs, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kmb_plane_destroy(ptr noundef %call1) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %helper_private.i = getelementptr inbounds %struct.kmb_drm_private, ptr %drm, i32 0, i32 4, i32 19
  %1 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @kmb_crtc_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then5 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmb_plane_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmb_plane_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %lcd_mmio.i = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #4, !srcloc !32
  %6 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %9 = or i32 %8, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %9) #4, !srcloc !32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %lcd_mmio.i = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #4, !srcloc !32
  %4 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %7 = and i32 %6, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %7) #4, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %2 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vsync_start, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv, %conv2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %5)
  %cmp = icmp ult i16 %5, 1080
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %conv2, i32 noundef 1080) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1920, i16 %9)
  %cmp10 = icmp ult i16 %9, 1920
  br i1 %cmp10, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.end
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.then12.cond.end17_crit_edge, label %cond.true14

if.then12.cond.end17_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end17

cond.true14:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true14, %if.then12.cond.end17_crit_edge
  %cond18 = phi ptr [ %11, %cond.true14 ], [ null, %if.then12.cond.end17_crit_edge ]
  %conv20 = zext i16 %9 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond18, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %conv20, i32 noundef 1920) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #4
  %12 = add i32 %call, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %12)
  %13 = icmp ult i32 %12, -2
  br i1 %13, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end21
  %tobool27.not = icmp eq ptr %1, null
  br i1 %tobool27.not, label %if.then26.cond.end31_crit_edge, label %cond.true28

if.then26.cond.end31_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end31

cond.true28:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %dev29 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true28, %if.then26.cond.end31_crit_edge
  %cond32 = phi ptr [ %15, %cond.true28 ], [ null, %if.then26.cond.end31_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond32, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %call, i32 noundef 59, i32 noundef 60) #4
  br label %cleanup

if.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp34 = icmp slt i32 %sub, 4
  br i1 %cmp34, label %if.then36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %if.end33
  %tobool37.not = icmp eq ptr %1, null
  br i1 %tobool37.not, label %if.then36.cond.end41_crit_edge, label %cond.true38

if.then36.cond.end41_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end41

cond.true38:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %dev39 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev39, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true38, %if.then36.cond.end41_crit_edge
  %cond42 = phi ptr [ %17, %cond.true38 ], [ null, %if.then36.cond.end41_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond42, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %sub, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end41, %if.end33.cleanup_crit_edge, %cond.end31, %cond.end17, %cond.end
  %retval.0 = phi i32 [ 19, %cond.end ], [ 18, %cond.end17 ], [ -2, %cond.end31 ], [ -2, %cond.end41 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_crtc_atomic_begin(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %lcd_mmio.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %5 = and i32 %4, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %5) #4, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %lcd_mmio.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %5 = or i32 %4, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %5) #4, !srcloc !32
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %state3 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %10 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state3, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  %14 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state3, align 4
  %event7 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %event7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %event7, align 4
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef %17) #4
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %17) #4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5, %entry.if.end10_crit_edge
  %18 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state3, align 4
  %event12 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %event12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %event12, align 4
  %21 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc, align 8
  %event_lock14 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock14) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_crtc_atomic_enable(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %kmb_clk = getelementptr i8, ptr %crtc, i32 -12
  %0 = ptrtoint ptr %kmb_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kmb_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %1) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  %kmb_dsi.i = getelementptr inbounds %struct.kmb_drm_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %kmb_dsi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kmb_dsi.i, align 4
  %sys_clk_mhz.i = getelementptr inbounds %struct.kmb_drm_private, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %sys_clk_mhz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys_clk_mhz.i, align 8
  %call2.i = tail call i32 @kmb_dsi_mode_set(ptr noundef %7, ptr noundef %adjusted_mode.i, i32 noundef %9, ptr noundef %state) #4
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3.i, align 4
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 23
  %12 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv.i = zext i16 %13 to i32
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 20
  %14 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv4.i = zext i16 %15 to i32
  %sub.i = sub nsw i32 %conv.i, %conv4.i
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 25
  %16 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %crtc_vtotal.i, align 4
  %conv5.i = zext i16 %17 to i32
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 24
  %18 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv6.i = zext i16 %19 to i32
  %sub7.i = sub nsw i32 %conv5.i, %conv6.i
  %sub12.i = sub nsw i32 %conv6.i, %conv.i
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 16
  %20 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv13.i = zext i16 %21 to i32
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 13
  %22 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv14.i = zext i16 %23 to i32
  %sub15.i = sub nsw i32 %conv13.i, %conv14.i
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 18
  %24 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtc_htotal.i, align 2
  %conv16.i = zext i16 %25 to i32
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 17
  %26 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv17.i = zext i16 %27 to i32
  %sub18.i = sub nsw i32 %conv16.i, %conv17.i
  %sub23.i = sub nsw i32 %conv17.i, %conv13.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %sub.i, i32 noundef %sub7.i, i32 noundef %sub12.i, i32 noundef %sub15.i, i32 noundef %sub18.i, i32 noundef %sub23.i) #7
  %lcd_mmio.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %31 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %34 = xor i32 %30, -1
  %35 = and i32 %33, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %35) #4, !srcloc !32
  %38 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i115.i = getelementptr i8, ptr %39, i32 12
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i115.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 -1) #4, !srcloc !32
  %tobool.not.i4 = icmp eq ptr %3, null
  br i1 %tobool.not.i4, label %clk_prepare_enable.exit.cond.end.i_crit_edge, label %cond.true.i

clk_prepare_enable.exit.cond.end.i_crit_edge:     ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev3.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %clk_prepare_enable.exit.cond.end.i_crit_edge
  %cond.i = phi ptr [ %44, %cond.true.i ], [ null, %clk_prepare_enable.exit.cond.end.i_crit_edge ]
  %45 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv27.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv32.i = zext i16 %48 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 102, i32 noundef %conv27.i, i32 noundef 2, i32 noundef 2, i32 noundef 8, i32 noundef %conv32.i, i32 noundef 0, i32 noundef 0, i32 noundef 28) #4
  %49 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv37.i = zext i16 %50 to i32
  %sub38.i = add nsw i32 %conv37.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %51 = tail call i32 @llvm.bswap.i32(i32 %sub38.i) #4
  %52 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i117.i = getelementptr i8, ptr %53, i32 8220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %51) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i119.i = getelementptr i8, ptr %55, i32 8216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 33554432) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %56 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i121.i = getelementptr i8, ptr %57, i32 8224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 33554432) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %58 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i123.i = getelementptr i8, ptr %59, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 117440512) #4, !srcloc !32
  %60 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv44.i = zext i16 %61 to i32
  %sub45.i = add nsw i32 %conv44.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %62 = tail call i32 @llvm.bswap.i32(i32 %sub45.i) #4
  %63 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i125.i = getelementptr i8, ptr %64, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %62) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %65 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i127.i = getelementptr i8, ptr %66, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %67 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i129.i = getelementptr i8, ptr %68, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %69 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i131.i = getelementptr i8, ptr %70, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 452984832) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %71 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i133.i = getelementptr i8, ptr %72, i32 8228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %73 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i135.i = getelementptr i8, ptr %74, i32 8232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %75 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i137.i = getelementptr i8, ptr %76, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 67108864) #4, !srcloc !32
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 11
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %78)
  %cmp.i = icmp eq i32 %78, 16
  br i1 %cmp.i, label %if.then.i, label %cond.end.i.kmb_crtc_set_mode.exit_crit_edge

cond.end.i.kmb_crtc_set_mode.exit_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %kmb_crtc_set_mode.exit

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %79 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i139.i = getelementptr i8, ptr %80, i32 8240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 117440512) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %81 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i141.i = getelementptr i8, ptr %82, i32 8236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 33554432) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %83 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i143.i = getelementptr i8, ptr %84, i32 8248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 33554432) #4, !srcloc !32
  %85 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv56.i = zext i16 %86 to i32
  %sub57.i = add nsw i32 %conv56.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %87 = tail call i32 @llvm.bswap.i32(i32 %sub57.i) #4
  %88 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i145.i = getelementptr i8, ptr %89, i32 8244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 %87) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %90 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i147.i = getelementptr i8, ptr %91, i32 8252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 167772160) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %92 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i149.i = getelementptr i8, ptr %93, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 167772160) #4, !srcloc !32
  br label %kmb_crtc_set_mode.exit

kmb_crtc_set_mode.exit:                           ; preds = %if.then.i, %cond.end.i.kmb_crtc_set_mode.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %94 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i151.i = getelementptr i8, ptr %95, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 16777216) #4, !srcloc !32
  %96 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lcd_mmio.i.i, align 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %99 = or i32 %98, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %100 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lcd_mmio.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #4, !srcloc !32
  %102 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i154.i = getelementptr i8, ptr %103, i32 8
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i154.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %105 = or i32 %104, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %106 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i156.i = getelementptr i8, ptr %107, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i156.i, i32 %105) #4, !srcloc !32
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef %5, i1 noundef zeroext false) #4
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #4
  %kmb_clk = getelementptr i8, ptr %crtc, i32 -12
  %6 = ptrtoint ptr %kmb_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kmb_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmb_dsi_mode_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @kmb_crtc_funcs, !1, !"kmb_crtc_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 58, i32 36}
!2 = !{ptr @kmb_crtc_helper_funcs, !3, !"kmb_crtc_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 222, i32 43}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 198, i32 3}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 203, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 209, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 215, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 80, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @kmb_crtc_set_mode._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @kmb_crtc_set_mode._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/kmb/kmb_crtc.c", i32 98, i32 2}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2156668975}
!32 = !{i64 6947381}
!33 = !{i64 6947799}
!34 = !{i64 2156669833}
