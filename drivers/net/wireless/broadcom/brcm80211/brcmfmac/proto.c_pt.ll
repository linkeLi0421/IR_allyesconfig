; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.121, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.121 = type { i64, i64, i8 }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__func__.brcmf_proto_attach = private unnamed_addr constant [19 x i8] c"brcmf_proto_attach\00", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_proto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.brcmf_proto_attach, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Unsupported proto type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_proto_attach._entry_ptr = internal global ptr @brcmf_proto_attach._entry, section ".printk_index", align 4
@brcmf_proto_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.brcmf_proto_attach, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Not all proto handlers have been installed\0A\00", [48 x i8] zeroinitializer }, align 32
@brcmf_proto_attach._entry_ptr.7 = internal global ptr @brcmf_proto_attach._entry.5, section ".printk_index", align 4
@__func__.brcmf_proto_detach = private unnamed_addr constant [19 x i8] c"brcmf_proto_detach\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 24, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 39, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [60 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 48, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @brcmf_proto_attach._entry, ptr @brcmf_proto_attach._entry.5, ptr @brcmf_proto_attach._entry_ptr, ptr @brcmf_proto_attach._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_proto_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_proto_attach(ptr noundef %drvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_proto_attach, ptr noundef nonnull @.str) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 60) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end:                                           ; preds = %entry
  %proto1 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %1 = ptrtoint ptr %proto1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %proto1, align 4
  %2 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr, align 4
  %proto_type = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %proto_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proto_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end19 [
    i32 0, label %if.then2
    i32 1, label %if.then10
  ]

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @brcmf_proto_bcdc_attach(ptr noundef %drvr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end25_crit_edge, label %if.then2.fail_crit_edge

if.then2.fail_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.then2.if.end25_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @brcmf_proto_msgbuf_attach(ptr noundef %drvr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end25_crit_edge, label %if.then10.fail_crit_edge

if.then10.fail_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_proto_attach, i32 noundef %5) #8
  br label %fail

if.end25:                                         ; preds = %if.then10.if.end25_crit_edge, %if.then2.if.end25_crit_edge
  %tx_queue_data = getelementptr inbounds %struct.brcmf_proto, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %tx_queue_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_queue_data, align 4
  %tobool26.not = icmp eq ptr %10, null
  br i1 %tobool26.not, label %if.end25.do.end44_crit_edge, label %lor.lhs.false

if.end25.do.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

lor.lhs.false:                                    ; preds = %if.end25
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %cmp27 = icmp eq ptr %12, null
  br i1 %cmp27, label %lor.lhs.false.do.end44_crit_edge, label %lor.lhs.false28

lor.lhs.false.do.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %query_dcmd = getelementptr inbounds %struct.brcmf_proto, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %query_dcmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %query_dcmd, align 4
  %cmp29 = icmp eq ptr %14, null
  br i1 %cmp29, label %lor.lhs.false28.do.end44_crit_edge, label %lor.lhs.false30

lor.lhs.false28.do.end44_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %set_dcmd = getelementptr inbounds %struct.brcmf_proto, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %set_dcmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_dcmd, align 8
  %cmp31 = icmp eq ptr %16, null
  br i1 %cmp31, label %lor.lhs.false30.do.end44_crit_edge, label %lor.lhs.false32

lor.lhs.false30.do.end44_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

lor.lhs.false32:                                  ; preds = %lor.lhs.false30
  %configure_addr_mode = getelementptr inbounds %struct.brcmf_proto, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %configure_addr_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %configure_addr_mode, align 4
  %cmp33 = icmp eq ptr %18, null
  br i1 %cmp33, label %lor.lhs.false32.do.end44_crit_edge, label %lor.lhs.false34

lor.lhs.false32.do.end44_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

lor.lhs.false34:                                  ; preds = %lor.lhs.false32
  %delete_peer = getelementptr inbounds %struct.brcmf_proto, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %delete_peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %delete_peer, align 8
  %cmp35 = icmp eq ptr %20, null
  br i1 %cmp35, label %lor.lhs.false34.do.end44_crit_edge, label %lor.lhs.false36

lor.lhs.false34.do.end44_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

lor.lhs.false36:                                  ; preds = %lor.lhs.false34
  %add_tdls_peer = getelementptr inbounds %struct.brcmf_proto, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %add_tdls_peer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add_tdls_peer, align 4
  %cmp37 = icmp eq ptr %22, null
  br i1 %cmp37, label %lor.lhs.false36.do.end44_crit_edge, label %lor.lhs.false38

lor.lhs.false36.do.end44_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

lor.lhs.false38:                                  ; preds = %lor.lhs.false36
  %debugfs_create = getelementptr inbounds %struct.brcmf_proto, ptr %call7.i.i, i32 0, i32 13
  %23 = ptrtoint ptr %debugfs_create to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs_create, align 4
  %cmp39 = icmp eq ptr %24, null
  br i1 %cmp39, label %lor.lhs.false38.do.end44_crit_edge, label %lor.lhs.false38.cleanup_crit_edge

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false38.do.end44_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

do.end44:                                         ; preds = %lor.lhs.false38.do.end44_crit_edge, %lor.lhs.false36.do.end44_crit_edge, %lor.lhs.false34.do.end44_crit_edge, %lor.lhs.false32.do.end44_crit_edge, %lor.lhs.false30.do.end44_crit_edge, %lor.lhs.false28.do.end44_crit_edge, %lor.lhs.false.do.end44_crit_edge, %if.end25.do.end44_crit_edge
  %wiphy45 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %25 = ptrtoint ptr %wiphy45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy45, align 4
  %dev46 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.brcmf_proto_attach) #8
  br label %fail

fail:                                             ; preds = %do.end44, %do.end19, %if.then10.fail_crit_edge, %if.then2.fail_crit_edge, %entry.fail_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #4
  %proto50 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %27 = ptrtoint ptr %proto50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %proto50, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %lor.lhs.false38.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %lor.lhs.false38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_proto_bcdc_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_proto_msgbuf_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_proto_detach(ptr noundef %drvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_proto_detach, ptr noundef nonnull @.str) #4
  %proto = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr, align 4
  %proto_type = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %proto_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proto_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %5, label %if.then.if.end6_crit_edge [
    i32 0, label %if.then1
    i32 1, label %if.then5
  ]

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @brcmf_proto_bcdc_detach(ptr noundef %drvr) #4
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @brcmf_proto_msgbuf_detach(ptr noundef %drvr) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then1, %if.then.if.end6_crit_edge
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proto, align 4
  tail call void @kfree(ptr noundef %8) #4
  %9 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %proto, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_bcdc_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_msgbuf_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__func__.brcmf_proto_attach, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c", i32 24, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c", i32 39, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @brcmf_proto_attach._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @brcmf_proto_attach._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c", i32 48, i32 3}
!12 = !{ptr @brcmf_proto_attach._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @brcmf_proto_attach._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__func__.brcmf_proto_detach, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c", i32 61, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
