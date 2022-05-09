; ModuleID = '/llk/IR_all_yes/sound/usb/power.c_pt.bc'
source_filename = "../sound/usb/power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac3_power_domain_descriptor = type <{ i8, i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.snd_usb_power_domain = type { i32, i32, i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@snd_usb_power_domain_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't get UAC3 power state for id %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_usb_power_domain_set\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/usb/power.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_power_domain_set._entry_ptr = internal global ptr @snd_usb_power_domain_set._entry, section ".printk_index", align 4
@snd_usb_power_domain_set.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UAC3 power domain id %d already in state %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_usb_power_domain_set._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't set UAC3 power state to %d for id %d\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_usb_power_domain_set._entry_ptr.9 = internal global ptr @snd_usb_power_domain_set._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_usb_power_domain_set.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UAC3 power domain id %d change to state %d\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 68, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 74, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 84, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [21 x i8] c"../sound/usb/power.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 102, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @snd_usb_power_domain_set._entry, ptr @snd_usb_power_domain_set._entry.7, ptr @snd_usb_power_domain_set._entry_ptr, ptr @snd_usb_power_domain_set._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_power_domain_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_power_domain_set._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_power_domain(ptr nocapture noundef readonly %ctrl_iface, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup17_crit_edge, label %while.cond.preheader

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

while.cond.preheader:                             ; preds = %entry
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %ctrl_iface, i32 0, i32 2
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %ctrl_iface, i32 0, i32 1
  %1 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %extra, align 4
  %3 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extralen, align 4
  %call138 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %2, i32 noundef %4, ptr noundef null, i8 noundef zeroext 16) #6
  %cmp.not39 = icmp eq ptr %call138, null
  br i1 %cmp.not39, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call140 = phi ptr [ %call1, %cleanup.while.body_crit_edge ], [ %call138, %while.cond.preheader.while.body_crit_edge ]
  %call2 = tail call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %call140, i32 noundef 48) #6
  br i1 %call2, label %for.cond.preheader, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %while.body
  %bNrEntities = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %call140, i32 0, i32 6
  %5 = ptrtoint ptr %bNrEntities to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNrEntities, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp536.not = icmp eq i8 %6, 0
  br i1 %cmp536.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uac3_power_domain_descriptor, ptr %call140, i32 0, i32 7, i32 %i.037
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %id)
  %cmp9 = icmp eq i8 %8, %id
  br i1 %cmp9, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %bPowerDomainID = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %call140, i32 0, i32 3
  %9 = ptrtoint ptr %bPowerDomainID to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bPowerDomainID, align 1
  %conv12 = zext i8 %10 to i32
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv12, ptr %call7.i.i, align 8
  %waRecoveryTime1 = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %call140, i32 0, i32 4
  %12 = ptrtoint ptr %waRecoveryTime1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %waRecoveryTime1, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv13 = zext i16 %14 to i32
  %pd_d1d0_rec = getelementptr inbounds %struct.snd_usb_power_domain, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %pd_d1d0_rec to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv13, ptr %pd_d1d0_rec, align 4
  %waRecoveryTime2 = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %call140, i32 0, i32 5
  %16 = ptrtoint ptr %waRecoveryTime2 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %waRecoveryTime2, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv14 = zext i16 %18 to i32
  %pd_d2d0_rec = getelementptr inbounds %struct.snd_usb_power_domain, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %pd_d2d0_rec to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv14, ptr %pd_d2d0_rec, align 8
  br label %cleanup17

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %20 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extra, align 4
  %22 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extralen, align 4
  %call1 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %21, i32 noundef %23, ptr noundef %call140, i8 noundef zeroext 16) #6
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup17

