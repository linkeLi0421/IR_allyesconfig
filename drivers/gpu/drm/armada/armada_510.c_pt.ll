; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_510.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_510.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.armada_variant = type { i8, ptr, ptr, ptr, ptr }
%struct.armada_clocking_params = type { i32, i32, i32, i32 }
%struct.armada_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr, [2 x %struct.anon.86], i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i8, ptr, [32 x %struct.armada_regs], ptr, i32 }
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
%struct.anon.86 = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.armada_regs = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.armada_clk_result = type { i32, ptr, i32 }
%struct.armada510_variant_data = type { [4 x ptr], ptr }

@armada510_ops = dso_local constant { %struct.armada_variant, [44 x i8] } { %struct.armada_variant { i8 1, ptr @armada510_crtc_init, ptr @armada510_crtc_compute_clock, ptr @armada510_crtc_disable, ptr @armada510_crtc_enable }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext_ref_clk0\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext_ref_clk1\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"plldivider\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axibus\00", [25 x i8] zeroinitializer }, align 32
@armada510_clocking = internal constant { %struct.armada_clocking_params, [16 x i8] } { %struct.armada_clocking_params { i32 994, i32 1005, i32 3, i32 65535 }, [16 x i8] zeroinitializer }, align 32
@armada510_clk_sels = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1073741824, i32 -1073741824, i32 -2147483648, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/armada/armada_510.c\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"armada510_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 152, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 35, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 37, i32 19 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 39, i32 24 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 41, i32 24 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 43, i32 24 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"armada510_clocking\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 85, i32 44 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"armada510_clk_sels\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 78, i32 18 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [39 x i8] c"../drivers/gpu/drm/armada/armada_510.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 147, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @armada510_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @armada510_clocking, ptr @armada510_clk_sels, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada510_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada510_clocking to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada510_clk_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada510_crtc_init(ptr nocapture noundef %dcrtc, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %if.end

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

if.end:                                           ; preds = %entry
  %variant_data = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 2
  %0 = ptrtoint ptr %variant_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %variant_data, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.else34, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef null) #5
  %call5 = tail call ptr @of_prop_next_string(ptr noundef %call4, ptr noundef null) #5
  %tobool6.not81 = icmp eq ptr %call5, null
  br i1 %tobool6.not81, label %if.then2.if.end48_crit_edge, label %if.then2.for.body_crit_edge

if.then2.for.body_crit_edge:                      ; preds = %if.then2
  br label %for.body

