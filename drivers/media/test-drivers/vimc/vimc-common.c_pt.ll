; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vimc/vimc-common.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vimc/vimc-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vimc_pix_map = type { [8 x i32], i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.89, i32, i32 }
%union.anon.89 = type { i32 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.92, i16, i16, i16, [10 x i16] }
%union.anon.92 = type { i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vimc_ent_device = type { ptr, ptr, ptr, ptr }

@vimc_pix_map_list = internal constant { [23 x %struct.vimc_pix_map], [236 x i8] } { [23 x %struct.vimc_pix_map] [%struct.vimc_pix_map { [8 x i32] [i32 4115, i32 4123, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3, i32 861030210, i8 0 }, %struct.vimc_pix_map { [8 x i32] [i32 4106, i32 4107, i32 4108, i32 4124, i32 4113, i32 4114, i32 4111, i32 4116], i32 3, i32 859981650, i8 0 }, %struct.vimc_pix_map { [8 x i32] [i32 4109, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 4, i32 875708738, i8 0 }, %struct.vimc_pix_map { [8 x i32] [i32 12289, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 825770306, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12307, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 1196573255, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12290, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 1195528775, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12308, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 1111967570, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12295, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 808535874, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12302, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 808534599, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12298, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 808534338, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12303, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 808535890, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12309, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 943800929, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12310, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 943802209, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12311, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 943810401, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12312, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 943805025, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12299, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 943800930, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12300, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 943802210, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12297, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 808535106, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12301, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 943805026, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12296, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 842090306, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12304, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 842089031, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12305, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 842088770, i8 1 }, %struct.vimc_pix_map { [8 x i32] [i32 12306, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 842090322, i8 1 }], [236 x i8] zeroinitializer }, align 32
@vimc_vdev_link_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016vimc link validate: %s:src:%dx%d (0x%x, %d, %d, %d, %d) %s:snk:%dx%d (0x%x, %d, %d, %d, %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vimc_vdev_link_validate\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/test-drivers/vimc/vimc-common.c\00", [50 x i8] zeroinitializer }, align 32
@vimc_vdev_link_validate._entry_ptr = internal global ptr @vimc_vdev_link_validate._entry, section ".printk_index", align 4
@vimc_ent_sd_mops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@vimc_ent_sd_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: subdev register failed (err=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vimc_ent_sd_register\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vimc_ent_sd_register._entry_ptr = internal global ptr @vimc_ent_sd_register._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 808534338, i64 808534599, i64 808535106, i64 808535874, i64 808535890, i64 825770306, i64 842088770, i64 842089031, i64 842090306, i64 842090322, i64 859981650, i64 861030210, i64 875708738, i64 943800929, i64 943800930, i64 943802209, i64 943802210, i64 943805025, i64 943805026, i64 943810401, i64 1111967570, i64 1195528775, i64 1196573255]
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"vimc_pix_map_list\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 17, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 288, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"vimc_ent_sd_mops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 350, i32 45 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [49 x i8] c"../drivers/media/test-drivers/vimc/vimc-common.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 389, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @vimc_ent_sd_register._entry, ptr @vimc_ent_sd_register._entry_ptr, ptr @vimc_vdev_link_validate._entry, ptr @vimc_vdev_link_validate._entry_ptr, ptr @vimc_pix_map_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vimc_ent_sd_mops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_pix_map_list to i32), i32 1012, i32 1248, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_vdev_link_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_ent_sd_mops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_ent_sd_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vimc_is_source(ptr nocapture noundef readonly %ent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %ent, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp5.not = icmp eq i16 %1, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pads = getelementptr inbounds %struct.media_entity, ptr %ent, i32 0, i32 9
  %2 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pads, align 4
  %flags9 = getelementptr %struct.media_pad, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags9, align 4
  %and10 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not11 = icmp eq i32 %and10, 0
  br i1 %tobool.not11, label %for.body.lr.ph.for.cond_crit_edge, label %for.body.lr.ph.cleanup_crit_edge

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.for.cond_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.lr.ph.for.cond_crit_edge
  %i.0612 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.lr.ph.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.0612, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %flags = getelementptr %struct.media_pad, ptr %3, i32 %inc, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup.loopexit_crit_edge

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le = icmp uge i32 %inc, %conv
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %for.body.lr.ph.cleanup_crit_edge ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vimc_pix_map_by_index(i32 noundef %i) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %i)
  %cmp = icmp ugt i32 %i, 22
  %arrayidx = getelementptr [23 x %struct.vimc_pix_map], ptr @vimc_pix_map_list, i32 0, i32 %i
  %retval.0 = select i1 %cmp, ptr null, ptr %arrayidx
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vimc_mbus_code_by_index(i32 noundef %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc11.for.cond1.preheader_crit_edge, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11.for.cond1.preheader_crit_edge ]
  %index.addr.026 = phi i32 [ %index, %entry ], [ %index.addr.1.lcssa, %for.inc11.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr [23 x %struct.vimc_pix_map], ptr @vimc_pix_map_list, i32 0, i32 %i.027
  %0 = add i32 %index.addr.026, -8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond1.preheader.for.inc11_crit_edge, label %if.end

for.cond1.preheader.for.inc11_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end:                                           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.026)
  %tobool5.not = icmp eq i32 %index.addr.026, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %dec = add i32 %index.addr.026, -1
  %arrayidx4.1 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1 = icmp eq i32 %4, 0
  br i1 %tobool.not.1, label %if.end10.for.inc11_crit_edge, label %if.end.1

if.end10.for.inc11_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.1:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not.1 = icmp eq i32 %dec, 0
  br i1 %tobool5.not.1, label %if.end.1.cleanup_crit_edge, label %if.end10.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.1:                                       ; preds = %if.end.1
  %dec.1 = add i32 %index.addr.026, -2
  %arrayidx4.2 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.2 = icmp eq i32 %6, 0
  br i1 %tobool.not.2, label %if.end10.1.for.inc11_crit_edge, label %if.end.2

if.end10.1.for.inc11_crit_edge:                   ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.2:                                         ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool5.not.2 = icmp eq i32 %dec.1, 0
  br i1 %tobool5.not.2, label %if.end.2.cleanup_crit_edge, label %if.end10.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.2:                                       ; preds = %if.end.2
  %dec.2 = add i32 %index.addr.026, -3
  %arrayidx4.3 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.3 = icmp eq i32 %8, 0
  br i1 %tobool.not.3, label %if.end10.2.for.inc11_crit_edge, label %if.end.3

if.end10.2.for.inc11_crit_edge:                   ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.3:                                         ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool5.not.3 = icmp eq i32 %dec.2, 0
  br i1 %tobool5.not.3, label %if.end.3.cleanup_crit_edge, label %if.end10.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.3:                                       ; preds = %if.end.3
  %dec.3 = add i32 %index.addr.026, -4
  %arrayidx4.4 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.4 = icmp eq i32 %10, 0
  br i1 %tobool.not.4, label %if.end10.3.for.inc11_crit_edge, label %if.end.4

if.end10.3.for.inc11_crit_edge:                   ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.4:                                         ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3)
  %tobool5.not.4 = icmp eq i32 %dec.3, 0
  br i1 %tobool5.not.4, label %if.end.4.cleanup_crit_edge, label %if.end10.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.4:                                       ; preds = %if.end.4
  %dec.4 = add i32 %index.addr.026, -5
  %arrayidx4.5 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.5 = icmp eq i32 %12, 0
  br i1 %tobool.not.5, label %if.end10.4.for.inc11_crit_edge, label %if.end.5

if.end10.4.for.inc11_crit_edge:                   ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.5:                                         ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.4)
  %tobool5.not.5 = icmp eq i32 %dec.4, 0
  br i1 %tobool5.not.5, label %if.end.5.cleanup_crit_edge, label %if.end10.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.5:                                       ; preds = %if.end.5
  %dec.5 = add i32 %index.addr.026, -6
  %arrayidx4.6 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.6 = icmp eq i32 %14, 0
  br i1 %tobool.not.6, label %if.end10.5.for.inc11_crit_edge, label %if.end.6

if.end10.5.for.inc11_crit_edge:                   ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.6:                                         ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.5)
  %tobool5.not.6 = icmp eq i32 %dec.5, 0
  br i1 %tobool5.not.6, label %if.end.6.cleanup_crit_edge, label %if.end10.6

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.6:                                       ; preds = %if.end.6
  %dec.6 = add i32 %index.addr.026, -7
  %arrayidx4.7 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 7
  %15 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.7 = icmp eq i32 %16, 0
  br i1 %tobool.not.7, label %if.end10.6.for.inc11_crit_edge, label %if.end.7

if.end10.6.for.inc11_crit_edge:                   ; preds = %if.end10.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.7:                                         ; preds = %if.end10.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.6)
  %tobool5.not.7 = icmp eq i32 %dec.6, 0
  br i1 %tobool5.not.7, label %if.end.7.cleanup_crit_edge, label %if.end.7.for.inc11_crit_edge

if.end.7.for.inc11_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc11:                                        ; preds = %if.end.7.for.inc11_crit_edge, %if.end10.6.for.inc11_crit_edge, %if.end10.5.for.inc11_crit_edge, %if.end10.4.for.inc11_crit_edge, %if.end10.3.for.inc11_crit_edge, %if.end10.2.for.inc11_crit_edge, %if.end10.1.for.inc11_crit_edge, %if.end10.for.inc11_crit_edge, %for.cond1.preheader.for.inc11_crit_edge
  %index.addr.1.lcssa = phi i32 [ %index.addr.026, %for.cond1.preheader.for.inc11_crit_edge ], [ %dec, %if.end10.for.inc11_crit_edge ], [ %dec.1, %if.end10.1.for.inc11_crit_edge ], [ %dec.2, %if.end10.2.for.inc11_crit_edge ], [ %dec.3, %if.end10.3.for.inc11_crit_edge ], [ %dec.4, %if.end10.4.for.inc11_crit_edge ], [ %dec.5, %if.end10.5.for.inc11_crit_edge ], [ %dec.6, %if.end10.6.for.inc11_crit_edge ], [ %0, %if.end.7.for.inc11_crit_edge ]
  %inc12 = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc12, 23
  br i1 %exitcond.not, label %for.inc11.cleanup_crit_edge, label %for.inc11.for.cond1.preheader_crit_edge

for.inc11.for.cond1.preheader_crit_edge:          ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.inc11.cleanup_crit_edge:                      ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc11.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end.cleanup_crit_edge ], [ %4, %if.end.1.cleanup_crit_edge ], [ %6, %if.end.2.cleanup_crit_edge ], [ %8, %if.end.3.cleanup_crit_edge ], [ %10, %if.end.4.cleanup_crit_edge ], [ %12, %if.end.5.cleanup_crit_edge ], [ %14, %if.end.6.cleanup_crit_edge ], [ %16, %if.end.7.cleanup_crit_edge ], [ 0, %for.inc11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vimc_pix_map_by_code(i32 noundef %code) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.7.for.cond1.preheader_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.7.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr [23 x %struct.vimc_pix_map], ptr @vimc_pix_map_list, i32 0, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %code)
  %cmp6 = icmp eq i32 %1, %code
  br i1 %cmp6, label %for.cond1.preheader.cleanup_crit_edge, label %for.cond1

