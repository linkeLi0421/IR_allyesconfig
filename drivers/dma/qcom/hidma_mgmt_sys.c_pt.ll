; ModuleID = '/llk/IR_all_yes/drivers/dma/qcom/hidma_mgmt_sys.c_pt.bc'
source_filename = "../drivers/dma/qcom/hidma_mgmt_sys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hidma_mgmt_init_sys\22, \22a\22\09"
module asm "\09.weak\09__crc_hidma_mgmt_init_sys\09\09\09\09"
module asm "\09.long\09__crc_hidma_mgmt_init_sys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidma_mgmt_init_sys:\09\09\09\09\09"
module asm "\09.asciz \09\22hidma_mgmt_init_sys\22\09\09\09\09\09"
module asm "__kstrtabns_hidma_mgmt_init_sys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hidma_mgmt_fileinfo = type { ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hidma_mgmt_dev = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.hidma_chan_attr = type { ptr, i32, %struct.kobj_attribute }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chanops\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chan%d\00", [25 x i8] zeroinitializer }, align 32
@hidma_mgmt_files = internal constant { [8 x %struct.hidma_mgmt_fileinfo], [32 x i8] } { [8 x %struct.hidma_mgmt_fileinfo] [%struct.hidma_mgmt_fileinfo { ptr @.str.5, i32 292, ptr @get_hw_version_major, ptr @set_hw_version_major }, %struct.hidma_mgmt_fileinfo { ptr @.str.6, i32 292, ptr @get_hw_version_minor, ptr @set_hw_version_minor }, %struct.hidma_mgmt_fileinfo { ptr @.str.7, i32 292, ptr @get_dma_channels, ptr @set_dma_channels }, %struct.hidma_mgmt_fileinfo { ptr @.str.8, i32 292, ptr @get_chreset_timeout_cycles, ptr @set_chreset_timeout_cycles }, %struct.hidma_mgmt_fileinfo { ptr @.str.9, i32 292, ptr @get_max_wr_xactions, ptr @set_max_wr_xactions }, %struct.hidma_mgmt_fileinfo { ptr @.str.10, i32 292, ptr @get_max_rd_xactions, ptr @set_max_rd_xactions }, %struct.hidma_mgmt_fileinfo { ptr @.str.11, i32 292, ptr @get_max_write_request, ptr @set_max_write_request }, %struct.hidma_mgmt_fileinfo { ptr @.str.12, i32 292, ptr @get_max_read_request, ptr @set_max_read_request }], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priority\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"weight\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_hidma_mgmt_init_sys = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidma_mgmt_init_sys = external dso_local constant [0 x i8], align 1
@__ksymtab_hidma_mgmt_init_sys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidma_mgmt_init_sys to i32), ptr @__kstrtab_hidma_mgmt_init_sys, ptr @__kstrtabns_hidma_mgmt_init_sys }, section "___ksymtab_gpl+hidma_mgmt_init_sys", align 4
@create_sysfs_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw_version_major\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw_version_minor\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma_channels\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chreset_timeout_cycles\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_wr_xactions\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_rd_xactions\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_write_request\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_read_request\00", [47 x i8] zeroinitializer }, align 32
@create_sysfs_entry_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 246, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 254, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"hidma_mgmt_files\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 88, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 270, i32 41 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 276, i32 41 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 203, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 109, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 89, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 90, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 91, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 92, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 93, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 94, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 95, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 96, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private constant [37 x i8] c"../drivers/dma/qcom/hidma_mgmt_sys.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 229, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_hidma_mgmt_init_sys, ptr @.str, ptr @.str.1, ptr @hidma_mgmt_files, ptr @.str.2, ptr @.str.3, ptr @create_sysfs_entry.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @create_sysfs_entry_channel.__key], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_mgmt_files to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sysfs_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sysfs_entry_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_mgmt_init_sys(ptr noundef %mdev) #0 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_channels = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 6
  %0 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_channels, align 4
  %mul = shl i32 %1, 2
  %pdev = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 14
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3264) #7
  %chroots = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 13
  %4 = ptrtoint ptr %chroots to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %chroots, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup50_crit_edge, label %if.end

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call4 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef %dev3) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup50_crit_edge, label %for.cond.preheader

if.end.cleanup50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.cond.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp122.not = icmp eq i32 %8, 0
  br i1 %cmp122.not, label %for.cond.preheader.for.body20.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.body20.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20.preheader

