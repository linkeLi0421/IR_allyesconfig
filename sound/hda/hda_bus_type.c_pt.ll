; ModuleID = '/llk/IR_all_yes/sound/hda/hda_bus_type.c_pt.bc'
source_filename = "../sound/hda/hda_bus_type.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hdac_get_device_id\22, \22a\22\09"
module asm "\09.weak\09__crc_hdac_get_device_id\09\09\09\09"
module asm "\09.long\09__crc_hdac_get_device_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdac_get_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22hdac_get_device_id\22\09\09\09\09\09"
module asm "__kstrtabns_hdac_get_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_bus_type\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }

@__UNIQUE_ID_description235 = internal constant [38 x i8] c"snd_hda_core.description=HD-audio bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [41 x i8] c"snd_hda_core.file=sound/hda/snd-hda-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"snd_hda_core.license=GPL\00", section ".modinfo", align 1
@__kstrtab_hdac_get_device_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdac_get_device_id = external dso_local constant [0 x i8], align 1
@__ksymtab_hdac_get_device_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdac_get_device_id to i32), ptr @__kstrtab_hdac_get_device_id, ptr @__kstrtabns_hdac_get_device_id }, section "___ksymtab_gpl+hdac_get_device_id", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdaudio\00", [24 x i8] zeroinitializer }, align 32
@snd_hda_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hda_bus_match, ptr @hda_uevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_snd_hda_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_bus_type to i32), ptr @__kstrtab_snd_hda_bus_type, ptr @__kstrtabns_snd_hda_bus_type }, section "___ksymtab_gpl+snd_hda_bus_type", align 4
@__initcall__kmod_snd_hda_core__238_96_hda_bus_init4 = internal global ptr @hda_bus_init, section ".initcall4.init", align 4
@__exitcall_hda_bus_exit = internal global ptr @hda_bus_exit, section ".exitcall.exit", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODALIAS=%s\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 80, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"snd_hda_bus_type\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 79, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [28 x i8] c"../sound/hda/hda_bus_type.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 74, i32 26 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_hda_bus_exit, ptr @__initcall__kmod_snd_hda_core__238_96_hda_bus_init4, ptr @__ksymtab_hdac_get_device_id, ptr @__ksymtab_snd_hda_bus_type, ptr @hda_bus_exit, ptr @.str, ptr @snd_hda_bus_type, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hdac_get_device_id(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table = getelementptr inbounds %struct.hdac_driver, ptr %drv, i32 0, i32 2
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

while.cond.preheader:                             ; preds = %entry
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %hdev, i32 0, i32 9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not19 = icmp eq i32 %3, 0
  br i1 %tobool2.not19, label %while.cond.preheader.return_crit_edge, label %while.body.lr.ph

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %vendor_id3 = getelementptr inbounds %struct.hdac_device, ptr %hdev, i32 0, i32 7
  %4 = ptrtoint ptr %vendor_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vendor_id3, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %3, %while.body.lr.ph ], [ %12, %if.end.while.body_crit_edge ]
  %id.020 = phi ptr [ %1, %while.body.lr.ph ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %rev_id = getelementptr inbounds %struct.hda_device_id, ptr %id.020, i32 0, i32 1
  %7 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.return_crit_edge, label %lor.lhs.false

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revision_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp7 = icmp eq i32 %8, %10
  br i1 %cmp7, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %while.body.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.hda_device_id, ptr %id.020, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr, align 4
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %land.lhs.true.return_crit_edge, %while.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi ptr [ null, %entry.return_crit_edge ], [ null, %while.cond.preheader.return_crit_edge ], [ %id.020, %land.lhs.true.return_crit_edge ], [ %id.020, %lor.lhs.false.return_crit_edge ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_bus_match(ptr noundef %dev, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %type4 = getelementptr inbounds %struct.hdac_driver, ptr %drv, i32 0, i32 1
  %2 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %match = getelementptr inbounds %struct.hdac_driver, ptr %drv, i32 0, i32 3
  %4 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %match, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %5(ptr noundef %dev, ptr noundef %drv) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %id_table.i.i = getelementptr inbounds %struct.hdac_driver, ptr %drv, i32 0, i32 2
  %6 = ptrtoint ptr %id_table.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id_table.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.else.hdac_codec_match.exit_crit_edge, label %while.cond.preheader.i.i

if.else.hdac_codec_match.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %hdac_codec_match.exit

while.cond.preheader.i.i:                         ; preds = %if.else
  %revision_id.i.i = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not19.i.i = icmp eq i32 %9, 0
  br i1 %tobool2.not19.i.i, label %while.cond.preheader.i.i.hdac_codec_match.exit_crit_edge, label %while.body.lr.ph.i.i

while.cond.preheader.i.i.hdac_codec_match.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hdac_codec_match.exit

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %vendor_id3.i.i = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 7
  %10 = ptrtoint ptr %vendor_id3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vendor_id3.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %12 = phi i32 [ %9, %while.body.lr.ph.i.i ], [ %18, %if.end.i.i.while.body.i.i_crit_edge ]
  %id.020.i.i = phi ptr [ %7, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp.i.i = icmp eq i32 %11, %12
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %rev_id.i.i = getelementptr inbounds %struct.hda_device_id, ptr %id.020.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %rev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rev_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.hdac_codec_match.exit_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.hdac_codec_match.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hdac_codec_match.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %15 = ptrtoint ptr %revision_id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %revision_id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp7.i.i = icmp eq i32 %14, %16
  br i1 %cmp7.i.i, label %lor.lhs.false.i.i.hdac_codec_match.exit_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

lor.lhs.false.i.i.hdac_codec_match.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hdac_codec_match.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.hda_device_id, ptr %id.020.i.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i.i, align 4
  %tobool2.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.hdac_codec_match.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end.i.i.hdac_codec_match.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hdac_codec_match.exit

hdac_codec_match.exit:                            ; preds = %if.end.i.i.hdac_codec_match.exit_crit_edge, %lor.lhs.false.i.i.hdac_codec_match.exit_crit_edge, %land.lhs.true.i.i.hdac_codec_match.exit_crit_edge, %while.cond.preheader.i.i.hdac_codec_match.exit_crit_edge, %if.else.hdac_codec_match.exit_crit_edge
  %retval.1.i.i = phi ptr [ null, %if.else.hdac_codec_match.exit_crit_edge ], [ null, %while.cond.preheader.i.i.hdac_codec_match.exit_crit_edge ], [ %id.020.i.i, %land.lhs.true.i.i.hdac_codec_match.exit_crit_edge ], [ %id.020.i.i, %lor.lhs.false.i.i.hdac_codec_match.exit_crit_edge ], [ null, %if.end.i.i.hdac_codec_match.exit_crit_edge ]
  %tobool.not.i = icmp ne ptr %retval.1.i.i, null
  %..i = zext i1 %tobool.not.i to i32
  br label %cleanup

cleanup:                                          ; preds = %hdac_codec_match.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then5 ], [ %..i, %hdac_codec_match.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_uevent(ptr noundef %dev, ptr noundef %env) #2 align 64 {
entry:
  %modalias = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %modalias) #5
  %0 = call ptr @memset(ptr %modalias, i32 255, i32 32)
  %call = call i32 @snd_hdac_codec_modalias(ptr noundef %dev, ptr noundef nonnull %modalias, i32 noundef 32) #5
  %call2 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.1, ptr noundef nonnull %modalias) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool.not, i32 0, i32 -12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %modalias) #5
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hda_bus_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bus_unregister(ptr noundef nonnull @snd_hda_bus_type) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_bus_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @snd_hda_bus_type) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_description235, !1, !"__UNIQUE_ID_description235", i1 false, i1 false}
!1 = !{!"../sound/hda/hda_bus_type.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_file236, !3, !"__UNIQUE_ID_file236", i1 false, i1 false}
!3 = !{!"../sound/hda/hda_bus_type.c", i32 13, i32 1}
!4 = !{ptr @__UNIQUE_ID_license237, !3, !"__UNIQUE_ID_license237", i1 false, i1 false}
!5 = !{ptr @__ksymtab_hdac_get_device_id, !6, !"__ksymtab_hdac_get_device_id", i1 false, i1 false}
!6 = !{!"../sound/hda/hda_bus_type.c", i32 39, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/hda/hda_bus_type.c", i32 80, i32 10}
!9 = !{ptr @snd_hda_bus_type, !10, !"snd_hda_bus_type", i1 false, i1 false}
!10 = !{!"../sound/hda/hda_bus_type.c", i32 79, i32 17}
!11 = !{ptr @__ksymtab_snd_hda_bus_type, !12, !"__ksymtab_snd_hda_bus_type", i1 false, i1 false}
!12 = !{!"../sound/hda/hda_bus_type.c", i32 84, i32 1}
!13 = !{ptr @__initcall__kmod_snd_hda_core__238_96_hda_bus_init4, !14, !"__initcall__kmod_snd_hda_core__238_96_hda_bus_init4", i1 false, i1 false}
!14 = !{!"../sound/hda/hda_bus_type.c", i32 96, i32 1}
!15 = !{ptr @__exitcall_hda_bus_exit, !16, !"__exitcall_hda_bus_exit", i1 false, i1 false}
!16 = !{!"../sound/hda/hda_bus_type.c", i32 97, i32 1}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/hda/hda_bus_type.c", i32 74, i32 26}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
