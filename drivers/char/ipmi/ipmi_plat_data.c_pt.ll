; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_plat_data.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_plat_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ipmi_platform_add\22, \22a\22\09"
module asm "\09.weak\09__crc_ipmi_platform_add\09\09\09\09"
module asm "\09.long\09__crc_ipmi_platform_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipmi_platform_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ipmi_platform_add\22\09\09\09\09\09"
module asm "__kstrtabns_ipmi_platform_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.68 }
%union.anon.68 = type { %union.anon.69 }
%union.anon.69 = type { [1 x i64] }
%struct.ipmi_plat_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipmi-type\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c-addr\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slave-addr\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"addr-source\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg-size\00", [23 x i8] zeroinitializer }, align 32
@ipmi_platform_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Error allocating IPMI platform device %s.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipmi_platform_add\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/ipmi/ipmi_plat_data.c\00", [61 x i8] zeroinitializer }, align 32
@ipmi_platform_add._entry_ptr = internal global ptr @ipmi_platform_add._entry, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IPMI Address 1\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IPMI Address 2\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IPMI Address 3\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IPMI IRQ\00", [23 x i8] zeroinitializer }, align 32
@ipmi_platform_add._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.8, i32 101, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to add hard-code resources: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipmi_platform_add._entry_ptr.17 = internal global ptr @ipmi_platform_add._entry.13, section ".printk_index", align 4
@ipmi_platform_add._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 108, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to add hard-code properties: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ipmi_platform_add._entry_ptr.20 = internal global ptr @ipmi_platform_add._entry.18, section ".printk_index", align 4
@ipmi_platform_add._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.8, i32 115, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to add hard-code device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ipmi_platform_add._entry_ptr.23 = internal global ptr @ipmi_platform_add._entry.21, section ".printk_index", align 4
@__kstrtab_ipmi_platform_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipmi_platform_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ipmi_platform_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipmi_platform_add to i32), ptr @__kstrtab_ipmi_platform_add, ptr @__kstrtabns_ipmi_platform_add }, section "___ksymtab+ipmi_platform_add", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 35, i32 16 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 37, i32 16 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 41, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 42, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 44, i32 16 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 45, i32 15 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 50, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 71, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 77, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 85, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 93, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 100, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 107, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [38 x i8] c"../drivers/char/ipmi/ipmi_plat_data.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 114, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_ipmi_platform_add, ptr @ipmi_platform_add._entry, ptr @ipmi_platform_add._entry.13, ptr @ipmi_platform_add._entry.18, ptr @ipmi_platform_add._entry.21, ptr @ipmi_platform_add._entry_ptr, ptr @ipmi_platform_add._entry_ptr.17, ptr @ipmi_platform_add._entry_ptr.20, ptr @ipmi_platform_add._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_platform_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_platform_add._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_platform_add._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_platform_add._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipmi_platform_add(ptr noundef %name, i32 noundef %inst, ptr nocapture noundef %p) #0 align 64 {
entry:
  %r = alloca [4 x %struct.resource], align 4
  %pr = alloca [6 x %struct.property_entry], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %r) #4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %pr) #4
  %0 = call ptr @memset(ptr %pr, i32 0, i32 144)
  %1 = call ptr @memset(ptr %r, i32 0, i32 128)
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end43_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then25
  ]

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch.selectcmp = icmp eq i32 %6, 0
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %switch.selectcmp289 = icmp eq i32 %6, 3
  %switch.select290 = select i1 %switch.selectcmp289, i32 3, i32 %switch.select
  %regsize = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.then9, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %regsize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %regsize, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then.if.end11_crit_edge
  %regspacing = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 4
  %10 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regspacing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regsize, align 4
  %14 = ptrtoint ptr %regspacing to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %regspacing, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %conv = trunc i32 %6 to i8
  %.compoundliteral.sroa.6.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 17
  %15 = call ptr @memset(ptr %.compoundliteral.sroa.6.0.pr.sroa_idx, i32 0, i32 7)
  %16 = ptrtoint ptr %pr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str, ptr %pr, align 8
  %.compoundliteral.sroa.2.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 4
  %17 = ptrtoint ptr %.compoundliteral.sroa.2.0.pr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %.compoundliteral.sroa.2.0.pr.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 8
  %18 = ptrtoint ptr %.compoundliteral.sroa.3.0.pr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %.compoundliteral.sroa.3.0.pr.sroa_idx, align 8
  %.compoundliteral.sroa.4298.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 12
  %19 = ptrtoint ptr %.compoundliteral.sroa.4298.0.pr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %.compoundliteral.sroa.4298.0.pr.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 16
  %20 = ptrtoint ptr %.compoundliteral.sroa.5.0.pr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %.compoundliteral.sroa.5.0.pr.sroa_idx, align 8
  br label %if.end43

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %addr = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 3
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr, align 4
  %conv34 = trunc i32 %22 to i16
  %.compoundliteral28.sroa.6.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 18
  %23 = call ptr @memset(ptr %.compoundliteral28.sroa.6.0.pr.sroa_idx, i32 0, i32 6)
  %24 = ptrtoint ptr %pr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.1, ptr %pr, align 8
  %.compoundliteral28.sroa.2.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 4
  %25 = ptrtoint ptr %.compoundliteral28.sroa.2.0.pr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %.compoundliteral28.sroa.2.0.pr.sroa_idx, align 4
  %.compoundliteral28.sroa.3.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 8
  %26 = ptrtoint ptr %.compoundliteral28.sroa.3.0.pr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %.compoundliteral28.sroa.3.0.pr.sroa_idx, align 8
  %.compoundliteral28.sroa.4297.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 12
  %27 = ptrtoint ptr %.compoundliteral28.sroa.4297.0.pr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %.compoundliteral28.sroa.4297.0.pr.sroa_idx, align 4
  %.compoundliteral28.sroa.5.0.pr.sroa_idx = getelementptr inbounds i8, ptr %pr, i32 16
  %28 = ptrtoint ptr %.compoundliteral28.sroa.5.0.pr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv34, ptr %.compoundliteral28.sroa.5.0.pr.sroa_idx, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then25, %if.end16, %entry.if.end43_crit_edge
  %size.1 = phi i32 [ %switch.select290, %if.end16 ], [ 0, %if.then25 ], [ 0, %entry.if.end43_crit_edge ]
  %pidx.0 = phi i32 [ 1, %if.end16 ], [ 1, %if.then25 ], [ 0, %entry.if.end43_crit_edge ]
  %slave_addr = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 8
  %29 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slave_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end43.if.end62_crit_edge, label %if.then44

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then44:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %inc45 = add nuw nsw i32 %pidx.0, 1
  %conv54 = trunc i32 %30 to i8
  %arrayidx46 = getelementptr [6 x %struct.property_entry], ptr %pr, i32 0, i32 %pidx.0
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.2, ptr %arrayidx46, align 8
  %.compoundliteral47.sroa.2.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 4
  %32 = ptrtoint ptr %.compoundliteral47.sroa.2.0.arrayidx46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %.compoundliteral47.sroa.2.0.arrayidx46.sroa_idx, align 4
  %.compoundliteral47.sroa.3.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 8
  %33 = ptrtoint ptr %.compoundliteral47.sroa.3.0.arrayidx46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %.compoundliteral47.sroa.3.0.arrayidx46.sroa_idx, align 8
  %.compoundliteral47.sroa.4296.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 12
  %34 = ptrtoint ptr %.compoundliteral47.sroa.4296.0.arrayidx46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %.compoundliteral47.sroa.4296.0.arrayidx46.sroa_idx, align 4
  %.compoundliteral47.sroa.5.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 16
  %35 = ptrtoint ptr %.compoundliteral47.sroa.5.0.arrayidx46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv54, ptr %.compoundliteral47.sroa.5.0.arrayidx46.sroa_idx, align 8
  %.compoundliteral47.sroa.6.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 17
  %36 = call ptr @memset(ptr %.compoundliteral47.sroa.6.0.arrayidx46.sroa_idx, i32 0, i32 7)
  br label %if.end62

