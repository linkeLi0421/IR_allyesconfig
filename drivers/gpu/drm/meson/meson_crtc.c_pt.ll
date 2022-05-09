; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.87, %struct.anon.88, %struct.anon.89, %struct.anon.90 }
%struct.anon.87 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.88 = type { i32, i8, i8, i8 }
%struct.anon.89 = type { i32, ptr, i32 }
%struct.anon.90 = type { ptr, i64, i32 }
%struct.meson_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.meson_afbcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
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
%struct.anon.84 = type { i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@meson_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_crtc_enable_vblank, ptr @meson_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson_crtc\00", [21 x i8] zeroinitializer }, align 32
@meson_crtc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to init CRTC\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_crtc_create\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/meson/meson_crtc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_crtc_create._entry_ptr = internal global ptr @meson_crtc_create._entry, section ".printk_index", align 4
@meson_g12a_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_crtc_atomic_begin, ptr @meson_crtc_atomic_flush, ptr @meson_g12a_crtc_atomic_enable, ptr @meson_g12a_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@meson_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_crtc_atomic_begin, ptr @meson_crtc_atomic_flush, ptr @meson_crtc_atomic_enable, ptr @meson_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid crtc_state\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"meson_crtc_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 72, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 689, i32 25 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 691, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"meson_g12a_crtc_helper_funcs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 236, i32 43 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"meson_crtc_helper_funcs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 229, i32 43 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 91, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [38 x i8] c"../drivers/gpu/drm/meson/meson_crtc.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 94, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @meson_crtc_create._entry, ptr @meson_crtc_create._entry_ptr, ptr @meson_crtc_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @meson_g12a_crtc_helper_funcs, ptr @meson_crtc_helper_funcs, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crtc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_g12a_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_crtc_irq(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %viu = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %viu to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %viu, align 8, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end111_crit_edge, label %land.lhs.true

entry.if.end111_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

land.lhs.true:                                    ; preds = %entry
  %osd1_commit = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 2
  %4 = ptrtoint ptr %osd1_commit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %osd1_commit, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end111_crit_edge, label %if.then

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then:                                          ; preds = %land.lhs.true
  %osd1_ctrl_stat = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 4
  %6 = ptrtoint ptr %osd1_ctrl_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osd1_ctrl_stat, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr4 = getelementptr i8, ptr %10, i32 26688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #5, !srcloc !30
  %osd1_ctrl_stat2 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 5
  %11 = ptrtoint ptr %osd1_ctrl_stat2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %osd1_ctrl_stat2, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 8
  %add.ptr7 = getelementptr i8, ptr %15, i32 26804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %13) #5, !srcloc !30
  %osd1_blk0_cfg = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 6
  %16 = ptrtoint ptr %osd1_blk0_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %osd1_blk0_cfg, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base, align 8
  %add.ptr10 = getelementptr i8, ptr %20, i32 26732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %18) #5, !srcloc !30
  %arrayidx13 = getelementptr %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base, align 8
  %add.ptr15 = getelementptr i8, ptr %25, i32 26736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %23) #5, !srcloc !30
  %arrayidx18 = getelementptr %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 6, i32 2
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base, align 8
  %add.ptr20 = getelementptr i8, ptr %30, i32 26740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %28) #5, !srcloc !30
  %arrayidx23 = getelementptr %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 6, i32 3
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx23, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base, align 8
  %add.ptr25 = getelementptr i8, ptr %35, i32 26744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %33) #5, !srcloc !30
  %arrayidx28 = getelementptr %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 6, i32 4
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx28, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base, align 8
  %add.ptr30 = getelementptr i8, ptr %40, i32 26700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %38) #5, !srcloc !30
  %osd1_afbcd = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 3
  %41 = ptrtoint ptr %osd1_afbcd to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %osd1_afbcd, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool32.not = icmp eq i8 %42, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then
  %enable_osd1_afbc = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %enable_osd1_afbc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %enable_osd1_afbc, align 8
  %tobool34.not = icmp eq ptr %44, null
  br i1 %tobool34.not, label %if.then33.if.end49_crit_edge, label %if.then35

if.then33.if.end49_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %44(ptr noundef %priv) #5
  br label %if.end49

if.else:                                          ; preds = %if.then
  %disable_osd1_afbc = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %disable_osd1_afbc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %disable_osd1_afbc, align 4
  %tobool37.not = icmp eq ptr %46, null
  br i1 %tobool37.not, label %if.else.if.end40_crit_edge, label %if.then38

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %46(ptr noundef %priv) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else.if.end40_crit_edge
  %afbcd = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 18
  %47 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %afbcd, align 8
  %tobool41.not = icmp eq ptr %48, null
  br i1 %tobool41.not, label %if.end40.if.end48_crit_edge, label %if.then42

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %reset = getelementptr inbounds %struct.meson_afbcd_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reset, align 4
  %call = tail call i32 %50(ptr noundef %priv) #5
  %51 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %afbcd, align 8
  %disable = getelementptr inbounds %struct.meson_afbcd_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %disable, align 4
  %call47 = tail call i32 %54(ptr noundef %priv) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end40.if.end48_crit_edge
  %vsync_forced = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %vsync_forced to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %vsync_forced, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then35, %if.then33.if.end49_crit_edge
  %osd_sc_ctrl0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 13
  %56 = ptrtoint ptr %osd_sc_ctrl0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %osd_sc_ctrl0, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_base, align 8
  %add.ptr52 = getelementptr i8, ptr %60, i32 30496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %58) #5, !srcloc !30
  %osd_sc_i_wh_m1 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 14
  %61 = ptrtoint ptr %osd_sc_i_wh_m1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %osd_sc_i_wh_m1, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_base, align 8
  %add.ptr55 = getelementptr i8, ptr %65, i32 30500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %63) #5, !srcloc !30
  %osd_sc_o_h_start_end = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 15
  %66 = ptrtoint ptr %osd_sc_o_h_start_end to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %osd_sc_o_h_start_end, align 8
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io_base, align 8
  %add.ptr58 = getelementptr i8, ptr %70, i32 30504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %68) #5, !srcloc !30
  %osd_sc_o_v_start_end = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 16
  %71 = ptrtoint ptr %osd_sc_o_v_start_end to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %osd_sc_o_v_start_end, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base, align 8
  %add.ptr61 = getelementptr i8, ptr %75, i32 30508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %73) #5, !srcloc !30
  %osd_sc_v_ini_phase = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 17
  %76 = ptrtoint ptr %osd_sc_v_ini_phase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %osd_sc_v_ini_phase, align 8
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io_base, align 8
  %add.ptr64 = getelementptr i8, ptr %80, i32 30468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %78) #5, !srcloc !30
  %osd_sc_v_phase_step = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 18
  %81 = ptrtoint ptr %osd_sc_v_phase_step to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %osd_sc_v_phase_step, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io_base, align 8
  %add.ptr67 = getelementptr i8, ptr %85, i32 30464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %83) #5, !srcloc !30
  %osd_sc_h_ini_phase = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 19
  %86 = ptrtoint ptr %osd_sc_h_ini_phase to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %osd_sc_h_ini_phase, align 8
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io_base, align 8
  %add.ptr70 = getelementptr i8, ptr %90, i32 30480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %88) #5, !srcloc !30
  %osd_sc_h_phase_step = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 20
  %91 = ptrtoint ptr %osd_sc_h_phase_step to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %osd_sc_h_phase_step, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %io_base, align 8
  %add.ptr73 = getelementptr i8, ptr %95, i32 30476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %93) #5, !srcloc !30
  %osd_sc_h_ctrl0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 21
  %96 = ptrtoint ptr %osd_sc_h_ctrl0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %osd_sc_h_ctrl0, align 8
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %99 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_base, align 8
  %add.ptr76 = getelementptr i8, ptr %100, i32 30484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %98) #5, !srcloc !30
  %osd_sc_v_ctrl0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 22
  %101 = ptrtoint ptr %osd_sc_v_ctrl0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %osd_sc_v_ctrl0, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %104 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io_base, align 8
  %add.ptr79 = getelementptr i8, ptr %105, i32 30472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %103) #5, !srcloc !30
  %106 = ptrtoint ptr %osd1_afbcd to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %osd1_afbcd, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool82.not = icmp eq i8 %107, 0
  br i1 %tobool82.not, label %if.then83, label %if.end49.if.end88_crit_edge