cleanup17:                                        ; preds = %while.end, %cleanup.thread, %entry.cleanup17_crit_edge
  %retval.2 = phi ptr [ null, %while.end ], [ null, %entry.cleanup17_crit_edge ], [ %call7.i.i, %cleanup.thread ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_validate_audio_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_power_domain_set(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pd, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  %state.addr = alloca i8, align 1
  %current_state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %state, ptr %state.addr, align 1
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %current_state) #6
  %3 = ptrtoint ptr %current_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %current_state, align 1, !annotation !28
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  %4 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pd, align 4
  %shl = shl i32 %9, 8
  %or = or i32 %shl, %conv.i
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 8
  %shl.i = shl i32 %11, 8
  %or6 = or i32 %shl.i, -2147483520
  %conv = trunc i32 %or to i16
  %call7 = call i32 @snd_usb_ctl_msg(ptr noundef %2, i32 noundef %or6, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %conv, ptr noundef nonnull %current_state, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %12 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str, i32 noundef %13) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %current_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %current_state, align 1
  %16 = ptrtoint ptr %state.addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %state.addr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp13 = icmp eq i8 %15, %17
  br i1 %cmp13, label %do.body16, label %if.end27

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_power_domain_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_power_domain_set, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !29

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %18 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pd, align 4
  %20 = ptrtoint ptr %state.addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state.addr, align 1
  %conv23 = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_power_domain_set.__UNIQUE_ID_ddebug232, ptr noundef %dev21, ptr noundef nonnull @.str.6, i32 noundef %19, i32 noundef %conv23) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i128 = shl i32 %25, 8
  %or31 = or i32 %shl.i128, -2147483648
  %call33 = call i32 @snd_usb_ctl_msg(ptr noundef %23, i32 noundef %or31, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext %conv, ptr noundef nonnull %state.addr, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %dev40 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %26 = ptrtoint ptr %state.addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %state.addr, align 1
  %conv41 = zext i8 %27 to i32
  %28 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.8, i32 noundef %conv41, i32 noundef %29) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end27
  %30 = ptrtoint ptr %state.addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %state.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp45 = icmp eq i8 %31, 0
  br i1 %cmp45, label %if.then47, label %if.end43.do.body79_crit_edge

if.end43.do.body79_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

if.then47:                                        ; preds = %if.end43
  %32 = ptrtoint ptr %current_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %current_state, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %33, label %if.then47.cleanup_crit_edge [
    i8 2, label %cond.false57
    i8 1, label %cond.false74
  ]

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false57:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %pd_d2d0_rec = getelementptr inbounds %struct.snd_usb_power_domain, ptr %pd, i32 0, i32 2
  br label %do.body79.sink.split

cond.false74:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %pd_d1d0_rec = getelementptr inbounds %struct.snd_usb_power_domain, ptr %pd, i32 0, i32 1
  br label %do.body79.sink.split

do.body79.sink.split:                             ; preds = %cond.false74, %cond.false57
  %pd_d1d0_rec.sink = phi ptr [ %pd_d1d0_rec, %cond.false74 ], [ %pd_d2d0_rec, %cond.false57 ]
  %35 = ptrtoint ptr %pd_d1d0_rec.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pd_d1d0_rec.sink, align 4
  %mul62 = mul i32 %36, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %37(i32 noundef %mul62) #6
  br label %do.body79

do.body79:                                        ; preds = %do.body79.sink.split, %if.end43.do.body79_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_power_domain_set.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_power_domain_set, %if.then91)) #6
          to label %cleanup [label %if.then91], !srcloc !29

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  %dev92 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %38 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pd, align 4
  %40 = ptrtoint ptr %state.addr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %state.addr, align 1
  %conv94 = zext i8 %41 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_power_domain_set.__UNIQUE_ID_ddebug233, ptr noundef %dev92, ptr noundef nonnull @.str.10, i32 noundef %39, i32 noundef %conv94) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %do.body79, %if.then47.cleanup_crit_edge, %do.end39, %if.then20, %do.body16, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call33, %do.end39 ], [ 0, %if.then20 ], [ -22, %if.then47.cleanup_crit_edge ], [ 0, %if.then91 ], [ 0, %do.body16 ], [ 0, %do.body79 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_state) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/power.c", i32 68, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_usb_power_domain_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_usb_power_domain_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/power.c", i32 74, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_usb_power_domain_set.__UNIQUE_ID_ddebug232, !9, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/power.c", i32 84, i32 3}
!14 = !{ptr @snd_usb_power_domain_set._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @snd_usb_power_domain_set._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/power.c", i32 102, i32 2}
!18 = !{ptr @snd_usb_power_domain_set.__UNIQUE_ID_ddebug233, !17, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 2148201859, i64 2148201864, i64 2148201877, i64 2148201921, i64 2148201955, i64 2148201976}
