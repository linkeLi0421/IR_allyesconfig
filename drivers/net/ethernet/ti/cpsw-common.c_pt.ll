; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw-common.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ti_cm_get_macid\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_cm_get_macid\09\09\09\09"
module asm "\09.long\09__crc_ti_cm_get_macid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_cm_get_macid:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_cm_get_macid\22\09\09\09\09\09"
module asm "__kstrtabns_ti_cm_get_macid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,dm8148\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am33xx\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,am3517-emac\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,dm816-emac\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,am43\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,dra7\00", [24 x i8] zeroinitializer }, align 32
@ti_cm_get_macid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 89, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"incompatible machine/device type for reading mac address\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti_cm_get_macid\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/ti/cpsw-common.c\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_cm_get_macid._entry_ptr = internal global ptr @ti_cm_get_macid._entry, section ".printk_index", align 4
@__kstrtab_ti_cm_get_macid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_cm_get_macid = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_cm_get_macid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_cm_get_macid to i32), ptr @__kstrtab_ti_cm_get_macid, ptr @__kstrtabns_ti_cm_get_macid }, section "___ksymtab_gpl+ti_cm_get_macid", align 4
@__UNIQUE_ID_file281 = internal constant [53 x i8] c"cpsw_common.file=drivers/net/ethernet/ti/cpsw-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [24 x i8] c"cpsw_common.license=GPL\00", section ".modinfo", align 1
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 71, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 74, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 77, i32 44 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 80, i32 44 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 83, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 86, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 89, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [41 x i8] c"../drivers/net/ethernet/ti/cpsw-common.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 49, i32 57 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__ksymtab_ti_cm_get_macid, ptr @ti_cm_get_macid._entry, ptr @ti_cm_get_macid._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cm_get_macid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_cm_get_macid(ptr noundef %dev, i32 noundef %slave, ptr noundef writeonly %mac_addr) #0 align 64 {
entry:
  %macid_lo.i101 = alloca i32, align 4
  %macid_hi.i102 = alloca i32, align 4
  %macid_lsb.i = alloca i32, align 4
  %macid_msb.i = alloca i32, align 4
  %macid_lo.i46 = alloca i32, align 4
  %macid_hi.i47 = alloca i32, align 4
  %macid_lo.i = alloca i32, align 4
  %macid_hi.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_lo.i) #4
  %0 = ptrtoint ptr %macid_lo.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %macid_lo.i, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_hi.i) #4
  %1 = ptrtoint ptr %macid_hi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %macid_hi.i, align 4, !annotation !36
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.11) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i to i32
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -19 to ptr)
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %4
  br label %cpsw_am33xx_cm_get_macid.exit

if.end5.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = shl i32 %slave, 3
  %add.i = add i32 %mul.i, 1584
  %call6.i = call i32 @regmap_read(ptr noundef %call.i, i32 noundef %add.i, ptr noundef nonnull %macid_lo.i) #4
  %add10.i = add i32 %mul.i, 1588
  %call11.i = call i32 @regmap_read(ptr noundef %call.i, i32 noundef %add10.i, ptr noundef nonnull %macid_hi.i) #4
  %5 = ptrtoint ptr %macid_lo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macid_lo.i, align 4
  %shr.i = lshr i32 %6, 8
  %conv12.i = trunc i32 %shr.i to i8
  %arrayidx.i = getelementptr i8, ptr %mac_addr, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12.i, ptr %arrayidx.i, align 1
  %conv14.i = trunc i32 %6 to i8
  %arrayidx15.i = getelementptr i8, ptr %mac_addr, i32 4
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  %9 = ptrtoint ptr %macid_hi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %macid_hi.i, align 4
  %shr16.i = lshr i32 %10, 24
  %conv18.i = trunc i32 %shr16.i to i8
  %arrayidx19.i = getelementptr i8, ptr %mac_addr, i32 3
  %11 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18.i, ptr %arrayidx19.i, align 1
  %shr20.i = lshr i32 %10, 16
  %conv22.i = trunc i32 %shr20.i to i8
  %arrayidx23.i = getelementptr i8, ptr %mac_addr, i32 2
  %12 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22.i, ptr %arrayidx23.i, align 1
  %shr24.i = lshr i32 %10, 8
  %conv26.i = trunc i32 %shr24.i to i8
  %arrayidx27.i = getelementptr i8, ptr %mac_addr, i32 1
  %13 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv26.i, ptr %arrayidx27.i, align 1
  %conv29.i = trunc i32 %10 to i8
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29.i, ptr %mac_addr, align 1
  br label %cpsw_am33xx_cm_get_macid.exit

