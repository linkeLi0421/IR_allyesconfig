; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-pci-arasan.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pci-arasan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pci_fixes = type { i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sdhci_pci_slot = type { ptr, ptr, i32, i8, ptr, [108 x i8], [0 x i32] }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
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
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@arasan_sdhci_pci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arasan_sdhci_set_clock, ptr null, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_arasan = dso_local constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 0, i32 0, i8 0, i8 0, ptr null, ptr @arasan_pci_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arasan_sdhci_pci_ops, i32 4 }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 16]
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"arasan_sdhci_pci_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 319, i32 31 }
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"sdhci_arasan\00", align 1
@___asan_gen_.7 = private constant [39 x i8] c"../drivers/mmc/host/sdhci-pci-arasan.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 327, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @arasan_sdhci_pci_ops, ptr @sdhci_arasan], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_sdhci_pci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_pci_probe_slot(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  %val.i3 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 320
  store i32 %or, ptr %caps, align 32
  %6 = load ptr, ptr %host, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i, align 1, !annotation !13
  %call.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 1, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.arasan_phy_init.exit.thread_crit_edge

entry.arasan_phy_init.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  %10 = or i8 %9, 66
  %call3.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %10, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %call6.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 2, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false5.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i, align 1
  %13 = or i8 %12, 2
  %call12.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %13, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end.i, label %lor.lhs.false8.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false8.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i4 = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i4, 100000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i3) #4
  %14 = ptrtoint ptr %val.i3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %val.i3, align 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %if.end.i
  %call2.i = tail call i64 @ktime_get() #4
  %call4.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 3, ptr noundef nonnull %val.i3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i5 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i5, label %if.else.i, label %while.cond.i.arasan_phy_sts_poll.exit.thread_crit_edge

while.cond.i.arasan_phy_sts_poll.exit.thread_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_sts_poll.exit.thread

if.else.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i, i64 %add.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call2.i, %add.i.i
  %15 = ptrtoint ptr %val.i3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i3, align 1
  %17 = and i8 %16, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not.i = icmp ne i8 %17, 0
  %brmerge.i = select i1 %tobool6.not.i, i1 true, i1 %cmp3.i.i.i
  br i1 %brmerge.i, label %cleanup.split.loop.exit.i, label %if.else.i.while.cond.i_crit_edge

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

cleanup.split.loop.exit.i:                        ; preds = %if.else.i
  br i1 %tobool6.not.i, label %if.end17.i, label %cleanup.split.loop.exit.i.arasan_phy_sts_poll.exit.thread_crit_edge

cleanup.split.loop.exit.i.arasan_phy_sts_poll.exit.thread_crit_edge: ; preds = %cleanup.split.loop.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_sts_poll.exit.thread

arasan_phy_sts_poll.exit.thread:                  ; preds = %cleanup.split.loop.exit.i.arasan_phy_sts_poll.exit.thread_crit_edge, %while.cond.i.arasan_phy_sts_poll.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i3) #4
  br label %arasan_phy_init.exit.thread

if.end17.i:                                       ; preds = %cleanup.split.loop.exit.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i3) #4
  %call18.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 6, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false20.i, label %if.end17.i.arasan_phy_init.exit.thread_crit_edge

