; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GDP0\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GDP1\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GDP2\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GDP3\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HQVDP0\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CURSOR\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<UNKNOWN PLANE>\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%-8s %4dx%-4d %.4s @ %3d.%-3.3d fps (%s)\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" - %3d.%-3.3d field/sec\00", [40 x i8] zeroinitializer }, align 32
@sti_plane_update_fps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016[drm] %s%s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sti_plane_update_fps\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/sti/sti_plane.c\00", [32 x i8] zeroinitializer }, align 32
@sti_plane_update_fps._entry_ptr = internal global ptr @sti_plane_update_fps._entry, section ".printk_index", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drm plane:%d mapped to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 256, i64 257, i64 258, i64 259, i64 512, i64 768]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 256, i64 257, i64 258, i64 259, i64 512, i64 768]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 256, i64 257, i64 258, i64 259, i64 512, i64 768]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 23, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 25, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 27, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 29, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 31, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 33, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 35, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 75, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 90, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 97, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [35 x i8] c"../drivers/gpu/drm/sti/sti_plane.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 142, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @sti_plane_update_fps._entry, ptr @sti_plane_update_fps._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_plane_update_fps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sti_plane_to_str(ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 256, label %entry.return_crit_edge
    i32 257, label %sw.bb1
    i32 258, label %sw.bb2
    i32 259, label %sw.bb3
    i32 512, label %sw.bb4
    i32 768, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.6, %sw.default ], [ @.str.5, %sw.bb5 ], [ @.str.4, %sw.bb4 ], [ @.str.3, %sw.bb3 ], [ @.str.2, %sw.bb2 ], [ @.str.1, %sw.bb1 ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sti_plane_update_fps(ptr noundef %plane, i1 noundef zeroext %new_frame, i1 noundef zeroext %new_field) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state2 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state2, align 4
  %call = tail call i64 @ktime_get() #6
  %fps_info = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3
  br i1 %new_field, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %curr_field_counter = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %curr_field_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_field_counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %curr_field_counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %new_frame, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %curr_frame_counter = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %curr_frame_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_frame_counter, align 4
  %inc6 = add i32 %5, 1
  store i32 %inc6, ptr %curr_frame_counter, align 4
  %last_timestamp = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last_timestamp, align 8
  %sub = sub i64 %call, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %8 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #6
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %8) #9, !srcloc !35
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %8, i64 %9, i32 0) #9, !srcloc !36
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv = trunc i64 %cond213.i.i to i32
  %last_frame_counter = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %last_frame_counter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_frame_counter, align 8
  %sub9 = sub i32 %inc6, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9)
  %cmp = icmp slt i32 %sub9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %conv)
  %cmp11 = icmp slt i32 %conv, 3000
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %if.end14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %last_timestamp to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call, ptr %last_timestamp, align 8
  %14 = ptrtoint ptr %last_frame_counter to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc6, ptr %last_frame_counter, align 8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.end14.if.end29_crit_edge, label %if.then19

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then19:                                        ; preds = %if.end14
  %mul = mul i32 %sub9, 1000000
  %div = sdiv i32 %mul, %conv
  %fps_str = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 6
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 9
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 10
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 4
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format, align 8
  %div.frozen = freeze i32 %div
  %div26 = sdiv i32 %div.frozen, 1000
  %25 = mul i32 %div26, 1000
  %rem.decomposed = sub i32 %div.frozen, %25
  %desc.i = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 1
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %27, label %sw.default.i [
    i32 256, label %if.then19.sti_plane_to_str.exit_crit_edge
    i32 257, label %sw.bb1.i
    i32 258, label %sw.bb2.i
    i32 259, label %sw.bb3.i
    i32 512, label %sw.bb4.i
    i32 768, label %sw.bb5.i
  ]

if.then19.sti_plane_to_str.exit_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb1.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb2.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb3.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb4.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb5.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.default.i:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sti_plane_to_str.exit:                            ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then19.sti_plane_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.6, %sw.default.i ], [ @.str.5, %sw.bb5.i ], [ @.str.4, %sw.bb4.i ], [ @.str.3, %sw.bb3.i ], [ @.str.2, %sw.bb2.i ], [ @.str.1, %sw.bb1.i ], [ @.str, %if.then19.sti_plane_to_str.exit_crit_edge ]
  %call28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fps_str, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %div26, i32 noundef %rem.decomposed, ptr noundef nonnull %retval.0.i)
  br label %if.end29

