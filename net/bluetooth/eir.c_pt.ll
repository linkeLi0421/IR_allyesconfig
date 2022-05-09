; ModuleID = '/llk/IR_all_yes/net/bluetooth/eir.c_pt.bc'
source_filename = "../net/bluetooth/eir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @eir_append_local_name(ptr nocapture noundef readonly %hdev, ptr nocapture noundef writeonly %ptr, i8 noundef zeroext %ad_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %ad_len)
  %cmp = icmp ugt i8 %ad_len, 18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13
  %call = tail call i32 @strlen(ptr noundef %dev_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %1 = icmp ult i32 %0, 10
  br i1 %1, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = zext i8 %ad_len to i16
  %2 = trunc i32 %call to i8
  %conv8 = add nuw nsw i8 %2, 1
  %conv.i = zext i8 %conv8 to i32
  %add.i = add nuw nsw i8 %2, 2
  %inc.i = add nuw nsw i16 %conv5, 1
  %idxprom.i = zext i8 %ad_len to i32
  %arrayidx.i = getelementptr i8, ptr %ptr, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %add.i, ptr %arrayidx.i, align 1
  %inc2.i = add nuw nsw i16 %conv5, 2
  %idxprom3.i = zext i16 %inc.i to i32
  %arrayidx4.i = getelementptr i8, ptr %ptr, i32 %idxprom3.i
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %arrayidx4.i, align 1
  %idxprom5.i = zext i16 %inc2.i to i32
  %arrayidx6.i = getelementptr i8, ptr %ptr, i32 %idxprom5.i
  %5 = call ptr @memcpy(ptr %arrayidx6.i, ptr %dev_name, i32 %conv.i)
  %6 = trunc i16 %inc2.i to i8
  %conv10 = add nuw nsw i8 %conv8, %6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %short_name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 14
  %call13 = tail call i32 @strlen(ptr noundef %short_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end23, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = zext i8 %ad_len to i16
  %7 = trunc i32 %call13 to i8
  %conv20 = add i8 %7, 1
  %conv.i50 = zext i8 %conv20 to i32
  %add.i51 = add i8 %7, 2
  %inc.i52 = add nuw nsw i16 %conv16, 1
  %idxprom.i53 = zext i8 %ad_len to i32
  %arrayidx.i54 = getelementptr i8, ptr %ptr, i32 %idxprom.i53
  %8 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %add.i51, ptr %arrayidx.i54, align 1
  %inc2.i55 = add nuw nsw i16 %conv16, 2
  %idxprom3.i56 = zext i16 %inc.i52 to i32
  %arrayidx4.i57 = getelementptr i8, ptr %ptr, i32 %idxprom3.i56
  %9 = ptrtoint ptr %arrayidx4.i57 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %arrayidx4.i57, align 1
  %idxprom5.i58 = zext i16 %inc2.i55 to i32
  %arrayidx6.i59 = getelementptr i8, ptr %ptr, i32 %idxprom5.i58
  %10 = call ptr @memcpy(ptr %arrayidx6.i59, ptr %short_name, i32 %conv.i50)
  %11 = trunc i16 %inc2.i55 to i8
  %conv22 = add i8 %conv20, %11
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  br i1 %tobool.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev_name to i32
  call void @__asan_load1_noabort(i32 %12)
  %name.sroa.0.0.copyload70 = load i8, ptr %dev_name, align 1
  %name.sroa.5.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %name.sroa.5.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %name.sroa.5.0.copyload71 = load i8, ptr %name.sroa.5.0.dev_name.sroa_idx, align 1
  %name.sroa.6.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %name.sroa.6.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %name.sroa.6.0.copyload72 = load i8, ptr %name.sroa.6.0.dev_name.sroa_idx, align 1
  %name.sroa.7.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 3
  %15 = ptrtoint ptr %name.sroa.7.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %name.sroa.7.0.copyload73 = load i8, ptr %name.sroa.7.0.dev_name.sroa_idx, align 1
  %name.sroa.8.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 4
  %16 = ptrtoint ptr %name.sroa.8.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %name.sroa.8.0.copyload74 = load i8, ptr %name.sroa.8.0.dev_name.sroa_idx, align 1
  %name.sroa.9.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %name.sroa.9.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %name.sroa.9.0.copyload75 = load i8, ptr %name.sroa.9.0.dev_name.sroa_idx, align 1
  %name.sroa.10.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 6
  %18 = ptrtoint ptr %name.sroa.10.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %name.sroa.10.0.copyload76 = load i8, ptr %name.sroa.10.0.dev_name.sroa_idx, align 1
  %name.sroa.11.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 7
  %19 = ptrtoint ptr %name.sroa.11.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %name.sroa.11.0.copyload77 = load i8, ptr %name.sroa.11.0.dev_name.sroa_idx, align 1
  %name.sroa.12.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 8
  %20 = ptrtoint ptr %name.sroa.12.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %name.sroa.12.0.copyload78 = load i8, ptr %name.sroa.12.0.dev_name.sroa_idx, align 1
  %name.sroa.13.0.dev_name.sroa_idx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %name.sroa.13.0.dev_name.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %name.sroa.13.0.copyload79 = load i8, ptr %name.sroa.13.0.dev_name.sroa_idx, align 1
  %conv29 = zext i8 %ad_len to i16
  %inc.i61 = add nuw nsw i16 %conv29, 1
  %idxprom.i62 = zext i8 %ad_len to i32
  %arrayidx.i63 = getelementptr i8, ptr %ptr, i32 %idxprom.i62
  %22 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 12, ptr %arrayidx.i63, align 1
  %inc2.i64 = add nuw nsw i16 %conv29, 2
  %idxprom3.i65 = zext i16 %inc.i61 to i32
  %arrayidx4.i66 = getelementptr i8, ptr %ptr, i32 %idxprom3.i65
  %23 = ptrtoint ptr %arrayidx4.i66 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %arrayidx4.i66, align 1
  %idxprom5.i67 = zext i16 %inc2.i64 to i32
  %arrayidx6.i68 = getelementptr i8, ptr %ptr, i32 %idxprom5.i67
  %24 = ptrtoint ptr %arrayidx6.i68 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %name.sroa.0.0.copyload70, ptr %arrayidx6.i68, align 1
  %name.sroa.5.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 1
  %25 = ptrtoint ptr %name.sroa.5.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %name.sroa.5.0.copyload71, ptr %name.sroa.5.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.6.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 2
  %26 = ptrtoint ptr %name.sroa.6.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %name.sroa.6.0.copyload72, ptr %name.sroa.6.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.7.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 3
  %27 = ptrtoint ptr %name.sroa.7.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %name.sroa.7.0.copyload73, ptr %name.sroa.7.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.8.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 4
  %28 = ptrtoint ptr %name.sroa.8.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %name.sroa.8.0.copyload74, ptr %name.sroa.8.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.9.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 5
  %29 = ptrtoint ptr %name.sroa.9.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %name.sroa.9.0.copyload75, ptr %name.sroa.9.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.10.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 6
  %30 = ptrtoint ptr %name.sroa.10.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %name.sroa.10.0.copyload76, ptr %name.sroa.10.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.11.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 7
  %31 = ptrtoint ptr %name.sroa.11.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %name.sroa.11.0.copyload77, ptr %name.sroa.11.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.12.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 8
  %32 = ptrtoint ptr %name.sroa.12.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %name.sroa.12.0.copyload78, ptr %name.sroa.12.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.13.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 9
  %33 = ptrtoint ptr %name.sroa.13.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %name.sroa.13.0.copyload79, ptr %name.sroa.13.0.arrayidx6.i68.sroa_idx, align 1
  %name.sroa.14.0.arrayidx6.i68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6.i68, i32 10
  %34 = ptrtoint ptr %name.sroa.14.0.arrayidx6.i68.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %name.sroa.14.0.arrayidx6.i68.sroa_idx, align 1
  %conv11.i69 = add nuw nsw i8 %ad_len, 13
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.then15, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv10, %if.then4 ], [ %conv22, %if.then15 ], [ %conv11.i69, %if.then25 ], [ %ad_len, %entry.cleanup_crit_edge ], [ %ad_len, %if.end23.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @eir_append_appearance(ptr nocapture noundef readonly %hdev, ptr nocapture noundef writeonly %ptr, i8 noundef zeroext %ad_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ad_len to i16
  %appearance = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 16
  %0 = ptrtoint ptr %appearance to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %appearance, align 2
  %inc.i = add nuw nsw i16 %conv, 1
  %idxprom.i = zext i8 %ad_len to i32
  %arrayidx.i = getelementptr i8, ptr %ptr, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %arrayidx.i, align 1
  %inc1.i = add nuw nsw i16 %conv, 2
  %idxprom2.i = zext i16 %inc.i to i32
  %arrayidx3.i = getelementptr i8, ptr %ptr, i32 %idxprom2.i
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 25, ptr %arrayidx3.i, align 1
  %idxprom4.i = zext i16 %inc1.i to i32
  %arrayidx5.i = getelementptr i8, ptr %ptr, i32 %idxprom4.i
  %4 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %arrayidx5.i, align 1
  %add.i = add i8 %ad_len, 4
  ret i8 %add.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eir_create(ptr noundef readonly %hdev, ptr noundef %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 13
  %call = tail call i32 @strlen(ptr noundef %dev_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call)
  %cmp1 = icmp ugt i32 %call, 48
  %spec.select = select i1 %cmp1, i8 8, i8 9
  %0 = call i32 @llvm.umin.i32(i32 %call, i32 48)
  %1 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %spec.select, ptr %1, align 1
  %3 = trunc i32 %0 to i8
  %conv = add nuw nsw i8 %3, 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %data, align 1
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %dev_name, i32 %0)
  %add7 = add nuw nsw i32 %0, 2
  %add.ptr8 = getelementptr i8, ptr %data, i32 %add7
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %ptr.0 = phi ptr [ %add.ptr8, %if.then ], [ %data, %entry.if.end9_crit_edge ]
  %inq_tx_power = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 38
  %6 = ptrtoint ptr %inq_tx_power to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %inq_tx_power, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %7)
  %cmp11.not = icmp eq i8 %7, 127
  br i1 %cmp11.not, label %if.end9.if.end19_crit_edge, label %if.then13

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %ptr.0, align 1
  %arrayidx15 = getelementptr i8, ptr %ptr.0, i32 1
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %arrayidx15, align 1
  %10 = ptrtoint ptr %inq_tx_power to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %inq_tx_power, align 1
  %arrayidx17 = getelementptr i8, ptr %ptr.0, i32 2
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx17, align 1
  %add.ptr18 = getelementptr i8, ptr %ptr.0, i32 3
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end9.if.end19_crit_edge
  %ptr.1 = phi ptr [ %add.ptr18, %if.then13 ], [ %ptr.0, %if.end9.if.end19_crit_edge ]
  %devid_source = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 82
  %13 = ptrtoint ptr %devid_source to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %devid_source, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp21.not = icmp eq i16 %14, 0
  br i1 %cmp21.not, label %if.end19.if.end32_crit_edge, label %if.then23

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %ptr.1, align 1
  %arrayidx25 = getelementptr i8, ptr %ptr.1, i32 1
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %arrayidx25, align 1
  %17 = ptrtoint ptr %devid_source to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %devid_source, align 2
  %add.ptr27 = getelementptr i8, ptr %ptr.1, i32 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #7
  %20 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %add.ptr27, align 1
  %devid_vendor = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 83
  %21 = ptrtoint ptr %devid_vendor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %devid_vendor, align 8
  %add.ptr28 = getelementptr i8, ptr %ptr.1, i32 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %24 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %add.ptr28, align 1
  %devid_product = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 84
  %25 = ptrtoint ptr %devid_product to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %devid_product, align 2
  %add.ptr29 = getelementptr i8, ptr %ptr.1, i32 6
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  %28 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %add.ptr29, align 1
  %devid_version = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 85
  %29 = ptrtoint ptr %devid_version to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %devid_version, align 4
  %add.ptr30 = getelementptr i8, ptr %ptr.1, i32 8
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  %32 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %add.ptr30, align 1
  %add.ptr31 = getelementptr i8, ptr %ptr.1, i32 10
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.end19.if.end32_crit_edge
  %ptr.2 = phi ptr [ %add.ptr31, %if.then23 ], [ %ptr.1, %if.end19.if.end32_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %ptr.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp.i = icmp slt i32 %sub, 4
  br i1 %cmp.i, label %if.end32.create_uuid16_list.exit_crit_edge, label %if.end.i

if.end32.create_uuid16_list.exit_crit_edge:       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_uuid16_list.exit

if.end.i:                                         ; preds = %if.end32
  %uuids.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 187
  %33 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %uuid.071.i = load ptr, ptr %uuids.i, align 4
  %cmp2.not72.i = icmp eq ptr %uuid.071.i, %uuids.i
  br i1 %cmp2.not72.i, label %if.end.i.create_uuid16_list.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.create_uuid16_list.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_uuid16_list.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %sub.ptr.sub.i = sub i32 2, %sub.ptr.lhs.cast
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %uuid.075.i = phi ptr [ %uuid.071.i, %for.body.lr.ph.i ], [ %uuid.0.i, %cleanup.i.for.body.i_crit_edge ]
  %ptr.074.i = phi ptr [ %ptr.2, %for.body.lr.ph.i ], [ %ptr.2.i, %cleanup.i.for.body.i_crit_edge ]
  %uuids_start.073.i = phi ptr [ null, %for.body.lr.ph.i ], [ %uuids_start.2.i, %cleanup.i.for.body.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.bt_uuid, ptr %uuid.075.i, i32 0, i32 2
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %35)
  %cmp3.not.i = icmp eq i8 %35, 16
  br i1 %cmp3.not.i, label %if.end6.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end6.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.bt_uuid, ptr %uuid.075.i, i32 0, i32 1, i32 12
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %38)
  %cmp9.i = icmp ult i16 %38, 4352
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %37)
  %cmp14.i = icmp eq i16 %37, 18
  %or.cond.i = or i1 %cmp14.i, %cmp9.i
  br i1 %or.cond.i, label %if.end6.i.cleanup.i_crit_edge, label %if.end17.i

if.end6.i.cleanup.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end17.i:                                       ; preds = %if.end6.i
  %tobool.not.i = icmp eq ptr %uuids_start.073.i, null
  br i1 %tobool.not.i, label %if.then18.i, label %if.end17.i.if.end22.i_crit_edge

if.end17.i.if.end22.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %ptr.074.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %ptr.074.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %ptr.074.i, i32 1
  %40 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %arrayidx20.i, align 1
  %add.ptr21.i = getelementptr i8, ptr %ptr.074.i, i32 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end17.i.if.end22.i_crit_edge
  %uuids_start.1.i = phi ptr [ %uuids_start.073.i, %if.end17.i.if.end22.i_crit_edge ], [ %ptr.074.i, %if.then18.i ]
  %ptr.1.i = phi ptr [ %ptr.074.i, %if.end17.i.if.end22.i_crit_edge ], [ %add.ptr21.i, %if.then18.i ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ptr.1.i to i32
  %add.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp23.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp23.i, label %cleanup.thread.i, label %if.end27.i

cleanup.thread.i:                                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i.le = ptrtoint ptr %ptr.1.i to i32
  %arrayidx26.i = getelementptr i8, ptr %uuids_start.1.i, i32 1
  %41 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %arrayidx26.i, align 1
  br label %create_uuid16_list.exit

if.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv29.i = trunc i16 %38 to i8
  %incdec.ptr.i = getelementptr i8, ptr %ptr.1.i, i32 1
  %42 = ptrtoint ptr %ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv29.i, ptr %ptr.1.i, align 1
  %43 = lshr i16 %38, 8
  %conv32.i = trunc i16 %43 to i8
  %incdec.ptr33.i = getelementptr i8, ptr %ptr.1.i, i32 2
  %44 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv32.i, ptr %incdec.ptr.i, align 1
  %45 = ptrtoint ptr %uuids_start.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %uuids_start.1.i, align 1
  %add36.i = add i8 %46, 2
  store i8 %add36.i, ptr %uuids_start.1.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end27.i, %if.end6.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %uuids_start.2.i = phi ptr [ %uuids_start.1.i, %if.end27.i ], [ %uuids_start.073.i, %for.body.i.cleanup.i_crit_edge ], [ %uuids_start.073.i, %if.end6.i.cleanup.i_crit_edge ]
  %ptr.2.i = phi ptr [ %incdec.ptr33.i, %if.end27.i ], [ %ptr.074.i, %for.body.i.cleanup.i_crit_edge ], [ %ptr.074.i, %if.end6.i.cleanup.i_crit_edge ]
  %47 = ptrtoint ptr %uuid.075.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %uuid.0.i = load ptr, ptr %uuid.075.i, align 4
  %cmp2.not.i = icmp eq ptr %uuid.0.i, %uuids.i
  br i1 %cmp2.not.i, label %create_uuid16_list.exit.loopexit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

create_uuid16_list.exit.loopexit:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = ptrtoint ptr %ptr.2.i to i32
  br label %create_uuid16_list.exit

create_uuid16_list.exit:                          ; preds = %create_uuid16_list.exit.loopexit, %cleanup.thread.i, %if.end.i.create_uuid16_list.exit_crit_edge, %if.end32.create_uuid16_list.exit_crit_edge
  %sub.ptr.lhs.cast34.pre-phi = phi i32 [ %.pre, %create_uuid16_list.exit.loopexit ], [ %sub.ptr.lhs.cast, %if.end32.create_uuid16_list.exit_crit_edge ], [ %sub.ptr.lhs.cast, %if.end.i.create_uuid16_list.exit_crit_edge ], [ %sub.ptr.lhs.cast.i.le, %cleanup.thread.i ]
  %retval.0.i = phi ptr [ %ptr.2.i, %create_uuid16_list.exit.loopexit ], [ %ptr.2, %if.end32.create_uuid16_list.exit_crit_edge ], [ %ptr.2, %if.end.i.create_uuid16_list.exit_crit_edge ], [ %ptr.1.i, %cleanup.thread.i ]
  %sub.ptr.sub36.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast34.pre-phi
  %sub37 = add i32 %sub.ptr.sub36.neg, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub37)
  %cmp.i83 = icmp slt i32 %sub37, 6
  br i1 %cmp.i83, label %create_uuid16_list.exit.create_uuid32_list.exit_crit_edge, label %if.end.i85

create_uuid16_list.exit.create_uuid32_list.exit_crit_edge: ; preds = %create_uuid16_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_uuid32_list.exit

if.end.i85:                                       ; preds = %create_uuid16_list.exit
  %uuids.i84 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 187
  %48 = ptrtoint ptr %uuids.i84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %uuid.047.i = load ptr, ptr %uuids.i84, align 4
  %cmp2.not48.i = icmp eq ptr %uuid.047.i, %uuids.i84
  br i1 %cmp2.not48.i, label %if.end.i85.create_uuid32_list.exit_crit_edge, label %for.body.lr.ph.i88

if.end.i85.create_uuid32_list.exit_crit_edge:     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_uuid32_list.exit

for.body.lr.ph.i88:                               ; preds = %if.end.i85
  %sub.ptr.sub.i87 = sub i32 4, %sub.ptr.lhs.cast34.pre-phi
  br label %for.body.i91

for.body.i91:                                     ; preds = %for.inc.i.for.body.i91_crit_edge, %for.body.lr.ph.i88
  %uuid.051.i = phi ptr [ %uuid.047.i, %for.body.lr.ph.i88 ], [ %uuid.0.i100, %for.inc.i.for.body.i91_crit_edge ]
  %ptr.050.i = phi ptr [ %retval.0.i, %for.body.lr.ph.i88 ], [ %ptr.2.i99, %for.inc.i.for.body.i91_crit_edge ]
  %uuids_start.049.i = phi ptr [ null, %for.body.lr.ph.i88 ], [ %uuids_start.2.i98, %for.inc.i.for.body.i91_crit_edge ]
  %size.i89 = getelementptr inbounds %struct.bt_uuid, ptr %uuid.051.i, i32 0, i32 2
  %49 = ptrtoint ptr %size.i89 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %size.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %50)
  %cmp3.not.i90 = icmp eq i8 %50, 32
  br i1 %cmp3.not.i90, label %if.end6.i93, label %for.body.i91.for.inc.i_crit_edge