if.end62:                                         ; preds = %if.then44, %if.end43.if.end62_crit_edge
  %pidx.1 = phi i32 [ %inc45, %if.then44 ], [ %pidx.0, %if.end43.if.end62_crit_edge ]
  %inc63 = add nuw nsw i32 %pidx.1, 1
  %addr_source = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 9
  %37 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr_source, align 4
  %conv71 = trunc i32 %38 to i8
  %arrayidx64 = getelementptr [6 x %struct.property_entry], ptr %pr, i32 0, i32 %pidx.1
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.3, ptr %arrayidx64, align 8
  %.compoundliteral65.sroa.2.0.arrayidx64.sroa_idx = getelementptr inbounds i8, ptr %arrayidx64, i32 4
  %40 = ptrtoint ptr %.compoundliteral65.sroa.2.0.arrayidx64.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %.compoundliteral65.sroa.2.0.arrayidx64.sroa_idx, align 4
  %.compoundliteral65.sroa.3.0.arrayidx64.sroa_idx = getelementptr inbounds i8, ptr %arrayidx64, i32 8
  %41 = ptrtoint ptr %.compoundliteral65.sroa.3.0.arrayidx64.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %.compoundliteral65.sroa.3.0.arrayidx64.sroa_idx, align 8
  %.compoundliteral65.sroa.4295.0.arrayidx64.sroa_idx = getelementptr inbounds i8, ptr %arrayidx64, i32 12
  %42 = ptrtoint ptr %.compoundliteral65.sroa.4295.0.arrayidx64.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %.compoundliteral65.sroa.4295.0.arrayidx64.sroa_idx, align 4
  %.compoundliteral65.sroa.5.0.arrayidx64.sroa_idx = getelementptr inbounds i8, ptr %arrayidx64, i32 16
  %43 = ptrtoint ptr %.compoundliteral65.sroa.5.0.arrayidx64.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv71, ptr %.compoundliteral65.sroa.5.0.arrayidx64.sroa_idx, align 8
  %.compoundliteral65.sroa.6.0.arrayidx64.sroa_idx = getelementptr inbounds i8, ptr %arrayidx64, i32 17
  %44 = call ptr @memset(ptr %.compoundliteral65.sroa.6.0.arrayidx64.sroa_idx, i32 0, i32 7)
  %regshift = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 6
  %45 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %regshift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool79.not = icmp eq i32 %46, 0
  br i1 %tobool79.not, label %if.end62.if.end98_crit_edge, label %if.then80