for.body20.preheader:                             ; preds = %for.cond.for.body20.preheader_crit_edge, %for.cond.preheader.for.body20.preheader_crit_edge
  br label %for.body20

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0123, 1
  %9 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_channels, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.body20.preheader_crit_edge

for.cond.for.body20.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0123 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #7
  %11 = call ptr @memset(ptr %name, i32 255, i32 20)
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef %i.0123)
  %call11 = call ptr @kobject_create_and_add(ptr noundef nonnull %name, ptr noundef nonnull %call4) #7
  %12 = ptrtoint ptr %chroots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chroots, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.0123
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %arrayidx, align 4
  %15 = load ptr, ptr %chroots, align 4
  %arrayidx14 = getelementptr ptr, ptr %15, i32 %i.0123
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %17, null
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #7
  br i1 %tobool15.not, label %for.body.cleanup50_crit_edge, label %for.cond

for.body.cleanup50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.cond18:                                       ; preds = %create_sysfs_entry.exit
  %inc29 = add nuw nsw i32 %i.1124, 1
  %exitcond.not = icmp eq i32 %inc29, 8
  br i1 %exitcond.not, label %for.cond31.preheader, label %for.cond18.for.body20_crit_edge

for.cond18.for.body20_crit_edge:                  ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

for.cond31.preheader:                             ; preds = %for.cond18
  %18 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33125.not = icmp eq i32 %19, 0
  br i1 %cmp33125.not, label %for.cond31.preheader.cleanup50_crit_edge, label %for.cond31.preheader.for.body34_crit_edge

for.cond31.preheader.for.body34_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body34

for.cond31.preheader.cleanup50_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.body20:                                       ; preds = %for.cond18.for.body20_crit_edge, %for.body20.preheader
  %i.1124 = phi i32 [ %inc29, %for.cond18.for.body20_crit_edge ], [ 0, %for.body20.preheader ]
  %arrayidx21 = getelementptr [8 x %struct.hidma_mgmt_fileinfo], ptr @hidma_mgmt_files, i32 0, i32 %i.1124
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx21, align 4
  %mode = getelementptr [8 x %struct.hidma_mgmt_fileinfo], ptr @hidma_mgmt_files, i32 0, i32 %i.1124, i32 1
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 28, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body20.cleanup50_crit_edge, label %if.end.i

for.body20.cleanup50_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end.i:                                         ; preds = %for.body20
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %call4.i = call noalias ptr @devm_kstrdup(ptr noundef %dev3.i, ptr noundef %21, i32 noundef 3264) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup50_crit_edge, label %create_sysfs_entry.exit

if.end.i.cleanup50_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

create_sysfs_entry.exit:                          ; preds = %if.end.i
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call4.i, ptr %call.i, align 4
  %conv.i = trunc i32 %23 to i16
  %mode10.i = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %mode10.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %mode10.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @show_values, ptr %show.i, align 4
  %store.i = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @set_values, ptr %store.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @create_sysfs_entry.__key, ptr %key.i, align 4
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev13.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %call14.i = call i32 @device_create_file(ptr noundef %dev13.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool25.not = icmp eq i32 %call14.i, 0
  br i1 %tobool25.not, label %for.cond18, label %create_sysfs_entry.exit.cleanup50_crit_edge

create_sysfs_entry.exit.cleanup50_crit_edge:      ; preds = %create_sysfs_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.cond31:                                       ; preds = %create_sysfs_entry_channel.exit112
  %inc48 = add nuw i32 %i.2126, 1
  %35 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_channels, align 4
  %cmp33 = icmp ult i32 %inc48, %36
  br i1 %cmp33, label %for.cond31.for.body34_crit_edge, label %for.cond31.cleanup50_crit_edge

for.cond31.cleanup50_crit_edge:                   ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.cond31.for.body34_crit_edge:                  ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.body34:                                       ; preds = %for.cond31.for.body34_crit_edge, %for.cond31.preheader.for.body34_crit_edge
  %i.2126 = phi i32 [ %inc48, %for.cond31.for.body34_crit_edge ], [ 0, %for.cond31.preheader.for.body34_crit_edge ]
  %37 = ptrtoint ptr %chroots to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chroots, align 4
  %arrayidx36 = getelementptr ptr, ptr %38, i32 %i.2126
  %39 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx36, align 4
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %call.i88 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 36, i32 noundef 3264) #7
  %tobool.not.i89 = icmp eq ptr %call.i88, null
  br i1 %tobool.not.i89, label %for.body34.cleanup50_crit_edge, label %if.end.i90