for.body.i91.for.inc.i_crit_edge:                 ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end6.i93:                                      ; preds = %for.body.i91
  %tobool.not.i92 = icmp eq ptr %uuids_start.049.i, null
  br i1 %tobool.not.i92, label %if.then7.i, label %if.end6.i93.if.end10.i_crit_edge

if.end6.i93.if.end10.i_crit_edge:                 ; preds = %if.end6.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end6.i93
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %ptr.050.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %ptr.050.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %ptr.050.i, i32 1
  %52 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 5, ptr %arrayidx8.i, align 1
  %add.ptr9.i = getelementptr i8, ptr %ptr.050.i, i32 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end6.i93.if.end10.i_crit_edge
  %uuids_start.1.i94 = phi ptr [ %uuids_start.049.i, %if.end6.i93.if.end10.i_crit_edge ], [ %ptr.050.i, %if.then7.i ]
  %ptr.1.i95 = phi ptr [ %ptr.050.i, %if.end6.i93.if.end10.i_crit_edge ], [ %add.ptr9.i, %if.then7.i ]
  %sub.ptr.lhs.cast.i96 = ptrtoint ptr %ptr.1.i95 to i32
  %add.i97 = add i32 %sub.ptr.sub.i87, %sub.ptr.lhs.cast.i96
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i97, i32 %sub37)
  %cmp11.i = icmp ugt i32 %add.i97, %sub37
  br i1 %cmp11.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast.i96.le = ptrtoint ptr %ptr.1.i95 to i32
  %arrayidx14.i = getelementptr i8, ptr %uuids_start.1.i94, i32 1
  %53 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 4, ptr %arrayidx14.i, align 1
  br label %create_uuid32_list.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17.i = getelementptr %struct.bt_uuid, ptr %uuid.051.i, i32 0, i32 1, i32 12
  %54 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx17.i, align 4
  %56 = ptrtoint ptr %ptr.1.i95 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %ptr.1.i95, align 1
  %add.ptr18.i = getelementptr i8, ptr %ptr.1.i95, i32 4
  %57 = ptrtoint ptr %uuids_start.1.i94 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %uuids_start.1.i94, align 1
  %add21.i = add i8 %58, 4
  store i8 %add21.i, ptr %uuids_start.1.i94, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i, %for.body.i91.for.inc.i_crit_edge
  %uuids_start.2.i98 = phi ptr [ %uuids_start.049.i, %for.body.i91.for.inc.i_crit_edge ], [ %uuids_start.1.i94, %if.end15.i ]
  %ptr.2.i99 = phi ptr [ %ptr.050.i, %for.body.i91.for.inc.i_crit_edge ], [ %add.ptr18.i, %if.end15.i ]
  %59 = ptrtoint ptr %uuid.051.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %uuid.0.i100 = load ptr, ptr %uuid.051.i, align 4
  %cmp2.not.i101 = icmp eq ptr %uuid.0.i100, %uuids.i84
  br i1 %cmp2.not.i101, label %create_uuid32_list.exit.loopexit, label %for.inc.i.for.body.i91_crit_edge