if.end17.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false20.i:                                ; preds = %if.end17.i
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i, align 1
  %20 = or i8 %19, 3
  %call25.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %20, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %lor.lhs.false27.i, label %lor.lhs.false20.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false20.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false27.i:                                ; preds = %lor.lhs.false20.i
  %call28.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 8, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %lor.lhs.false30.i, label %lor.lhs.false27.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false27.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false30.i:                                ; preds = %lor.lhs.false27.i
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i, align 1
  %23 = or i8 %22, 2
  %call34.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %23, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false36.i, label %lor.lhs.false30.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false30.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false36.i:                                ; preds = %lor.lhs.false30.i
  %call37.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 32, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %lor.lhs.false39.i, label %lor.lhs.false36.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false36.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false39.i:                                ; preds = %lor.lhs.false36.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  %26 = or i8 %25, 1
  %call43.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %26, i8 noundef zeroext 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %lor.lhs.false45.i, label %lor.lhs.false39.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false39.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false45.i:                                ; preds = %lor.lhs.false39.i
  %call46.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 7, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %lor.lhs.false48.i, label %lor.lhs.false45.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false45.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false48.i:                                ; preds = %lor.lhs.false45.i
  %call52.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext -1, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %lor.lhs.false54.i, label %lor.lhs.false48.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false48.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false54.i:                                ; preds = %lor.lhs.false48.i
  %call55.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 9, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %lor.lhs.false57.i, label %lor.lhs.false54.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false54.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false57.i:                                ; preds = %lor.lhs.false54.i
  %call61.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext -1, i8 noundef zeroext 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %lor.lhs.false63.i, label %lor.lhs.false57.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false57.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false63.i:                                ; preds = %lor.lhs.false57.i
  %call64.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 33, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %lor.lhs.false66.i, label %lor.lhs.false63.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false63.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false66.i:                                ; preds = %lor.lhs.false63.i
  %call70.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext -1, i8 noundef zeroext 33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %lor.lhs.false72.i, label %lor.lhs.false66.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false66.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false72.i:                                ; preds = %lor.lhs.false66.i
  %call73.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 34, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %lor.lhs.false75.i, label %lor.lhs.false72.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false72.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false75.i:                                ; preds = %lor.lhs.false72.i
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val.i, align 1
  %29 = or i8 %28, 1
  %call79.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %29, i8 noundef zeroext 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %lor.lhs.false81.i, label %lor.lhs.false75.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false75.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false81.i:                                ; preds = %lor.lhs.false75.i
  %call82.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 35, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %lor.lhs.false84.i, label %lor.lhs.false81.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false81.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false84.i:                                ; preds = %lor.lhs.false81.i
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val.i, align 1
  %32 = or i8 %31, 1
  %call88.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %32, i8 noundef zeroext 35) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %lor.lhs.false90.i, label %lor.lhs.false84.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false84.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false90.i:                                ; preds = %lor.lhs.false84.i
  %call91.i = call fastcc i32 @arasan_phy_read(ptr noundef %6, i8 noundef zeroext 15, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %lor.lhs.false93.i, label %lor.lhs.false90.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false90.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false90.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false93.i:                                ; preds = %lor.lhs.false90.i
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val.i, align 1
  %35 = or i8 %34, 7
  %call97.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext %35, i8 noundef zeroext 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %lor.lhs.false99.i, label %lor.lhs.false93.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false93.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

lor.lhs.false99.i:                                ; preds = %lor.lhs.false93.i
  %call100.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %36, label %lor.lhs.false99.i.arasan_phy_init.exit.thread_crit_edge

lor.lhs.false99.i.arasan_phy_init.exit.thread_crit_edge: ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_phy_init.exit.thread

arasan_phy_init.exit.thread:                      ; preds = %lor.lhs.false99.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false93.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false90.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false84.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false81.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false75.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false72.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false66.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false63.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false57.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false54.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false48.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false45.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false39.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false36.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false30.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false27.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false20.i.arasan_phy_init.exit.thread_crit_edge, %if.end17.i.arasan_phy_init.exit.thread_crit_edge, %arasan_phy_sts_poll.exit.thread, %lor.lhs.false8.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false5.i.arasan_phy_init.exit.thread_crit_edge, %lor.lhs.false.i.arasan_phy_init.exit.thread_crit_edge, %entry.arasan_phy_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  br label %37

36:                                               ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  br label %37

37:                                               ; preds = %36, %arasan_phy_init.exit.thread
  %38 = phi i32 [ 0, %36 ], [ -19, %arasan_phy_init.exit.thread ]
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arasan_phy_read(ptr noundef %host, i8 noundef zeroext %offset, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !14

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 772) #4
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 772
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #4, !srcloc !16
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  %conv = zext i8 %offset to i16
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %write_w.i8 = getelementptr inbounds %struct.sdhci_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %write_w.i8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_w.i8, align 4
  %tobool.not.i9 = icmp eq ptr %9, null
  br i1 %tobool.not.i9, label %do.body.i13, label %if.then.i10, !prof !14

if.then.i10:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %host, i16 noundef zeroext %conv, i32 noundef 768) #4
  br label %sdhci_writew.exit14

