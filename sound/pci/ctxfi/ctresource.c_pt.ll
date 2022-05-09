; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctresource.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctresource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsc_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsc_mgr = type { i32, i32, i32, ptr, ptr, ptr }
%struct.rsc = type { i32, ptr, ptr, ptr }
%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@rsc_generic_ops = internal constant { %struct.rsc_ops, [16 x i8] } { %struct.rsc_ops { ptr @rsc_master, ptr @rsc_next_conj, ptr @rsc_index, ptr @audio_ring_slot }, [16 x i8] zeroinitializer }, align 32
@rsc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid resource type value %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rsc_init\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/pci/ctxfi/ctresource.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsc_init._entry_ptr = internal global ptr @rsc_init._entry, section ".printk_index", align 4
@rsc_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get resource control block!\0A\00", [57 x i8] zeroinitializer }, align 32
@rsc_init._entry_ptr.7 = internal global ptr @rsc_init._entry.5, section ".printk_index", align 4
@rsc_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rsc_uninit\00", [21 x i8] zeroinitializer }, align 32
@rsc_uninit._entry_ptr = internal global ptr @rsc_uninit._entry, section ".printk_index", align 4
@rsc_mgr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rsc_mgr_init\00", [19 x i8] zeroinitializer }, align 32
@rsc_mgr_init._entry_ptr = internal global ptr @rsc_mgr_init._entry, section ".printk_index", align 4
@rsc_mgr_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 239, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get manager control block!\0A\00", [58 x i8] zeroinitializer }, align 32
@rsc_mgr_init._entry_ptr.12 = internal global ptr @rsc_mgr_init._entry.10, section ".printk_index", align 4
@rsc_mgr_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsc_mgr_uninit\00", [17 x i8] zeroinitializer }, align 32
@rsc_mgr_uninit._entry_ptr = internal global ptr @rsc_mgr_uninit._entry, section ".printk_index", align 4
@offset_in_audio_slot_block = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\00\04\0C\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"rsc_generic_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 125, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 160, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 166, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 188, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 231, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 238, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 276, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"offset_in_audio_slot_block\00", align 1
@___asan_gen_.69 = private constant [32 x i8] c"../sound/pci/ctxfi/ctresource.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 95, i32 28 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @rsc_init._entry, ptr @rsc_init._entry.5, ptr @rsc_init._entry_ptr, ptr @rsc_init._entry_ptr.7, ptr @rsc_mgr_init._entry, ptr @rsc_mgr_init._entry.10, ptr @rsc_mgr_init._entry_ptr, ptr @rsc_mgr_init._entry_ptr.12, ptr @rsc_mgr_uninit._entry, ptr @rsc_mgr_uninit._entry_ptr, ptr @rsc_uninit._entry, ptr @rsc_uninit._entry_ptr, ptr @rsc_generic_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @offset_in_audio_slot_block], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_generic_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_mgr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_mgr_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_mgr_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_in_audio_slot_block to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgr_get_resource(ptr nocapture noundef %mgr, i32 noundef %n, ptr nocapture noundef writeonly %ridx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %avail = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 2
  %0 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %n)
  %cmp = icmp ult i32 %1, %n
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rscs = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 3
  %2 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rscs, align 4
  %amount = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 1
  %4 = ptrtoint ptr %amount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %amount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp44.not.i = icmp eq i32 %5, 0
  br i1 %cmp44.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %n.047.i = phi i32 [ %n.1.i, %for.inc.i.for.body.i_crit_edge ], [ %n, %if.end.for.body.i_crit_edge ]
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %div.i = sdiv i32 %i.045.i, 8
  %arrayidx.i = getelementptr i8, ptr %3, i32 %div.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %rem42.i = and i32 %i.045.i, 7
  %shl.i = shl nuw nsw i32 1, %rem42.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %dec.i = add i32 %n.047.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %for.cond8.preheader.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.cond8.preheader.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp948.i = icmp sgt i32 %n, 0
  br i1 %cmp948.i, label %for.cond8.preheader.i.for.body11.i_crit_edge, label %for.cond8.preheader.i.if.then1_crit_edge

for.cond8.preheader.i.if.then1_crit_edge:         ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