if.end49.if.end88_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then83:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %canvas = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 5
  %108 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %canvas, align 4
  %canvas_id_osd1 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 6
  %110 = ptrtoint ptr %canvas_id_osd1 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %canvas_id_osd1, align 8
  %osd1_addr = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 9
  %112 = ptrtoint ptr %osd1_addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %osd1_addr, align 8
  %osd1_stride = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 10
  %114 = ptrtoint ptr %osd1_stride to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %osd1_stride, align 4
  %osd1_height = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 11
  %116 = ptrtoint ptr %osd1_height to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %osd1_height, align 8
  %call87 = tail call i32 @meson_canvas_config(ptr noundef %109, i8 noundef zeroext %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.end49.if.end88_crit_edge
  %enable_osd1 = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 3
  %118 = ptrtoint ptr %enable_osd1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %enable_osd1, align 8
  %tobool89.not = icmp eq ptr %119, null
  br i1 %tobool89.not, label %if.end88.if.end92_crit_edge, label %if.then90

if.end88.if.end92_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %119(ptr noundef %priv) #5
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end88.if.end92_crit_edge
  %120 = ptrtoint ptr %osd1_afbcd to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %osd1_afbcd, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool95.not = icmp eq i8 %121, 0
  br i1 %tobool95.not, label %if.end92.if.end108_crit_edge, label %if.then96

if.end92.if.end108_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %afbcd97 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 18
  %122 = ptrtoint ptr %afbcd97 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %afbcd97, align 8
  %reset99 = getelementptr inbounds %struct.meson_afbcd_ops, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %reset99 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reset99, align 4
  %call100 = tail call i32 %125(ptr noundef %priv) #5
  %126 = ptrtoint ptr %afbcd97 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %afbcd97, align 8
  %setup = getelementptr inbounds %struct.meson_afbcd_ops, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %setup, align 4
  %call103 = tail call i32 %129(ptr noundef %priv) #5
  %130 = ptrtoint ptr %afbcd97 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %afbcd97, align 8
  %enable = getelementptr inbounds %struct.meson_afbcd_ops, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %enable, align 4
  %call106 = tail call i32 %133(ptr noundef %priv) #5
  %vsync_forced107 = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 8
  %134 = ptrtoint ptr %vsync_forced107 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %vsync_forced107, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then96, %if.end92.if.end108_crit_edge
  %135 = ptrtoint ptr %osd1_commit to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %osd1_commit, align 2
  br label %if.end111

if.end111:                                        ; preds = %if.end108, %land.lhs.true.if.end111_crit_edge, %entry.if.end111_crit_edge
  %vd1_enabled = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 27
  %136 = ptrtoint ptr %vd1_enabled to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %vd1_enabled, align 8, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool113.not = icmp eq i8 %137, 0
  br i1 %tobool113.not, label %if.end111.if.end498_crit_edge, label %land.lhs.true114

if.end111.if.end498_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end498

land.lhs.true114:                                 ; preds = %if.end111
  %vd1_commit = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 28
  %138 = ptrtoint ptr %vd1_commit to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %vd1_commit, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool116.not = icmp eq i8 %139, 0
  br i1 %tobool116.not, label %land.lhs.true114.if.end498_crit_edge, label %if.then117

land.lhs.true114.if.end498_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end498

if.then117:                                       ; preds = %land.lhs.true114
  %vd1_afbc = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 29
  %140 = ptrtoint ptr %vd1_afbc to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %vd1_afbc, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool119.not = icmp eq i8 %141, 0
  br i1 %tobool119.not, label %if.else166, label %if.then120

if.then120:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  %vd1_afbc_head_addr = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 57
  %142 = ptrtoint ptr %vd1_afbc_head_addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %vd1_afbc_head_addr, align 8
  %144 = tail call i32 @llvm.bswap.i32(i32 %143)
  %io_base122 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %145 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %io_base122, align 8
  %add.ptr123 = getelementptr i8, ptr %146, i32 27544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %144) #5, !srcloc !30
  %vd1_afbc_body_addr = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 58
  %147 = ptrtoint ptr %vd1_afbc_body_addr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %vd1_afbc_body_addr, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
  %150 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %io_base122, align 8
  %add.ptr126 = getelementptr i8, ptr %151, i32 27548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %149) #5, !srcloc !30
  %vd1_afbc_en = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 56
  %152 = ptrtoint ptr %vd1_afbc_en to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %vd1_afbc_en, align 4
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  %155 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %io_base122, align 8
  %add.ptr129 = getelementptr i8, ptr %156, i32 27520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %154) #5, !srcloc !30
  %vd1_afbc_mode = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 55
  %157 = ptrtoint ptr %vd1_afbc_mode to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %vd1_afbc_mode, align 8
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  %160 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %io_base122, align 8
  %add.ptr132 = getelementptr i8, ptr %161, i32 27524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %159) #5, !srcloc !30
  %vd1_afbc_size_in = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 69
  %162 = ptrtoint ptr %vd1_afbc_size_in to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %vd1_afbc_size_in, align 8
  %164 = tail call i32 @llvm.bswap.i32(i32 %163)
  %165 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %io_base122, align 8
  %add.ptr135 = getelementptr i8, ptr %166, i32 27528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %164) #5, !srcloc !30
  %vd1_afbc_dec_def_color = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 60
  %167 = ptrtoint ptr %vd1_afbc_dec_def_color to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %vd1_afbc_dec_def_color, align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  %170 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_base122, align 8
  %add.ptr138 = getelementptr i8, ptr %171, i32 27532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %169) #5, !srcloc !30
  %vd1_afbc_conv_ctrl = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 59
  %172 = ptrtoint ptr %vd1_afbc_conv_ctrl to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %vd1_afbc_conv_ctrl, align 8
  %174 = tail call i32 @llvm.bswap.i32(i32 %173)
  %175 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %io_base122, align 8
  %add.ptr141 = getelementptr i8, ptr %176, i32 27536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %174) #5, !srcloc !30
  %vd1_afbc_size_out = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 66
  %177 = ptrtoint ptr %vd1_afbc_size_out to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %vd1_afbc_size_out, align 4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178)
  %180 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %io_base122, align 8
  %add.ptr144 = getelementptr i8, ptr %181, i32 27552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %179) #5, !srcloc !30
  %vd1_afbc_vd_cfmt_ctrl = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 61
  %182 = ptrtoint ptr %vd1_afbc_vd_cfmt_ctrl to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %vd1_afbc_vd_cfmt_ctrl, align 8
  %184 = tail call i32 @llvm.bswap.i32(i32 %183)
  %185 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io_base122, align 8
  %add.ptr147 = getelementptr i8, ptr %186, i32 27564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %184) #5, !srcloc !30
  %vd1_afbc_vd_cfmt_w = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 62
  %187 = ptrtoint ptr %vd1_afbc_vd_cfmt_w to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %vd1_afbc_vd_cfmt_w, align 4
  %189 = tail call i32 @llvm.bswap.i32(i32 %188)
  %190 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_base122, align 8
  %add.ptr150 = getelementptr i8, ptr %191, i32 27568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %189) #5, !srcloc !30
  %vd1_afbc_mif_hor_scope = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 64
  %192 = ptrtoint ptr %vd1_afbc_mif_hor_scope to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %vd1_afbc_mif_hor_scope, align 4
  %194 = tail call i32 @llvm.bswap.i32(i32 %193)
  %195 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %io_base122, align 8
  %add.ptr153 = getelementptr i8, ptr %196, i32 27572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %194) #5, !srcloc !30
  %vd1_afbc_mif_ver_scope = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 65
  %197 = ptrtoint ptr %vd1_afbc_mif_ver_scope to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vd1_afbc_mif_ver_scope, align 8
  %199 = tail call i32 @llvm.bswap.i32(i32 %198)
  %200 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io_base122, align 8
  %add.ptr156 = getelementptr i8, ptr %201, i32 27576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %199) #5, !srcloc !30
  %vd1_afbc_pixel_hor_scope = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 67
  %202 = ptrtoint ptr %vd1_afbc_pixel_hor_scope to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %vd1_afbc_pixel_hor_scope, align 8
  %204 = tail call i32 @llvm.bswap.i32(i32 %203)
  %205 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %io_base122, align 8
  %add.ptr159 = getelementptr i8, ptr %206, i32 27580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %204) #5, !srcloc !30
  %vd1_afbc_pixel_ver_scope = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 68
  %207 = ptrtoint ptr %vd1_afbc_pixel_ver_scope to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %vd1_afbc_pixel_ver_scope, align 4
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  %210 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io_base122, align 8
  %add.ptr162 = getelementptr i8, ptr %211, i32 27584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %209) #5, !srcloc !30
  %vd1_afbc_vd_cfmt_h = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 63
  %212 = ptrtoint ptr %vd1_afbc_vd_cfmt_h to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %vd1_afbc_vd_cfmt_h, align 8
  %214 = tail call i32 @llvm.bswap.i32(i32 %213)
  %215 = ptrtoint ptr %io_base122 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %io_base122, align 8
  %add.ptr165 = getelementptr i8, ptr %216, i32 27588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %214) #5, !srcloc !30
  br label %if.end187

