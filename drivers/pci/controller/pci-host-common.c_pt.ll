; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-host-common.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-host-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_host_common_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_host_common_probe\09\09\09\09"
module asm "\09.long\09__crc_pci_host_common_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_host_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_host_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pci_host_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_host_common_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_host_common_remove\09\09\09\09"
module asm "\09.long\09__crc_pci_host_common_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_host_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_host_common_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pci_host_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }

@__kstrtab_pci_host_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_host_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_host_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_host_common_probe to i32), ptr @__kstrtab_pci_host_common_probe, ptr @__kstrtabns_pci_host_common_probe }, section "___ksymtab_gpl+pci_host_common_probe", align 4
@__kstrtab_pci_host_common_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_host_common_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_host_common_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_host_common_remove to i32), ptr @__kstrtab_pci_host_common_remove, ptr @__kstrtabns_pci_host_common_remove }, section "___ksymtab_gpl+pci_host_common_remove", align 4
@__UNIQUE_ID_file236 = internal constant [60 x i8] c"pci_host_common.file=drivers/pci/controller/pci-host-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [31 x i8] c"pci_host_common.license=GPL v2\00", section ".modinfo", align 1
@gen_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing \22reg\22 property\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gen_pci_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pci/controller/pci-host-common.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gen_pci_init._entry_ptr = internal global ptr @gen_pci_init._entry, section ".printk_index", align 4
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [44 x i8] c"../drivers/pci/controller/pci-host-common.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 33, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__ksymtab_pci_host_common_probe, ptr @__ksymtab_pci_host_common_remove, ptr @gen_pci_init._entry, ptr @gen_pci_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_host_common_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %cfgres.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 0) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %driver_data.i.i, align 4
  tail call void @of_pci_check_probe_only() #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cfgres.i) #4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = call ptr @memset(ptr %cfgres.i, i32 255, i32 32)
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i = call i32 @of_address_to_resource(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %cfgres.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #7
  %4 = inttoptr i32 %call.i to ptr
  br label %gen_pci_init.exit

if.end.i:                                         ; preds = %if.end6
  %windows.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call3, i32 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %entry1.0.in.i.i = phi ptr [ %windows.i, %if.end.i ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %5 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %windows.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.gen_pci_init.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.gen_pci_init.exit.thread_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gen_pci_init.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %res.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %9, 7936
  %cmp2.i.i = icmp eq i32 %and.i.i.i, 4096
  br i1 %cmp2.i.i, label %resource_list_first_type.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

resource_list_first_type.exit.i:                  ; preds = %for.body.i.i
  %tobool3.not.i = icmp eq ptr %entry1.0.i.i, null
  br i1 %tobool3.not.i, label %resource_list_first_type.exit.i.gen_pci_init.exit.thread_crit_edge, label %if.end6.i

resource_list_first_type.exit.i.gen_pci_init.exit.thread_crit_edge: ; preds = %resource_list_first_type.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gen_pci_init.exit.thread

if.end6.i:                                        ; preds = %resource_list_first_type.exit.i
  %call7.i = call ptr @pci_ecam_create(ptr noundef %dev1, ptr noundef nonnull %cfgres.i, ptr noundef %7, ptr noundef nonnull %call) #4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end6.i.gen_pci_init.exit_crit_edge, label %if.end10.i

if.end6.i.gen_pci_init.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gen_pci_init.exit

if.end10.i:                                       ; preds = %if.end6.i
  %call.i.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @gen_pci_unmap_cfg, ptr noundef %call7.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.i.gen_pci_init.exit_crit_edge, label %if.then13.i

if.end10.i.gen_pci_init.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gen_pci_init.exit

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_ecam_free(ptr noundef %call7.i) #4
  %10 = inttoptr i32 %call.i.i to ptr
  br label %gen_pci_init.exit

gen_pci_init.exit.thread:                         ; preds = %resource_list_first_type.exit.i.gen_pci_init.exit.thread_crit_edge, %for.cond.i.i.gen_pci_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cfgres.i) #4
  br label %if.then9

gen_pci_init.exit:                                ; preds = %if.then13.i, %if.end10.i.gen_pci_init.exit_crit_edge, %if.end6.i.gen_pci_init.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ %4, %do.end.i ], [ %10, %if.then13.i ], [ %call7.i, %if.end6.i.gen_pci_init.exit_crit_edge ], [ %call7.i, %if.end10.i.gen_pci_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cfgres.i) #4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %gen_pci_init.exit.if.then9_crit_edge, label %if.end11

gen_pci_init.exit.if.then9_crit_edge:             ; preds = %gen_pci_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %gen_pci_init.exit.if.then9_crit_edge, %gen_pci_init.exit.thread
  %retval.0.i36 = phi ptr [ inttoptr (i32 -19 to ptr), %gen_pci_init.exit.thread ], [ %retval.0.i, %gen_pci_init.exit.if.then9_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i36 to i32
  br label %cleanup

if.end11:                                         ; preds = %gen_pci_init.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %12 = load i32, ptr @pci_flags, align 4
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %12, 2
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  store i32 %or.i, ptr @pci_flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i, ptr %sysdata, align 4
  %pci_ops = getelementptr inbounds %struct.pci_ecam_ops, ptr %call, i32 0, i32 1
  %ops16 = getelementptr inbounds %struct.pci_host_bridge, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %ops16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pci_ops, ptr %ops16, align 4
  %msi_domain = getelementptr inbounds %struct.pci_host_bridge, ptr %call3, i32 0, i32 13
  %15 = ptrtoint ptr %msi_domain to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %msi_domain, align 8
  %bf.set = or i16 %bf.load, 32
  store i16 %bf.set, ptr %msi_domain, align 8
  %call17 = call i32 @pci_host_probe(ptr noundef nonnull %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then9 ], [ %call17, %if.end15 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_pci_check_probe_only() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_host_common_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pci_lock_rescan_remove() #4
  %bus = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #4
  tail call void @pci_unlock_rescan_remove() #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ecam_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gen_pci_unmap_cfg(ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_ecam_free(ptr noundef %ptr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ecam_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_pci_host_common_probe, !1, !"__ksymtab_pci_host_common_probe", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-host-common.c", i32 86, i32 1}
!2 = !{ptr @__ksymtab_pci_host_common_remove, !3, !"__ksymtab_pci_host_common_remove", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-host-common.c", i32 99, i32 1}
!4 = !{ptr @__UNIQUE_ID_file236, !5, !"__UNIQUE_ID_file236", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-host-common.c", i32 101, i32 1}
!6 = !{ptr @__UNIQUE_ID_license237, !5, !"__UNIQUE_ID_license237", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pci-host-common.c", i32 33, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gen_pci_init._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @gen_pci_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