for.cond1.preheader.cleanup_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1:                                        ; preds = %for.cond1.preheader
  %arrayidx5.1 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %code)
  %cmp6.1 = icmp eq i32 %3, %code
  br i1 %cmp6.1, label %for.cond1.cleanup_crit_edge, label %for.cond1.1

for.cond1.cleanup_crit_edge:                      ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.1:                                      ; preds = %for.cond1
  %arrayidx5.2 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %code)
  %cmp6.2 = icmp eq i32 %5, %code
  br i1 %cmp6.2, label %for.cond1.1.cleanup_crit_edge, label %for.cond1.2

for.cond1.1.cleanup_crit_edge:                    ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.2:                                      ; preds = %for.cond1.1
  %arrayidx5.3 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %code)
  %cmp6.3 = icmp eq i32 %7, %code
  br i1 %cmp6.3, label %for.cond1.2.cleanup_crit_edge, label %for.cond1.3

for.cond1.2.cleanup_crit_edge:                    ; preds = %for.cond1.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.3:                                      ; preds = %for.cond1.2
  %arrayidx5.4 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %code)
  %cmp6.4 = icmp eq i32 %9, %code
  br i1 %cmp6.4, label %for.cond1.3.cleanup_crit_edge, label %for.cond1.4

for.cond1.3.cleanup_crit_edge:                    ; preds = %for.cond1.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.4:                                      ; preds = %for.cond1.3
  %arrayidx5.5 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %code)
  %cmp6.5 = icmp eq i32 %11, %code
  br i1 %cmp6.5, label %for.cond1.4.cleanup_crit_edge, label %for.cond1.5