for.body34.cleanup50_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end.i90:                                       ; preds = %for.body34
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %call3.i = call noalias ptr @devm_kstrdup(ptr noundef %dev2.i, ptr noundef nonnull @.str.2, i32 noundef 3264) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i90.cleanup50_crit_edge, label %create_sysfs_entry_channel.exit

if.end.i90.cleanup50_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

create_sysfs_entry_channel.exit:                  ; preds = %if.end.i90
  %45 = ptrtoint ptr %call.i88 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mdev, ptr %call.i88, align 4
  %index8.i = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i88, i32 0, i32 1
  %46 = ptrtoint ptr %index8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.2126, ptr %index8.i, align 4
  %attr.i = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i88, i32 0, i32 2
  %47 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call3.i, ptr %attr.i, align 4
  %mode13.i = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i88, i32 0, i32 2, i32 0, i32 1
  %48 = ptrtoint ptr %mode13.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 438, ptr %mode13.i, align 4
  %show.i91 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i88, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %show.i91 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @show_values_channel, ptr %show.i91, align 4
  %store.i92 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i88, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %store.i92 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @set_values_channel, ptr %store.i92, align 4
  %key.i93 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i88, i32 0, i32 2, i32 0, i32 3
  %51 = ptrtoint ptr %key.i93 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @create_sysfs_entry_channel.__key, ptr %key.i93, align 4
  %call.i.i = call i32 @sysfs_create_file_ns(ptr noundef %40, ptr noundef %attr.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool38.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool38.not, label %if.end40, label %create_sysfs_entry_channel.exit.cleanup50_crit_edge

create_sysfs_entry_channel.exit.cleanup50_crit_edge: ; preds = %create_sysfs_entry_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end40:                                         ; preds = %create_sysfs_entry_channel.exit
  %52 = ptrtoint ptr %chroots to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chroots, align 4
  %arrayidx42 = getelementptr ptr, ptr %53, i32 %i.2126
  %54 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx42, align 4
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 4
  %dev.i96 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %call.i97 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i96, i32 noundef 36, i32 noundef 3264) #7
  %tobool.not.i98 = icmp eq ptr %call.i97, null
  br i1 %tobool.not.i98, label %if.end40.cleanup50_crit_edge, label %if.end.i102

if.end40.cleanup50_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end.i102:                                      ; preds = %if.end40
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 4
  %dev2.i99 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  %call3.i100 = call noalias ptr @devm_kstrdup(ptr noundef %dev2.i99, ptr noundef nonnull @.str.3, i32 noundef 3264) #7
  %tobool4.not.i101 = icmp eq ptr %call3.i100, null
  br i1 %tobool4.not.i101, label %if.end.i102.cleanup50_crit_edge, label %create_sysfs_entry_channel.exit112

if.end.i102.cleanup50_crit_edge:                  ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

