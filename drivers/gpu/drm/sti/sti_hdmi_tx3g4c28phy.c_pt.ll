; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_phy_ops = type { ptr, ptr }
%struct.plldividers_s = type { i32, i32, i32, i32 }
%struct.hdmi_phy_config = type { i32, i32, [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sti_hdmi = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, %struct.wait_queue_head, i8, ptr, ptr, i32, i8, ptr, %struct.hdmi_audio_params, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hdmi_audio_params = type { i8, i32, i32, %struct.hdmi_audio_infoframe }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }

@tx3g4c28phy_ops = dso_local global { %struct.hdmi_phy_ops, [24 x i8] } { %struct.hdmi_phy_ops { ptr @sti_hdmi_tx3g4c28phy_start, ptr @sti_hdmi_tx3g4c28phy_stop }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ckpxpll = %dHz\0A\00", [16 x i8] zeroinitializer }, align 32
@plldividers = internal constant { [5 x %struct.plldividers_s], [48 x i8] } { [5 x %struct.plldividers_s] [%struct.plldividers_s { i32 0, i32 20000000, i32 1, i32 3 }, %struct.plldividers_s { i32 20000000, i32 42500000, i32 2, i32 3 }, %struct.plldividers_s { i32 42500000, i32 85000000, i32 4, i32 2 }, %struct.plldividers_s { i32 85000000, i32 170000000, i32 8, i32 1 }, %struct.plldividers_s { i32 170000000, i32 340000000, i32 16, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"input TMDS clock speed (%d) not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pllctrl = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi phy pll not locked\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"got PHY PLL Lock\0A\00", [46 x i8] zeroinitializer }, align 32
@hdmiphy_config = internal constant { [2 x %struct.hdmi_phy_config], [48 x i8] } { [2 x %struct.hdmi_phy_config] [%struct.hdmi_phy_config { i32 0, i32 250000000, [4 x i32] zeroinitializer }, %struct.hdmi_phy_config { i32 250000000, i32 300000000, [4 x i32] [i32 4368, i32 0, i32 0, i32 0] }], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"serializer cfg 0x%x 0x%x 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hdmi phy pll not well disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"tx3g4c28phy_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 210, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 83, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"plldividers\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 55, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 96, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 117, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 121, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 127, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 131, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"hdmiphy_config\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 64, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 159, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 190, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [46 x i8] c"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 207, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @tx3g4c28phy_ops, ptr @.str, ptr @plldividers, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hdmiphy_config, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx3g4c28phy_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plldividers to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmiphy_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sti_hdmi_tx3g4c28phy_start(ptr noundef %hdmi) #0 align 64 {
land.lhs.true:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %mul) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %mul)
  %cmp3 = icmp ult i32 %mul, 20000000
  br i1 %cmp3, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.1

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 42500000, i32 %mul)
  %cmp3.1 = icmp ult i32 %mul, 42500000
  br i1 %cmp3.1, label %land.lhs.true.1.if.end12_crit_edge, label %land.lhs.true.2

land.lhs.true.1.if.end12_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 85000000, i32 %mul)
  %cmp3.2 = icmp ult i32 %mul, 85000000
  br i1 %cmp3.2, label %land.lhs.true.2.if.end12_crit_edge, label %land.lhs.true.3

land.lhs.true.2.if.end12_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 170000000, i32 %mul)
  %cmp3.3 = icmp ult i32 %mul, 170000000
  br i1 %cmp3.3, label %land.lhs.true.3.if.end12_crit_edge, label %land.lhs.true.4

land.lhs.true.3.if.end12_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000000, i32 %mul)
  %cmp3.4 = icmp ult i32 %mul, 340000000
  br i1 %cmp3.4, label %land.lhs.true.4.if.end12_crit_edge, label %for.inc.4

land.lhs.true.4.if.end12_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

for.inc.4:                                        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %mul) #3
  br label %cleanup117

if.end12:                                         ; preds = %land.lhs.true.4.if.end12_crit_edge, %land.lhs.true.3.if.end12_crit_edge, %land.lhs.true.2.if.end12_crit_edge, %land.lhs.true.1.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge
  %i.0191.lcssa = phi i32 [ 0, %land.lhs.true.if.end12_crit_edge ], [ 1, %land.lhs.true.1.if.end12_crit_edge ], [ 2, %land.lhs.true.2.if.end12_crit_edge ], [ 3, %land.lhs.true.3.if.end12_crit_edge ], [ 4, %land.lhs.true.4.if.end12_crit_edge ]
  %odf7 = getelementptr [5 x %struct.plldividers_s], ptr @plldividers, i32 0, i32 %i.0191.lcssa, i32 3
  %2 = ptrtoint ptr %odf7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %odf7, align 4
  %idf5 = getelementptr [5 x %struct.plldividers_s], ptr @plldividers, i32 0, i32 %i.0191.lcssa, i32 2
  %4 = ptrtoint ptr %idf5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idf5, align 4
  %shl = shl i32 %5, 16
  %shl14 = shl i32 %3, 24
  %or13 = or i32 %shl, %shl14
  %or15 = or i32 %or13, 10240
  %event_received = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 15
  %6 = ptrtoint ptr %event_received to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %event_received, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %or15) #3
  %or16 = or i32 %or13, 10241
  tail call void @hdmi_write(ptr noundef %hdmi, i32 noundef %or16, i32 noundef 1296) #3
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 124) #3
  %7 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %event_received, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %if.then34, label %if.end12.if.end70_crit_edge

