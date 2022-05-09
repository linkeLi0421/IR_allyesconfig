; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/audio_helper.c_pt.bc'
source_filename = "../drivers/staging/greybus/audio_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }

@gbaudio_dapm_free_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: widget not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gbaudio_dapm_free_controls\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/greybus/audio_helper.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gbaudio_dapm_free_controls._entry_ptr = internal global ptr @gbaudio_dapm_free_controls._entry, section ".printk_index", align 4
@gbaudio_dapm_link_dai_widget.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gb_audio_codec\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gbaudio_dapm_link_dai_widget\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s -> %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@gbaudio_remove_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to find %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gbaudio_remove_controls\00", [40 x i8] zeroinitializer }, align 32
@gbaudio_remove_controls._entry_ptr = internal global ptr @gbaudio_remove_controls._entry, section ".printk_index", align 4
@gbaudio_remove_controls._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d: Failed to remove %s\0A\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_remove_controls._entry_ptr.13 = internal global ptr @gbaudio_remove_controls._entry.11, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 136, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 52, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 166, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 177, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [42 x i8] c"../drivers/staging/greybus/audio_helper.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 182, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @gbaudio_dapm_free_controls._entry, ptr @gbaudio_dapm_free_controls._entry_ptr, ptr @gbaudio_remove_controls._entry, ptr @gbaudio_remove_controls._entry.11, ptr @gbaudio_remove_controls._entry_ptr, ptr @gbaudio_remove_controls._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_dapm_free_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_remove_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_remove_controls._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gbaudio_dapm_link_component_dai_widgets(ptr noundef readonly %card, ptr noundef readnone %dapm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %widgets = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 45
  %0 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %widgets, align 4
  %cmp.not17 = icmp eq ptr %.pn15, %widgets
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %dai_w.019 = getelementptr i8, ptr %.pn18, i32 -12
  %dapm2 = getelementptr i8, ptr %.pn18, i32 8
  %1 = ptrtoint ptr %dapm2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dapm2, align 4
  %cmp3.not = icmp eq ptr %2, %dapm
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %dai_w.019 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dai_w.019, align 4
  %.off = add i32 %4, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.epilog:                                        ; preds = %if.end
  %5 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn41.i = load ptr, ptr %widgets, align 4
  %cmp.not43.i = icmp eq ptr %.pn41.i, %widgets
  br i1 %cmp.not43.i, label %sw.epilog.for.inc_crit_edge, label %for.body.lr.ph.i

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %sw.epilog
  %priv.i = getelementptr i8, ptr %.pn18, i32 12
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %sname5.i = getelementptr i8, ptr %.pn18, i32 -4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn44.i = phi ptr [ %.pn41.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %w.045.i = getelementptr i8, ptr %.pn44.i, i32 -12
  %dapm.i = getelementptr i8, ptr %.pn44.i, i32 8
  %8 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dapm.i, align 4
  %10 = ptrtoint ptr %dapm2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dapm2, align 4
  %cmp3.not.i = icmp eq ptr %9, %11
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %w.045.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w.045.i, align 4
  %.off.i = add i32 %13, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i.for.inc.i_crit_edge, label %sw.epilog.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %if.end.i
  %sname.i = getelementptr i8, ptr %.pn44.i, i32 -4
  %14 = ptrtoint ptr %sname.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sname.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %sw.epilog.i.for.inc.i_crit_edge, label %lor.lhs.false.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %16 = ptrtoint ptr %sname5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sname5.i, align 4
  %call.i = tail call ptr @strstr(ptr noundef nonnull %15, ptr noundef %17) #6
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end8.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dai_w.019 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dai_w.019, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_dapm_link_dai_widget.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_dapm_link_component_dai_widgets, %if.then19.i)) #6
          to label %for.inc.i [label %if.then19.i], !srcloc !33