create_sysfs_entry_channel.exit112:               ; preds = %if.end.i102
  %60 = ptrtoint ptr %call.i97 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %mdev, ptr %call.i97, align 4
  %index8.i103 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i97, i32 0, i32 1
  %61 = ptrtoint ptr %index8.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %i.2126, ptr %index8.i103, align 4
  %attr.i104 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i97, i32 0, i32 2
  %62 = ptrtoint ptr %attr.i104 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call3.i100, ptr %attr.i104, align 4
  %mode13.i105 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i97, i32 0, i32 2, i32 0, i32 1
  %63 = ptrtoint ptr %mode13.i105 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 438, ptr %mode13.i105, align 4
  %show.i106 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i97, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %show.i106 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @show_values_channel, ptr %show.i106, align 4
  %store.i107 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i97, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %store.i107 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @set_values_channel, ptr %store.i107, align 4
  %key.i108 = getelementptr inbounds %struct.hidma_chan_attr, ptr %call.i97, i32 0, i32 2, i32 0, i32 3
  %66 = ptrtoint ptr %key.i108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @create_sysfs_entry_channel.__key, ptr %key.i108, align 4
  %call.i.i109 = call i32 @sysfs_create_file_ns(ptr noundef %55, ptr noundef %attr.i104, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool44.not = icmp eq i32 %call.i.i109, 0
  br i1 %tobool44.not, label %for.cond31, label %create_sysfs_entry_channel.exit112.cleanup50_crit_edge

create_sysfs_entry_channel.exit112.cleanup50_crit_edge: ; preds = %create_sysfs_entry_channel.exit112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

cleanup50:                                        ; preds = %create_sysfs_entry_channel.exit112.cleanup50_crit_edge, %if.end.i102.cleanup50_crit_edge, %if.end40.cleanup50_crit_edge, %create_sysfs_entry_channel.exit.cleanup50_crit_edge, %if.end.i90.cleanup50_crit_edge, %for.body34.cleanup50_crit_edge, %for.cond31.cleanup50_crit_edge, %create_sysfs_entry.exit.cleanup50_crit_edge, %if.end.i.cleanup50_crit_edge, %for.body20.cleanup50_crit_edge, %for.cond31.preheader.cleanup50_crit_edge, %for.body.cleanup50_crit_edge, %if.end.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup50_crit_edge ], [ -12, %if.end.cleanup50_crit_edge ], [ 0, %for.cond31.preheader.cleanup50_crit_edge ], [ %call.i.i, %create_sysfs_entry_channel.exit.cleanup50_crit_edge ], [ %call.i.i109, %create_sysfs_entry_channel.exit112.cleanup50_crit_edge ], [ 0, %for.cond31.cleanup50_crit_edge ], [ -12, %for.body34.cleanup50_crit_edge ], [ -12, %if.end.i90.cleanup50_crit_edge ], [ -12, %if.end40.cleanup50_crit_edge ], [ -12, %if.end.i102.cleanup50_crit_edge ], [ -12, %if.end.i.cleanup50_crit_edge ], [ -12, %for.body20.cleanup50_crit_edge ], [ %call14.i, %create_sysfs_entry.exit.cleanup50_crit_edge ], [ -12, %for.body.cleanup50_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_values(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.016.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ]
  %get = getelementptr [8 x %struct.hidma_mgmt_fileinfo], ptr @hidma_mgmt_files, i32 0, i32 %i.016.lcssa, i32 2
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  %call7 = tail call i32 %6(ptr noundef %1) #7
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %call7)
  br label %for.end