for.cond8.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body11.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ %dec.i, %if.end.i.for.inc.i_crit_edge ], [ %n, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.cond8.preheader.i.for.body11.i_crit_edge
  %n.250.i = phi i32 [ %dec20.i, %for.body11.i.for.body11.i_crit_edge ], [ %n, %for.cond8.preheader.i.for.body11.i_crit_edge ]
  %i.149.i = phi i32 [ %dec18.i, %for.body11.i.for.body11.i_crit_edge ], [ %i.045.i, %for.cond8.preheader.i.for.body11.i_crit_edge ]
  %div12.i = sdiv i32 %i.149.i, 8
  %rem1341.i = and i32 %i.149.i, 7
  %shl14.i = shl nuw nsw i32 1, %rem1341.i
  %arrayidx15.i = getelementptr i8, ptr %3, i32 %div12.i
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15.i, align 1
  %10 = trunc i32 %shl14.i to i8
  %conv17.i = or i8 %9, %10
  store i8 %conv17.i, ptr %arrayidx15.i, align 1
  %dec18.i = add i32 %i.149.i, -1
  %dec20.i = add nsw i32 %n.250.i, -1
  %cmp9.i = icmp ugt i32 %n.250.i, 1
  br i1 %cmp9.i, label %for.body11.i.for.body11.i_crit_edge, label %for.body11.i.if.then1_crit_edge

for.body11.i.if.then1_crit_edge:                  ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

if.then1:                                         ; preds = %for.body11.i.if.then1_crit_edge, %for.cond8.preheader.i.if.then1_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.045.i, %for.cond8.preheader.i.if.then1_crit_edge ], [ %dec18.i, %for.body11.i.if.then1_crit_edge ]
  %add.i = add i32 %i.1.lcssa.i, 1
  %11 = ptrtoint ptr %ridx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %ridx, align 4
  %12 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %avail, align 4
  %sub = sub i32 %13, %n
  store i32 %sub, ptr %avail, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgr_put_resource(ptr nocapture noundef %mgr, i32 noundef %n, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rscs = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 3
  %0 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rscs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp.not2.i = icmp eq i32 %n, 0
  br i1 %cmp.not2.i, label %entry.put_resource.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.put_resource.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_resource.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %n.04.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %n, %entry.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %idx, %entry.for.body.i_crit_edge ]
  %div1.i = lshr i32 %i.03.i, 3
  %rem.i = and i32 %i.03.i, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %arrayidx.i = getelementptr i8, ptr %1, i32 %div1.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = trunc i32 %shl.i to i8
  %5 = xor i8 %4, -1
  %conv1.i = and i8 %3, %5
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %inc.i = add i32 %i.03.i, 1
  %dec.i = add i32 %n.04.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.body.i.put_resource.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.put_resource.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_resource.exit

put_resource.exit:                                ; preds = %for.body.i.put_resource.exit_crit_edge, %entry.put_resource.exit_crit_edge
  %avail = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 2
  %6 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avail, align 4
  %add = add i32 %7, %n
  store i32 %add, ptr %avail, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsc_init(ptr noundef %rsc, i32 noundef %idx, i32 noundef %type, i32 noundef %msr, ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bf.shl = shl i32 %idx, 20
  %bf.value = shl i32 %idx, 4
  %bf.shl3 = and i32 %bf.value, 65520
  %bf.set5 = or i32 %bf.shl3, %bf.shl
  %bf.value7 = shl i32 %type, 16
  %bf.shl8 = and i32 %bf.value7, 983040
  %bf.set10 = or i32 %bf.set5, %bf.shl8
  %bf.value12 = and i32 %msr, 15
  %bf.set14 = or i32 %bf.set10, %bf.value12
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bf.set14, ptr %rsc, align 4
  %hw15 = getelementptr inbounds %struct.rsc, ptr %rsc, i32 0, i32 2
  %1 = ptrtoint ptr %hw15 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hw, ptr %hw15, align 4
  %ops = getelementptr inbounds %struct.rsc, ptr %rsc, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rsc_generic_ops, ptr %ops, align 4
  %tobool.not = icmp eq ptr %hw, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %rsc, i32 0, i32 1
  %3 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ctrl_blk, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 2, label %sw.bb17
    i32 1, label %if.end.cleanup_crit_edge
    i32 3, label %if.end.cleanup_crit_edge48
    i32 4, label %if.end.cleanup_crit_edge49
  ]