if.else166:                                       ; preds = %if.then117
  %vd1_planes = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 30
  %217 = ptrtoint ptr %vd1_planes to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %vd1_planes, align 4
  %219 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values)
  switch i32 %218, label %if.else166.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.else166.sw.bb173_crit_edge
    i32 1, label %if.else166.sw.bb179_crit_edge
  ]

if.else166.sw.bb179_crit_edge:                    ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb179

if.else166.sw.bb173_crit_edge:                    ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb173

if.else166.sw.epilog_crit_edge:                   ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #7
  %canvas168 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 5
  %220 = ptrtoint ptr %canvas168 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %canvas168, align 4
  %canvas_id_vd1_2 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 9
  %222 = ptrtoint ptr %canvas_id_vd1_2 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %canvas_id_vd1_2, align 1
  %vd1_addr2 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 48
  %224 = ptrtoint ptr %vd1_addr2 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %vd1_addr2, align 4
  %vd1_stride2 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 51
  %226 = ptrtoint ptr %vd1_stride2 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %vd1_stride2, align 8
  %vd1_height2 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 54
  %228 = ptrtoint ptr %vd1_height2 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %vd1_height2, align 4
  %call172 = tail call i32 @meson_canvas_config(ptr noundef %221, i8 noundef zeroext %223, i32 noundef %225, i32 noundef %227, i32 noundef %229, i32 noundef 0, i32 noundef 0, i32 noundef 7) #5
  br label %sw.bb173

sw.bb173:                                         ; preds = %sw.bb, %if.else166.sw.bb173_crit_edge
  %canvas174 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 5
  %230 = ptrtoint ptr %canvas174 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %canvas174, align 4
  %canvas_id_vd1_1 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 8
  %232 = ptrtoint ptr %canvas_id_vd1_1 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %canvas_id_vd1_1, align 2
  %vd1_addr1 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 47
  %234 = ptrtoint ptr %vd1_addr1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %vd1_addr1, align 8
  %vd1_stride1 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 50
  %236 = ptrtoint ptr %vd1_stride1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %vd1_stride1, align 4
  %vd1_height1 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 53
  %238 = ptrtoint ptr %vd1_height1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %vd1_height1, align 8
  %call178 = tail call i32 @meson_canvas_config(ptr noundef %231, i8 noundef zeroext %233, i32 noundef %235, i32 noundef %237, i32 noundef %239, i32 noundef 0, i32 noundef 0, i32 noundef 7) #5
  br label %sw.bb179

sw.bb179:                                         ; preds = %sw.bb173, %if.else166.sw.bb179_crit_edge
  %canvas180 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 5
  %240 = ptrtoint ptr %canvas180 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %canvas180, align 4
  %canvas_id_vd1_0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 7
  %242 = ptrtoint ptr %canvas_id_vd1_0 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %canvas_id_vd1_0, align 1
  %vd1_addr0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 46
  %244 = ptrtoint ptr %vd1_addr0 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %vd1_addr0, align 4
  %vd1_stride0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 49
  %246 = ptrtoint ptr %vd1_stride0 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %vd1_stride0, align 8
  %vd1_height0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 52
  %248 = ptrtoint ptr %vd1_height0 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %vd1_height0, align 4
  %call184 = tail call i32 @meson_canvas_config(ptr noundef %241, i8 noundef zeroext %243, i32 noundef %245, i32 noundef %247, i32 noundef %249, i32 noundef 0, i32 noundef 0, i32 noundef 7) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb179, %if.else166.sw.epilog_crit_edge
  %io_base185 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %250 = ptrtoint ptr %io_base185 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %io_base185, align 8
  %add.ptr186 = getelementptr i8, ptr %251, i32 27520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 0) #5, !srcloc !30
  br label %if.end187