cpsw_am33xx_cm_get_macid.exit:                    ; preds = %if.end5.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %spec.select.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_hi.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_lo.i) #4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_lo.i46) #4
  %15 = ptrtoint ptr %macid_lo.i46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %macid_lo.i46, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_hi.i47) #4
  %16 = ptrtoint ptr %macid_hi.i47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %macid_hi.i47, align 4, !annotation !36
  %of_node.i48 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i48, align 8
  %call.i49 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %18, ptr noundef nonnull @.str.11) #4
  %cmp.i.i50 = icmp ugt ptr %call.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i50, label %if.then.i53, label %if.end5.i74

if.then.i53:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call.i49 to i32
  %cmp.i51 = icmp eq ptr %call.i49, inttoptr (i32 -19 to ptr)
  %spec.select.i52 = select i1 %cmp.i51, i32 0, i32 %19
  br label %cpsw_am33xx_cm_get_macid.exit76

if.end5.i74:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i54 = shl i32 %slave, 3
  %add.i55 = add i32 %mul.i54, 1584
  %call6.i56 = call i32 @regmap_read(ptr noundef %call.i49, i32 noundef %add.i55, ptr noundef nonnull %macid_lo.i46) #4
  %add10.i57 = add i32 %mul.i54, 1588
  %call11.i58 = call i32 @regmap_read(ptr noundef %call.i49, i32 noundef %add10.i57, ptr noundef nonnull %macid_hi.i47) #4
  %20 = ptrtoint ptr %macid_lo.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %macid_lo.i46, align 4
  %shr.i59 = lshr i32 %21, 8
  %conv12.i60 = trunc i32 %shr.i59 to i8
  %arrayidx.i61 = getelementptr i8, ptr %mac_addr, i32 5
  %22 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12.i60, ptr %arrayidx.i61, align 1
  %conv14.i62 = trunc i32 %21 to i8
  %arrayidx15.i63 = getelementptr i8, ptr %mac_addr, i32 4
  %23 = ptrtoint ptr %arrayidx15.i63 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv14.i62, ptr %arrayidx15.i63, align 1
  %24 = ptrtoint ptr %macid_hi.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %macid_hi.i47, align 4
  %shr16.i64 = lshr i32 %25, 24
  %conv18.i65 = trunc i32 %shr16.i64 to i8
  %arrayidx19.i66 = getelementptr i8, ptr %mac_addr, i32 3
  %26 = ptrtoint ptr %arrayidx19.i66 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv18.i65, ptr %arrayidx19.i66, align 1
  %shr20.i67 = lshr i32 %25, 16
  %conv22.i68 = trunc i32 %shr20.i67 to i8
  %arrayidx23.i69 = getelementptr i8, ptr %mac_addr, i32 2
  %27 = ptrtoint ptr %arrayidx23.i69 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv22.i68, ptr %arrayidx23.i69, align 1
  %shr24.i70 = lshr i32 %25, 8
  %conv26.i71 = trunc i32 %shr24.i70 to i8
  %arrayidx27.i72 = getelementptr i8, ptr %mac_addr, i32 1
  %28 = ptrtoint ptr %arrayidx27.i72 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv26.i71, ptr %arrayidx27.i72, align 1
  %conv29.i73 = trunc i32 %25 to i8
  %29 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv29.i73, ptr %mac_addr, align 1
  br label %cpsw_am33xx_cm_get_macid.exit76

cpsw_am33xx_cm_get_macid.exit76:                  ; preds = %if.end5.i74, %if.then.i53
  %retval.0.i75 = phi i32 [ 0, %if.end5.i74 ], [ %spec.select.i52, %if.then.i53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_hi.i47) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_lo.i46) #4
  br label %return

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call7 = tail call i32 @of_device_is_compatible(ptr noundef %31, ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_lsb.i) #4
  %32 = ptrtoint ptr %macid_lsb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %macid_lsb.i, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_msb.i) #4
  %33 = ptrtoint ptr %macid_msb.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %macid_msb.i, align 4, !annotation !36
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call.i78 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %35, ptr noundef nonnull @.str.11) #4
  %cmp.i.i79 = icmp ugt ptr %call.i78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i79, label %if.then.i82, label %if.end5.i99