if.end.cleanup_crit_edge49:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge48:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %src_rsc_get_ctrl_blk = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 12
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %amixer_rsc_get_ctrl_blk = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 51
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %type) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb
  %amixer_rsc_get_ctrl_blk.sink = phi ptr [ %amixer_rsc_get_ctrl_blk, %sw.bb17 ], [ %src_rsc_get_ctrl_blk, %sw.bb ]
  %9 = ptrtoint ptr %amixer_rsc_get_ctrl_blk.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %amixer_rsc_get_ctrl_blk.sink, align 4
  %ctrl_blk18 = getelementptr inbounds %struct.rsc, ptr %rsc, i32 0, i32 1
  %call19 = tail call i32 %10(ptr noundef %ctrl_blk18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %sw.epilog.cleanup_crit_edge, label %do.end25

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %card26 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %11 = ptrtoint ptr %card26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card26, align 4
  %dev27 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %sw.epilog.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge48, %if.end.cleanup_crit_edge49, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ %call19, %do.end25 ], [ 0, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge48 ], [ 0, %if.end.cleanup_crit_edge49 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsc_uninit(ptr nocapture noundef %rsc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.rsc, ptr %rsc, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_blk = getelementptr inbounds %struct.rsc, ptr %rsc, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_blk, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %rsc, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 15
  %5 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %bf.clear, label %do.end [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %if.then.sw.epilog_crit_edge
    i32 4, label %if.then.sw.epilog_crit_edge41
  ]

if.then.sw.epilog_crit_edge41:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %src_rsc_put_ctrl_blk = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %src_rsc_put_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_rsc_put_ctrl_blk, align 4
  %call = tail call i32 %7(ptr noundef nonnull %3) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %amixer_rsc_put_ctrl_blk = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 52
  %8 = ptrtoint ptr %amixer_rsc_put_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %amixer_rsc_put_ctrl_blk, align 4
  %call7 = tail call i32 %9(ptr noundef nonnull %3) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %card = getelementptr inbounds %struct.hw, ptr %1, i32 0, i32 97
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef %bf.clear) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb4, %sw.bb, %if.then.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge41
  %14 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ctrl_blk, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hw, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %rsc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 327680, ptr %rsc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsc_mgr_init(ptr noundef %mgr, i32 noundef %type, i32 noundef %amount, ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %mgr, align 4
  %sub = add i32 %amount, 7
  %div47 = lshr i32 %sub, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div47, i32 noundef 3520) #12
  %rscs = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 3
  %1 = ptrtoint ptr %rscs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %rscs, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 4, label %sw.bb10
    i32 3, label %if.end.if.end20_crit_edge
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %src_mgr_get_ctrl_blk = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 38
  %3 = ptrtoint ptr %src_mgr_get_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %src_mgr_get_ctrl_blk, align 4
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %call3 = tail call i32 %4(ptr noundef %ctrl_blk) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %srcimp_mgr_get_ctrl_blk = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 44
  %5 = ptrtoint ptr %srcimp_mgr_get_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %srcimp_mgr_get_ctrl_blk, align 4
  %ctrl_blk5 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %call6 = tail call i32 %6(ptr noundef %ctrl_blk5) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %amixer_mgr_get_ctrl_blk = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 53
  %7 = ptrtoint ptr %amixer_mgr_get_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amixer_mgr_get_ctrl_blk, align 4
  %ctrl_blk8 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %call9 = tail call i32 %8(ptr noundef %ctrl_blk8) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %daio_mgr_get_ctrl_blk = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 80
  %9 = ptrtoint ptr %daio_mgr_get_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %daio_mgr_get_ctrl_blk, align 4
  %ctrl_blk11 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %call12 = tail call i32 %10(ptr noundef %hw, ptr noundef %ctrl_blk11) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %type) #11
  br label %error

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  %err.0 = phi i32 [ %call12, %sw.bb10 ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool13.not = icmp eq i32 %err.0, 0
  br i1 %tobool13.not, label %sw.epilog.if.end20_crit_edge, label %do.end17

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end17:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %card18 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %15 = ptrtoint ptr %card18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card18, align 4
  %dev19 = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11) #11
  br label %error

if.end20:                                         ; preds = %sw.epilog.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %19 = ptrtoint ptr %mgr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %type, ptr %mgr, align 4
  %amount22 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 1
  %20 = ptrtoint ptr %amount22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %amount, ptr %amount22, align 4
  %avail = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 2
  %21 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %amount, ptr %avail, align 4
  %hw23 = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %22 = ptrtoint ptr %hw23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %hw, ptr %hw23, align 4
  br label %cleanup