for.inc.i.for.body.i91_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i91

create_uuid32_list.exit.loopexit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre133 = ptrtoint ptr %ptr.2.i99 to i32
  br label %create_uuid32_list.exit

create_uuid32_list.exit:                          ; preds = %create_uuid32_list.exit.loopexit, %if.then13.i, %if.end.i85.create_uuid32_list.exit_crit_edge, %create_uuid16_list.exit.create_uuid32_list.exit_crit_edge
  %sub.ptr.lhs.cast39.pre-phi = phi i32 [ %.pre133, %create_uuid32_list.exit.loopexit ], [ %sub.ptr.lhs.cast34.pre-phi, %create_uuid16_list.exit.create_uuid32_list.exit_crit_edge ], [ %sub.ptr.lhs.cast34.pre-phi, %if.end.i85.create_uuid32_list.exit_crit_edge ], [ %sub.ptr.lhs.cast.i96.le, %if.then13.i ]
  %retval.0.i102 = phi ptr [ %ptr.2.i99, %create_uuid32_list.exit.loopexit ], [ %retval.0.i, %create_uuid16_list.exit.create_uuid32_list.exit_crit_edge ], [ %retval.0.i, %if.end.i85.create_uuid32_list.exit_crit_edge ], [ %ptr.1.i95, %if.then13.i ]
  %sub.ptr.sub41.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast39.pre-phi
  %sub42 = add i32 %sub.ptr.sub41.neg, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub42)
  %cmp.i104 = icmp slt i32 %sub42, 18
  br i1 %cmp.i104, label %create_uuid32_list.exit.create_uuid128_list.exit_crit_edge, label %if.end.i106