for.cond1.4.cleanup_crit_edge:                    ; preds = %for.cond1.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.5:                                      ; preds = %for.cond1.4
  %arrayidx5.6 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %code)
  %cmp6.6 = icmp eq i32 %13, %code
  br i1 %cmp6.6, label %for.cond1.5.cleanup_crit_edge, label %for.cond1.6

for.cond1.5.cleanup_crit_edge:                    ; preds = %for.cond1.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.6:                                      ; preds = %for.cond1.5
  %arrayidx5.7 = getelementptr [8 x i32], ptr %arrayidx, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %code)
  %cmp6.7 = icmp eq i32 %15, %code
  br i1 %cmp6.7, label %for.cond1.6.cleanup_crit_edge, label %for.cond1.7

for.cond1.6.cleanup_crit_edge:                    ; preds = %for.cond1.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.7:                                      ; preds = %for.cond1.6
  %inc9 = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc9, 23
  br i1 %exitcond.not, label %for.cond1.7.cleanup_crit_edge, label %for.cond1.7.for.cond1.preheader_crit_edge

for.cond1.7.for.cond1.preheader_crit_edge:        ; preds = %for.cond1.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.cond1.7.cleanup_crit_edge:                    ; preds = %for.cond1.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.cond1.7.cleanup_crit_edge, %for.cond1.6.cleanup_crit_edge, %for.cond1.5.cleanup_crit_edge, %for.cond1.4.cleanup_crit_edge, %for.cond1.3.cleanup_crit_edge, %for.cond1.2.cleanup_crit_edge, %for.cond1.1.cleanup_crit_edge, %for.cond1.cleanup_crit_edge, %for.cond1.preheader.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %for.cond1.6.cleanup_crit_edge ], [ %arrayidx, %for.cond1.5.cleanup_crit_edge ], [ %arrayidx, %for.cond1.4.cleanup_crit_edge ], [ %arrayidx, %for.cond1.3.cleanup_crit_edge ], [ %arrayidx, %for.cond1.2.cleanup_crit_edge ], [ %arrayidx, %for.cond1.1.cleanup_crit_edge ], [ %arrayidx, %for.cond1.cleanup_crit_edge ], [ %arrayidx, %for.cond1.preheader.cleanup_crit_edge ], [ null, %for.cond1.7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vimc_pix_map_by_pixelformat(i32 noundef %pixelformat) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pixelformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pixelformat, label %entry.cleanup_crit_edge [
    i32 861030210, label %entry.if.then_crit_edge
    i32 859981650, label %if.then.fold.split
    i32 875708738, label %if.then.fold.split10
    i32 825770306, label %if.then.fold.split11
    i32 1196573255, label %if.then.fold.split12
    i32 1195528775, label %if.then.fold.split13
    i32 1111967570, label %if.then.fold.split14
    i32 808535874, label %if.then.fold.split15
    i32 808534599, label %if.then.fold.split16
    i32 808534338, label %if.then.fold.split17
    i32 808535890, label %if.then.fold.split18
    i32 943800929, label %if.then.fold.split19
    i32 943802209, label %if.then.fold.split20
    i32 943810401, label %if.then.fold.split21
    i32 943805025, label %if.then.fold.split22
    i32 943800930, label %if.then.fold.split23
    i32 943802210, label %if.then.fold.split24
    i32 808535106, label %if.then.fold.split25
    i32 943805026, label %if.then.fold.split26
    i32 842090306, label %if.then.fold.split27
    i32 842089031, label %if.then.fold.split28
    i32 842088770, label %if.then.fold.split29
    i32 842090322, label %if.then.fold.split30
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split30, %if.then.fold.split29, %if.then.fold.split28, %if.then.fold.split27, %if.then.fold.split26, %if.then.fold.split25, %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split, %entry.if.then_crit_edge
  %i.08.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split10 ], [ 3, %if.then.fold.split11 ], [ 4, %if.then.fold.split12 ], [ 5, %if.then.fold.split13 ], [ 6, %if.then.fold.split14 ], [ 7, %if.then.fold.split15 ], [ 8, %if.then.fold.split16 ], [ 9, %if.then.fold.split17 ], [ 10, %if.then.fold.split18 ], [ 11, %if.then.fold.split19 ], [ 12, %if.then.fold.split20 ], [ 13, %if.then.fold.split21 ], [ 14, %if.then.fold.split22 ], [ 15, %if.then.fold.split23 ], [ 16, %if.then.fold.split24 ], [ 17, %if.then.fold.split25 ], [ 18, %if.then.fold.split26 ], [ 19, %if.then.fold.split27 ], [ 20, %if.then.fold.split28 ], [ 21, %if.then.fold.split29 ], [ 22, %if.then.fold.split30 ]
  %arrayidx = getelementptr [23 x %struct.vimc_pix_map], ptr @vimc_pix_map_list, i32 0, i32 %i.08.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vimc_vdev_link_validate(ptr nocapture noundef readonly %link) local_unnamed_addr #4 align 64 {
entry:
  %source_fmt = alloca %struct.v4l2_pix_format, align 4
  %sink_fmt = alloca %struct.v4l2_pix_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %source_fmt) #7
  %0 = call ptr @memset(ptr %source_fmt, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sink_fmt) #7
  %1 = call ptr @memset(ptr %sink_fmt, i32 255, i32 48)
  %2 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call fastcc i32 @vimc_get_pix_format(ptr noundef %4, ptr noundef nonnull %source_fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = call fastcc i32 @vimc_get_pix_format(ptr noundef %7, ptr noundef nonnull %sink_fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %entity = getelementptr inbounds %struct.media_pad, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %14 = ptrtoint ptr %source_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %source_fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %source_fmt, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %source_fmt, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format, ptr %source_fmt, i32 0, i32 6
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorspace, align 4
  %quantization = getelementptr inbounds %struct.v4l2_pix_format, ptr %source_fmt, i32 0, i32 10
  %22 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quantization, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_pix_format, ptr %source_fmt, i32 0, i32 11
  %24 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xfer_func, align 4
  %26 = getelementptr inbounds %struct.v4l2_pix_format, ptr %source_fmt, i32 0, i32 9
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %entity5 = getelementptr inbounds %struct.media_pad, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %entity5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entity5, align 4
  %name6 = getelementptr inbounds %struct.media_entity, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name6, align 4
  %35 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sink_fmt, align 4
  %height8 = getelementptr inbounds %struct.v4l2_pix_format, ptr %sink_fmt, i32 0, i32 1
  %37 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height8, align 4
  %pixelformat9 = getelementptr inbounds %struct.v4l2_pix_format, ptr %sink_fmt, i32 0, i32 2
  %39 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixelformat9, align 4
  %colorspace10 = getelementptr inbounds %struct.v4l2_pix_format, ptr %sink_fmt, i32 0, i32 6
  %41 = ptrtoint ptr %colorspace10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colorspace10, align 4
  %quantization11 = getelementptr inbounds %struct.v4l2_pix_format, ptr %sink_fmt, i32 0, i32 10
  %43 = ptrtoint ptr %quantization11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quantization11, align 4
  %xfer_func12 = getelementptr inbounds %struct.v4l2_pix_format, ptr %sink_fmt, i32 0, i32 11
  %45 = ptrtoint ptr %xfer_func12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xfer_func12, align 4
  %47 = getelementptr inbounds %struct.v4l2_pix_format, ptr %sink_fmt, i32 0, i32 9
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %28, ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %49) #10
  %50 = ptrtoint ptr %source_fmt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %source_fmt, align 4
  %52 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sink_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.not = icmp eq i32 %51, %53
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %54 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height, align 4
  %56 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp18.not = icmp eq i32 %55, %57
  br i1 %cmp18.not, label %lor.lhs.false19, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %58 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pixelformat, align 4
  %60 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pixelformat9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp22.not = icmp eq i32 %59, %61
  br i1 %cmp22.not, label %if.end24, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false19
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %source_fmt, i32 0, i32 3
  %62 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %field, align 4
  %field25 = getelementptr inbounds %struct.v4l2_pix_format, ptr %sink_fmt, i32 0, i32 3
  %64 = ptrtoint ptr %field25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %field25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp26.not = icmp eq i32 %63, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp28.not = icmp eq i32 %65, 1
  %or.cond = or i1 %cmp26.not, %cmp28.not
  br i1 %or.cond, label %if.end30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %66 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp32 = icmp eq i32 %67, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %lor.lhs.false33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false33:                                  ; preds = %if.end30
  %68 = ptrtoint ptr %colorspace10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %colorspace10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp35 = icmp eq i32 %69, 0
  br i1 %cmp35, label %lor.lhs.false33.cleanup_crit_edge, label %if.end37

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp40.not = icmp eq i32 %67, %69
  br i1 %cmp40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %70 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp43.not = icmp eq i32 %71, 0
  br i1 %cmp43.not, label %if.end42.if.end49_crit_edge, label %land.lhs.true44

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true44:                                  ; preds = %if.end42
  %72 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp45.not = icmp eq i32 %73, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp47.not = icmp eq i32 %71, %73
  %or.cond88 = select i1 %cmp45.not, i1 true, i1 %cmp47.not
  br i1 %or.cond88, label %land.lhs.true44.if.end49_crit_edge, label %land.lhs.true44.cleanup_crit_edge

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true44.if.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true44.if.end49_crit_edge, %if.end42.if.end49_crit_edge
  %74 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quantization, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp51.not = icmp eq i32 %75, 0
  br i1 %cmp51.not, label %if.end49.if.end60_crit_edge, label %land.lhs.true52

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

land.lhs.true52:                                  ; preds = %if.end49
  %76 = ptrtoint ptr %quantization11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %quantization11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp54.not = icmp eq i32 %77, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp58.not = icmp eq i32 %75, %77
  %or.cond89 = select i1 %cmp54.not, i1 true, i1 %cmp58.not
  br i1 %or.cond89, label %land.lhs.true52.if.end60_crit_edge, label %land.lhs.true52.cleanup_crit_edge

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true52.if.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true52.if.end60_crit_edge, %if.end49.if.end60_crit_edge
  %78 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xfer_func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp62.not = icmp eq i32 %79, 0
  br i1 %cmp62.not, label %if.end60.if.end71_crit_edge, label %land.lhs.true63

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.end60
  %80 = ptrtoint ptr %xfer_func12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %xfer_func12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp65.not = icmp eq i32 %81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp69.not = icmp eq i32 %79, %81
  %or.cond90 = select i1 %cmp65.not, i1 true, i1 %cmp69.not
  br i1 %or.cond90, label %land.lhs.true63.if.end71_crit_edge, label %land.lhs.true63.cleanup_crit_edge

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true63.if.end71_crit_edge, %if.end60.if.end71_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %land.lhs.true63.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %land.lhs.true44.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %lor.lhs.false33.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -32, %lor.lhs.false19.cleanup_crit_edge ], [ -32, %lor.lhs.false.cleanup_crit_edge ], [ -32, %do.end.cleanup_crit_edge ], [ -32, %if.end24.cleanup_crit_edge ], [ 0, %lor.lhs.false33.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ -32, %if.end37.cleanup_crit_edge ], [ -32, %land.lhs.true44.cleanup_crit_edge ], [ -32, %land.lhs.true52.cleanup_crit_edge ], [ -32, %land.lhs.true63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sink_fmt) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %source_fmt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vimc_get_pix_format(ptr nocapture noundef readonly %pad, ptr noundef %fmt) unnamed_addr #4 align 64 {
entry:
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %entity = getelementptr inbounds %struct.media_pad, ptr %pad, i32 0, i32 1
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.else, label %is_media_entity_v4l2_video_device.exit

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #7
  %4 = getelementptr inbounds i8, ptr %sd_fmt, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 80)
  %6 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %sd_fmt, align 4
  %index = getelementptr inbounds %struct.media_pad, ptr %pad, i32 0, i32 2
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 4
  %conv = zext i16 %8 to i32
  %pad3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 1
  %9 = ptrtoint ptr %pad3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %pad3, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %pad6 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %pad6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pad6, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.else.cleanup.thread_crit_edge, label %land.lhs.true

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fmt, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup.thread_crit_edge, label %if.else12

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %get_fmt15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %get_fmt15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_fmt15, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end26_crit_edge