if.then19.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %19)
  %cmp10.i = icmp eq i32 %19, 27
  %dai_w.w.0.i = select i1 %cmp10.i, ptr %dai_w.019, ptr %w.045.i
  %w.0.dai_w.i = select i1 %cmp10.i, ptr %w.045.i, ptr %dai_w.019
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %dai_w.w.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  %name20.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w.0.dai_w.i, i32 0, i32 1
  %24 = ptrtoint ptr %name20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name20.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_dapm_link_dai_widget.__UNIQUE_ID_ddebug238, ptr noundef %21, ptr noundef nonnull @.str.7, ptr noundef %23, ptr noundef %25) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %if.end8.i, %lor.lhs.false.i.for.inc.i_crit_edge, %sw.epilog.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn44.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn44.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %widgets
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, %widgets
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gbaudio_dapm_free_controls(ptr noundef readonly %dapm, ptr nocapture noundef readonly %widget, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dapm = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 9
  %0 = ptrtoint ptr %debugfs_dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dapm, align 4
  %card = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dapm_mutex = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp63 = icmp sgt i32 %num, 0
  br i1 %cmp63, label %for.body.lr.ph, label %entry.for.end33_crit_edge

entry.for.end33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.body.lr.ph:                                   ; preds = %entry
  %tobool27.not = icmp eq ptr %1, null
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %for.body.lr.ph
  %widget.addr.065 = phi ptr [ %widget, %for.body.lr.ph ], [ %widget.addr.1, %for.inc32.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc32.for.body_crit_edge ]
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %widgets = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %widgets, align 4
  %cmp10.not57 = icmp eq ptr %7, %widgets
  br i1 %cmp10.not57, label %for.body.for.end_crit_edge, label %for.body11.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body11.lr.ph:                                 ; preds = %for.body
  %name14 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.addr.065, i32 0, i32 1
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body11.lr.ph
  %.pn.in58 = phi ptr [ %7, %for.body11.lr.ph ], [ %.pn59, %for.inc.for.body11_crit_edge ]
  %8 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn59 = load ptr, ptr %.pn.in58, align 4
  %dapm12 = getelementptr i8, ptr %.pn.in58, i32 8
  %9 = ptrtoint ptr %dapm12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dapm12, align 4
  %cmp13.not = icmp eq ptr %10, %dapm
  br i1 %cmp13.not, label %if.end, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body11
  %name = getelementptr i8, ptr %.pn.in58, i32 -8
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %13 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name14, align 4
  %call = tail call i32 @strcmp(ptr noundef %12, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body11.for.inc_crit_edge
  %cmp10.not = icmp eq ptr %.pn59, %widgets
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %.pn.in.lcssa55 = phi ptr [ %widgets, %for.body.for.end_crit_edge ], [ %.pn.in58, %if.end.for.end_crit_edge ], [ %widgets, %for.inc.for.end_crit_edge ]
  %w.0.le = getelementptr i8, ptr %.pn.in.lcssa55, i32 -12
  %tobool22.not = icmp eq ptr %w.0.le, null
  br i1 %tobool22.not, label %do.end, label %if.end25

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %name24 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.addr.065, i32 0, i32 1
  %17 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef %18) #10
  br label %for.inc32

if.end25:                                         ; preds = %for.end
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %name29 = getelementptr i8, ptr %.pn.in.lcssa55, i32 -8
  %19 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name29, align 4
  %call30 = tail call ptr @debugfs_lookup(ptr noundef %20, ptr noundef null) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %debugfs_w.1 = phi ptr [ null, %if.end25.if.end31_crit_edge ], [ %call30, %if.then28 ]
  tail call void @debugfs_remove(ptr noundef %debugfs_w.1) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.lcssa55) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end31.list_del.exit.i_crit_edge

if.end31.list_del.exit.i_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr i8, ptr %.pn.in.lcssa55, i32 4
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %.pn.in.lcssa55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in.lcssa55, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end31.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %.pn.in.lcssa55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.lcssa55, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in.lcssa55, i32 4
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %.pn.in.lcssa55, i32 112
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %cmp12.not46.i = icmp eq ptr %30, %arrayidx.i
  br i1 %cmp12.not46.i, label %list_del.exit.i.for.inc21.i_crit_edge, label %list_del.exit.i.for.body13.i_crit_edge

list_del.exit.i.for.body13.i_crit_edge:           ; preds = %list_del.exit.i
  br label %for.body13.i

list_del.exit.i.for.inc21.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc21.i