if.end12.if.end70_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70

if.then34:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #3
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #3
  %wait_event = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 14
  %call38193 = call i32 @prepare_to_wait_event(ptr noundef %wait_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #3
  %10 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %event_received, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool41.not194.not = icmp eq i8 %11, 0
  br i1 %tobool41.not194.not, label %if.then34.if.end62_crit_edge, label %if.then34.for.end67_crit_edge

if.then34.for.end67_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end67

if.then34.if.end62_crit_edge:                     ; preds = %if.then34
  br label %if.end62

if.end62:                                         ; preds = %cleanup.if.end62_crit_edge, %if.then34.if.end62_crit_edge
  %__ret35.1197 = phi i32 [ %__ret35.1, %cleanup.if.end62_crit_edge ], [ 5, %if.then34.if.end62_crit_edge ]
  %call38196 = phi i32 [ %call38, %cleanup.if.end62_crit_edge ], [ %call38193, %if.then34.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38196)
  %tobool63.not = icmp eq i32 %call38196, 0
  br i1 %tobool63.not, label %cleanup, label %if.end62.__out_crit_edge

if.end62.__out_crit_edge:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %__out

cleanup:                                          ; preds = %if.end62
  %call66 = call i32 @schedule_timeout(i32 noundef %__ret35.1197) #3
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %wait_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #3
  %12 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %event_received, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool41.not = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool49.not = icmp eq i32 %call66, 0
  %spec.store.select125 = select i1 %tobool49.not, i32 1, i32 %call66
  %__ret35.1 = select i1 %tobool41.not, i32 %call66, i32 %spec.store.select125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %tobool56.not = icmp eq i32 %__ret35.1, 0
  %not.tobool41.not = xor i1 %tobool41.not, true
  %14 = select i1 %not.tobool41.not, i1 true, i1 %tobool56.not
  br i1 %14, label %cleanup.for.end67_crit_edge, label %cleanup.if.end62_crit_edge

cleanup.if.end62_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

cleanup.for.end67_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end67

for.end67:                                        ; preds = %cleanup.for.end67_crit_edge, %if.then34.for.end67_crit_edge
  call void @finish_wait(ptr noundef %wait_event, ptr noundef nonnull %__wq_entry) #3
  br label %__out

__out:                                            ; preds = %for.end67, %if.end62.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #3
  br label %if.end70

if.end70:                                         ; preds = %__out, %if.end12.if.end70_crit_edge
  %call72 = call i32 @hdmi_read(ptr noundef %hdmi, i32 noundef 16) #3
  %and = and i32 %call72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp73 = icmp eq i32 %and, 0
  br i1 %cmp73, label %if.then75, label %land.lhs.true89

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #3
  br label %cleanup117

land.lhs.true89:                                  ; preds = %if.end70
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000000, i32 %mul)
  %cmp77 = icmp ugt i32 %mul, 165000000
  %spec.select = select i1 %cmp77, i32 17629185, i32 851969
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %mul)
  %cmp91.not = icmp ugt i32 %mul, 250000000
  br i1 %cmp91.not, label %land.lhs.true89.1, label %land.lhs.true89.if.then93_crit_edge

land.lhs.true89.if.then93_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then93

if.then93:                                        ; preds = %land.lhs.true89.1.if.then93_crit_edge, %land.lhs.true89.if.then93_crit_edge
  %i.1198.lcssa = phi i32 [ 0, %land.lhs.true89.if.then93_crit_edge ], [ 1, %land.lhs.true89.1.if.then93_crit_edge ]
  %config = getelementptr [2 x %struct.hdmi_phy_config], ptr @hdmiphy_config, i32 0, i32 %i.1198.lcssa, i32 2
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config, align 4
  %and96 = and i32 %16, -17760260
  %or97 = or i32 %and96, %spec.select
  call void @hdmi_write(ptr noundef %hdmi, i32 noundef %or97, i32 noundef 1284) #3
  %arrayidx100 = getelementptr [2 x %struct.hdmi_phy_config], ptr @hdmiphy_config, i32 0, i32 %i.1198.lcssa, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx100, align 4
  call void @hdmi_write(ptr noundef %hdmi, i32 noundef %18, i32 noundef 1304) #3
  %arrayidx103 = getelementptr [2 x %struct.hdmi_phy_config], ptr @hdmiphy_config, i32 0, i32 %i.1198.lcssa, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx103, align 4
  call void @hdmi_write(ptr noundef %hdmi, i32 noundef %20, i32 noundef 1312) #3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %16, i32 noundef %18, i32 noundef %20) #3
  br label %cleanup117