do.body.i13:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %10 = shl nuw i16 %conv, 8
  %ioaddr.i11 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i11, align 16
  %add.ptr.i12 = getelementptr i8, ptr %12, i32 768
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 %10) #4, !srcloc !16
  br label %sdhci_writew.exit14

sdhci_writew.exit14:                              ; preds = %do.body.i13, %if.then.i10
  %call.i = tail call i64 @ktime_get() #4
  %call2.i = tail call i64 @ktime_get() #4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !14

if.then.i.i:                                      ; preds = %sdhci_writew.exit14
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call zeroext i16 %16(ptr noundef %host, i32 noundef 768) #4
  br label %arasan_phy_addr_poll.exit

if.else.i.i:                                      ; preds = %sdhci_writew.exit14
  call void @__sanitizer_cov_trace_pc() #6
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %17 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 768
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  br label %arasan_phy_addr_poll.exit

arasan_phy_addr_poll.exit:                        ; preds = %if.else.i.i, %if.then.i.i
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i16 = icmp eq ptr %23, null
  br i1 %tobool.not.i16, label %if.else.i, label %if.then.i18, !prof !14

if.then.i18:                                      ; preds = %arasan_phy_addr_poll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i17 = tail call zeroext i16 %23(ptr noundef %host, i32 noundef 772) #4
  %extract.t = trunc i16 %call.i17 to i8
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %arasan_phy_addr_poll.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ioaddr.i19 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %24 = ptrtoint ptr %ioaddr.i19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i19, align 16
  %add.ptr.i20 = getelementptr i8, ptr %25, i32 772
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i20) #4, !srcloc !17
  %27 = lshr i16 %26, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %extract.t24 = trunc i16 %27 to i8
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i18
  %call.i17.sink.off0 = phi i8 [ %extract.t, %if.then.i18 ], [ %extract.t24, %if.else.i ]
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call.i17.sink.off0, ptr %data, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext %data, i8 noundef zeroext %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %data to i16
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !14

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %host, i16 noundef zeroext %conv, i32 noundef 772) #4
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %4 = shl nuw i16 %conv, 8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %6, i32 772
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #4, !srcloc !16
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  %conv1 = zext i8 %offset to i16
  %or = or i16 %conv1, 256
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %write_w.i6 = getelementptr inbounds %struct.sdhci_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %write_w.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_w.i6, align 4
  %tobool.not.i7 = icmp eq ptr %10, null
  br i1 %tobool.not.i7, label %do.body.i11, label %if.then.i8, !prof !14

if.then.i8:                                       ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %10(ptr noundef %host, i16 noundef zeroext %or, i32 noundef 768) #4
  br label %sdhci_writew.exit12

do.body.i11:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %11 = tail call i16 @llvm.bswap.i16(i16 %or) #4
  %ioaddr.i9 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i9, align 16
  %add.ptr.i10 = getelementptr i8, ptr %13, i32 768
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10, i16 %11) #4, !srcloc !16
  br label %sdhci_writew.exit12

sdhci_writew.exit12:                              ; preds = %do.body.i11, %if.then.i8
  %call.i = tail call i64 @ktime_get() #4
  %call2.i = tail call i64 @ktime_get() #4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !14

