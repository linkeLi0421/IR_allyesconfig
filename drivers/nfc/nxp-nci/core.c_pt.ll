; ModuleID = '/llk/IR_all_yes/drivers/nfc/nxp-nci/core.c_pt.bc'
source_filename = "../drivers/nfc/nxp-nci/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nxp_nci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_nxp_nci_probe\09\09\09\09"
module asm "\09.long\09__crc_nxp_nci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nxp_nci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22nxp_nci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_nxp_nci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nxp_nci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_nxp_nci_remove\09\09\09\09"
module asm "\09.long\09__crc_nxp_nci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nxp_nci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22nxp_nci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_nxp_nci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nxp_nci_info = type { ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.nxp_nci_fw_info }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nxp_nci_fw_info = type { [33 x i8], ptr, i32, i32, ptr, i32, %struct.work_struct, %struct.completion, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.97, i32, %struct.spinlock }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nxp_nci_phy_ops = type { ptr, ptr }

@nxp_nci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&info->fw_info.work)\00", [57 x i8] zeroinitializer }, align 32
@nxp_nci_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&info->info_lock\00", [47 x i8] zeroinitializer }, align 32
@nxp_nci_ops = internal constant { %struct.nci_ops, [52 x i8] } { %struct.nci_ops { ptr null, ptr @nxp_nci_open, ptr @nxp_nci_close, ptr @nxp_nci_send, ptr null, ptr null, ptr @nxp_nci_fw_download, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_nxp_nci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_nxp_nci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_nxp_nci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nxp_nci_probe to i32), ptr @__kstrtab_nxp_nci_probe, ptr @__kstrtabns_nxp_nci_probe }, section "___ksymtab+nxp_nci_probe", align 4
@__kstrtab_nxp_nci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_nxp_nci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_nxp_nci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nxp_nci_remove to i32), ptr @__kstrtab_nxp_nci_remove, ptr @__kstrtabns_nxp_nci_remove }, section "___ksymtab+nxp_nci_remove", align 4
@__UNIQUE_ID_file275 = internal constant [41 x i8] c"nxp_nci.file=drivers/nfc/nxp-nci/nxp-nci\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [20 x i8] c"nxp_nci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [39 x i8] c"nxp_nci.description=NXP NCI NFC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [64 x i8] c"nxp_nci.author=Cl\C3\A9ment Perrochaud <clement.perrochaud@nxp.com>\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 109, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 111, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"nxp_nci_ops\00", align 1
@___asan_gen_.17 = private constant [30 x i8] c"../drivers/nfc/nxp-nci/core.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 86, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 87, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__ksymtab_nxp_nci_probe, ptr @__ksymtab_nxp_nci_remove, ptr @nxp_nci_probe.__key, ptr @.str, ptr @nxp_nci_probe.__key.1, ptr @.str.2, ptr @nxp_nci_ops, ptr @init_completion.__key, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nxp_nci_probe(ptr noundef %phy_id, ptr noundef %pdev, ptr noundef %phy_ops, i32 noundef %max_payload, ptr nocapture noundef writeonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %pdev, i32 noundef 276, i32 noundef 3520) #2
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_id1 = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %phy_id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %phy_id, ptr %phy_id1, align 4
  %pdev2 = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev2, align 4
  %phy_ops3 = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %phy_ops3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %phy_ops, ptr %phy_ops3, align 4
  %max_payload4 = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %max_payload4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %max_payload, ptr %max_payload4, align 4
  %work = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 7, i32 6
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #2
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 7, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nxp_nci_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry11 = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 7, i32 6, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 7, i32 6, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 7, i32 6, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nxp_nci_fw_work, ptr %func, align 4
  %cmd_completion = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 7, i32 7
  %8 = ptrtoint ptr %cmd_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_completion, align 4
  %wait.i = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 7, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #2
  %info_lock = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %info_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @nxp_nci_probe.__key.1) #2
  %9 = ptrtoint ptr %phy_ops3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_ops3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %if.end.if.end27_crit_edge, label %if.then20

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end27