if.end62.if.end98_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then80:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %inc81 = add nuw nsw i32 %pidx.1, 2
  %conv90 = trunc i32 %46 to i8
  %arrayidx82 = getelementptr [6 x %struct.property_entry], ptr %pr, i32 0, i32 %inc63
  %47 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.4, ptr %arrayidx82, align 8
  %.compoundliteral83.sroa.2.0.arrayidx82.sroa_idx = getelementptr inbounds i8, ptr %arrayidx82, i32 4
  %48 = ptrtoint ptr %.compoundliteral83.sroa.2.0.arrayidx82.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %.compoundliteral83.sroa.2.0.arrayidx82.sroa_idx, align 4
  %.compoundliteral83.sroa.3.0.arrayidx82.sroa_idx = getelementptr inbounds i8, ptr %arrayidx82, i32 8
  %49 = ptrtoint ptr %.compoundliteral83.sroa.3.0.arrayidx82.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %.compoundliteral83.sroa.3.0.arrayidx82.sroa_idx, align 8
  %.compoundliteral83.sroa.4294.0.arrayidx82.sroa_idx = getelementptr inbounds i8, ptr %arrayidx82, i32 12
  %50 = ptrtoint ptr %.compoundliteral83.sroa.4294.0.arrayidx82.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %.compoundliteral83.sroa.4294.0.arrayidx82.sroa_idx, align 4
  %.compoundliteral83.sroa.5.0.arrayidx82.sroa_idx = getelementptr inbounds i8, ptr %arrayidx82, i32 16
  %51 = ptrtoint ptr %.compoundliteral83.sroa.5.0.arrayidx82.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv90, ptr %.compoundliteral83.sroa.5.0.arrayidx82.sroa_idx, align 8
  %.compoundliteral83.sroa.6.0.arrayidx82.sroa_idx = getelementptr inbounds i8, ptr %arrayidx82, i32 17
  %52 = call ptr @memset(ptr %.compoundliteral83.sroa.6.0.arrayidx82.sroa_idx, i32 0, i32 7)
  br label %if.end98