land.lhs.true89.1:                                ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %mul)
  %cmp91.not.1 = icmp ugt i32 %mul, 300000000
  br i1 %cmp91.not.1, label %for.inc114.1, label %land.lhs.true89.1.if.then93_crit_edge

land.lhs.true89.1.if.then93_crit_edge:            ; preds = %land.lhs.true89.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then93

for.inc114.1:                                     ; preds = %land.lhs.true89.1
  call void @__sanitizer_cov_trace_pc() #5
  call void @hdmi_write(ptr noundef %hdmi, i32 noundef %spec.select, i32 noundef 1284) #3
  call void @hdmi_write(ptr noundef %hdmi, i32 noundef 0, i32 noundef 1304) #3
  call void @hdmi_write(ptr noundef %hdmi, i32 noundef 0, i32 noundef 1312) #3
  br label %cleanup117

cleanup117:                                       ; preds = %for.inc114.1, %if.then93, %if.then75, %for.inc.4
  %retval.0 = phi i1 [ true, %if.then93 ], [ true, %for.inc114.1 ], [ false, %if.then75 ], [ false, %for.inc.4 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hdmi_tx3g4c28phy_stop(ptr noundef %hdmi) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8) #3
  %event_received = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 15
  %0 = ptrtoint ptr %event_received to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %event_received, align 8
  tail call void @hdmi_write(ptr noundef %hdmi, i32 noundef 786432, i32 noundef 1284) #3
  tail call void @hdmi_write(ptr noundef %hdmi, i32 noundef 0, i32 noundef 1296) #3
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 204) #3
  %1 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %event_received, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then13, label %entry.if.end47_crit_edge

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #3
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #3
  %wait_event = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 14
  %call1676 = call i32 @prepare_to_wait_event(ptr noundef %wait_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #3
  %4 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %event_received, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19.not77.not = icmp eq i8 %5, 0
  br i1 %tobool19.not77.not, label %if.then13.if.end40_crit_edge, label %if.then13.for.end_crit_edge

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then13.if.end40_crit_edge:                     ; preds = %if.then13
  br label %if.end40

if.end40:                                         ; preds = %cleanup.if.end40_crit_edge, %if.then13.if.end40_crit_edge
  %__ret14.180 = phi i32 [ %__ret14.1, %cleanup.if.end40_crit_edge ], [ 5, %if.then13.if.end40_crit_edge ]
  %call1679 = phi i32 [ %call16, %cleanup.if.end40_crit_edge ], [ %call1676, %if.then13.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1679)
  %tobool41.not = icmp eq i32 %call1679, 0
  br i1 %tobool41.not, label %cleanup, label %if.end40.__out_crit_edge

if.end40.__out_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %__out

cleanup:                                          ; preds = %if.end40
  %call44 = call i32 @schedule_timeout(i32 noundef %__ret14.180) #3
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %wait_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #3
  %6 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %event_received, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool27.not = icmp eq i32 %call44, 0
  %spec.store.select53 = select i1 %tobool27.not, i32 1, i32 %call44
  %__ret14.1 = select i1 %tobool19.not, i32 %call44, i32 %spec.store.select53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool34.not = icmp eq i32 %__ret14.1, 0
  %not.tobool19.not = xor i1 %tobool19.not, true
  %8 = select i1 %not.tobool19.not, i1 true, i1 %tobool34.not
  br i1 %8, label %cleanup.for.end_crit_edge, label %cleanup.if.end40_crit_edge

cleanup.if.end40_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then13.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_event, ptr noundef nonnull %__wq_entry) #3
  br label %__out

__out:                                            ; preds = %for.end, %if.end40.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #3
  br label %if.end47

if.end47:                                         ; preds = %__out, %entry.if.end47_crit_edge
  %call49 = call i32 @hdmi_read(ptr noundef %hdmi, i32 noundef 16) #3
  %and = and i32 %call49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end47.if.end52_crit_edge, label %if.then51

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #3
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47.if.end52_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @tx3g4c28phy_ops, !1, !"tx3g4c28phy_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 210, i32 21}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 83, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 96, i32 3}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 106, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 117, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 121, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 127, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 131, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 159, i32 4}
!18 = !{ptr @plldividers, !19, !"plldividers", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 55, i32 29}
!20 = !{ptr @hdmiphy_config, !21, !"hdmiphy_config", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 64, i32 31}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 190, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c", i32 207, i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