if.end187:                                        ; preds = %sw.epilog, %if.then120
  %vd1_if0_gen_reg = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 31
  %252 = ptrtoint ptr %vd1_if0_gen_reg to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %vd1_if0_gen_reg, align 8
  %254 = tail call i32 @llvm.bswap.i32(i32 %253)
  %io_base189 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %255 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %io_base189, align 8
  %viu_offset = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 7
  %257 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %viu_offset, align 8
  %add.ptr190 = getelementptr i8, ptr %256, i32 %258
  %add.ptr191 = getelementptr i8, ptr %add.ptr190, i32 26944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %254) #5, !srcloc !30
  %259 = ptrtoint ptr %vd1_if0_gen_reg to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %vd1_if0_gen_reg, align 8
  %261 = tail call i32 @llvm.bswap.i32(i32 %260)
  %262 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %io_base189, align 8
  %264 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %viu_offset, align 8
  %add.ptr196 = getelementptr i8, ptr %263, i32 %265
  %add.ptr197 = getelementptr i8, ptr %add.ptr196, i32 27072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %261) #5, !srcloc !30
  %vd1_if0_gen_reg2 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 44
  %266 = ptrtoint ptr %vd1_if0_gen_reg2 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %vd1_if0_gen_reg2, align 4
  %268 = tail call i32 @llvm.bswap.i32(i32 %267)
  %269 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %io_base189, align 8
  %271 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %viu_offset, align 8
  %add.ptr201 = getelementptr i8, ptr %270, i32 %272
  %add.ptr202 = getelementptr i8, ptr %add.ptr201, i32 27060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %268) #5, !srcloc !30
  %viu_vd1_fmt_ctrl = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 45
  %273 = ptrtoint ptr %viu_vd1_fmt_ctrl to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %viu_vd1_fmt_ctrl, align 8
  %275 = tail call i32 @llvm.bswap.i32(i32 %274)
  %276 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %io_base189, align 8
  %278 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %viu_offset, align 8
  %add.ptr206 = getelementptr i8, ptr %277, i32 %279
  %add.ptr207 = getelementptr i8, ptr %add.ptr206, i32 27040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 %275) #5, !srcloc !30
  %280 = ptrtoint ptr %viu_vd1_fmt_ctrl to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %viu_vd1_fmt_ctrl, align 8
  %282 = tail call i32 @llvm.bswap.i32(i32 %281)
  %283 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %io_base189, align 8
  %285 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %viu_offset, align 8
  %add.ptr212 = getelementptr i8, ptr %284, i32 %286
  %add.ptr213 = getelementptr i8, ptr %add.ptr212, i32 27168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 %282) #5, !srcloc !30
  %viu_vd1_fmt_w = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 42
  %287 = ptrtoint ptr %viu_vd1_fmt_w to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %viu_vd1_fmt_w, align 4
  %289 = tail call i32 @llvm.bswap.i32(i32 %288)
  %290 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %io_base189, align 8
  %292 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %viu_offset, align 8
  %add.ptr217 = getelementptr i8, ptr %291, i32 %293
  %add.ptr218 = getelementptr i8, ptr %add.ptr217, i32 27044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 %289) #5, !srcloc !30
  %294 = ptrtoint ptr %viu_vd1_fmt_w to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %viu_vd1_fmt_w, align 4
  %296 = tail call i32 @llvm.bswap.i32(i32 %295)
  %297 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %io_base189, align 8
  %299 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %viu_offset, align 8
  %add.ptr223 = getelementptr i8, ptr %298, i32 %300
  %add.ptr224 = getelementptr i8, ptr %add.ptr223, i32 27172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 %296) #5, !srcloc !30
  %vd1_if0_canvas0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 43
  %301 = ptrtoint ptr %vd1_if0_canvas0 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %vd1_if0_canvas0, align 8
  %303 = tail call i32 @llvm.bswap.i32(i32 %302)
  %304 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %io_base189, align 8
  %306 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %viu_offset, align 8
  %add.ptr228 = getelementptr i8, ptr %305, i32 %307
  %add.ptr229 = getelementptr i8, ptr %add.ptr228, i32 26948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229, i32 %303) #5, !srcloc !30
  %308 = ptrtoint ptr %vd1_if0_canvas0 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %vd1_if0_canvas0, align 8
  %310 = tail call i32 @llvm.bswap.i32(i32 %309)
  %311 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %io_base189, align 8
  %313 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %viu_offset, align 8
  %add.ptr234 = getelementptr i8, ptr %312, i32 %314
  %add.ptr235 = getelementptr i8, ptr %add.ptr234, i32 26952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 %310) #5, !srcloc !30
  %315 = ptrtoint ptr %vd1_if0_canvas0 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %vd1_if0_canvas0, align 8
  %317 = tail call i32 @llvm.bswap.i32(i32 %316)
  %318 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %io_base189, align 8
  %320 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %viu_offset, align 8
  %add.ptr240 = getelementptr i8, ptr %319, i32 %321
  %add.ptr241 = getelementptr i8, ptr %add.ptr240, i32 27076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr241, i32 %317) #5, !srcloc !30
  %322 = ptrtoint ptr %vd1_if0_canvas0 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %vd1_if0_canvas0, align 8
  %324 = tail call i32 @llvm.bswap.i32(i32 %323)
  %325 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %io_base189, align 8
  %327 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %viu_offset, align 8
  %add.ptr246 = getelementptr i8, ptr %326, i32 %328
  %add.ptr247 = getelementptr i8, ptr %add.ptr246, i32 27080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr247, i32 %324) #5, !srcloc !30
  %vd1_if0_luma_x0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 32
  %329 = ptrtoint ptr %vd1_if0_luma_x0 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %vd1_if0_luma_x0, align 4
  %331 = tail call i32 @llvm.bswap.i32(i32 %330)
  %332 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %io_base189, align 8
  %334 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %viu_offset, align 8
  %add.ptr251 = getelementptr i8, ptr %333, i32 %335
  %add.ptr252 = getelementptr i8, ptr %add.ptr251, i32 26956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252, i32 %331) #5, !srcloc !30
  %336 = ptrtoint ptr %vd1_if0_luma_x0 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %vd1_if0_luma_x0, align 4
  %338 = tail call i32 @llvm.bswap.i32(i32 %337)
  %339 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %io_base189, align 8
  %341 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %viu_offset, align 8
  %add.ptr257 = getelementptr i8, ptr %340, i32 %342
  %add.ptr258 = getelementptr i8, ptr %add.ptr257, i32 26972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %338) #5, !srcloc !30
  %343 = ptrtoint ptr %vd1_if0_luma_x0 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %vd1_if0_luma_x0, align 4
  %345 = tail call i32 @llvm.bswap.i32(i32 %344)
  %346 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %io_base189, align 8
  %348 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %viu_offset, align 8
  %add.ptr263 = getelementptr i8, ptr %347, i32 %349
  %add.ptr264 = getelementptr i8, ptr %add.ptr263, i32 27084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr264, i32 %345) #5, !srcloc !30
  %350 = ptrtoint ptr %vd1_if0_luma_x0 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %vd1_if0_luma_x0, align 4
  %352 = tail call i32 @llvm.bswap.i32(i32 %351)
  %353 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %io_base189, align 8
  %355 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %viu_offset, align 8
  %add.ptr269 = getelementptr i8, ptr %354, i32 %356
  %add.ptr270 = getelementptr i8, ptr %add.ptr269, i32 27100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr270, i32 %352) #5, !srcloc !30
  %vd1_if0_luma_y0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 33
  %357 = ptrtoint ptr %vd1_if0_luma_y0 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %vd1_if0_luma_y0, align 8
  %359 = tail call i32 @llvm.bswap.i32(i32 %358)
  %360 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %io_base189, align 8
  %362 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %viu_offset, align 8
  %add.ptr274 = getelementptr i8, ptr %361, i32 %363
  %add.ptr275 = getelementptr i8, ptr %add.ptr274, i32 26960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275, i32 %359) #5, !srcloc !30
  %364 = ptrtoint ptr %vd1_if0_luma_y0 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %vd1_if0_luma_y0, align 8
  %366 = tail call i32 @llvm.bswap.i32(i32 %365)
  %367 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %io_base189, align 8
  %369 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %viu_offset, align 8
  %add.ptr280 = getelementptr i8, ptr %368, i32 %370
  %add.ptr281 = getelementptr i8, ptr %add.ptr280, i32 26976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281, i32 %366) #5, !srcloc !30
  %371 = ptrtoint ptr %vd1_if0_luma_y0 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %vd1_if0_luma_y0, align 8
  %373 = tail call i32 @llvm.bswap.i32(i32 %372)
  %374 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %io_base189, align 8
  %376 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %viu_offset, align 8
  %add.ptr286 = getelementptr i8, ptr %375, i32 %377
  %add.ptr287 = getelementptr i8, ptr %add.ptr286, i32 27088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287, i32 %373) #5, !srcloc !30
  %378 = ptrtoint ptr %vd1_if0_luma_y0 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %vd1_if0_luma_y0, align 8
  %380 = tail call i32 @llvm.bswap.i32(i32 %379)
  %381 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %io_base189, align 8
  %383 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %viu_offset, align 8
  %add.ptr292 = getelementptr i8, ptr %382, i32 %384
  %add.ptr293 = getelementptr i8, ptr %add.ptr292, i32 27104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr293, i32 %380) #5, !srcloc !30
  %vd1_if0_chroma_x0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 34
  %385 = ptrtoint ptr %vd1_if0_chroma_x0 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %vd1_if0_chroma_x0, align 4
  %387 = tail call i32 @llvm.bswap.i32(i32 %386)
  %388 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %io_base189, align 8
  %390 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %viu_offset, align 8
  %add.ptr297 = getelementptr i8, ptr %389, i32 %391
  %add.ptr298 = getelementptr i8, ptr %add.ptr297, i32 26964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 %387) #5, !srcloc !30
  %392 = ptrtoint ptr %vd1_if0_chroma_x0 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %vd1_if0_chroma_x0, align 4
  %394 = tail call i32 @llvm.bswap.i32(i32 %393)
  %395 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %io_base189, align 8
  %397 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %viu_offset, align 8
  %add.ptr303 = getelementptr i8, ptr %396, i32 %398
  %add.ptr304 = getelementptr i8, ptr %add.ptr303, i32 26980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr304, i32 %394) #5, !srcloc !30
  %399 = ptrtoint ptr %vd1_if0_chroma_x0 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %vd1_if0_chroma_x0, align 4
  %401 = tail call i32 @llvm.bswap.i32(i32 %400)
  %402 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %io_base189, align 8
  %404 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %viu_offset, align 8
  %add.ptr309 = getelementptr i8, ptr %403, i32 %405
  %add.ptr310 = getelementptr i8, ptr %add.ptr309, i32 27092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 %401) #5, !srcloc !30
  %406 = ptrtoint ptr %vd1_if0_chroma_x0 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %vd1_if0_chroma_x0, align 4
  %408 = tail call i32 @llvm.bswap.i32(i32 %407)
  %409 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %io_base189, align 8
  %411 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %viu_offset, align 8
  %add.ptr315 = getelementptr i8, ptr %410, i32 %412
  %add.ptr316 = getelementptr i8, ptr %add.ptr315, i32 27108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr316, i32 %408) #5, !srcloc !30
  %vd1_if0_chroma_y0 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 35
  %413 = ptrtoint ptr %vd1_if0_chroma_y0 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %vd1_if0_chroma_y0, align 8
  %415 = tail call i32 @llvm.bswap.i32(i32 %414)
  %416 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %io_base189, align 8
  %418 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %viu_offset, align 8
  %add.ptr320 = getelementptr i8, ptr %417, i32 %419
  %add.ptr321 = getelementptr i8, ptr %add.ptr320, i32 26968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr321, i32 %415) #5, !srcloc !30
  %420 = ptrtoint ptr %vd1_if0_chroma_y0 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %vd1_if0_chroma_y0, align 8
  %422 = tail call i32 @llvm.bswap.i32(i32 %421)
  %423 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %io_base189, align 8
  %425 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %viu_offset, align 8
  %add.ptr326 = getelementptr i8, ptr %424, i32 %426
  %add.ptr327 = getelementptr i8, ptr %add.ptr326, i32 26984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr327, i32 %422) #5, !srcloc !30
  %427 = ptrtoint ptr %vd1_if0_chroma_y0 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %vd1_if0_chroma_y0, align 8
  %429 = tail call i32 @llvm.bswap.i32(i32 %428)
  %430 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %io_base189, align 8
  %432 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %viu_offset, align 8
  %add.ptr332 = getelementptr i8, ptr %431, i32 %433
  %add.ptr333 = getelementptr i8, ptr %add.ptr332, i32 27096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333, i32 %429) #5, !srcloc !30
  %434 = ptrtoint ptr %vd1_if0_chroma_y0 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %vd1_if0_chroma_y0, align 8
  %436 = tail call i32 @llvm.bswap.i32(i32 %435)
  %437 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %io_base189, align 8
  %439 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %viu_offset, align 8
  %add.ptr338 = getelementptr i8, ptr %438, i32 %440
  %add.ptr339 = getelementptr i8, ptr %add.ptr338, i32 27112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 %436) #5, !srcloc !30
  %vd1_if0_repeat_loop = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 36
  %441 = ptrtoint ptr %vd1_if0_repeat_loop to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %vd1_if0_repeat_loop, align 4
  %443 = tail call i32 @llvm.bswap.i32(i32 %442)
  %444 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %io_base189, align 8
  %446 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %viu_offset, align 8
  %add.ptr343 = getelementptr i8, ptr %445, i32 %447
  %add.ptr344 = getelementptr i8, ptr %add.ptr343, i32 26988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr344, i32 %443) #5, !srcloc !30
  %448 = ptrtoint ptr %vd1_if0_repeat_loop to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %vd1_if0_repeat_loop, align 4
  %450 = tail call i32 @llvm.bswap.i32(i32 %449)
  %451 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %io_base189, align 8
  %453 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %viu_offset, align 8
  %add.ptr349 = getelementptr i8, ptr %452, i32 %454
  %add.ptr350 = getelementptr i8, ptr %add.ptr349, i32 27116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr350, i32 %450) #5, !srcloc !30
  %vd1_if0_luma0_rpt_pat = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 37
  %455 = ptrtoint ptr %vd1_if0_luma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %vd1_if0_luma0_rpt_pat, align 8
  %457 = tail call i32 @llvm.bswap.i32(i32 %456)
  %458 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %io_base189, align 8
  %460 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %viu_offset, align 8
  %add.ptr354 = getelementptr i8, ptr %459, i32 %461
  %add.ptr355 = getelementptr i8, ptr %add.ptr354, i32 26992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr355, i32 %457) #5, !srcloc !30
  %462 = ptrtoint ptr %vd1_if0_luma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %vd1_if0_luma0_rpt_pat, align 8
  %464 = tail call i32 @llvm.bswap.i32(i32 %463)
  %465 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %io_base189, align 8
  %467 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %viu_offset, align 8
  %add.ptr360 = getelementptr i8, ptr %466, i32 %468
  %add.ptr361 = getelementptr i8, ptr %add.ptr360, i32 27120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr361, i32 %464) #5, !srcloc !30
  %469 = ptrtoint ptr %vd1_if0_luma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %vd1_if0_luma0_rpt_pat, align 8
  %471 = tail call i32 @llvm.bswap.i32(i32 %470)
  %472 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %io_base189, align 8
  %474 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %viu_offset, align 8
  %add.ptr366 = getelementptr i8, ptr %473, i32 %475
  %add.ptr367 = getelementptr i8, ptr %add.ptr366, i32 27000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr367, i32 %471) #5, !srcloc !30
  %476 = ptrtoint ptr %vd1_if0_luma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %vd1_if0_luma0_rpt_pat, align 8
  %478 = tail call i32 @llvm.bswap.i32(i32 %477)
  %479 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %io_base189, align 8
  %481 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %viu_offset, align 8
  %add.ptr372 = getelementptr i8, ptr %480, i32 %482
  %add.ptr373 = getelementptr i8, ptr %add.ptr372, i32 27128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr373, i32 %478) #5, !srcloc !30
  %vd1_if0_chroma0_rpt_pat = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 38
  %483 = ptrtoint ptr %vd1_if0_chroma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %vd1_if0_chroma0_rpt_pat, align 4
  %485 = tail call i32 @llvm.bswap.i32(i32 %484)
  %486 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %io_base189, align 8
  %488 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %viu_offset, align 8
  %add.ptr377 = getelementptr i8, ptr %487, i32 %489
  %add.ptr378 = getelementptr i8, ptr %add.ptr377, i32 26996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr378, i32 %485) #5, !srcloc !30
  %490 = ptrtoint ptr %vd1_if0_chroma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %vd1_if0_chroma0_rpt_pat, align 4
  %492 = tail call i32 @llvm.bswap.i32(i32 %491)
  %493 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %io_base189, align 8
  %495 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %viu_offset, align 8
  %add.ptr383 = getelementptr i8, ptr %494, i32 %496
  %add.ptr384 = getelementptr i8, ptr %add.ptr383, i32 27124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr384, i32 %492) #5, !srcloc !30
  %497 = ptrtoint ptr %vd1_if0_chroma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %vd1_if0_chroma0_rpt_pat, align 4
  %499 = tail call i32 @llvm.bswap.i32(i32 %498)
  %500 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %io_base189, align 8
  %502 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %viu_offset, align 8
  %add.ptr389 = getelementptr i8, ptr %501, i32 %503
  %add.ptr390 = getelementptr i8, ptr %add.ptr389, i32 27004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr390, i32 %499) #5, !srcloc !30
  %504 = ptrtoint ptr %vd1_if0_chroma0_rpt_pat to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %vd1_if0_chroma0_rpt_pat, align 4
  %506 = tail call i32 @llvm.bswap.i32(i32 %505)
  %507 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %io_base189, align 8
  %509 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %viu_offset, align 8
  %add.ptr395 = getelementptr i8, ptr %508, i32 %510
  %add.ptr396 = getelementptr i8, ptr %add.ptr395, i32 27132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr396, i32 %506) #5, !srcloc !30
  %511 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %io_base189, align 8
  %513 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %viu_offset, align 8
  %add.ptr399 = getelementptr i8, ptr %512, i32 %514
  %add.ptr400 = getelementptr i8, ptr %add.ptr399, i32 27008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr400, i32 0) #5, !srcloc !30
  %515 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %io_base189, align 8
  %517 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %viu_offset, align 8
  %add.ptr403 = getelementptr i8, ptr %516, i32 %518
  %add.ptr404 = getelementptr i8, ptr %add.ptr403, i32 27012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr404, i32 0) #5, !srcloc !30
  %519 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %io_base189, align 8
  %521 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %viu_offset, align 8
  %add.ptr407 = getelementptr i8, ptr %520, i32 %522
  %add.ptr408 = getelementptr i8, ptr %add.ptr407, i32 27136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr408, i32 0) #5, !srcloc !30
  %523 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %io_base189, align 8
  %525 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %viu_offset, align 8
  %add.ptr411 = getelementptr i8, ptr %524, i32 %526
  %add.ptr412 = getelementptr i8, ptr %add.ptr411, i32 27140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr412, i32 0) #5, !srcloc !30
  %vd1_range_map_y = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 39
  %527 = ptrtoint ptr %vd1_range_map_y to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %vd1_range_map_y, align 8
  %529 = tail call i32 @llvm.bswap.i32(i32 %528)
  %530 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %io_base189, align 8
  %532 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %viu_offset, align 8
  %add.ptr416 = getelementptr i8, ptr %531, i32 %533
  %add.ptr417 = getelementptr i8, ptr %add.ptr416, i32 27048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr417, i32 %529) #5, !srcloc !30
  %vd1_range_map_cb = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 40
  %534 = ptrtoint ptr %vd1_range_map_cb to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %vd1_range_map_cb, align 4
  %536 = tail call i32 @llvm.bswap.i32(i32 %535)
  %537 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %io_base189, align 8
  %539 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %viu_offset, align 8
  %add.ptr421 = getelementptr i8, ptr %538, i32 %540
  %add.ptr422 = getelementptr i8, ptr %add.ptr421, i32 27052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr422, i32 %536) #5, !srcloc !30
  %vd1_range_map_cr = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 41
  %541 = ptrtoint ptr %vd1_range_map_cr to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %vd1_range_map_cr, align 8
  %543 = tail call i32 @llvm.bswap.i32(i32 %542)
  %544 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %io_base189, align 8
  %546 = ptrtoint ptr %viu_offset to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %viu_offset, align 8
  %add.ptr426 = getelementptr i8, ptr %545, i32 %547
  %add.ptr427 = getelementptr i8, ptr %add.ptr426, i32 27056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr427, i32 %543) #5, !srcloc !30
  %548 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %io_base189, align 8
  %add.ptr429 = getelementptr i8, ptr %549, i32 29796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr429, i32 75761408) #5, !srcloc !30
  %vpp_pic_in_height = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 70
  %550 = ptrtoint ptr %vpp_pic_in_height to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %vpp_pic_in_height, align 4
  %552 = tail call i32 @llvm.bswap.i32(i32 %551)
  %553 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %io_base189, align 8
  %add.ptr432 = getelementptr i8, ptr %554, i32 29704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr432, i32 %552) #5, !srcloc !30
  %vpp_postblend_vd1_h_start_end = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 71
  %555 = ptrtoint ptr %vpp_postblend_vd1_h_start_end to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %vpp_postblend_vd1_h_start_end, align 8
  %557 = tail call i32 @llvm.bswap.i32(i32 %556)
  %558 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %io_base189, align 8
  %add.ptr435 = getelementptr i8, ptr %559, i32 29808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr435, i32 %557) #5, !srcloc !30
  %vpp_blend_vd2_h_start_end = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 88
  %560 = ptrtoint ptr %vpp_blend_vd2_h_start_end to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %vpp_blend_vd2_h_start_end, align 4
  %562 = tail call i32 @llvm.bswap.i32(i32 %561)
  %563 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %io_base189, align 8
  %add.ptr438 = getelementptr i8, ptr %564, i32 29816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr438, i32 %562) #5, !srcloc !30
  %vpp_postblend_vd1_v_start_end = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 72
  %565 = ptrtoint ptr %vpp_postblend_vd1_v_start_end to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %vpp_postblend_vd1_v_start_end, align 4
  %567 = tail call i32 @llvm.bswap.i32(i32 %566)
  %568 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %io_base189, align 8
  %add.ptr441 = getelementptr i8, ptr %569, i32 29812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr441, i32 %567) #5, !srcloc !30
  %vpp_blend_vd2_v_start_end = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 89
  %570 = ptrtoint ptr %vpp_blend_vd2_v_start_end to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %vpp_blend_vd2_v_start_end, align 8
  %572 = tail call i32 @llvm.bswap.i32(i32 %571)
  %573 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %io_base189, align 8
  %add.ptr444 = getelementptr i8, ptr %574, i32 29820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr444, i32 %572) #5, !srcloc !30
  %vpp_hsc_region12_startp = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 73
  %575 = ptrtoint ptr %vpp_hsc_region12_startp to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %vpp_hsc_region12_startp, align 8
  %577 = tail call i32 @llvm.bswap.i32(i32 %576)
  %578 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %io_base189, align 8
  %add.ptr447 = getelementptr i8, ptr %579, i32 29760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr447, i32 %577) #5, !srcloc !30
  %vpp_hsc_region34_startp = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 74
  %580 = ptrtoint ptr %vpp_hsc_region34_startp to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %vpp_hsc_region34_startp, align 4
  %582 = tail call i32 @llvm.bswap.i32(i32 %581)
  %583 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %io_base189, align 8
  %add.ptr450 = getelementptr i8, ptr %584, i32 29764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr450, i32 %582) #5, !srcloc !30
  %vpp_hsc_region4_endp = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 75
  %585 = ptrtoint ptr %vpp_hsc_region4_endp to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %vpp_hsc_region4_endp, align 8
  %587 = tail call i32 @llvm.bswap.i32(i32 %586)
  %588 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %io_base189, align 8
  %add.ptr453 = getelementptr i8, ptr %589, i32 29768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr453, i32 %587) #5, !srcloc !30
  %vpp_hsc_start_phase_step = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 76
  %590 = ptrtoint ptr %vpp_hsc_start_phase_step to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %vpp_hsc_start_phase_step, align 4
  %592 = tail call i32 @llvm.bswap.i32(i32 %591)
  %593 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %io_base189, align 8
  %add.ptr456 = getelementptr i8, ptr %594, i32 29772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr456, i32 %592) #5, !srcloc !30
  %vpp_hsc_region1_phase_slope = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 77
  %595 = ptrtoint ptr %vpp_hsc_region1_phase_slope to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %vpp_hsc_region1_phase_slope, align 8
  %597 = tail call i32 @llvm.bswap.i32(i32 %596)
  %598 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %io_base189, align 8
  %add.ptr459 = getelementptr i8, ptr %599, i32 29780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr459, i32 %597) #5, !srcloc !30
  %vpp_hsc_region3_phase_slope = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 78
  %600 = ptrtoint ptr %vpp_hsc_region3_phase_slope to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %vpp_hsc_region3_phase_slope, align 4
  %602 = tail call i32 @llvm.bswap.i32(i32 %601)
  %603 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %io_base189, align 8
  %add.ptr462 = getelementptr i8, ptr %604, i32 29784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr462, i32 %602) #5, !srcloc !30
  %vpp_line_in_length = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 79
  %605 = ptrtoint ptr %vpp_line_in_length to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %vpp_line_in_length, align 8
  %607 = tail call i32 @llvm.bswap.i32(i32 %606)
  %608 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %io_base189, align 8
  %add.ptr465 = getelementptr i8, ptr %609, i32 29700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr465, i32 %607) #5, !srcloc !30
  %vpp_preblend_h_size = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 80
  %610 = ptrtoint ptr %vpp_preblend_h_size to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %vpp_preblend_h_size, align 4
  %612 = tail call i32 @llvm.bswap.i32(i32 %611)
  %613 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %io_base189, align 8
  %add.ptr468 = getelementptr i8, ptr %614, i32 29824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr468, i32 %612) #5, !srcloc !30
  %vpp_vsc_region12_startp = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 81
  %615 = ptrtoint ptr %vpp_vsc_region12_startp to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %vpp_vsc_region12_startp, align 8
  %617 = tail call i32 @llvm.bswap.i32(i32 %616)
  %618 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %io_base189, align 8
  %add.ptr471 = getelementptr i8, ptr %619, i32 29716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr471, i32 %617) #5, !srcloc !30
  %vpp_vsc_region34_startp = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 82
  %620 = ptrtoint ptr %vpp_vsc_region34_startp to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %vpp_vsc_region34_startp, align 4
  %622 = tail call i32 @llvm.bswap.i32(i32 %621)
  %623 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %io_base189, align 8
  %add.ptr474 = getelementptr i8, ptr %624, i32 29720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr474, i32 %622) #5, !srcloc !30
  %vpp_vsc_region4_endp = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 83
  %625 = ptrtoint ptr %vpp_vsc_region4_endp to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %vpp_vsc_region4_endp, align 8
  %627 = tail call i32 @llvm.bswap.i32(i32 %626)
  %628 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %io_base189, align 8
  %add.ptr477 = getelementptr i8, ptr %629, i32 29724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr477, i32 %627) #5, !srcloc !30
  %vpp_vsc_start_phase_step = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 84
  %630 = ptrtoint ptr %vpp_vsc_start_phase_step to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %vpp_vsc_start_phase_step, align 4
  %632 = tail call i32 @llvm.bswap.i32(i32 %631)
  %633 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %io_base189, align 8
  %add.ptr480 = getelementptr i8, ptr %634, i32 29728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr480, i32 %632) #5, !srcloc !30
  %vpp_vsc_ini_phase = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 85
  %635 = ptrtoint ptr %vpp_vsc_ini_phase to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %vpp_vsc_ini_phase, align 8
  %637 = tail call i32 @llvm.bswap.i32(i32 %636)
  %638 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %io_base189, align 8
  %add.ptr483 = getelementptr i8, ptr %639, i32 29752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr483, i32 %637) #5, !srcloc !30
  %vpp_vsc_phase_ctrl = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 86
  %640 = ptrtoint ptr %vpp_vsc_phase_ctrl to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %vpp_vsc_phase_ctrl, align 4
  %642 = tail call i32 @llvm.bswap.i32(i32 %641)
  %643 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %io_base189, align 8
  %add.ptr486 = getelementptr i8, ptr %644, i32 29748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr486, i32 %642) #5, !srcloc !30
  %vpp_hsc_phase_ctrl = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 87
  %645 = ptrtoint ptr %vpp_hsc_phase_ctrl to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %vpp_hsc_phase_ctrl, align 8
  %647 = tail call i32 @llvm.bswap.i32(i32 %646)
  %648 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %io_base189, align 8
  %add.ptr489 = getelementptr i8, ptr %649, i32 29792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr489, i32 %647) #5, !srcloc !30
  %650 = ptrtoint ptr %io_base189 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %io_base189, align 8
  %add.ptr491 = getelementptr i8, ptr %651, i32 29708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr491, i32 1107296256) #5, !srcloc !30
  %enable_vd1 = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 4
  %652 = ptrtoint ptr %enable_vd1 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %enable_vd1, align 4
  %tobool492.not = icmp eq ptr %653, null
  br i1 %tobool492.not, label %if.end187.if.end495_crit_edge, label %if.then493