if.then.i82:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %call.i78 to i32
  %cmp.i80 = icmp eq ptr %call.i78, inttoptr (i32 -19 to ptr)
  %spec.select.i81 = select i1 %cmp.i80, i32 0, i32 %36
  br label %davinci_emac_3517_get_macid.exit

if.end5.i99:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i83 = shl i32 %slave, 3
  %add.i84 = add i32 %mul.i83, 272
  %call6.i85 = call i32 @regmap_read(ptr noundef %call.i78, i32 noundef %add.i84, ptr noundef nonnull %macid_lsb.i) #4
  %add10.i86 = add i32 %mul.i83, 276
  %call11.i87 = call i32 @regmap_read(ptr noundef %call.i78, i32 noundef %add10.i86, ptr noundef nonnull %macid_msb.i) #4
  %37 = ptrtoint ptr %macid_msb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %macid_msb.i, align 4
  %shr.i88 = lshr i32 %38, 16
  %conv12.i89 = trunc i32 %shr.i88 to i8
  %39 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv12.i89, ptr %mac_addr, align 1
  %shr13.i = lshr i32 %38, 8
  %conv15.i = trunc i32 %shr13.i to i8
  %arrayidx16.i = getelementptr i8, ptr %mac_addr, i32 1
  %40 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %conv18.i90 = trunc i32 %38 to i8
  %arrayidx19.i91 = getelementptr i8, ptr %mac_addr, i32 2
  %41 = ptrtoint ptr %arrayidx19.i91 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv18.i90, ptr %arrayidx19.i91, align 1
  %42 = ptrtoint ptr %macid_lsb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %macid_lsb.i, align 4
  %shr20.i92 = lshr i32 %43, 16
  %conv22.i93 = trunc i32 %shr20.i92 to i8
  %arrayidx23.i94 = getelementptr i8, ptr %mac_addr, i32 3
  %44 = ptrtoint ptr %arrayidx23.i94 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv22.i93, ptr %arrayidx23.i94, align 1
  %shr24.i95 = lshr i32 %43, 8
  %conv26.i96 = trunc i32 %shr24.i95 to i8
  %arrayidx27.i97 = getelementptr i8, ptr %mac_addr, i32 4
  %45 = ptrtoint ptr %arrayidx27.i97 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv26.i96, ptr %arrayidx27.i97, align 1
  %conv29.i98 = trunc i32 %43 to i8
  %arrayidx30.i = getelementptr i8, ptr %mac_addr, i32 5
  %46 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv29.i98, ptr %arrayidx30.i, align 1
  br label %davinci_emac_3517_get_macid.exit

davinci_emac_3517_get_macid.exit:                 ; preds = %if.end5.i99, %if.then.i82
  %retval.0.i100 = phi i32 [ 0, %if.end5.i99 ], [ %spec.select.i81, %if.then.i82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_msb.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_lsb.i) #4
  br label %return

if.end11:                                         ; preds = %if.end6
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %call13 = tail call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_lo.i101) #4
  %49 = ptrtoint ptr %macid_lo.i101 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %macid_lo.i101, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_hi.i102) #4
  %50 = ptrtoint ptr %macid_hi.i102 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %macid_hi.i102, align 4, !annotation !36
  %51 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node, align 8
  %call.i104 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %52, ptr noundef nonnull @.str.11) #4
  %cmp.i.i105 = icmp ugt ptr %call.i104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i105, label %if.then.i108, label %if.end5.i129

if.then.i108:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %call.i104 to i32
  %cmp.i106 = icmp eq ptr %call.i104, inttoptr (i32 -19 to ptr)
  %spec.select.i107 = select i1 %cmp.i106, i32 0, i32 %53
  br label %cpsw_am33xx_cm_get_macid.exit131