land.lhs.true14.if.end26_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %land.lhs.true14.if.end26_crit_edge
  %.sink = phi ptr [ %15, %if.else20 ], [ %18, %land.lhs.true14.if.end26_crit_edge ]
  %call24 = call i32 %.sink(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %sd_fmt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool28.not = icmp eq i32 %call24, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup.thread_crit_edge

if.end26.cleanup.thread_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end30:                                         ; preds = %if.end26
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format, align 4
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fmt, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 1
  %24 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 3
  %27 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 6
  %30 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %colorspace4.i, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 4
  %conv.i = zext i16 %33 to i32
  %34 = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i, ptr %34, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 6
  %36 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %quantization.i, align 2
  %conv5.i = zext i16 %37 to i32
  %quantization6.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 10
  %38 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv5.i, ptr %quantization6.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 7
  %39 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %xfer_func.i, align 4
  %conv7.i = zext i16 %40 to i32
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 11
  %41 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv7.i, ptr %xfer_func8.i, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %code, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.7.i.for.cond1.preheader.i_crit_edge, %if.end30
  %i.019.i = phi i32 [ 0, %if.end30 ], [ %inc9.i, %for.cond1.7.i.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr [23 x %struct.vimc_pix_map], ptr @vimc_pix_map_list, i32 0, i32 %i.019.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp6.i = icmp eq i32 %45, %43
  br i1 %cmp6.i, label %for.cond1.preheader.i.cleanup_crit_edge, label %for.cond1.i

for.cond1.preheader.i.cleanup_crit_edge:          ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.i:                                      ; preds = %for.cond1.preheader.i
  %arrayidx5.1.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx5.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %43)
  %cmp6.1.i = icmp eq i32 %47, %43
  br i1 %cmp6.1.i, label %for.cond1.i.cleanup_crit_edge, label %for.cond1.1.i

for.cond1.i.cleanup_crit_edge:                    ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.1.i:                                    ; preds = %for.cond1.i
  %arrayidx5.2.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx5.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %43)
  %cmp6.2.i = icmp eq i32 %49, %43
  br i1 %cmp6.2.i, label %for.cond1.1.i.cleanup_crit_edge, label %for.cond1.2.i