for.body13.i:                                     ; preds = %gbaudio_dapm_free_path.exit.i.for.body13.i_crit_edge, %list_del.exit.i.for.body13.i_crit_edge
  %list_node852.i = phi ptr [ %.pn.i, %gbaudio_dapm_free_path.exit.i.for.body13.i_crit_edge ], [ %30, %list_del.exit.i.for.body13.i_crit_edge ]
  %p.047.i = getelementptr i8, ptr %list_node852.i, i32 -20
  %31 = ptrtoint ptr %list_node852.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %list_node852.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node852.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body13.i.list_del.exit.i.i_crit_edge

for.body13.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr i8, ptr %list_node852.i, i32 4
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i.i, align 4
  %34 = ptrtoint ptr %list_node852.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list_node852.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body13.i.list_del.exit.i.i_crit_edge
  %38 = ptrtoint ptr %list_node852.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node852.i, align 4
  %prev.i.i42.i = getelementptr i8, ptr %list_node852.i, i32 4
  %39 = ptrtoint ptr %prev.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i42.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %list_node852.i, i32 8
  %call.i.i7.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx2.i.i) #6
  br i1 %call.i.i7.i.i, label %if.end.i.i10.i.i, label %list_del.exit.i.i.list_del.exit12.i.i_crit_edge

list_del.exit.i.i.list_del.exit12.i.i_crit_edge:  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit12.i.i

if.end.i.i10.i.i:                                 ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i8.i.i = getelementptr i8, ptr %list_node852.i, i32 12
  %40 = ptrtoint ptr %prev.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i8.i.i, align 4
  %42 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx2.i.i, align 4
  %prev1.i.i.i9.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i9.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit12.i.i

list_del.exit12.i.i:                              ; preds = %if.end.i.i10.i.i, %list_del.exit.i.i.list_del.exit12.i.i_crit_edge
  %46 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx2.i.i, align 4
  %prev.i11.i.i = getelementptr i8, ptr %list_node852.i, i32 12
  %47 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i11.i.i, align 4
  %list_kcontrol.i.i = getelementptr i8, ptr %list_node852.i, i32 16
  %call.i.i13.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_kcontrol.i.i) #6
  br i1 %call.i.i13.i.i, label %if.end.i.i16.i.i, label %list_del.exit12.i.i.list_del.exit18.i.i_crit_edge

list_del.exit12.i.i.list_del.exit18.i.i_crit_edge: ; preds = %list_del.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit18.i.i

if.end.i.i16.i.i:                                 ; preds = %list_del.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i14.i.i = getelementptr i8, ptr %list_node852.i, i32 20
  %48 = ptrtoint ptr %prev.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i14.i.i, align 4
  %50 = ptrtoint ptr %list_kcontrol.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %list_kcontrol.i.i, align 4
  %prev1.i.i.i15.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i15.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit18.i.i

list_del.exit18.i.i:                              ; preds = %if.end.i.i16.i.i, %list_del.exit12.i.i.list_del.exit18.i.i_crit_edge
  %54 = ptrtoint ptr %list_kcontrol.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %list_kcontrol.i.i, align 4
  %prev.i17.i.i = getelementptr i8, ptr %list_node852.i, i32 20
  %55 = ptrtoint ptr %prev.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i17.i.i, align 4
  %list.i.i = getelementptr i8, ptr %list_node852.i, i32 24
  %call.i.i19.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #6
  br i1 %call.i.i19.i.i, label %if.end.i.i22.i.i, label %list_del.exit18.i.i.gbaudio_dapm_free_path.exit.i_crit_edge

list_del.exit18.i.i.gbaudio_dapm_free_path.exit.i_crit_edge: ; preds = %list_del.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gbaudio_dapm_free_path.exit.i

if.end.i.i22.i.i:                                 ; preds = %list_del.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i20.i.i = getelementptr i8, ptr %list_node852.i, i32 28
  %56 = ptrtoint ptr %prev.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i20.i.i, align 4
  %58 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i21.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i21.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %gbaudio_dapm_free_path.exit.i