if.then.i.i:                                      ; preds = %sdhci_writew.exit12
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call zeroext i16 %17(ptr noundef %host, i32 noundef 768) #4
  br label %arasan_phy_addr_poll.exit

if.else.i.i:                                      ; preds = %sdhci_writew.exit12
  call void @__sanitizer_cov_trace_pc() #6
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %18 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 768
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  br label %arasan_phy_addr_poll.exit

arasan_phy_addr_poll.exit:                        ; preds = %if.else.i.i, %if.then.i.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arasan_phy_sts_poll(ptr noundef %host, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 100000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val, align 1
  %conv = trunc i32 %offset to i8
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %entry
  %call2 = tail call i64 @ktime_get() #4
  %call4 = call fastcc i32 @arasan_phy_read(ptr noundef %host, i8 noundef zeroext %conv, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.else, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call2, %add.i
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp ne i8 %3, 0
  %brmerge = select i1 %tobool6.not, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %cleanup.split.loop.exit, label %if.else.while.cond_crit_edge

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

cleanup.split.loop.exit:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %.mux.le = select i1 %tobool6.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux.le, %cleanup.split.loop.exit ], [ -16, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arasan_sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #4
  %private.i3.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i3.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc.i, align 8
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %ios.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ios.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.i = icmp eq i32 %1, %5
  br i1 %cmp.i, label %entry.arasan_select_phy_clock.exit_crit_edge, label %if.end.i

entry.arasan_select_phy_clock.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_select_phy_clock.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %private.i3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %private.i3.i, align 4
  %7 = ptrtoint ptr %ios.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %8)
  %switch.selectcmp.i = icmp eq i32 %8, 100000000
  %switch.select.i = select i1 %switch.selectcmp.i, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %8)
  %switch.selectcmp1.i = icmp eq i32 %8, 50000000
  %switch.select2.i = select i1 %switch.selectcmp1.i, i8 1, i8 %switch.select.i
  %hs400_enhanced_strobe.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 11, i32 18
  %9 = ptrtoint ptr %hs400_enhanced_strobe.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hs400_enhanced_strobe.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else28.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @arasan_phy_set(ptr noundef %host, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext %switch.select2.i) #4
  br label %arasan_select_phy_clock.exit

if.else28.i:                                      ; preds = %if.end.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 7
  %11 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %timing.i, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.else28.i.arasan_select_phy_clock.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %if.else28.i.sw.bb32.i_crit_edge
    i8 2, label %if.else28.i.sw.bb32.i_crit_edge2
    i8 9, label %if.else28.i.sw.bb34.i_crit_edge
    i8 6, label %if.else28.i.sw.bb34.i_crit_edge3
    i8 8, label %if.else28.i.sw.bb38.i_crit_edge
    i8 7, label %if.else28.i.sw.bb38.i_crit_edge4
    i8 10, label %sw.bb40.i
  ]

if.else28.i.sw.bb38.i_crit_edge4:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb38.i

if.else28.i.sw.bb38.i_crit_edge:                  ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb38.i

if.else28.i.sw.bb34.i_crit_edge3:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb34.i

if.else28.i.sw.bb34.i_crit_edge:                  ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb34.i

if.else28.i.sw.bb32.i_crit_edge2:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb32.i

if.else28.i.sw.bb32.i_crit_edge:                  ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb32.i

if.else28.i.arasan_select_phy_clock.exit_crit_edge: ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_select_phy_clock.exit

sw.bb.i:                                          ; preds = %if.else28.i
  %call5.i.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 4, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %sw.bb.i.arasan_select_phy_clock.exit_crit_edge

sw.bb.i.arasan_select_phy_clock.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_select_phy_clock.exit

if.end7.i.i:                                      ; preds = %sw.bb.i
  %call32.i.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end58.thread6.i.i, label %if.end7.i.i.arasan_select_phy_clock.exit_crit_edge

if.end7.i.i.arasan_select_phy_clock.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_select_phy_clock.exit