for.cond1.1.i.cleanup_crit_edge:                  ; preds = %for.cond1.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.2.i:                                    ; preds = %for.cond1.1.i
  %arrayidx5.3.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %43)
  %cmp6.3.i = icmp eq i32 %51, %43
  br i1 %cmp6.3.i, label %for.cond1.2.i.cleanup_crit_edge, label %for.cond1.3.i

for.cond1.2.i.cleanup_crit_edge:                  ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.3.i:                                    ; preds = %for.cond1.2.i
  %arrayidx5.4.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx5.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %43)
  %cmp6.4.i = icmp eq i32 %53, %43
  br i1 %cmp6.4.i, label %for.cond1.3.i.cleanup_crit_edge, label %for.cond1.4.i

for.cond1.3.i.cleanup_crit_edge:                  ; preds = %for.cond1.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.4.i:                                    ; preds = %for.cond1.3.i
  %arrayidx5.5.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx5.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %43)
  %cmp6.5.i = icmp eq i32 %55, %43
  br i1 %cmp6.5.i, label %for.cond1.4.i.cleanup_crit_edge, label %for.cond1.5.i

for.cond1.4.i.cleanup_crit_edge:                  ; preds = %for.cond1.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.5.i:                                    ; preds = %for.cond1.4.i
  %arrayidx5.6.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 6
  %56 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx5.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %43)
  %cmp6.6.i = icmp eq i32 %57, %43
  br i1 %cmp6.6.i, label %for.cond1.5.i.cleanup_crit_edge, label %for.cond1.6.i