if.end5.i129:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i109 = shl i32 %slave, 3
  %add.i110 = add i32 %mul.i109, 48
  %call6.i111 = call i32 @regmap_read(ptr noundef %call.i104, i32 noundef %add.i110, ptr noundef nonnull %macid_lo.i101) #4
  %add10.i112 = add i32 %mul.i109, 52
  %call11.i113 = call i32 @regmap_read(ptr noundef %call.i104, i32 noundef %add10.i112, ptr noundef nonnull %macid_hi.i102) #4
  %54 = ptrtoint ptr %macid_lo.i101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %macid_lo.i101, align 4
  %shr.i114 = lshr i32 %55, 8
  %conv12.i115 = trunc i32 %shr.i114 to i8
  %arrayidx.i116 = getelementptr i8, ptr %mac_addr, i32 5
  %56 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv12.i115, ptr %arrayidx.i116, align 1
  %conv14.i117 = trunc i32 %55 to i8
  %arrayidx15.i118 = getelementptr i8, ptr %mac_addr, i32 4
  %57 = ptrtoint ptr %arrayidx15.i118 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv14.i117, ptr %arrayidx15.i118, align 1
  %58 = ptrtoint ptr %macid_hi.i102 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %macid_hi.i102, align 4
  %shr16.i119 = lshr i32 %59, 24
  %conv18.i120 = trunc i32 %shr16.i119 to i8
  %arrayidx19.i121 = getelementptr i8, ptr %mac_addr, i32 3
  %60 = ptrtoint ptr %arrayidx19.i121 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv18.i120, ptr %arrayidx19.i121, align 1
  %shr20.i122 = lshr i32 %59, 16
  %conv22.i123 = trunc i32 %shr20.i122 to i8
  %arrayidx23.i124 = getelementptr i8, ptr %mac_addr, i32 2
  %61 = ptrtoint ptr %arrayidx23.i124 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv22.i123, ptr %arrayidx23.i124, align 1
  %shr24.i125 = lshr i32 %59, 8
  %conv26.i126 = trunc i32 %shr24.i125 to i8
  %arrayidx27.i127 = getelementptr i8, ptr %mac_addr, i32 1
  %62 = ptrtoint ptr %arrayidx27.i127 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv26.i126, ptr %arrayidx27.i127, align 1
  %conv29.i128 = trunc i32 %59 to i8
  %63 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv29.i128, ptr %mac_addr, align 1
  br label %cpsw_am33xx_cm_get_macid.exit131

cpsw_am33xx_cm_get_macid.exit131:                 ; preds = %if.end5.i129, %if.then.i108
  %retval.0.i130 = phi i32 [ 0, %if.end5.i129 ], [ %spec.select.i107, %if.then.i108 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_hi.i102) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_lo.i101) #4
  br label %return

if.end17:                                         ; preds = %if.end11
  %call18 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call fastcc i32 @cpsw_am33xx_cm_get_macid(ptr noundef %dev, i16 noundef zeroext 1584, i32 noundef %slave, ptr noundef %mac_addr)
  br label %return

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = tail call fastcc i32 @davinci_emac_3517_get_macid(ptr noundef %dev, i16 noundef zeroext 1300, i32 noundef %slave, ptr noundef %mac_addr)
  br label %return

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  br label %return

return:                                           ; preds = %do.end, %if.then25, %if.then20, %cpsw_am33xx_cm_get_macid.exit131, %davinci_emac_3517_get_macid.exit, %cpsw_am33xx_cm_get_macid.exit76, %cpsw_am33xx_cm_get_macid.exit
  %retval.0 = phi i32 [ %retval.0.i, %cpsw_am33xx_cm_get_macid.exit ], [ %retval.0.i75, %cpsw_am33xx_cm_get_macid.exit76 ], [ %retval.0.i100, %davinci_emac_3517_get_macid.exit ], [ %retval.0.i130, %cpsw_am33xx_cm_get_macid.exit131 ], [ %call21, %if.then20 ], [ %call26, %if.then25 ], [ -2, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_am33xx_cm_get_macid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i32 noundef %slave, ptr nocapture noundef writeonly %mac_addr) unnamed_addr #0 align 64 {