create_uuid32_list.exit.create_uuid128_list.exit_crit_edge: ; preds = %create_uuid32_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_uuid128_list.exit

if.end.i106:                                      ; preds = %create_uuid32_list.exit
  %uuids.i105 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 187
  %60 = ptrtoint ptr %uuids.i105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %uuid.01.i = load ptr, ptr %uuids.i105, align 4
  %cmp2.not2.i = icmp eq ptr %uuid.01.i, %uuids.i105
  br i1 %cmp2.not2.i, label %if.end.i106.create_uuid128_list.exit_crit_edge, label %for.body.lr.ph.i109

if.end.i106.create_uuid128_list.exit_crit_edge:   ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_uuid128_list.exit

for.body.lr.ph.i109:                              ; preds = %if.end.i106
  %sub.ptr.sub.i108 = sub i32 16, %sub.ptr.lhs.cast39.pre-phi
  br label %for.body.i112

for.body.i112:                                    ; preds = %for.inc.i131.for.body.i112_crit_edge, %for.body.lr.ph.i109
  %uuid.05.i = phi ptr [ %uuid.01.i, %for.body.lr.ph.i109 ], [ %uuid.0.i129, %for.inc.i131.for.body.i112_crit_edge ]
  %ptr.04.i = phi ptr [ %retval.0.i102, %for.body.lr.ph.i109 ], [ %ptr.2.i128, %for.inc.i131.for.body.i112_crit_edge ]
  %uuids_start.03.i = phi ptr [ null, %for.body.lr.ph.i109 ], [ %uuids_start.2.i127, %for.inc.i131.for.body.i112_crit_edge ]
  %size.i110 = getelementptr inbounds %struct.bt_uuid, ptr %uuid.05.i, i32 0, i32 2
  %61 = ptrtoint ptr %size.i110 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %size.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %62)
  %cmp3.not.i111 = icmp eq i8 %62, -128
  br i1 %cmp3.not.i111, label %if.end6.i114, label %for.body.i112.for.inc.i131_crit_edge