error:                                            ; preds = %do.end17, %do.end
  %err.1 = phi i32 [ -22, %do.end ], [ %err.0, %do.end17 ]
  %23 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rscs, align 4
  tail call void @kfree(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %error ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsc_mgr_uninit(ptr nocapture noundef %mgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rscs = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 3
  %0 = ptrtoint ptr %rscs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rscs, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %rscs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rscs, align 4
  %hw = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_blk = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 4
  %5 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_blk, align 4
  %cmp2.not = icmp eq ptr %6, null
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mgr, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %8, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb9
    i32 4, label %sw.bb13
    i32 3, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %src_mgr_put_ctrl_blk = getelementptr inbounds %struct.hw, ptr %4, i32 0, i32 39
  %10 = ptrtoint ptr %src_mgr_put_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src_mgr_put_ctrl_blk, align 4
  %call = tail call i32 %11(ptr noundef nonnull %6) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %srcimp_mgr_put_ctrl_blk = getelementptr inbounds %struct.hw, ptr %4, i32 0, i32 45
  %12 = ptrtoint ptr %srcimp_mgr_put_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srcimp_mgr_put_ctrl_blk, align 4
  %call8 = tail call i32 %13(ptr noundef nonnull %6) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %amixer_mgr_put_ctrl_blk = getelementptr inbounds %struct.hw, ptr %4, i32 0, i32 54
  %14 = ptrtoint ptr %amixer_mgr_put_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %amixer_mgr_put_ctrl_blk, align 4
  %call12 = tail call i32 %15(ptr noundef nonnull %6) #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %daio_mgr_put_ctrl_blk = getelementptr inbounds %struct.hw, ptr %4, i32 0, i32 81
  %16 = ptrtoint ptr %daio_mgr_put_ctrl_blk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %daio_mgr_put_ctrl_blk, align 4
  %call16 = tail call i32 %17(ptr noundef nonnull %6) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %card = getelementptr inbounds %struct.hw, ptr %4, i32 0, i32 97
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %8) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb, %if.then.sw.epilog_crit_edge
  %22 = ptrtoint ptr %ctrl_blk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ctrl_blk, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %hw, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %mgr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %mgr, align 4
  %amount = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 1
  %25 = ptrtoint ptr %amount to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %amount, align 4
  %avail = getelementptr inbounds %struct.rsc_mgr, ptr %mgr, i32 0, i32 2
  %26 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %avail, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rsc_master(ptr nocapture noundef %rsc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %1 = lshr i32 %bf.load, 16
  %bf.shl = and i32 %1, 65520
  %bf.clear = and i32 %bf.load, -65521
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsc_next_conj(ptr nocapture noundef %rsc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %and = and i32 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %entry
  %and.1 = and i32 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %and.2 = and i32 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %and.3 = and i32 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %spec.select = select i1 %tobool.not.3, i32 8, i32 3
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.body.for.end_crit_edge ], [ 2, %for.body.1.for.end_crit_edge ], [ %spec.select, %for.body.2 ]
  %shr = lshr i32 256, %i.0.lcssa
  %1 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load1 = load i32, ptr %rsc, align 4
  %add9 = shl nuw nsw i32 %shr, 4
  %bf.lshr10 = add i32 %bf.load1, %add9
  %bf.shl = and i32 %bf.lshr10, 65520
  %bf.clear4 = and i32 %bf.load1, -65521
  %bf.set = or i32 %bf.shl, %bf.clear4
  store i32 %bf.set, ptr %rsc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsc_index(ptr nocapture noundef readonly %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 4095
  ret i32 %bf.clear
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @audio_ring_slot(ptr nocapture noundef readonly %rsc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %rsc, align 4
  %bf.clear = and i32 %bf.load, 65520
  %bf.lshr2 = lshr i32 %bf.load, 16
  %bf.clear3 = and i32 %bf.lshr2, 15
  %arrayidx = getelementptr [5 x i8], ptr @offset_in_audio_slot_block, i32 0, i32 %bf.clear3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %add = add nuw nsw i32 %bf.clear, %conv
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctresource.c", i32 160, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rsc_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rsc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ctxfi/ctresource.c", i32 166, i32 3}
!10 = !{ptr @rsc_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rsc_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ctxfi/ctresource.c", i32 188, i32 4}
!14 = !{ptr @rsc_uninit._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rsc_uninit._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ctxfi/ctresource.c", i32 231, i32 3}
!18 = !{ptr @rsc_mgr_init._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rsc_mgr_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ctxfi/ctresource.c", i32 238, i32 3}
!22 = !{ptr @rsc_mgr_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rsc_mgr_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ctxfi/ctresource.c", i32 276, i32 4}
!26 = !{ptr @rsc_mgr_uninit._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rsc_mgr_uninit._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @rsc_generic_ops, !29, !"rsc_generic_ops", i1 false, i1 false}
!29 = !{!"../sound/pci/ctxfi/ctresource.c", i32 125, i32 29}
!30 = !{ptr @offset_in_audio_slot_block, !31, !"offset_in_audio_slot_block", i1 false, i1 false}
!31 = !{!"../sound/pci/ctxfi/ctresource.c", i32 95, i32 28}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