if.end98:                                         ; preds = %if.then80, %if.end62.if.end98_crit_edge
  %pidx.2 = phi i32 [ %inc81, %if.then80 ], [ %inc63, %if.end62.if.end98_crit_edge ]
  %regsize107 = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 5
  %53 = ptrtoint ptr %regsize107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %regsize107, align 4
  %conv108 = trunc i32 %54 to i8
  %arrayidx100 = getelementptr [6 x %struct.property_entry], ptr %pr, i32 0, i32 %pidx.2
  %55 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.5, ptr %arrayidx100, align 8
  %.compoundliteral101.sroa.2.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 4
  %56 = ptrtoint ptr %.compoundliteral101.sroa.2.0.arrayidx100.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %.compoundliteral101.sroa.2.0.arrayidx100.sroa_idx, align 4
  %.compoundliteral101.sroa.3.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 8
  %57 = ptrtoint ptr %.compoundliteral101.sroa.3.0.arrayidx100.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %.compoundliteral101.sroa.3.0.arrayidx100.sroa_idx, align 8
  %.compoundliteral101.sroa.4293.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 12
  %58 = ptrtoint ptr %.compoundliteral101.sroa.4293.0.arrayidx100.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %.compoundliteral101.sroa.4293.0.arrayidx100.sroa_idx, align 4
  %.compoundliteral101.sroa.5.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 16
  %59 = ptrtoint ptr %.compoundliteral101.sroa.5.0.arrayidx100.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv108, ptr %.compoundliteral101.sroa.5.0.arrayidx100.sroa_idx, align 8
  %.compoundliteral101.sroa.6.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 17
  %60 = call ptr @memset(ptr %.compoundliteral101.sroa.6.0.arrayidx100.sroa_idx, i32 0, i32 7)
  %call = call ptr @platform_device_alloc(ptr noundef %name, i32 noundef %inst) #4
  %tobool116.not = icmp eq ptr %call, null
  br i1 %tobool116.not, label %do.end, label %if.end119

do.end:                                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %inst) #7
  br label %cleanup

if.end119:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %cmp120 = icmp eq i32 %size.1, 0
  br i1 %cmp120, label %if.end119.add_properties_crit_edge, label %if.end123

if.end119.add_properties_crit_edge:               ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %add_properties

if.end123:                                        ; preds = %if.end119
  %space = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 2
  %61 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp124 = icmp eq i32 %62, 0
  %. = select i1 %cmp124, i32 256, i32 512
  %addr129 = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 3
  %63 = ptrtoint ptr %addr129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr129, align 4
  %65 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %r, align 4
  %66 = ptrtoint ptr %regsize107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %regsize107, align 4
  %add = add i32 %67, -1
  %sub = add i32 %add, %64
  %end = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %68 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub, ptr %end, align 4
  %name136 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 2
  %69 = ptrtoint ptr %name136 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.9, ptr %name136, align 4
  %flags138 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 3
  %70 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %., ptr %flags138, align 4
  %regspacing144 = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 4
  %71 = ptrtoint ptr %regspacing144 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %regspacing144, align 4
  %add145 = add i32 %72, %64
  %arrayidx146 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add145, ptr %arrayidx146, align 4
  %sub152 = add i32 %add, %add145
  %end154 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %end154 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub152, ptr %end154, align 4
  %name156 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %name156 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.10, ptr %name156, align 4
  %flags158 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %flags158 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %., ptr %flags158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size.1)
  %cmp161 = icmp ugt i32 %size.1, 2
  br i1 %cmp161, label %if.then163, label %if.end123.if.end182_crit_edge