for.body.i112.for.inc.i131_crit_edge:             ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i131

if.end6.i114:                                     ; preds = %for.body.i112
  %tobool.not.i113 = icmp eq ptr %uuids_start.03.i, null
  br i1 %tobool.not.i113, label %if.then7.i117, label %if.end6.i114.if.end10.i123_crit_edge

if.end6.i114.if.end10.i123_crit_edge:             ; preds = %if.end6.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i123

if.then7.i117:                                    ; preds = %if.end6.i114
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %ptr.04.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %ptr.04.i, align 1
  %arrayidx8.i115 = getelementptr i8, ptr %ptr.04.i, i32 1
  %64 = ptrtoint ptr %arrayidx8.i115 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 7, ptr %arrayidx8.i115, align 1
  %add.ptr9.i116 = getelementptr i8, ptr %ptr.04.i, i32 2
  br label %if.end10.i123

if.end10.i123:                                    ; preds = %if.then7.i117, %if.end6.i114.if.end10.i123_crit_edge
  %uuids_start.1.i118 = phi ptr [ %uuids_start.03.i, %if.end6.i114.if.end10.i123_crit_edge ], [ %ptr.04.i, %if.then7.i117 ]
  %ptr.1.i119 = phi ptr [ %ptr.04.i, %if.end6.i114.if.end10.i123_crit_edge ], [ %add.ptr9.i116, %if.then7.i117 ]
  %sub.ptr.lhs.cast.i120 = ptrtoint ptr %ptr.1.i119 to i32
  %add.i121 = add i32 %sub.ptr.sub.i108, %sub.ptr.lhs.cast.i120
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i121, i32 %sub42)
  %cmp11.i122 = icmp sgt i32 %add.i121, %sub42
  br i1 %cmp11.i122, label %if.then13.i125, label %if.end15.i126