gbaudio_dapm_free_path.exit.i:                    ; preds = %if.end.i.i22.i.i, %list_del.exit18.i.i.gbaudio_dapm_free_path.exit.i_crit_edge
  %62 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i23.i.i = getelementptr i8, ptr %list_node852.i, i32 28
  %63 = ptrtoint ptr %prev.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i23.i.i, align 4
  tail call void @kfree(ptr noundef %p.047.i) #6
  %cmp12.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp12.not.i, label %gbaudio_dapm_free_path.exit.i.for.inc21.i_crit_edge, label %gbaudio_dapm_free_path.exit.i.for.body13.i_crit_edge

gbaudio_dapm_free_path.exit.i.for.body13.i_crit_edge: ; preds = %gbaudio_dapm_free_path.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.i

gbaudio_dapm_free_path.exit.i.for.inc21.i_crit_edge: ; preds = %gbaudio_dapm_free_path.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %gbaudio_dapm_free_path.exit.i.for.inc21.i_crit_edge, %list_del.exit.i.for.inc21.i_crit_edge
  %arrayidx.1.i = getelementptr i8, ptr %.pn.in.lcssa55, i32 120
  %64 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp12.not46.1.i = icmp eq ptr %65, %arrayidx.1.i
  br i1 %cmp12.not46.1.i, label %for.inc21.i.gbaudio_dapm_free_widget.exit_crit_edge, label %for.inc21.i.for.body13.1.i_crit_edge

for.inc21.i.for.body13.1.i_crit_edge:             ; preds = %for.inc21.i
  br label %for.body13.1.i

for.inc21.i.gbaudio_dapm_free_widget.exit_crit_edge: ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gbaudio_dapm_free_widget.exit

for.body13.1.i:                                   ; preds = %gbaudio_dapm_free_path.exit.1.i.for.body13.1.i_crit_edge, %for.inc21.i.for.body13.1.i_crit_edge
  %.pn.1.pn.i = phi ptr [ %.pn.1.i, %gbaudio_dapm_free_path.exit.1.i.for.body13.1.i_crit_edge ], [ %65, %for.inc21.i.for.body13.1.i_crit_edge ]
  %p.047.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 -28
  %list_node852.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 -8
  %66 = ptrtoint ptr %.pn.1.pn.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.1.i = load ptr, ptr %.pn.1.pn.i, align 4
  %call.i.i.i.1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node852.1.i) #6
  br i1 %call.i.i.i.1.i, label %if.end.i.i.i.1.i, label %for.body13.1.i.list_del.exit.i.1.i_crit_edge

for.body13.1.i.list_del.exit.i.1.i_crit_edge:     ; preds = %for.body13.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i.1.i

if.end.i.i.i.1.i:                                 ; preds = %for.body13.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 -4
  %67 = ptrtoint ptr %prev.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i.1.i, align 4
  %69 = ptrtoint ptr %list_node852.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %list_node852.1.i, align 4
  %prev1.i.i.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i.i.1.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit.i.1.i

list_del.exit.i.1.i:                              ; preds = %if.end.i.i.i.1.i, %for.body13.1.i.list_del.exit.i.1.i_crit_edge
  %73 = ptrtoint ptr %list_node852.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node852.1.i, align 4
  %prev.i.i42.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 -4
  %74 = ptrtoint ptr %prev.i.i42.1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i42.1.i, align 4
  %call.i.i7.i.1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.1.pn.i) #6
  br i1 %call.i.i7.i.1.i, label %if.end.i.i10.i.1.i, label %list_del.exit.i.1.i.list_del.exit12.i.1.i_crit_edge

list_del.exit.i.1.i.list_del.exit12.i.1.i_crit_edge: ; preds = %list_del.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit12.i.1.i

if.end.i.i10.i.1.i:                               ; preds = %list_del.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i8.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 4
  %75 = ptrtoint ptr %prev.i.i8.i.1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i8.i.1.i, align 4
  %77 = ptrtoint ptr %.pn.1.pn.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %.pn.1.pn.i, align 4
  %prev1.i.i.i9.i.1.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i9.i.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i9.i.1.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del.exit12.i.1.i

list_del.exit12.i.1.i:                            ; preds = %if.end.i.i10.i.1.i, %list_del.exit.i.1.i.list_del.exit12.i.1.i_crit_edge
  %81 = ptrtoint ptr %.pn.1.pn.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.1.pn.i, align 4
  %prev.i11.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 4
  %82 = ptrtoint ptr %prev.i11.i.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i11.i.1.i, align 4
  %list_kcontrol.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 8
  %call.i.i13.i.1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_kcontrol.i.1.i) #6
  br i1 %call.i.i13.i.1.i, label %if.end.i.i16.i.1.i, label %list_del.exit12.i.1.i.list_del.exit18.i.1.i_crit_edge