if.end187.if.end495_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end495

if.then493:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %653(ptr noundef %priv) #5
  br label %if.end495

if.end495:                                        ; preds = %if.then493, %if.end187.if.end495_crit_edge
  %654 = ptrtoint ptr %vd1_commit to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 0, ptr %vd1_commit, align 1
  br label %if.end498

if.end498:                                        ; preds = %if.end495, %land.lhs.true114.if.end498_crit_edge, %if.end111.if.end498_crit_edge
  %vsync_disabled = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 9
  %655 = ptrtoint ptr %vsync_disabled to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %vsync_disabled, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %656)
  %tobool499.not = icmp eq i8 %656, 0
  br i1 %tobool499.not, label %if.end501, label %if.end498.cleanup_crit_edge

if.end498.cleanup_crit_edge:                      ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end501:                                        ; preds = %if.end498
  %657 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %crtc, align 8
  %call503 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %658) #5
  %drm = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 10
  %659 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %drm, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %660, i32 0, i32 28
  %call507 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  %event = getelementptr inbounds %struct.meson_crtc, ptr %1, i32 0, i32 1
  %661 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %event, align 8
  %tobool510.not = icmp eq ptr %662, null
  br i1 %tobool510.not, label %if.end501.if.end516_crit_edge, label %if.then511