if.then20:                                        ; preds = %if.end
  %13 = ptrtoint ptr %phy_id1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_id1, align 4
  %call24 = tail call i32 %12(ptr noundef %14, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.then20.cleanup_crit_edge, label %if.then20.if.end27_crit_edge

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end27

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mode, align 4
  %call28 = tail call ptr @nci_allocate_device(ptr noundef nonnull @nxp_nci_ops, i32 noundef 126, i32 noundef 4, i32 noundef 0) #2
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %call.i, align 4
  %tobool31.not = icmp eq ptr %call28, null
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call28, align 4
  %parent.i.i = getelementptr inbounds %struct.nfc_dev, ptr %18, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pdev, ptr %parent.i.i, align 8
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i, align 4
  %23 = load ptr, ptr %call.i, align 4
  %call37 = tail call i32 @nci_register_device(ptr noundef %23) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @nci_free_device(ptr noundef %25) #2
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #4
  %26 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ndev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then39, %if.end27.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.then39 ], [ %call37, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.then20.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nxp_nci_fw_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nxp_nci_remove(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @nxp_nci_fw_work_complete(ptr noundef %1, i32 noundef -108) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 7, i32 6
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #2
  %info_lock = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #2
  %phy_ops = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %phy_id = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_id, align 4
  %call5 = tail call i32 %7(ptr noundef %9, i32 noundef 0) #2
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call void @nci_unregister_device(ptr noundef %ndev) #2
  tail call void @nci_free_device(ptr noundef %ndev) #2
  tail call void @mutex_unlock(ptr noundef %info_lock) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nxp_nci_fw_work_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_open(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info_lock = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #2
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.open_exit_crit_edge

entry.open_exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %open_exit

if.end:                                           ; preds = %entry
  %phy_ops = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %phy_id = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_id, align 4
  %call4 = tail call i32 %7(ptr noundef %9, i32 noundef 1) #2
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %r.0 = phi i32 [ %call4, %if.then1 ], [ 0, %if.end.if.end5_crit_edge ]
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode, align 4
  br label %open_exit

open_exit:                                        ; preds = %if.end5, %entry.open_exit_crit_edge
  %r.1 = phi i32 [ %r.0, %if.end5 ], [ -16, %entry.open_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #2
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_close(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info_lock = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #2
  %phy_ops = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %phy_id = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id, align 4
  %call3 = tail call i32 %5(ptr noundef %7, i32 noundef 0) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mode, align 4
  tail call void @mutex_unlock(ptr noundef %info_lock) #2
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_send(ptr nocapture noundef readonly %ndev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_ops = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops, align 4
  %write = getelementptr inbounds %struct.nxp_nci_phy_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %phy_id = getelementptr inbounds %struct.nxp_nci_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_id, align 4
  %call5 = tail call i32 %5(ptr noundef %9, ptr noundef %skb) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.then7 ], [ %call5, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nxp_nci_fw_download(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @nxp_nci_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nxp-nci/core.c", i32 109, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nxp_nci_probe.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/nfc/nxp-nci/core.c", i32 111, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_nxp_nci_probe, !7, !"__ksymtab_nxp_nci_probe", i1 false, i1 false}
!7 = !{!"../drivers/nfc/nxp-nci/core.c", i32 137, i32 1}
!8 = !{ptr @__ksymtab_nxp_nci_remove, !9, !"__ksymtab_nxp_nci_remove", i1 false, i1 false}
!9 = !{!"../drivers/nfc/nxp-nci/core.c", i32 157, i32 1}
!10 = !{ptr @__UNIQUE_ID_file275, !11, !"__UNIQUE_ID_file275", i1 false, i1 false}
!11 = !{!"../drivers/nfc/nxp-nci/core.c", i32 159, i32 1}
!12 = !{ptr @__UNIQUE_ID_license276, !11, !"__UNIQUE_ID_license276", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description277, !14, !"__UNIQUE_ID_description277", i1 false, i1 false}
!14 = !{!"../drivers/nfc/nxp-nci/core.c", i32 160, i32 1}
!15 = !{ptr @__UNIQUE_ID_author278, !16, !"__UNIQUE_ID_author278", i1 false, i1 false}
!16 = !{!"../drivers/nfc/nxp-nci/core.c", i32 161, i32 1}
!17 = !{ptr @init_completion.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/completion.h", i32 87, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nxp_nci_ops, !21, !"nxp_nci_ops", i1 false, i1 false}
!21 = !{!"../drivers/nfc/nxp-nci/core.c", i32 86, i32 29}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