if.end29:                                         ; preds = %sti_plane_to_str.exit, %if.end14.if.end29_crit_edge
  %curr_field_counter30 = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %curr_field_counter30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %curr_field_counter30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool31.not = icmp eq i32 %30, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %last_field_counter = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %last_field_counter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_field_counter, align 8
  %sub34 = sub i32 %30, %32
  store i32 %30, ptr %last_field_counter, align 8
  %mul37 = mul i32 %sub34, 1000000
  %div38 = sdiv i32 %mul37, %conv
  %fips_str = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 7
  %div38.frozen = freeze i32 %div38
  %div41 = sdiv i32 %div38.frozen, 1000
  %33 = mul i32 %div41, 1000
  %rem42.decomposed = sub i32 %div38.frozen, %33
  %call43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fips_str, i32 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %div41, i32 noundef %rem42.decomposed)
  br label %if.end46

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %fips_str45 = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 7
  %34 = ptrtoint ptr %fips_str45 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %fips_str45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then32
  %35 = ptrtoint ptr %fps_info to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fps_info, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool47.not = icmp eq i8 %36, 0
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %do.end

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %fps_str50 = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 6
  %fips_str53 = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 3, i32 7
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %fps_str50, ptr noundef %fips_str53) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end46.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sti_plane_reset(ptr noundef %plane) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_atomic_helper_plane_reset(ptr noundef %plane) #6
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 0
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch.selectcmp3.i = icmp eq i32 %1, 2
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 7, i32 %switch.select.i
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.select4.i, ptr %zpos, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sti_plane_init_property(ptr noundef %plane, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %switch.selectcmp.i.i = icmp eq i32 %type, 0
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch.selectcmp3.i.i = icmp eq i32 %type, 2
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 7, i32 %switch.select.i.i
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %type, label %entry.sti_plane_attach_zorder_property.exit_crit_edge [
    i32 1, label %entry.sw.bb.i_crit_edge
    i32 0, label %entry.sw.bb.i_crit_edge5
    i32 2, label %sw.bb2.i
  ]

entry.sw.bb.i_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sti_plane_attach_zorder_property.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_attach_zorder_property.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge5
  %call1.i = tail call i32 @drm_plane_create_zpos_property(ptr noundef %plane, i32 noundef %switch.select4.i.i, i32 noundef 0, i32 noundef 6) #6
  br label %sti_plane_attach_zorder_property.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %plane, i32 noundef %switch.select4.i.i) #6
  br label %sti_plane_attach_zorder_property.exit

sti_plane_attach_zorder_property.exit:            ; preds = %sw.bb2.i, %sw.bb.i, %entry.sti_plane_attach_zorder_property.exit_crit_edge
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base, align 4
  %desc.i = getelementptr inbounds %struct.sti_plane, ptr %plane, i32 0, i32 1
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %4, label %sw.default.i [
    i32 256, label %sti_plane_attach_zorder_property.exit.sti_plane_to_str.exit_crit_edge
    i32 257, label %sw.bb1.i
    i32 258, label %sw.bb2.i4
    i32 259, label %sw.bb3.i
    i32 512, label %sw.bb4.i
    i32 768, label %sw.bb5.i
  ]

sti_plane_attach_zorder_property.exit.sti_plane_to_str.exit_crit_edge: ; preds = %sti_plane_attach_zorder_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb1.i:                                         ; preds = %sti_plane_attach_zorder_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb2.i4:                                        ; preds = %sti_plane_attach_zorder_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb3.i:                                         ; preds = %sti_plane_attach_zorder_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb4.i:                                         ; preds = %sti_plane_attach_zorder_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.bb5.i:                                         ; preds = %sti_plane_attach_zorder_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sw.default.i:                                     ; preds = %sti_plane_attach_zorder_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_plane_to_str.exit

sti_plane_to_str.exit:                            ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i4, %sw.bb1.i, %sti_plane_attach_zorder_property.exit.sti_plane_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.6, %sw.default.i ], [ @.str.5, %sw.bb5.i ], [ @.str.4, %sw.bb4.i ], [ @.str.3, %sw.bb3.i ], [ @.str.2, %sw.bb2.i4 ], [ @.str.1, %sw.bb1.i ], [ @.str, %sti_plane_attach_zorder_property.exit.sti_plane_to_str.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %2, ptr noundef nonnull %retval.0.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 23, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 25, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 27, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 29, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 31, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 33, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 35, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 75, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 90, i32 17}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 97, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sti_plane_update_fps._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @sti_plane_update_fps._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sti/sti_plane.c", i32 142, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 1067266, i64 1067293}
!36 = !{i64 1067961, i64 1067988, i64 1068021, i64 1068042, i64 1068069, i64 1068095}
!37 = !{i8 0, i8 2}