entry:
  %macid_lo = alloca i32, align 4
  %macid_hi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_lo) #4
  %0 = ptrtoint ptr %macid_lo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %macid_lo, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_hi) #4
  %1 = ptrtoint ptr %macid_hi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %macid_hi, align 4, !annotation !36
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.11) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 0, i32 %4
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %offset to i32
  %mul = shl i32 %slave, 3
  %add = add i32 %mul, %conv
  %call6 = call i32 @regmap_read(ptr noundef %call, i32 noundef %add, ptr noundef nonnull %macid_lo) #4
  %add10 = add i32 %add, 4
  %call11 = call i32 @regmap_read(ptr noundef %call, i32 noundef %add10, ptr noundef nonnull %macid_hi) #4
  %5 = ptrtoint ptr %macid_lo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macid_lo, align 4
  %shr = lshr i32 %6, 8
  %conv12 = trunc i32 %shr to i8
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12, ptr %arrayidx, align 1
  %conv14 = trunc i32 %6 to i8
  %arrayidx15 = getelementptr i8, ptr %mac_addr, i32 4
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %arrayidx15, align 1
  %9 = ptrtoint ptr %macid_hi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %macid_hi, align 4
  %shr16 = lshr i32 %10, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx19 = getelementptr i8, ptr %mac_addr, i32 3
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18, ptr %arrayidx19, align 1
  %shr20 = lshr i32 %10, 16
  %conv22 = trunc i32 %shr20 to i8
  %arrayidx23 = getelementptr i8, ptr %mac_addr, i32 2
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %arrayidx23, align 1
  %shr24 = lshr i32 %10, 8
  %conv26 = trunc i32 %shr24 to i8
  %arrayidx27 = getelementptr i8, ptr %mac_addr, i32 1
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv26, ptr %arrayidx27, align 1
  %conv29 = trunc i32 %10 to i8
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %mac_addr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_hi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_lo) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_emac_3517_get_macid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i32 noundef %slave, ptr nocapture noundef writeonly %mac_addr) unnamed_addr #0 align 64 {
entry:
  %macid_lsb = alloca i32, align 4
  %macid_msb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_lsb) #4
  %0 = ptrtoint ptr %macid_lsb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %macid_lsb, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %macid_msb) #4
  %1 = ptrtoint ptr %macid_msb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %macid_msb, align 4, !annotation !36
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.11) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 0, i32 %4
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %offset to i32
  %mul = shl i32 %slave, 3
  %add = add i32 %mul, %conv
  %call6 = call i32 @regmap_read(ptr noundef %call, i32 noundef %add, ptr noundef nonnull %macid_lsb) #4
  %add10 = add i32 %add, 4
  %call11 = call i32 @regmap_read(ptr noundef %call, i32 noundef %add10, ptr noundef nonnull %macid_msb) #4
  %5 = ptrtoint ptr %macid_msb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %macid_msb, align 4
  %shr = lshr i32 %6, 16
  %conv12 = trunc i32 %shr to i8
  %7 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12, ptr %mac_addr, align 1
  %shr13 = lshr i32 %6, 8
  %conv15 = trunc i32 %shr13 to i8
  %arrayidx16 = getelementptr i8, ptr %mac_addr, i32 1
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %arrayidx16, align 1
  %conv18 = trunc i32 %6 to i8
  %arrayidx19 = getelementptr i8, ptr %mac_addr, i32 2
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv18, ptr %arrayidx19, align 1
  %10 = ptrtoint ptr %macid_lsb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %macid_lsb, align 4
  %shr20 = lshr i32 %11, 16
  %conv22 = trunc i32 %shr20 to i8
  %arrayidx23 = getelementptr i8, ptr %mac_addr, i32 3
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %arrayidx23, align 1
  %shr24 = lshr i32 %11, 8
  %conv26 = trunc i32 %shr24 to i8
  %arrayidx27 = getelementptr i8, ptr %mac_addr, i32 4
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv26, ptr %arrayidx27, align 1
  %conv29 = trunc i32 %11 to i8
  %arrayidx30 = getelementptr i8, ptr %mac_addr, i32 5
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %arrayidx30, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_msb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %macid_lsb) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 71, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 74, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 77, i32 44}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 80, i32 44}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 83, i32 31}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 86, i32 31}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 89, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ti_cm_get_macid._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @ti_cm_get_macid._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_ti_cm_get_macid, !21, !"__ksymtab_ti_cm_get_macid", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 92, i32 1}
!22 = !{ptr @__UNIQUE_ID_file281, !23, !"__UNIQUE_ID_file281", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 94, i32 1}
!24 = !{ptr @__UNIQUE_ID_license282, !23, !"__UNIQUE_ID_license282", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/cpsw-common.c", i32 49, i32 57}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