if.then13.i125:                                   ; preds = %if.end10.i123
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i124 = getelementptr i8, ptr %uuids_start.1.i118, i32 1
  %65 = ptrtoint ptr %arrayidx14.i124 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 6, ptr %arrayidx14.i124, align 1
  br label %create_uuid128_list.exit

if.end15.i126:                                    ; preds = %if.end10.i123
  call void @__sanitizer_cov_trace_pc() #9
  %uuid16.i = getelementptr inbounds %struct.bt_uuid, ptr %uuid.05.i, i32 0, i32 1
  %66 = call ptr @memcpy(ptr %ptr.1.i119, ptr %uuid16.i, i32 16)
  %add.ptr17.i = getelementptr i8, ptr %ptr.1.i119, i32 16
  %67 = ptrtoint ptr %uuids_start.1.i118 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %uuids_start.1.i118, align 1
  %add20.i = add i8 %68, 16
  store i8 %add20.i, ptr %uuids_start.1.i118, align 1
  br label %for.inc.i131

for.inc.i131:                                     ; preds = %if.end15.i126, %for.body.i112.for.inc.i131_crit_edge
  %uuids_start.2.i127 = phi ptr [ %uuids_start.03.i, %for.body.i112.for.inc.i131_crit_edge ], [ %uuids_start.1.i118, %if.end15.i126 ]
  %ptr.2.i128 = phi ptr [ %ptr.04.i, %for.body.i112.for.inc.i131_crit_edge ], [ %add.ptr17.i, %if.end15.i126 ]
  %69 = ptrtoint ptr %uuid.05.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %uuid.0.i129 = load ptr, ptr %uuid.05.i, align 4
  %cmp2.not.i130 = icmp eq ptr %uuid.0.i129, %uuids.i105
  br i1 %cmp2.not.i130, label %for.inc.i131.create_uuid128_list.exit_crit_edge, label %for.inc.i131.for.body.i112_crit_edge

for.inc.i131.for.body.i112_crit_edge:             ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i112

for.inc.i131.create_uuid128_list.exit_crit_edge:  ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_uuid128_list.exit

create_uuid128_list.exit:                         ; preds = %for.inc.i131.create_uuid128_list.exit_crit_edge, %if.then13.i125, %if.end.i106.create_uuid128_list.exit_crit_edge, %create_uuid32_list.exit.create_uuid128_list.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @eir_create_adv_data(ptr noundef %hdev, i8 noundef zeroext %instance, ptr nocapture noundef writeonly %ptr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %tobool.not = icmp eq i8 %instance, 0
  br i1 %tobool.not, label %if.end3.thread, label %if.then

if.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4139 = tail call i32 @hci_adv_instance_flags(ptr noundef %hdev, i8 noundef zeroext 0) #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call ptr @hci_find_adv_instance(ptr noundef %hdev, i8 noundef zeroext %instance) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @hci_adv_instance_flags(ptr noundef %hdev, i8 noundef zeroext %instance) #7
  %adv_data_len = getelementptr inbounds %struct.adv_info, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %adv_data_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %adv_data_len, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.i = icmp ult i16 %1, 2
  br i1 %cmp.i, label %land.lhs.true.if.end9_crit_edge, label %while.body.preheader.i

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

while.body.preheader.i:                           ; preds = %land.lhs.true
  %adv_data = getelementptr inbounds %struct.adv_info, ptr %call, i32 0, i32 9
  %sub.i = add nsw i32 %conv, -1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %parsed.013.i = phi i32 [ %add7.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %eir.addr.012.i = phi ptr [ %add.ptr.i, %cleanup.i.while.body.i_crit_edge ], [ %adv_data, %while.body.preheader.i ]
  %2 = ptrtoint ptr %eir.addr.012.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eir.addr.012.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.i = icmp eq i8 %3, 0
  br i1 %cmp2.i, label %while.body.i.if.end9_crit_edge, label %if.end5.i

while.body.i.if.end9_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end5.i:                                        ; preds = %while.body.i
  %conv.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %add7.i = add i32 %add.i, %parsed.013.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %conv)
  %cmp8.i = icmp ugt i32 %add7.i, %conv
  br i1 %cmp8.i, label %if.end5.i.if.end9_crit_edge, label %if.end11.i

if.end5.i.if.end9_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end11.i:                                       ; preds = %if.end5.i
  %arrayidx12.i = getelementptr i8, ptr %eir.addr.012.i, i32 1
  %4 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp15.not.i = icmp eq i8 %5, 1
  br i1 %cmp15.not.i, label %cleanup.thread5.i, label %cleanup.i

cleanup.thread5.i:                                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp22.i = icmp eq i8 %3, 1
  %arrayidx30.i = getelementptr i8, ptr %eir.addr.012.i, i32 2
  %tobool7.not = icmp eq ptr %arrayidx30.i, null
  %or.cond165 = or i1 %cmp22.i, %tobool7.not
  br i1 %or.cond165, label %cleanup.thread5.i.if.end9_crit_edge, label %cleanup.thread5.i.if.then52_crit_edge

cleanup.thread5.i.if.then52_crit_edge:            ; preds = %cleanup.thread5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

cleanup.thread5.i.if.end9_crit_edge:              ; preds = %cleanup.thread5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cleanup.i:                                        ; preds = %if.end11.i
  %add.ptr.i = getelementptr i8, ptr %eir.addr.012.i, i32 %add.i
  %cmp1.i = icmp ult i32 %add7.i, %sub.i
  br i1 %cmp1.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end9_crit_edge

cleanup.i.if.end9_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end9:                                          ; preds = %cleanup.i.if.end9_crit_edge, %cleanup.thread5.i.if.end9_crit_edge, %if.end5.i.if.end9_crit_edge, %while.body.i.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end3.thread
  %call4145 = phi i32 [ %call4139, %if.end3.thread ], [ %call4, %land.lhs.true.if.end9_crit_edge ], [ %call4, %cleanup.thread5.i.if.end9_crit_edge ], [ %call4, %if.end5.i.if.end9_crit_edge ], [ %call4, %while.body.i.if.end9_crit_edge ], [ %call4, %cleanup.i.if.end9_crit_edge ]
  %adv.0142 = phi ptr [ null, %if.end3.thread ], [ %call, %land.lhs.true.if.end9_crit_edge ], [ %call, %cleanup.thread5.i.if.end9_crit_edge ], [ %call, %if.end5.i.if.end9_crit_edge ], [ %call, %while.body.i.if.end9_crit_edge ], [ %call, %cleanup.i.if.end9_crit_edge ]
  %6 = trunc i32 %call4145 to i8
  %7 = and i8 %6, 2
  %8 = lshr i8 %6, 2
  %9 = and i8 %8, 1
  %10 = or i8 %9, %7
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 206, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool24.not = icmp eq i32 %and1.i, 0
  %13 = or i8 %10, 4
  %flags.2 = select i1 %tobool24.not, i8 %13, i8 %10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flags.2)
  %tobool31.not = icmp eq i8 %flags.2, 0
  %and32 = and i32 %call4145, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond = select i1 %tobool31.not, i1 %tobool33.not, i1 false
  br i1 %or.cond, label %if.end9.skip_flags_crit_edge, label %if.then34