for.inc:                                          ; preds = %entry
  %call4.1 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp eq i32 %call4.1, 0
  br i1 %cmp5.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %call4.2 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(13) @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp eq i32 %call4.2, 0
  br i1 %cmp5.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %call4.3 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(23) @.str.8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp eq i32 %call4.3, 0
  br i1 %cmp5.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %call4.4 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(16) @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %cmp5.4 = icmp eq i32 %call4.4, 0
  br i1 %cmp5.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %call4.5 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(16) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %cmp5.5 = icmp eq i32 %call4.5, 0
  br i1 %cmp5.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %call4.6 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(18) @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.6)
  %cmp5.6 = icmp eq i32 %call4.6, 0
  br i1 %cmp5.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %call4.7 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.7)
  %cmp5.7 = icmp eq i32 %call4.7, 0
  br i1 %cmp5.7, label %for.inc.6.if.then_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.then
  %call9 = tail call i32 @strlen(ptr noundef %buf) #10
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_values(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !43
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call4 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %for.cond.preheader.if.then6_crit_edge, label %for.inc

for.cond.preheader.if.then6_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %for.inc.6.if.then6_crit_edge, %for.inc.5.if.then6_crit_edge, %for.inc.4.if.then6_crit_edge, %for.inc.3.if.then6_crit_edge, %for.inc.2.if.then6_crit_edge, %for.inc.1.if.then6_crit_edge, %for.inc.if.then6_crit_edge, %for.cond.preheader.if.then6_crit_edge
  %i.023.lcssa = phi i32 [ 0, %for.cond.preheader.if.then6_crit_edge ], [ 1, %for.inc.if.then6_crit_edge ], [ 2, %for.inc.1.if.then6_crit_edge ], [ 3, %for.inc.2.if.then6_crit_edge ], [ 4, %for.inc.3.if.then6_crit_edge ], [ 5, %for.inc.4.if.then6_crit_edge ], [ 6, %for.inc.5.if.then6_crit_edge ], [ 7, %for.inc.6.if.then6_crit_edge ]
  %set = getelementptr [8 x %struct.hidma_mgmt_fileinfo], ptr @hidma_mgmt_files, i32 0, i32 %i.023.lcssa, i32 3
  %5 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set, align 4
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %conv = zext i32 %8 to i64
  %call8 = call i32 %6(ptr noundef %1, i64 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.for.end_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %call4.1 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp eq i32 %call4.1, 0
  br i1 %cmp5.1, label %for.inc.if.then6_crit_edge, label %for.inc.1

for.inc.if.then6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.1:                                        ; preds = %for.inc
  %call4.2 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(13) @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp eq i32 %call4.2, 0
  br i1 %cmp5.2, label %for.inc.1.if.then6_crit_edge, label %for.inc.2

for.inc.1.if.then6_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.2:                                        ; preds = %for.inc.1
  %call4.3 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(23) @.str.8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp eq i32 %call4.3, 0
  br i1 %cmp5.3, label %for.inc.2.if.then6_crit_edge, label %for.inc.3

for.inc.2.if.then6_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.3:                                        ; preds = %for.inc.2
  %call4.4 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(16) @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %cmp5.4 = icmp eq i32 %call4.4, 0
  br i1 %cmp5.4, label %for.inc.3.if.then6_crit_edge, label %for.inc.4

for.inc.3.if.then6_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.4:                                        ; preds = %for.inc.3
  %call4.5 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(16) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %cmp5.5 = icmp eq i32 %call4.5, 0
  br i1 %cmp5.5, label %for.inc.4.if.then6_crit_edge, label %for.inc.5

for.inc.4.if.then6_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.5:                                        ; preds = %for.inc.4
  %call4.6 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(18) @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.6)
  %cmp5.6 = icmp eq i32 %call4.6, 0
  br i1 %cmp5.6, label %for.inc.5.if.then6_crit_edge, label %for.inc.6

for.inc.5.if.then6_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.6:                                        ; preds = %for.inc.5
  %call4.7 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.7)
  %cmp5.7 = icmp eq i32 %call4.7, 0
  br i1 %cmp5.7, label %for.inc.6.if.then6_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6.if.then6_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.then6.for.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_hw_version_major(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdev, align 4
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_hw_version_major(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdev, align 4
  %conv1 = trunc i64 %val to i8
  store i8 %conv1, ptr %mdev, align 4
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %mdev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_hw_version_minor(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_version_minor = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %hw_version_minor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_version_minor, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_hw_version_minor(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_version_minor = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %hw_version_minor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_version_minor, align 1
  %conv1 = trunc i64 %val to i8
  store i8 %conv1, ptr %hw_version_minor, align 1
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %hw_version_minor to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %hw_version_minor, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_dma_channels(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_channels = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 6
  %0 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_channels, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dma_channels(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_channels = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 6
  %0 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_channels, align 4
  %conv1 = trunc i64 %val to i32
  store i32 %conv1, ptr %dma_channels, align 4
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dma_channels, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_chreset_timeout_cycles(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chreset_timeout_cycles = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 7
  %0 = ptrtoint ptr %chreset_timeout_cycles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chreset_timeout_cycles, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_chreset_timeout_cycles(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chreset_timeout_cycles = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 7
  %0 = ptrtoint ptr %chreset_timeout_cycles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chreset_timeout_cycles, align 4
  %conv1 = trunc i64 %val to i32
  store i32 %conv1, ptr %chreset_timeout_cycles, align 4
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chreset_timeout_cycles to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %chreset_timeout_cycles, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_max_wr_xactions(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_wr_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 2
  %0 = ptrtoint ptr %max_wr_xactions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_wr_xactions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_max_wr_xactions(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_wr_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 2
  %0 = ptrtoint ptr %max_wr_xactions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_wr_xactions, align 4
  %conv1 = trunc i64 %val to i32
  store i32 %conv1, ptr %max_wr_xactions, align 4
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %max_wr_xactions to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max_wr_xactions, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_max_rd_xactions(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rd_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 3
  %0 = ptrtoint ptr %max_rd_xactions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rd_xactions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_max_rd_xactions(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rd_xactions = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 3
  %0 = ptrtoint ptr %max_rd_xactions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rd_xactions, align 4
  %conv1 = trunc i64 %val to i32
  store i32 %conv1, ptr %max_rd_xactions, align 4
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %max_rd_xactions to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max_rd_xactions, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_max_write_request(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_write_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %max_write_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_write_request, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_max_write_request(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_write_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %max_write_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_write_request, align 4
  %conv1 = trunc i64 %val to i32
  store i32 %conv1, ptr %max_write_request, align 4
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %max_write_request to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max_write_request, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_max_read_request(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_read_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 5
  %0 = ptrtoint ptr %max_read_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_read_request, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_max_read_request(ptr noundef %mdev, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_read_request = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %mdev, i32 0, i32 5
  %0 = ptrtoint ptr %max_read_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_read_request, align 4
  %conv1 = trunc i64 %val to i32
  store i32 %conv1, ptr %max_read_request, align 4
  %call = tail call i32 @hidma_mgmt_setup(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %max_read_request to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max_read_request, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidma_mgmt_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_values_channel(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %add.ptr = getelementptr i8, ptr %attr, i32 -8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(9) @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priority = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %2, i32 0, i32 9
  br label %if.end13.sink.split

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(7) @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %weight = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %2, i32 0, i32 10
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then9, %if.then
  %weight.sink = phi ptr [ %weight, %if.then9 ], [ %priority, %if.then ]
  %5 = ptrtoint ptr %weight.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %weight.sink, align 4
  %index10 = getelementptr i8, ptr %attr, i32 -4
  %7 = ptrtoint ptr %index10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index10, align 4
  %arrayidx11 = getelementptr i32, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %10)
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge
  %call14 = tail call i32 @strlen(ptr noundef %buf) #10
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_values_channel(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !43
  %add.ptr = getelementptr i8, ptr %attr, i32 -8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call4 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(9) @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %index = getelementptr i8, ptr %attr, i32 -4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %dma_channels.i = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %dma_channels.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.not.i = icmp ugt i32 %8, %6
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp, align 4
  %priority.i = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %2, i32 0, i32 9
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priority.i, align 4
  %arrayidx.i = getelementptr i32, ptr %12, i32 %6
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  store i32 %10, ptr %arrayidx.i, align 4
  %call.i37 = call i32 @hidma_mgmt_setup(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call12 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(7) @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.else
  %index16 = getelementptr i8, ptr %attr, i32 -4
  %15 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index16, align 4
  %dma_channels.i38 = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %2, i32 0, i32 6
  %17 = ptrtoint ptr %dma_channels.i38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_channels.i38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.not.i39 = icmp ugt i32 %18, %16
  br i1 %cmp.not.i39, label %if.end.i43, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i43:                                       ; preds = %if.then15
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp, align 4
  %weight.i = getelementptr inbounds %struct.hidma_mgmt_dev, ptr %2, i32 0, i32 10
  %21 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %weight.i, align 4
  %arrayidx.i40 = getelementptr i32, ptr %22, i32 %16
  %23 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i40, align 4
  store i32 %20, ptr %arrayidx.i40, align 4
  %call.i41 = call i32 @hidma_mgmt_setup(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %if.end.i43.cleanup_crit_edge, label %if.end.i43.cleanup.sink.split_crit_edge

if.end.i43.cleanup.sink.split_crit_edge:          ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i43.cleanup_crit_edge:                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i43.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %weight.i.sink = phi ptr [ %priority.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %weight.i, %if.end.i43.cleanup.sink.split_crit_edge ]
  %.sink52 = phi i32 [ %6, %if.end.i.cleanup.sink.split_crit_edge ], [ %16, %if.end.i43.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ %14, %if.end.i.cleanup.sink.split_crit_edge ], [ %24, %if.end.i43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i37, %if.end.i.cleanup.sink.split_crit_edge ], [ %call.i41, %if.end.i43.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %weight.i.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %weight.i.sink, align 4
  %arrayidx7.i44 = getelementptr i32, ptr %26, i32 %.sink52
  %27 = ptrtoint ptr %arrayidx7.i44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %arrayidx7.i44, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i43.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.end.i43.cleanup_crit_edge ], [ %count, %if.end.i.cleanup_crit_edge ], [ %count, %if.else.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 246, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 254, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 270, i32 41}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 276, i32 41}
!8 = !{ptr @__ksymtab_hidma_mgmt_init_sys, !9, !"__ksymtab_hidma_mgmt_init_sys", i1 false, i1 false}
!9 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 285, i32 1}
!10 = !{ptr @create_sysfs_entry.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 203, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 109, i32 17}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 89, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 90, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 91, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 92, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 93, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 94, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 95, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 96, i32 2}
!30 = !{ptr @hidma_mgmt_files, !31, !"hidma_mgmt_files", i1 false, i1 false}
!31 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 88, i32 35}
!32 = !{ptr @create_sysfs_entry_channel.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/dma/qcom/hidma_mgmt_sys.c", i32 229, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