for.cond1.5.i.cleanup_crit_edge:                  ; preds = %for.cond1.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.6.i:                                    ; preds = %for.cond1.5.i
  %arrayidx5.7.i = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %43)
  %cmp6.7.i = icmp eq i32 %59, %43
  br i1 %cmp6.7.i, label %for.cond1.6.i.cleanup_crit_edge, label %for.cond1.7.i

for.cond1.6.i.cleanup_crit_edge:                  ; preds = %for.cond1.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.7.i:                                    ; preds = %for.cond1.6.i
  %inc9.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 23
  br i1 %exitcond.not.i, label %for.cond1.7.i.cleanup_crit_edge, label %for.cond1.7.i.for.cond1.preheader.i_crit_edge

for.cond1.7.i.for.cond1.preheader.i_crit_edge:    ; preds = %for.cond1.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.cond1.7.i.cleanup_crit_edge:                  ; preds = %for.cond1.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end26.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  %__result.084.ph = phi i32 [ %call24, %if.end26.cleanup.thread_crit_edge ], [ -515, %land.lhs.true.cleanup.thread_crit_edge ], [ -515, %if.else.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #7
  br label %return

cleanup:                                          ; preds = %for.cond1.7.i.cleanup_crit_edge, %for.cond1.6.i.cleanup_crit_edge, %for.cond1.5.i.cleanup_crit_edge, %for.cond1.4.i.cleanup_crit_edge, %for.cond1.3.i.cleanup_crit_edge, %for.cond1.2.i.cleanup_crit_edge, %for.cond1.1.i.cleanup_crit_edge, %for.cond1.i.cleanup_crit_edge, %for.cond1.preheader.i.cleanup_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %for.cond1.6.i.cleanup_crit_edge ], [ %arrayidx.i, %for.cond1.5.i.cleanup_crit_edge ], [ %arrayidx.i, %for.cond1.4.i.cleanup_crit_edge ], [ %arrayidx.i, %for.cond1.3.i.cleanup_crit_edge ], [ %arrayidx.i, %for.cond1.2.i.cleanup_crit_edge ], [ %arrayidx.i, %for.cond1.1.i.cleanup_crit_edge ], [ %arrayidx.i, %for.cond1.i.cleanup_crit_edge ], [ %arrayidx.i, %for.cond1.preheader.i.cleanup_crit_edge ], [ null, %for.cond1.7.i.cleanup_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.vimc_pix_map, ptr %retval.0.i, i32 0, i32 2
  %60 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pixelformat, align 4
  %pixelformat33 = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 2
  %62 = ptrtoint ptr %pixelformat33 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %pixelformat33, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #7
  br label %return

is_media_entity_v4l2_video_device.exit:           ; preds = %is_media_entity_v4l2_subdev.exit
  %63 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i80 = icmp eq i32 %64, 1
  br i1 %cmp.i80, label %if.then40, label %is_media_entity_v4l2_video_device.exit.return_crit_edge

is_media_entity_v4l2_video_device.exit.return_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then40:                                        ; preds = %is_media_entity_v4l2_video_device.exit
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 5, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i, align 4
  %vdev_get_format = getelementptr inbounds %struct.vimc_ent_device, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %vdev_get_format to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vdev_get_format, align 4
  %tobool46.not = icmp eq ptr %68, null
  br i1 %tobool46.not, label %if.then40.return_crit_edge, label %cleanup50.thread

if.then40.return_crit_edge:                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

cleanup50.thread:                                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %68(ptr noundef %66, ptr noundef %fmt) #7
  br label %return

return:                                           ; preds = %cleanup50.thread, %if.then40.return_crit_edge, %is_media_entity_v4l2_video_device.exit.return_crit_edge, %cleanup, %cleanup.thread, %entry.return_crit_edge
  %retval.2 = phi i32 [ -22, %is_media_entity_v4l2_video_device.exit.return_crit_edge ], [ %__result.084.ph, %cleanup.thread ], [ -515, %if.then40.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %cleanup ], [ 0, %cleanup50.thread ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vimc_ent_sd_register(ptr noundef %ved, ptr noundef %sd, ptr noundef %v4l2_dev, ptr noundef %name, i32 noundef %function, i16 noundef zeroext %num_pads, ptr noundef %pads, ptr noundef %sd_ops) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ent = getelementptr inbounds %struct.vimc_ent_device, ptr %ved, i32 0, i32 1
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sd, ptr %ent, align 4
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef %sd_ops) #7
  %function2 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %1 = ptrtoint ptr %function2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %function, ptr %function2, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vimc_ent_sd_mops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 2
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %owner, align 4
  %name4 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 @strscpy(ptr noundef %name4, ptr noundef %name, i32 noundef 32) #7
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ved, ptr %dev_priv.i, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %flags, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %7 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_handler, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %6, 12
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or6, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call8 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext %num_pads, ptr noundef %pads) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %sd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v4l2_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %call12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ %call8, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vimc/vimc-common.c", i32 288, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vimc_vdev_link_validate._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vimc_vdev_link_validate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vimc/vimc-common.c", i32 389, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vimc_ent_sd_register._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @vimc_ent_sd_register._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @vimc_pix_map_list, !14, !"vimc_pix_map_list", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vimc/vimc-common.c", i32 17, i32 34}
!15 = !{ptr @vimc_ent_sd_mops, !16, !"vimc_ent_sd_mops", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vimc/vimc-common.c", i32 350, i32 45}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