if.end9.skip_flags_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_flags

if.then34:                                        ; preds = %if.end9
  br i1 %tobool31.not, label %if.end42, label %if.then34.if.then44_crit_edge

if.then34.if.then44_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.end42:                                         ; preds = %if.then34
  %call37 = tail call zeroext i8 @mgmt_get_adv_discov_flags(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call37)
  %tobool43.not = icmp eq i8 %call37, 0
  br i1 %tobool43.not, label %if.end42.skip_flags_crit_edge, label %if.end42.if.then44_crit_edge

if.end42.if.then44_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.end42.skip_flags_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_flags

if.then44:                                        ; preds = %if.end42.if.then44_crit_edge, %if.then34.if.then44_crit_edge
  %flags.3152 = phi i8 [ %call37, %if.end42.if.then44_crit_edge ], [ %flags.2, %if.then34.if.then44_crit_edge ]
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %ptr, align 1
  %arrayidx45 = getelementptr i8, ptr %ptr, i32 1
  %15 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx45, align 1
  %arrayidx46 = getelementptr i8, ptr %ptr, i32 2
  %16 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %flags.3152, ptr %arrayidx46, align 1
  %add.ptr = getelementptr i8, ptr %ptr, i32 3
  br i1 %tobool.not, label %if.then44.if.end65_crit_edge, label %if.then44.if.then52_crit_edge

if.then44.if.then52_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

if.then44.if.end65_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

skip_flags:                                       ; preds = %if.end42.skip_flags_crit_edge, %if.end9.skip_flags_crit_edge
  br i1 %tobool.not, label %skip_flags.if.end65_crit_edge, label %skip_flags.if.then52_crit_edge

skip_flags.if.then52_crit_edge:                   ; preds = %skip_flags
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

skip_flags.if.end65_crit_edge:                    ; preds = %skip_flags
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then52:                                        ; preds = %skip_flags.if.then52_crit_edge, %if.then44.if.then52_crit_edge, %cleanup.thread5.i.if.then52_crit_edge
  %ad_len.0164 = phi i8 [ 0, %skip_flags.if.then52_crit_edge ], [ 3, %if.then44.if.then52_crit_edge ], [ 0, %cleanup.thread5.i.if.then52_crit_edge ]
  %ptr.addr.0163 = phi ptr [ %ptr, %skip_flags.if.then52_crit_edge ], [ %add.ptr, %if.then44.if.then52_crit_edge ], [ %ptr, %cleanup.thread5.i.if.then52_crit_edge ]
  %adv.0141162 = phi ptr [ %adv.0142, %skip_flags.if.then52_crit_edge ], [ %adv.0142, %if.then44.if.then52_crit_edge ], [ %call, %cleanup.thread5.i.if.then52_crit_edge ]
  %call4144160 = phi i32 [ %call4145, %skip_flags.if.then52_crit_edge ], [ %call4145, %if.then44.if.then52_crit_edge ], [ %call4, %cleanup.thread5.i.if.then52_crit_edge ]
  %adv_data53 = getelementptr inbounds %struct.adv_info, ptr %adv.0141162, i32 0, i32 9
  %adv_data_len55 = getelementptr inbounds %struct.adv_info, ptr %adv.0141162, i32 0, i32 8
  %17 = ptrtoint ptr %adv_data_len55 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %adv_data_len55, align 2
  %conv56 = zext i16 %18 to i32
  %19 = call ptr @memcpy(ptr %ptr.addr.0163, ptr %adv_data53, i32 %conv56)
  %20 = load i16, ptr %adv_data_len55, align 2
  %conv58 = zext i16 %20 to i32
  %21 = trunc i16 %20 to i8
  %conv61 = add i8 %ad_len.0164, %21
  %add.ptr64 = getelementptr i8, ptr %ptr.addr.0163, i32 %conv58
  br label %if.end65