list_del.exit12.i.1.i.list_del.exit18.i.1.i_crit_edge: ; preds = %list_del.exit12.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit18.i.1.i

if.end.i.i16.i.1.i:                               ; preds = %list_del.exit12.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i14.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 12
  %83 = ptrtoint ptr %prev.i.i14.i.1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i14.i.1.i, align 4
  %85 = ptrtoint ptr %list_kcontrol.i.1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %list_kcontrol.i.1.i, align 4
  %prev1.i.i.i15.i.1.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i15.i.1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i15.i.1.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit18.i.1.i

list_del.exit18.i.1.i:                            ; preds = %if.end.i.i16.i.1.i, %list_del.exit12.i.1.i.list_del.exit18.i.1.i_crit_edge
  %89 = ptrtoint ptr %list_kcontrol.i.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %list_kcontrol.i.1.i, align 4
  %prev.i17.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 12
  %90 = ptrtoint ptr %prev.i17.i.1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i17.i.1.i, align 4
  %list.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 16
  %call.i.i19.i.1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.1.i) #6
  br i1 %call.i.i19.i.1.i, label %if.end.i.i22.i.1.i, label %list_del.exit18.i.1.i.gbaudio_dapm_free_path.exit.1.i_crit_edge

list_del.exit18.i.1.i.gbaudio_dapm_free_path.exit.1.i_crit_edge: ; preds = %list_del.exit18.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gbaudio_dapm_free_path.exit.1.i

if.end.i.i22.i.1.i:                               ; preds = %list_del.exit18.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i20.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 20
  %91 = ptrtoint ptr %prev.i.i20.i.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i20.i.1.i, align 4
  %93 = ptrtoint ptr %list.i.1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %list.i.1.i, align 4
  %prev1.i.i.i21.i.1.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i21.i.1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i21.i.1.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %gbaudio_dapm_free_path.exit.1.i

gbaudio_dapm_free_path.exit.1.i:                  ; preds = %if.end.i.i22.i.1.i, %list_del.exit18.i.1.i.gbaudio_dapm_free_path.exit.1.i_crit_edge
  %97 = ptrtoint ptr %list.i.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.1.i, align 4
  %prev.i23.i.1.i = getelementptr i8, ptr %.pn.1.pn.i, i32 20
  %98 = ptrtoint ptr %prev.i23.i.1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i23.i.1.i, align 4
  tail call void @kfree(ptr noundef %p.047.1.i) #6
  %cmp12.not.1.i = icmp eq ptr %.pn.1.i, %arrayidx.1.i
  br i1 %cmp12.not.1.i, label %gbaudio_dapm_free_path.exit.1.i.gbaudio_dapm_free_widget.exit_crit_edge, label %gbaudio_dapm_free_path.exit.1.i.for.body13.1.i_crit_edge

gbaudio_dapm_free_path.exit.1.i.for.body13.1.i_crit_edge: ; preds = %gbaudio_dapm_free_path.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.1.i

gbaudio_dapm_free_path.exit.1.i.gbaudio_dapm_free_widget.exit_crit_edge: ; preds = %gbaudio_dapm_free_path.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gbaudio_dapm_free_widget.exit

gbaudio_dapm_free_widget.exit:                    ; preds = %gbaudio_dapm_free_path.exit.1.i.gbaudio_dapm_free_widget.exit_crit_edge, %for.inc21.i.gbaudio_dapm_free_widget.exit_crit_edge
  %kcontrols.i = getelementptr i8, ptr %.pn.in.lcssa55, i32 72
  %99 = ptrtoint ptr %kcontrols.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %kcontrols.i, align 4
  tail call void @kfree(ptr noundef %100) #6
  %name.i = getelementptr i8, ptr %.pn.in.lcssa55, i32 -8
  %101 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name.i, align 4
  tail call void @kfree_const(ptr noundef %102) #6
  %sname.i = getelementptr i8, ptr %.pn.in.lcssa55, i32 -4
  %103 = ptrtoint ptr %sname.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sname.i, align 4
  tail call void @kfree_const(ptr noundef %104) #6
  tail call void @kfree(ptr noundef nonnull %w.0.le) #6
  br label %for.inc32