if.end123.if.end182_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then163:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx146, align 4
  %79 = ptrtoint ptr %regspacing144 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %regspacing144, align 4
  %add167 = add i32 %80, %78
  %arrayidx168 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add167, ptr %arrayidx168, align 4
  %sub174 = add i32 %add, %add167
  %end176 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %end176 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub174, ptr %end176, align 4
  %name178 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 2, i32 2
  %83 = ptrtoint ptr %name178 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.11, ptr %name178, align 4
  %flags180 = getelementptr inbounds [4 x %struct.resource], ptr %r, i32 0, i32 2, i32 3
  %84 = ptrtoint ptr %flags180 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %., ptr %flags180, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then163, %if.end123.if.end182_crit_edge
  %num_r.1 = phi i32 [ 3, %if.then163 ], [ 2, %if.end123.if.end182_crit_edge ]
  %irq = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 7
  %85 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool183.not = icmp eq i32 %86, 0
  br i1 %tobool183.not, label %if.end182.if.end196_crit_edge, label %if.then184

if.end182.if.end196_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end196

if.then184:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx186 = getelementptr [4 x %struct.resource], ptr %r, i32 0, i32 %num_r.1
  %87 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx186, align 4
  %end190 = getelementptr [4 x %struct.resource], ptr %r, i32 0, i32 %num_r.1, i32 1
  %88 = ptrtoint ptr %end190 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %end190, align 4
  %name192 = getelementptr [4 x %struct.resource], ptr %r, i32 0, i32 %num_r.1, i32 2
  %89 = ptrtoint ptr %name192 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.12, ptr %name192, align 4
  %flags194 = getelementptr [4 x %struct.resource], ptr %r, i32 0, i32 %num_r.1, i32 3
  %90 = ptrtoint ptr %flags194 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1024, ptr %flags194, align 4
  %inc195 = add nuw nsw i32 %num_r.1, 1
  br label %if.end196

if.end196:                                        ; preds = %if.then184, %if.end182.if.end196_crit_edge
  %num_r.2 = phi i32 [ %inc195, %if.then184 ], [ %num_r.1, %if.end182.if.end196_crit_edge ]
  %call198 = call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef nonnull %r, i32 noundef %num_r.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end196.add_properties_crit_edge, label %do.end203

if.end196.add_properties_crit_edge:               ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #6
  br label %add_properties

do.end203:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call198) #7
  br label %err

add_properties:                                   ; preds = %if.end196.add_properties_crit_edge, %if.end119.add_properties_crit_edge
  %dev205 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %call207 = call i32 @device_create_managed_software_node(ptr noundef %dev205, ptr noundef nonnull %pr, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end214, label %do.end212

do.end212:                                        ; preds = %add_properties
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev205, ptr noundef nonnull @.str.19, i32 noundef %call207) #7
  br label %err

if.end214:                                        ; preds = %add_properties
  %call215 = call i32 @platform_device_add(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end214.cleanup_crit_edge, label %do.end220

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end220:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev205, ptr noundef nonnull @.str.22, i32 noundef %call215) #7
  br label %err

err:                                              ; preds = %do.end220, %do.end212, %do.end203
  call void @platform_device_put(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end214.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %err ], [ null, %do.end ], [ %call, %if.end214.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %pr) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %r) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 35, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 37, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 41, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 42, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 44, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 45, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 50, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ipmi_platform_add._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ipmi_platform_add._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 71, i32 14}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 77, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 85, i32 15}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 93, i32 19}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 100, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ipmi_platform_add._entry.13, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @ipmi_platform_add._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 107, i32 3}
!34 = !{ptr @ipmi_platform_add._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipmi_platform_add._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 114, i32 3}
!38 = !{ptr @ipmi_platform_add._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ipmi_platform_add._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_ipmi_platform_add, !41, !"__ksymtab_ipmi_platform_add", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_plat_data.c", i32 124, i32 1}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