if.end58.thread6.i.i:                             ; preds = %if.end7.i.i
  %call36.i.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool59.not8.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool59.not8.i.i, label %if.end70.thread.i.i, label %if.end58.thread6.i.i.arasan_select_phy_clock.exit_crit_edge

if.end58.thread6.i.i.arasan_select_phy_clock.exit_crit_edge: ; preds = %if.end58.thread6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %arasan_select_phy_clock.exit

if.end70.thread.i.i:                              ; preds = %if.end58.thread6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7112.i.i = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  br label %arasan_select_phy_clock.exit

sw.bb32.i:                                        ; preds = %if.else28.i.sw.bb32.i_crit_edge, %if.else28.i.sw.bb32.i_crit_edge2
  tail call fastcc void @arasan_phy_set(ptr noundef %host, i8 noundef zeroext 32, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 8, i8 noundef zeroext %switch.select2.i) #4
  br label %arasan_select_phy_clock.exit

sw.bb34.i:                                        ; preds = %if.else28.i.sw.bb34.i_crit_edge, %if.else28.i.sw.bb34.i_crit_edge3
  %drv_type.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 9
  %14 = ptrtoint ptr %drv_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drv_type.i, align 2
  tail call fastcc void @arasan_phy_set(ptr noundef %host, i8 noundef zeroext 16, i8 noundef zeroext 2, i8 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext %switch.select2.i) #4
  br label %arasan_select_phy_clock.exit

sw.bb38.i:                                        ; preds = %if.else28.i.sw.bb38.i_crit_edge, %if.else28.i.sw.bb38.i_crit_edge4
  tail call fastcc void @arasan_phy_set(ptr noundef %host, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext %switch.select2.i) #4
  br label %arasan_select_phy_clock.exit

sw.bb40.i:                                        ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #6
  %drv_type43.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 9
  %16 = ptrtoint ptr %drv_type43.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drv_type43.i, align 2
  tail call fastcc void @arasan_phy_set(ptr noundef %host, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext %17, i8 noundef zeroext 10, i8 noundef zeroext 8, i8 noundef zeroext %switch.select2.i) #4
  br label %arasan_select_phy_clock.exit