for.inc32:                                        ; preds = %gbaudio_dapm_free_widget.exit, %do.end
  %widget.addr.1 = getelementptr %struct.snd_soc_dapm_widget, ptr %widget.addr.065, i32 1
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc32.for.end33_crit_edge, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc32.for.end33_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.end33:                                        ; preds = %for.inc32.for.end33_crit_edge, %entry.for.end33_crit_edge
  %105 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %card, align 4
  %dapm_mutex35 = getelementptr inbounds %struct.snd_soc_card, ptr %106, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex35) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gbaudio_remove_component_controls(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %controls, i32 noundef %num_controls) local_unnamed_addr #0 align 64 {
entry:
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem) #6
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %name_prefix = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 2
  %6 = ptrtoint ptr %name_prefix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name_prefix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_controls)
  %cmp1.i = icmp sgt i32 %num_controls, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %entry.gbaudio_remove_controls.exit_crit_edge

entry.gbaudio_remove_controls.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gbaudio_remove_controls.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %tobool.not.i = icmp eq ptr %7, null
  %name.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 4
  %iface6.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 1
  %device7.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 2
  %subdevice8.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 3
  %index9.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_kcontrol_new, ptr %controls, i32 %i.02.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #6
  %8 = call ptr @memset(ptr %id.i, i32 255, i32 64)
  %name4.i = getelementptr %struct.snd_kcontrol_new, ptr %controls, i32 %i.02.i, i32 3
  %9 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name4.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 44, ptr noundef nonnull @.str.8, ptr noundef nonnull %7, ptr noundef %10) #6
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @strscpy(ptr noundef %name.i, ptr noundef %10, i32 noundef 44) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %id.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %iface6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %iface6.i, align 4
  %device.i = getelementptr %struct.snd_kcontrol_new, ptr %controls, i32 %i.02.i, i32 1
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device.i, align 4
  %17 = ptrtoint ptr %device7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %device7.i, align 4
  %subdevice.i = getelementptr %struct.snd_kcontrol_new, ptr %controls, i32 %i.02.i, i32 2
  %18 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subdevice.i, align 4
  %20 = ptrtoint ptr %subdevice8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %subdevice8.i, align 4
  %index.i = getelementptr %struct.snd_kcontrol_new, ptr %controls, i32 %i.02.i, i32 4
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  %23 = ptrtoint ptr %index9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %index9.i, align 4
  %call10.i = call ptr @snd_ctl_find_id(ptr noundef %3, ptr noundef nonnull %id.i) #6
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name4.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %25) #10
  br label %cleanup.i

if.end14.i:                                       ; preds = %if.end.i
  %call15.i = call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end14.i.cleanup.i_crit_edge

if.end14.i.cleanup.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name4.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %call15.i, ptr noundef %27) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end20.i, %if.end14.i.cleanup.i_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #6
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_controls
  br i1 %exitcond.not.i, label %cleanup.i.gbaudio_remove_controls.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.gbaudio_remove_controls.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gbaudio_remove_controls.exit

gbaudio_remove_controls.exit:                     ; preds = %cleanup.i.gbaudio_remove_controls.exit_crit_edge, %entry.gbaudio_remove_controls.exit_crit_edge
  call void @up_write(ptr noundef %controls_rwsem) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/audio_helper.c", i32 136, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gbaudio_dapm_free_controls._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gbaudio_dapm_free_controls._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/audio_helper.c", i32 52, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gbaudio_dapm_link_dai_widget.__UNIQUE_ID_ddebug238, !9, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/audio_helper.c", i32 166, i32 39}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/greybus/audio_helper.c", i32 177, i32 4}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @gbaudio_remove_controls._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @gbaudio_remove_controls._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/greybus/audio_helper.c", i32 182, i32 4}
!22 = !{ptr @gbaudio_remove_controls._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gbaudio_remove_controls._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148491304, i64 2148491309, i64 2148491322, i64 2148491366, i64 2148491400, i64 2148491421}