if.then2.if.end48_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then2.for.body_crit_edge
  %s.082 = phi ptr [ %call32, %for.inc.for.body_crit_edge ], [ %call5, %if.then2.for.body_crit_edge ]
  %call7 = tail call i32 @strcmp(ptr noundef nonnull %s.082, ptr noundef nonnull dereferenceable(13) @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.body.if.end25_crit_edge, label %if.else

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else:                                          ; preds = %for.body
  %call10 = tail call i32 @strcmp(ptr noundef nonnull %s.082, ptr noundef nonnull dereferenceable(13) @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else.if.end25_crit_edge, label %if.else13

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else13:                                        ; preds = %if.else
  %call14 = tail call i32 @strcmp(ptr noundef nonnull %s.082, ptr noundef nonnull dereferenceable(11) @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else13.if.end25_crit_edge, label %if.else17

if.else13.if.end25_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else17:                                        ; preds = %if.else13
  %call18 = tail call i32 @strcmp(ptr noundef nonnull %s.082, ptr noundef nonnull dereferenceable(7) @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else17.if.end25_crit_edge, label %if.else17.for.inc_crit_edge

if.else17.for.inc_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else17.if.end25_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %if.else17.if.end25_crit_edge, %if.else13.if.end25_crit_edge, %if.else.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %idx.0 = phi i32 [ 0, %for.body.if.end25_crit_edge ], [ 1, %if.else.if.end25_crit_edge ], [ 2, %if.else13.if.end25_crit_edge ], [ 3, %if.else17.if.end25_crit_edge ]
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %s.082) #5
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call26 to i32
  %cmp = icmp eq ptr %call26, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %3
  br label %cleanup51

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 %idx.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call26, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %if.else17.for.inc_crit_edge
  %call32 = tail call ptr @of_prop_next_string(ptr noundef %call4, ptr noundef nonnull %s.082) #5
  %tobool6.not = icmp eq ptr %call32, null
  br i1 %tobool6.not, label %for.inc.if.end48_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.else34:                                        ; preds = %if.end
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  %cmp.i78 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call35 to i32
  %cmp39 = icmp eq ptr %call35, inttoptr (i32 -2 to ptr)
  %spec.select80 = select i1 %cmp39, i32 -517, i32 %5
  br label %cleanup51

if.end45:                                         ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx47 = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call35, ptr %arrayidx47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %for.inc.if.end48_crit_edge, %if.then2.if.end48_crit_edge
  %base = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 316
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !27
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %and.i = and i32 %10, -2304
  %or.i = or i32 %and.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or.i)
  %cmp.not.i = icmp eq i32 %10, %or.i
  br i1 %cmp.not.i, label %if.end48.armada_updatel.exit_crit_edge, label %if.then.i

if.end48.armada_updatel.exit_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %armada_updatel.exit

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #5, !srcloc !28
  br label %armada_updatel.exit

armada_updatel.exit:                              ; preds = %if.then.i, %if.end48.armada_updatel.exit_crit_edge
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %13, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 14680064) #5, !srcloc !28
  br label %cleanup51

cleanup51:                                        ; preds = %armada_updatel.exit, %if.then37, %if.then28, %entry.cleanup51_crit_edge
  %retval.1 = phi i32 [ 0, %armada_updatel.exit ], [ -12, %entry.cleanup51_crit_edge ], [ %spec.select, %if.then28 ], [ %spec.select80, %if.then37 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada510_crtc_compute_clock(ptr noundef %dcrtc, ptr nocapture noundef readonly %mode, ptr noundef writeonly %sclk) #0 align 64 {
entry:
  %res = alloca %struct.armada_clk_result, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant_data = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 2
  %0 = ptrtoint ptr %variant_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant_data, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %2 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_clock, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res) #5
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %res, align 4, !annotation !29
  %5 = getelementptr inbounds %struct.armada_clk_result, ptr %res, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !29
  %7 = getelementptr inbounds %struct.armada_clk_result, ptr %res, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !29
  %call = call i32 @armada_crtc_select_clock(ptr noundef %dcrtc, ptr noundef nonnull %res, ptr noundef nonnull @armada510_clocking, ptr noundef %1, i32 noundef 4, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end3, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end.i
  %tobool4.not = icmp eq ptr %sclk, null
  br i1 %tobool4.not, label %if.end3.if.end13_crit_edge, label %if.then5

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res, align 4
  %call7 = call i32 @clk_set_rate(ptr noundef %12, i32 noundef %14) #5
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  %arrayidx = getelementptr [4 x i32], ptr @armada510_clk_sels, i32 0, i32 %call
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %or = or i32 %18, %16
  %19 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %sclk, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %sel_clk = getelementptr inbounds %struct.armada510_variant_data, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %sel_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sel_clk, align 4
  %clk9 = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 5
  %23 = ptrtoint ptr %clk9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk9, align 8
  store ptr %21, ptr %clk9, align 8
  store ptr %24, ptr %5, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end3.if.end13_crit_edge
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  call void @clk_disable(ptr noundef %26) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %26, %if.end13 ], [ %10, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end13 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada510_crtc_disable(ptr nocapture noundef %dcrtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %1) #5
  tail call void @clk_unprepare(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %clk, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada510_crtc_enable(ptr nocapture noundef %dcrtc, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %variant_data = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 2
  %2 = ptrtoint ptr %variant_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant_data, align 4
  %sel_clk = getelementptr inbounds %struct.armada510_variant_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sel_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sel_clk, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end29_crit_edge, label %if.then

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then25.critedge, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 147, i32 noundef 9, ptr noundef null) #5
  br label %if.end29

if.then25.critedge:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sel_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sel_clk, align 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %clk, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25.critedge, %do.end, %land.lhs.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_crtc_select_clock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @armada510_ops, !1, !"armada510_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 152, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 35, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 37, i32 19}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 39, i32 24}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 41, i32 24}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 43, i32 24}
!12 = !{ptr @armada510_clocking, !13, !"armada510_clocking", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 85, i32 44}
!14 = !{ptr @armada510_clk_sels, !15, !"armada510_clk_sels", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 78, i32 18}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/armada/armada_510.c", i32 147, i32 8}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2031095}
!28 = !{i64 2030677}
!29 = !{!"auto-init"}