if.end501.if.end516_crit_edge:                    ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end516

if.then511:                                       ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #7
  %663 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %crtc, align 8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %664, ptr noundef nonnull %662) #5
  %665 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %crtc, align 8
  tail call void @drm_crtc_vblank_put(ptr noundef %666) #5
  %667 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %667)
  store ptr null, ptr %event, align 8
  br label %if.end516

if.end516:                                        ; preds = %if.then511, %if.end501.if.end516_crit_edge
  %668 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %drm, align 4
  %event_lock518 = getelementptr inbounds %struct.drm_device, ptr %669, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock518, i32 noundef %call507) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end516, %if.end498.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_canvas_config(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_crtc_create(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1024, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.meson_crtc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv1, align 4
  %5 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm, align 4
  %primary_plane = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 12
  %7 = ptrtoint ptr %primary_plane to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %primary_plane, align 4
  %call3 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %6, ptr noundef nonnull %call.i, ptr noundef %8, ptr noundef null, ptr noundef nonnull @meson_crtc_funcs, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm, align 4
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 3
  %enable_osd1 = getelementptr inbounds %struct.meson_crtc, ptr %call.i, i32 0, i32 3
  br i1 %cmp.i.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %enable_osd1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @meson_g12a_crtc_enable_osd1, ptr %enable_osd1, align 8
  %enable_vd1 = getelementptr inbounds %struct.meson_crtc, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %enable_vd1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @meson_g12a_crtc_enable_vd1, ptr %enable_vd1, align 4
  %viu_offset = getelementptr inbounds %struct.meson_crtc, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %viu_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24256, ptr %viu_offset, align 8
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.end8
  %18 = ptrtoint ptr %enable_osd1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @meson_crtc_enable_osd1, ptr %enable_osd1, align 8
  %enable_vd113 = getelementptr inbounds %struct.meson_crtc, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %enable_vd113 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @meson_crtc_enable_vd1, ptr %enable_vd113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i47.not = icmp eq i32 %14, 2
  br i1 %cmp.i47.not, label %if.else.if.end20.sink.split_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.else.if.end20.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else.if.end20.sink.split_crit_edge, %if.then11
  %meson_viu_gxm_enable_osd1_afbc.sink = phi ptr [ @meson_crtc_g12a_enable_osd1_afbc, %if.then11 ], [ @meson_viu_gxm_enable_osd1_afbc, %if.else.if.end20.sink.split_crit_edge ]
  %meson_viu_gxm_disable_osd1_afbc.sink = phi ptr [ @meson_viu_g12a_disable_osd1_afbc, %if.then11 ], [ @meson_viu_gxm_disable_osd1_afbc, %if.else.if.end20.sink.split_crit_edge ]
  %meson_crtc_helper_funcs.sink.ph = phi ptr [ @meson_g12a_crtc_helper_funcs, %if.then11 ], [ @meson_crtc_helper_funcs, %if.else.if.end20.sink.split_crit_edge ]
  %enable_osd1_afbc17 = getelementptr inbounds %struct.meson_crtc, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %enable_osd1_afbc17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %meson_viu_gxm_enable_osd1_afbc.sink, ptr %enable_osd1_afbc17, align 8
  %disable_osd1_afbc18 = getelementptr inbounds %struct.meson_crtc, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %disable_osd1_afbc18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %meson_viu_gxm_disable_osd1_afbc.sink, ptr %disable_osd1_afbc18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge
  %meson_crtc_helper_funcs.sink = phi ptr [ @meson_crtc_helper_funcs, %if.else.if.end20_crit_edge ], [ %meson_crtc_helper_funcs.sink.ph, %if.end20.sink.split ]
  %helper_private.i49 = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 19
  %22 = ptrtoint ptr %helper_private.i49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %meson_crtc_helper_funcs.sink, ptr %helper_private.i49, align 8
  %crtc21 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 11
  %23 = ptrtoint ptr %crtc21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %crtc21, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_g12a_crtc_enable_osd1(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_blend_din0_scope_h = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 23
  %0 = ptrtoint ptr %osd_blend_din0_scope_h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osd_blend_din0_scope_h, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 59076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !30
  %osd_blend_din0_scope_v = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 24
  %5 = ptrtoint ptr %osd_blend_din0_scope_v to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %osd_blend_din0_scope_v, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr3 = getelementptr i8, ptr %9, i32 59080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #5, !srcloc !30
  %osb_blend0_size = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 25
  %10 = ptrtoint ptr %osb_blend0_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %osb_blend0_size, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base, align 8
  %add.ptr6 = getelementptr i8, ptr %14, i32 59116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #5, !srcloc !30
  %osb_blend1_size = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 26
  %15 = ptrtoint ptr %osb_blend1_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %osb_blend1_size, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 8
  %add.ptr9 = getelementptr i8, ptr %19, i32 59120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %17) #5, !srcloc !30
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 8
  %add.ptr11 = getelementptr i8, ptr %21, i32 30708
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !31
  %23 = or i32 %22, 196608
  %24 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base, align 8
  %add.ptr13 = getelementptr i8, ptr %25, i32 30708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %23) #5, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_g12a_crtc_enable_vd1(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 30700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 285278464) #5, !srcloc !30
  %vd1_afbc = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 29
  %2 = ptrtoint ptr %vd1_afbc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vd1_afbc, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 1310720
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 26664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %cond) #5, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_crtc_g12a_enable_osd1_afbc(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %osd1_blk2_cfg4 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 8
  %0 = ptrtoint ptr %osd1_blk2_cfg4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osd1_blk2_cfg4, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 26708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !30
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %6, i32 26688
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !31
  %8 = or i32 %7, 67108864
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr4 = getelementptr i8, ptr %10, i32 26688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #5, !srcloc !30
  %osd1_blk1_cfg4 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 7
  %11 = ptrtoint ptr %osd1_blk1_cfg4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %osd1_blk1_cfg4, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 8
  %add.ptr7 = getelementptr i8, ptr %15, i32 26704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %13) #5, !srcloc !30
  tail call void @meson_viu_g12a_enable_osd1_afbc(ptr noundef %priv) #5
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 8
  %add.ptr10 = getelementptr i8, ptr %17, i32 26688
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !31
  %19 = or i32 %18, 67108864
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 8
  %add.ptr16 = getelementptr i8, ptr %21, i32 26688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %19) #5, !srcloc !30
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 8
  %add.ptr19 = getelementptr i8, ptr %23, i32 26732
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !31
  %25 = or i32 %24, 64
  %26 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base, align 8
  %add.ptr25 = getelementptr i8, ptr %27, i32 26732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %25) #5, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_viu_g12a_disable_osd1_afbc(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_crtc_enable_osd1(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 29848
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !31
  %3 = or i32 %2, 1048576
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #5, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_crtc_enable_vd1(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 29848
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !31
  %3 = or i32 %2, 4456464
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #5, !srcloc !30
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 26648
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !31
  %9 = and i32 %8, -4097
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %vd1_afbc = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 29
  %11 = ptrtoint ptr %vd1_afbc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vd1_afbc, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool.not, i32 0, i32 1048576
  %or10 = or i32 %cond, %10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 8
  %add.ptr12 = getelementptr i8, ptr %15, i32 26648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #5, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_viu_gxm_enable_osd1_afbc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_viu_gxm_disable_osd1_afbc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

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
define internal i32 @meson_crtc_enable_vblank(ptr nocapture noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %vsync_disabled = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 9
  %2 = ptrtoint ptr %vsync_disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vsync_disabled, align 1
  tail call void @meson_venc_enable_vsync(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_crtc_disable_vblank(ptr nocapture noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsync_forced = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 8
  %0 = ptrtoint ptr %vsync_forced to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vsync_forced, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv1 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 2
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %vsync_disabled = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 9
  %4 = ptrtoint ptr %vsync_disabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %vsync_disabled, align 1
  tail call void @meson_venc_disable_vsync(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_venc_enable_vsync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_venc_disable_vsync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_viu_g12a_enable_osd1_afbc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then:                                          ; preds = %entry
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !32

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 210, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %event34 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event34, align 4
  %event35 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 1
  %10 = ptrtoint ptr %event35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %event35, align 8
  %11 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc, align 8
  %event_lock37 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock37, i32 noundef %call28) #5
  %13 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state1, align 4
  %event39 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %event39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %event39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meson_crtc_atomic_flush(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %osd1_commit = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 2
  %2 = ptrtoint ptr %osd1_commit to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %osd1_commit, align 2
  %vd1_commit = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 28
  %3 = ptrtoint ptr %vd1_commit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %vd1_commit, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_g12a_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %priv2 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 2
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr19 = getelementptr i8, ptr %5, i32 29804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 -16252928) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %7 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdisplay, align 2
  %conv24 = zext i16 %9 to i32
  %shl = shl nuw i32 %conv24, 16
  %or = or i32 %shl, %conv
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base, align 8
  %add.ptr26 = getelementptr i8, ptr %12, i32 29828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %10) #5, !srcloc !30
  %13 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdisplay, align 4
  %conv29 = zext i16 %14 to i32
  %sub = add nsw i32 %conv29, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 8
  %add.ptr32 = getelementptr i8, ptr %17, i32 30676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %15) #5, !srcloc !30
  %18 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay, align 2
  %conv35 = zext i16 %19 to i32
  %sub36 = add nsw i32 %conv35, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %sub36)
  %21 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base, align 8
  %add.ptr39 = getelementptr i8, ptr %22, i32 30680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %20) #5, !srcloc !30
  %23 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hdisplay, align 4
  %conv42 = zext i16 %24 to i32
  %shl43 = shl nuw i32 %conv42, 16
  %25 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay, align 2
  %conv46 = zext i16 %26 to i32
  %or47 = or i32 %shl43, %conv46
  %27 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %28 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base, align 8
  %add.ptr49 = getelementptr i8, ptr %29, i32 30356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %27) #5, !srcloc !30
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_g12a_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #5
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #5
  %viu = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %viu to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %viu, align 8
  %osd1_commit = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 2
  %3 = ptrtoint ptr %osd1_commit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %osd1_commit, align 2
  %vd1_enabled = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 27
  %4 = ptrtoint ptr %vd1_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vd1_enabled, align 8
  %vd1_commit = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 28
  %5 = ptrtoint ptr %vd1_commit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vd1_commit, align 1
  %state5 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %6 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state5, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %14 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state5, align 4
  %event9 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %event9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %event9, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %17) #5
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 8
  %event_lock11 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock11) #5
  %20 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state5, align 4
  %event13 = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %event13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %event13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %priv2 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 2
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %5 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 8
  %add.ptr3 = getelementptr i8, ptr %8, i32 29828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr24 = getelementptr i8, ptr %10, i32 29804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -16252928) #5, !srcloc !30
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base, align 8
  %add.ptr26 = getelementptr i8, ptr %12, i32 29848
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !31
  %14 = or i32 %13, -2147483648
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 8
  %add.ptr29 = getelementptr i8, ptr %16, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %14) #5, !srcloc !30
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #5
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #5
  %viu = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %viu to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %viu, align 8
  %osd1_commit = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 2
  %3 = ptrtoint ptr %osd1_commit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %osd1_commit, align 2
  %vd1_enabled = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 27
  %4 = ptrtoint ptr %vd1_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vd1_enabled, align 8
  %vd1_commit = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 28
  %5 = ptrtoint ptr %vd1_commit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vd1_commit, align 1
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 29848
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !31
  %9 = and i32 %8, 2141978623
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr8 = getelementptr i8, ptr %11, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #5, !srcloc !30
  %state9 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %12 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state9, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %20 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state9, align 4
  %event13 = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %event13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %event13, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %23) #5
  %24 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc, align 8
  %event_lock15 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock15) #5
  %26 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state9, align 4
  %event17 = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %event17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %event17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_crtc.c", i32 689, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_crtc.c", i32 691, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @meson_crtc_create._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @meson_crtc_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @meson_crtc_funcs, !11, !"meson_crtc_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/meson/meson_crtc.c", i32 72, i32 36}
!12 = !{ptr @meson_g12a_crtc_helper_funcs, !13, !"meson_g12a_crtc_helper_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_crtc.c", i32 236, i32 43}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/meson/meson_crtc.c", i32 91, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/meson/meson_crtc.c", i32 94, i32 3}
!18 = !{ptr @meson_crtc_helper_funcs, !19, !"meson_crtc_helper_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/meson/meson_crtc.c", i32 229, i32 43}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{i64 6929148}
!31 = !{i64 6929566}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2156864715}
!34 = !{i64 2156887757}
!35 = !{i64 2156890802}
!36 = !{i64 2156938688}