if.end65:                                         ; preds = %if.then52, %skip_flags.if.end65_crit_edge, %if.then44.if.end65_crit_edge
  %call4144161 = phi i32 [ %call4144160, %if.then52 ], [ %call4145, %skip_flags.if.end65_crit_edge ], [ %call4145, %if.then44.if.end65_crit_edge ]
  %tobool5.not146159 = phi i1 [ false, %if.then52 ], [ true, %skip_flags.if.end65_crit_edge ], [ true, %if.then44.if.end65_crit_edge ]
  %adv.0143 = phi ptr [ %adv.0141162, %if.then52 ], [ %adv.0142, %skip_flags.if.end65_crit_edge ], [ %adv.0142, %if.then44.if.end65_crit_edge ]
  %ptr.addr.1 = phi ptr [ %add.ptr64, %if.then52 ], [ %ptr, %skip_flags.if.end65_crit_edge ], [ %add.ptr, %if.then44.if.end65_crit_edge ]
  %ad_len.1 = phi i8 [ %conv61, %if.then52 ], [ 0, %skip_flags.if.end65_crit_edge ], [ 3, %if.then44.if.end65_crit_edge ]
  %and66 = and i32 %call4144161, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.cleanup_crit_edge, label %if.then68

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %if.end65
  %arrayidx69 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 22, i32 1
  %22 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx69, align 1
  %24 = and i8 %23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool72.not = icmp eq i8 %24, 0
  br i1 %tobool72.not, label %if.else78, label %if.then73

if.then73:                                        ; preds = %if.then68
  br i1 %tobool5.not146159, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %tx_power = getelementptr inbounds %struct.adv_info, ptr %adv.0143, i32 0, i32 12
  br label %if.end80

if.else:                                          ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %adv_tx_power76 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 208
  br label %if.end80

if.else78:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %adv_tx_power79 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 208
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.else, %if.then75
  %adv_tx_power.0.in = phi ptr [ %tx_power, %if.then75 ], [ %adv_tx_power76, %if.else ], [ %adv_tx_power79, %if.else78 ]
  %25 = ptrtoint ptr %adv_tx_power.0.in to i32
  call void @__asan_load1_noabort(i32 %25)
  %adv_tx_power.0 = load i8, ptr %adv_tx_power.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %adv_tx_power.0)
  %cmp.not = icmp eq i8 %adv_tx_power.0, 127
  br i1 %cmp.not, label %if.end80.cleanup_crit_edge, label %if.then83

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %ptr.addr.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %ptr.addr.1, align 1
  %arrayidx85 = getelementptr i8, ptr %ptr.addr.1, i32 1
  %27 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 10, ptr %arrayidx85, align 1
  %arrayidx86 = getelementptr i8, ptr %ptr.addr.1, i32 2
  %28 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %adv_tx_power.0, ptr %arrayidx86, align 1
  %add88 = add i8 %ad_len.1, 3
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %if.end80.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.then.cleanup_crit_edge ], [ %ad_len.1, %if.end65.cleanup_crit_edge ], [ %add88, %if.then83 ], [ %ad_len.1, %if.end80.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_adv_instance_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mgmt_get_adv_discov_flags(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @eir_create_scan_rsp(ptr noundef %hdev, i8 noundef zeroext %instance, ptr nocapture noundef writeonly %ptr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %tobool.not = icmp eq i8 %instance, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %appearance.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 16
  %0 = ptrtoint ptr %appearance.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %appearance.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.then.create_default_scan_rsp.exit_crit_edge, label %if.then.i

if.then.create_default_scan_rsp.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_default_scan_rsp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %ptr, align 1
  %arrayidx3.i.i.i = getelementptr i8, ptr %ptr, i32 1
  %3 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 25, ptr %arrayidx3.i.i.i, align 1
  %arrayidx5.i.i.i = getelementptr i8, ptr %ptr, i32 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %5 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %arrayidx5.i.i.i, align 1
  br label %create_default_scan_rsp.exit

create_default_scan_rsp.exit:                     ; preds = %if.then.i, %if.then.create_default_scan_rsp.exit_crit_edge
  %scan_rsp_len.0.i = phi i8 [ 4, %if.then.i ], [ 0, %if.then.create_default_scan_rsp.exit_crit_edge ]
  %call1.i = tail call zeroext i8 @eir_append_local_name(ptr noundef %hdev, ptr noundef %ptr, i8 noundef zeroext %scan_rsp_len.0.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @hci_find_adv_instance(ptr noundef %hdev, i8 noundef zeroext %instance) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.adv_info, ptr %call1, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %land.lhs.true

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %appearance = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 16
  %8 = ptrtoint ptr %appearance to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %appearance, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end9_crit_edge, label %if.then7

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %ptr, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %ptr, i32 1
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 25, ptr %arrayidx3.i.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %ptr, i32 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %9) #7
  %13 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %arrayidx5.i.i, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %scan_rsp_len.0 = phi i32 [ 4, %if.then7 ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end4.if.end9_crit_edge ]
  %arrayidx = getelementptr i8, ptr %ptr, i32 %scan_rsp_len.0
  %scan_rsp_data = getelementptr inbounds %struct.adv_info, ptr %call1, i32 0, i32 11
  %scan_rsp_len10 = getelementptr inbounds %struct.adv_info, ptr %call1, i32 0, i32 10
  %14 = ptrtoint ptr %scan_rsp_len10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %scan_rsp_len10, align 4
  %conv11 = zext i16 %15 to i32
  %16 = call ptr @memcpy(ptr %arrayidx, ptr %scan_rsp_data, i32 %conv11)
  %17 = load i16, ptr %scan_rsp_len10, align 4
  %conv13 = zext i16 %17 to i32
  %add = add nuw nsw i32 %scan_rsp_len.0, %conv13
  %conv15 = trunc i32 %add to i8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and17 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end9.cleanup_crit_edge, label %if.then19

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call zeroext i8 @eir_append_local_name(ptr noundef %hdev, ptr noundef %ptr, i8 noundef zeroext %conv15)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %create_default_scan_rsp.exit
  %retval.0 = phi i8 [ %call1.i, %create_default_scan_rsp.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call20, %if.then19 ], [ %conv15, %if.end9.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