arasan_select_phy_clock.exit:                     ; preds = %sw.bb40.i, %sw.bb38.i, %sw.bb34.i, %sw.bb32.i, %if.end70.thread.i.i, %if.end58.thread6.i.i.arasan_select_phy_clock.exit_crit_edge, %if.end7.i.i.arasan_select_phy_clock.exit_crit_edge, %sw.bb.i.arasan_select_phy_clock.exit_crit_edge, %if.else28.i.arasan_select_phy_clock.exit_crit_edge, %if.then26.i, %entry.arasan_select_phy_clock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pci_enable_dma(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arasan_phy_set(ptr noundef %host, i8 noundef zeroext %mode, i8 noundef zeroext %otap, i8 noundef zeroext %drv_type, i8 noundef zeroext %itap, i8 noundef zeroext %trim, i8 noundef zeroext %clk) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !13
  %1 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %mode, label %if.else [
    i8 32, label %entry.if.end_crit_edge
    i8 16, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge15
  %mode.sink = phi i8 [ %mode, %if.else ], [ 0, %entry.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge15 ]
  %call5 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext %mode.sink, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %mode, label %if.end7.if.else37_crit_edge [
    i8 2, label %if.end7.if.then15_crit_edge
    i8 16, label %if.end7.if.then15_crit_edge16
    i8 4, label %if.end7.if.then31_crit_edge
  ]

if.end7.if.then31_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.end7.if.then15_crit_edge16:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end7.if.then15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end7.if.else37_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else37

if.then15:                                        ; preds = %if.end7.if.then15_crit_edge, %if.end7.if.then15_crit_edge16
  %call16 = call fastcc i32 @arasan_phy_read(ptr noundef %host, i8 noundef zeroext 1, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %shl = shl i8 %drv_type, 2
  %or = or i8 %4, %shl
  %call23 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext %or, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %mode)
  %cmp29 = icmp eq i8 %mode, 4
  br i1 %cmp29, label %if.end27.if.then31_crit_edge, label %if.end27.if.else37_crit_edge

if.end27.if.else37_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else37

if.end27.if.then31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.then31:                                        ; preds = %if.end27.if.then31_crit_edge, %if.end7.if.then31_crit_edge
  %call32 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end58.thread6, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else37:                                        ; preds = %if.end27.if.else37_crit_edge, %if.end7.if.else37_crit_edge
  %shl39 = shl i8 %otap, 1
  %or40 = or i8 %shl39, 1
  %call42 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext %or40, i8 noundef zeroext 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %mode)
  %cmp47.not = icmp eq i8 %mode, 16
  br i1 %cmp47.not, label %if.end58.thread, label %if.end58

if.end58:                                         ; preds = %if.end45
  %shl51 = shl i8 %itap, 1
  %or52 = or i8 %shl51, 1
  %call54 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext %or52, i8 noundef zeroext 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool59.not = icmp eq i32 %call54, 0
  br i1 %tobool59.not, label %if.end61, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58.thread6:                                 ; preds = %if.then31
  %call36 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool59.not8 = icmp eq i32 %call36, 0
  br i1 %tobool59.not8, label %if.end58.thread6.if.end70.thread_crit_edge, label %if.end58.thread6.cleanup_crit_edge

if.end58.thread6.cleanup_crit_edge:               ; preds = %if.end58.thread6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58.thread6.if.end70.thread_crit_edge:       ; preds = %if.end58.thread6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70.thread

if.end58.thread:                                  ; preds = %if.end45
  %call56 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool59.not2 = icmp eq i32 %call56, 0
  br i1 %tobool59.not2, label %if.end58.thread.if.then65_crit_edge, label %if.end58.thread.cleanup_crit_edge

if.end58.thread.cleanup_crit_edge:                ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58.thread.if.then65_crit_edge:              ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then65

if.end61:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %mode)
  %cmp63.not = icmp eq i8 %mode, 4
  br i1 %cmp63.not, label %if.end61.if.end70.thread_crit_edge, label %if.end61.if.then65_crit_edge

if.end61.if.then65_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then65

if.end61.if.end70.thread_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70.thread

if.then65:                                        ; preds = %if.end61.if.then65_crit_edge, %if.end58.thread.if.then65_crit_edge
  %call66 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext %trim, i8 noundef zeroext 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end70, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end70.thread:                                  ; preds = %if.end61.if.end70.thread_crit_edge, %if.end58.thread6.if.end70.thread_crit_edge
  %call7112 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %cleanup

if.end70:                                         ; preds = %if.then65
  %call71 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not.not, label %if.then78, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then78:                                        ; preds = %if.end70
  %shl80 = shl i8 %clk, 5
  %or81 = or i8 %shl80, 8
  %call83 = tail call fastcc i32 @arasan_phy_write(ptr noundef %host, i8 noundef zeroext %or81, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.then78.cleanup_crit_edge

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end86:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #6
  %call87 = tail call fastcc i32 @arasan_phy_sts_poll(ptr noundef %host, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then78.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end70.thread, %if.then65.cleanup_crit_edge, %if.end58.thread.cleanup_crit_edge, %if.end58.thread6.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.else37.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @sdhci_arasan, !1, !"sdhci_arasan", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-pci-arasan.c", i32 327, i32 30}
!2 = !{ptr @arasan_sdhci_pci_ops, !3, !"arasan_sdhci_pci_ops", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/sdhci-pci-arasan.c", i32 319, i32 31}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2154931938}
!16 = !{i64 4985783}
!17 = !{i64 4985983}
!18 = !{i64 2154934006}
