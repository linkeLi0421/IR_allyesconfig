; ModuleID = '/llk/IR_all_yes/sound/pci/hda/hda_bind.c_pt.bc'
source_filename = "../sound/pci/hda/hda_bind.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_hda_codec_set_name\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_codec_set_name\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_codec_set_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_codec_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_codec_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_codec_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__hda_codec_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___hda_codec_driver_register\09\09\09\09"
module asm "\09.long\09__crc___hda_codec_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hda_codec_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__hda_codec_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___hda_codec_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hda_codec_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_hda_codec_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_hda_codec_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hda_codec_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hda_codec_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hda_codec_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_codec_configure\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_codec_configure\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_codec_configure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_codec_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_codec_configure\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_codec_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hdac_ext_bus_ops = type { ptr, ptr }
%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_snd_hda_codec_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_codec_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_codec_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_codec_set_name to i32), ptr @__kstrtab_snd_hda_codec_set_name, ptr @__kstrtabns_snd_hda_codec_set_name }, section "___ksymtab_gpl+snd_hda_codec_set_name", align 4
@snd_hda_bus_type = external dso_local global %struct.bus_type, align 4
@hda_codec_driver_pm = external dso_local constant %struct.dev_pm_ops, align 4
@__kstrtab___hda_codec_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___hda_codec_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___hda_codec_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hda_codec_driver_register to i32), ptr @__kstrtab___hda_codec_driver_register, ptr @__kstrtabns___hda_codec_driver_register }, section "___ksymtab_gpl+__hda_codec_driver_register", align 4
@__kstrtab_hda_codec_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hda_codec_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hda_codec_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hda_codec_driver_unregister to i32), ptr @__kstrtab_hda_codec_driver_unregister, ptr @__kstrtabns_hda_codec_driver_unregister }, section "___ksymtab_gpl+hda_codec_driver_unregister", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"generic\00", [24 x i8] zeroinitializer }, align 32
@snd_hda_codec_configure.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_hda_codec\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_hda_codec_configure\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/hda/hda_bind.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to bind the codec\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_snd_hda_codec_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_codec_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_codec_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_codec_configure to i32), ptr @__kstrtab_snd_hda_codec_configure, ptr @__kstrtabns_snd_hda_codec_configure }, section "___ksymtab_gpl+snd_hda_codec_configure", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/sound/core.h\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 78, i32 37 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 311, i32 6 }
@___asan_gen_.23 = private constant [28 x i8] c"../sound/pci/hda/hda_bind.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 327, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [24 x i8] c"../include/sound/core.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 190, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___hda_codec_driver_register, ptr @__ksymtab_hda_codec_driver_unregister, ptr @__ksymtab_snd_hda_codec_configure, ptr @__ksymtab_snd_hda_codec_set_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_codec_set_name(ptr noundef %codec, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @snd_hdac_device_set_chip_name(ptr noundef %codec, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %card = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mixername to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mixername, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end2.if.then6_crit_edge, label %lor.lhs.false

if.end2.if.then6_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end2
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %mixer_assigned = getelementptr inbounds %struct.hda_bus, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %mixer_assigned to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mixer_assigned, align 4
  %addr = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 3
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not = icmp ult i32 %7, %9
  br i1 %cmp5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end2.if.then6_crit_edge
  %vendor_name = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 14
  %10 = ptrtoint ptr %vendor_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vendor_name, align 4
  %chip_name = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 15
  %12 = ptrtoint ptr %chip_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_name, align 8
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %mixername, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %11, ptr noundef %13)
  %addr14 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 3
  %14 = ptrtoint ptr %addr14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr14, align 8
  %bus15 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %16 = ptrtoint ptr %bus15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus15, align 8
  %mixer_assigned16 = getelementptr inbounds %struct.hda_bus, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %mixer_assigned16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %mixer_assigned16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_device_set_chip_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hda_codec_driver_register(ptr noundef %drv, ptr noundef %name, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %drv, align 4
  %owner4 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 2
  %1 = ptrtoint ptr %owner4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %owner, ptr %owner4, align 4
  %bus = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @snd_hda_bus_type, ptr %bus, align 4
  %probe = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 8
  %3 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hda_codec_driver_probe, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 10
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hda_codec_driver_remove, ptr %remove, align 4
  %shutdown = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 11
  %5 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hda_codec_driver_shutdown, ptr %shutdown, align 4
  %pm = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 16
  %6 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hda_codec_driver_pm, ptr %pm, align 4
  %type = getelementptr inbounds %struct.hdac_driver, ptr %drv, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %match = getelementptr inbounds %struct.hdac_driver, ptr %drv, i32 0, i32 3
  %8 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hda_codec_match, ptr %match, align 4
  %unsol_event = getelementptr inbounds %struct.hdac_driver, ptr %drv, i32 0, i32 4
  %9 = ptrtoint ptr %unsol_event to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hda_codec_unsol_event, ptr %unsol_event, align 4
  %call = tail call i32 @driver_register(ptr noundef %drv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_codec_driver_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %owner1 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %owner1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner1, align 4
  %bus = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %ext_ops = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ext_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end36, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !29

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 95, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end30:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %9(ptr noundef %dev) #7
  br label %cleanup

if.end36:                                         ; preds = %entry
  %preset = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %preset, align 8
  %tobool38.not = icmp eq ptr %11, null
  br i1 %tobool38.not, label %do.end56, label %if.end72, !prof !29

do.end56:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end72:                                         ; preds = %if.end36
  %name = getelementptr inbounds %struct.hda_device_id, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end72.if.end76_crit_edge, label %if.end.i

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.end.i:                                         ; preds = %if.end72
  %call.i = tail call i32 @snd_hdac_device_set_chip_name(ptr noundef %dev, ptr noundef nonnull %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.error_crit_edge, label %if.end2.i

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end2.i:                                        ; preds = %if.end.i
  %card.i = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %mixername.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mixername.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i = icmp eq i8 %17, 0
  br i1 %tobool3.not.i, label %if.end2.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end2.i.if.then6.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 8
  %mixer_assigned.i = getelementptr inbounds %struct.hda_bus, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %mixer_assigned.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mixer_assigned.i, align 4
  %addr.i = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp5.not.i = icmp ult i32 %21, %23
  br i1 %cmp5.not.i, label %lor.lhs.false.i.if.end76_crit_edge, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

lor.lhs.false.i.if.end76_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end2.i.if.then6.i_crit_edge
  %vendor_name.i = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 14
  %24 = ptrtoint ptr %vendor_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vendor_name.i, align 4
  %chip_name.i = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 15
  %26 = ptrtoint ptr %chip_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip_name.i, align 8
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %mixername.i, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %25, ptr noundef %27) #7
  %addr14.i = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 3
  %28 = ptrtoint ptr %addr14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr14.i, align 8
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 8
  %mixer_assigned16.i = getelementptr inbounds %struct.hda_bus, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %mixer_assigned16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %mixer_assigned16.i, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then6.i, %lor.lhs.false.i.if.end76_crit_edge, %if.end72.if.end76_crit_edge
  %call78 = tail call i32 @snd_hdac_regmap_init(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end76.error_crit_edge, label %if.end81

if.end76.error_crit_edge:                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end81:                                         ; preds = %if.end76
  %call82 = tail call zeroext i1 @try_module_get(ptr noundef %3) #7
  br i1 %call82, label %if.end84, label %if.end81.error_crit_edge

if.end81.error_crit_edge:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end84:                                         ; preds = %if.end81
  %33 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %preset, align 8
  %driver_data = getelementptr inbounds %struct.hda_device_id, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool86.not = icmp eq i32 %36, 0
  br i1 %tobool86.not, label %if.end84.if.end92_crit_edge, label %if.then87

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then87:                                        ; preds = %if.end84
  %37 = inttoptr i32 %36 to ptr
  %call88 = tail call i32 %37(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then87.error_module_put_crit_edge, label %if.then87.if.end92_crit_edge

if.then87.if.end92_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then87.error_module_put_crit_edge:             ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_module_put

if.end92:                                         ; preds = %if.then87.if.end92_crit_edge, %if.end84.if.end92_crit_edge
  %call93 = tail call i32 @snd_hda_codec_build_pcms(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end92.error_module_crit_edge, label %if.end96

if.end92.error_module_crit_edge:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_module

if.end96:                                         ; preds = %if.end92
  %call97 = tail call i32 @snd_hda_codec_build_controls(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.end96.error_module_crit_edge, label %if.end100

if.end96.error_module_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_module

if.end100:                                        ; preds = %if.end96
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 8
  %bus_probing = getelementptr inbounds %struct.hda_bus, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %bus_probing to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %bus_probing, align 4
  %41 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool102.not = icmp eq i8 %41, 0
  br i1 %tobool102.not, label %land.lhs.true, label %if.end100.if.end110_crit_edge

if.end100.if.end110_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end100
  %card = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 2
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 4
  %registered = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 30
  %44 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %registered, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool103.not = icmp eq i8 %45, 0
  br i1 %tobool103.not, label %land.lhs.true.if.end110_crit_edge, label %if.then104

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then104:                                       ; preds = %land.lhs.true
  %call106 = tail call i32 @snd_card_register(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then104.error_module_crit_edge, label %if.end109

if.then104.error_module_crit_edge:                ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_module

if.end109:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_hda_codec_register(ptr noundef %dev) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %land.lhs.true.if.end110_crit_edge, %if.end100.if.end110_crit_edge
  %lazy_cache = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 26
  %46 = ptrtoint ptr %lazy_cache to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load112 = load i8, ptr %lazy_cache, align 8
  %bf.set = or i8 %bf.load112, -128
  store i8 %bf.set, ptr %lazy_cache, align 8
  br label %cleanup

error_module:                                     ; preds = %if.then104.error_module_crit_edge, %if.end96.error_module_crit_edge, %if.end92.error_module_crit_edge
  %err.0 = phi i32 [ %call93, %if.end92.error_module_crit_edge ], [ %call97, %if.end96.error_module_crit_edge ], [ %call106, %if.then104.error_module_crit_edge ]
  %free = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 7, i32 3
  %47 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free, align 4
  %tobool114.not = icmp eq ptr %48, null
  br i1 %tobool114.not, label %error_module.error_module_put_crit_edge, label %if.then115

error_module.error_module_put_crit_edge:          ; preds = %error_module
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_module_put

if.then115:                                       ; preds = %error_module
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %48(ptr noundef %dev) #7
  br label %error_module_put

error_module_put:                                 ; preds = %if.then115, %error_module.error_module_put_crit_edge, %if.then87.error_module_put_crit_edge
  %err.1 = phi i32 [ %call88, %if.then87.error_module_put_crit_edge ], [ %err.0, %if.then115 ], [ %err.0, %error_module.error_module_put_crit_edge ]
  tail call void @module_put(ptr noundef %3) #7
  br label %error

error:                                            ; preds = %error_module_put, %if.end81.error_crit_edge, %if.end76.error_crit_edge, %if.end.i.error_crit_edge
  %err.2 = phi i32 [ %call78, %if.end76.error_crit_edge ], [ %err.1, %error_module_put ], [ -22, %if.end81.error_crit_edge ], [ %call.i, %if.end.i.error_crit_edge ]
  tail call void @snd_hda_codec_cleanup_for_unbind(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end110, %do.end56, %if.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end30 ], [ -22, %do.end56 ], [ %err.2, %error ], [ 0, %if.end110 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_codec_driver_remove(ptr noundef %dev) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %ext_ops = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ext_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end35, label %if.then

if.then:                                          ; preds = %entry
  %hdev_detach = getelementptr inbounds %struct.hdac_ext_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hdev_detach to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev_detach, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end, label %if.end29, !prof !29

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 155, i32 noundef 9, ptr noundef null) #7
  br label %cleanup64

if.end29:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef %dev) #7
  br label %cleanup64

if.end35:                                         ; preds = %entry
  %pcm_ref = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pcm_ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %pcm_ref, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pcm_ref, ptr %pcm_ref, i32 1, ptr elementtype(i32) %pcm_ref) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end35.refcount_dec.exit_crit_edge, !prof !29

if.end35.refcount_dec.exit_crit_edge:             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %pcm_ref, i32 noundef 4) #7
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %if.end35.refcount_dec.exit_crit_edge
  tail call void @snd_hda_codec_disconnect_pcms(ptr noundef %dev) #7
  tail call void @snd_hda_jack_tbl_disconnect(ptr noundef %dev) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 163) #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pcm_ref, i32 noundef 4) #7
  %7 = ptrtoint ptr %pcm_ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %pcm_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool45.not = icmp eq i32 %8, 0
  br i1 %tobool45.not, label %refcount_dec.exit.do.end57_crit_edge, label %if.end47

refcount_dec.exit.do.end57_crit_edge:             ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

if.end47:                                         ; preds = %refcount_dec.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %remove_sleep = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 10
  %call4887 = call i32 @prepare_to_wait_event(ptr noundef %remove_sleep, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i.i8388 = call zeroext i1 @__kasan_check_read(ptr noundef %pcm_ref, i32 noundef 4) #7
  %10 = ptrtoint ptr %pcm_ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %pcm_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool51.not89 = icmp eq i32 %11, 0
  br i1 %tobool51.not89, label %if.end47.for.end_crit_edge, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  br label %cleanup

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end47.cleanup_crit_edge
  call void @schedule() #7
  %call48 = call i32 @prepare_to_wait_event(ptr noundef %remove_sleep, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i.i83 = call zeroext i1 @__kasan_check_read(ptr noundef %pcm_ref, i32 noundef 4) #7
  %12 = ptrtoint ptr %pcm_ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %pcm_ref, align 4
  %tobool51.not = icmp eq i32 %13, 0
  br i1 %tobool51.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end47.for.end_crit_edge
  call void @finish_wait(ptr noundef %remove_sleep, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %do.end57

do.end57:                                         ; preds = %for.end, %refcount_dec.exit.do.end57_crit_edge
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 8
  %card = getelementptr inbounds %struct.hda_bus, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 190) #7
  %power_ref.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 39
  %call.i.i.i84 = call zeroext i1 @__kasan_check_read(ptr noundef %power_ref.i, i32 noundef 4) #7
  %18 = ptrtoint ptr %power_ref.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %power_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.end57.snd_power_sync_ref.exit_crit_edge, label %if.end.i

do.end57.snd_power_sync_ref.exit_crit_edge:       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_power_sync_ref.exit

if.end.i:                                         ; preds = %do.end57
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %20 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %power_ref_sleep.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 41
  %call418.i = call i32 @prepare_to_wait_event(ptr noundef %power_ref_sleep.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %call.i.i1519.i = call zeroext i1 @__kasan_check_read(ptr noundef %power_ref.i, i32 noundef 4) #7
  %21 = ptrtoint ptr %power_ref.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %power_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not20.i = icmp eq i32 %22, 0
  br i1 %tobool7.not20.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #7
  %call4.i = call i32 @prepare_to_wait_event(ptr noundef %power_ref_sleep.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %call.i.i15.i = call zeroext i1 @__kasan_check_read(ptr noundef %power_ref.i, i32 noundef 4) #7
  %23 = ptrtoint ptr %power_ref.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %power_ref.i, align 4
  %tobool7.not.i = icmp eq i32 %24, 0
  br i1 %tobool7.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %power_ref_sleep.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %snd_power_sync_ref.exit

snd_power_sync_ref.exit:                          ; preds = %for.end.i, %do.end57.snd_power_sync_ref.exit_crit_edge
  %free = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free, align 4
  %tobool59.not = icmp eq ptr %26, null
  br i1 %tobool59.not, label %snd_power_sync_ref.exit.if.end63_crit_edge, label %if.then60

snd_power_sync_ref.exit.if.end63_crit_edge:       ; preds = %snd_power_sync_ref.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then60:                                        ; preds = %snd_power_sync_ref.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %26(ptr noundef %dev) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %snd_power_sync_ref.exit.if.end63_crit_edge
  call void @snd_hda_codec_cleanup_for_unbind(ptr noundef %dev) #7
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %27 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner, align 4
  call void @module_put(ptr noundef %30) #7
  br label %cleanup64

cleanup64:                                        ; preds = %if.end63, %if.end29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end29 ], [ 0, %if.end63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hda_codec_driver_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_hda_codec_shutdown(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_codec_match(ptr nocapture noundef %dev, ptr nocapture noundef readonly %drv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %probe_id = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %probe_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %probe_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor_id, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision_id, align 8
  %id6 = getelementptr inbounds %struct.hda_codec_driver, ptr %drv, i32 0, i32 1
  %6 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id6, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not30 = icmp eq i32 %9, 0
  br i1 %tobool8.not30, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %10 = phi i32 [ %15, %for.inc.for.body_crit_edge ], [ %9, %cond.end.for.body_crit_edge ]
  %list.031 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %7, %cond.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cond)
  %cmp = icmp eq i32 %10, %cond
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %rev_id10 = getelementptr inbounds %struct.hda_device_id, ptr %list.031, i32 0, i32 1
  %11 = ptrtoint ptr %rev_id10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rev_id10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp13 = icmp eq i32 %12, %5
  %or.cond = select i1 %tobool11.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %preset = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %preset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list.031, ptr %preset, align 8
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.hda_device_id, ptr %list.031, i32 1
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr, align 4
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hda_codec_unsol_event(ptr noundef %dev, i32 noundef %ev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %shutdown = getelementptr inbounds %struct.hda_bus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %shutdown, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %unsol_event = getelementptr inbounds %struct.hda_codec, ptr %dev, i32 0, i32 7, i32 4
  %6 = ptrtoint ptr %unsol_event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unsol_event, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %dev, i32 noundef %ev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_codec_driver_unregister(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef %drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_codec_configure(ptr noundef %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %configured = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %0 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %modelname = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 6
  %1 = ptrtoint ptr %modelname to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %modelname, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull dereferenceable(8) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end6

if.end6:                                          ; preds = %if.else, %land.lhs.true.if.end6_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 513, %land.lhs.true.if.end6_crit_edge ]
  %probe_id5 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 4
  %3 = ptrtoint ptr %probe_id5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %probe_id5, align 4
  %state_in_sysfs.i = getelementptr inbounds %struct.kobject, ptr %codec, i32 0, i32 8
  %4 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.end6
  %call11 = tail call i32 @snd_hdac_device_register(ptr noundef %codec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then9.cleanup_crit_edge, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %preset = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 5
  %6 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %preset, align 8
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.then20, label %if.end14.if.end33_crit_edge

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then20:                                        ; preds = %if.end14
  %probe_id.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 4
  %8 = ptrtoint ptr %probe_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %probe_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.do.body_crit_edge

if.then20.do.body_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %if.then20
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %10 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %start_nid.i.i, align 4
  %end_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 19
  %12 = ptrtoint ptr %end_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %end_nid.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp20.i.i = icmp ult i16 %11, %13
  br i1 %cmp20.i.i, label %for.body.lr.ph.i.i, label %if.end.i.if.then1.i_crit_edge

if.end.i.if.then1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %conv1.i.i.i = zext i16 %11 to i32
  %num_nodes.i.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %14 = zext i16 %13 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.critedge.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ %conv1.i.i.i, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ]
  %cmp22.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %cmp.i.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i.i, i32 %conv1.i.i.i)
  %cmp.i.i.i = icmp ult i32 %indvars.iv.i.i, %conv1.i.i.i
  br i1 %cmp.i.i.i, label %for.body.i.i.for.inc.critedge.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.for.inc.critedge.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i
  %15 = ptrtoint ptr %num_nodes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_nodes.i.i.i, align 8
  %add.i.i.i = add i32 %16, %conv1.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %indvars.iv.i.i)
  %cmp8.not.i.i.i = icmp ugt i32 %add.i.i.i, %indvars.iv.i.i
  br i1 %cmp8.not.i.i.i, label %get_wcaps.exit.i.i, label %lor.lhs.false.i.i.i.for.inc.critedge.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.i

get_wcaps.exit.i.i:                               ; preds = %lor.lhs.false.i.i.i
  %17 = ptrtoint ptr %wcaps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wcaps.i.i.i, align 4
  %sub.i.i.i = sub nuw nsw i32 %indvars.iv.i.i, %conv1.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %18, i32 %sub.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i, label %get_wcaps.exit.i.i.for.inc.critedge.i.i_crit_edge, label %21

get_wcaps.exit.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %get_wcaps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.i

21:                                               ; preds = %get_wcaps.exit.i.i
  %and.i.i.i = lshr i32 %20, 20
  %shr.i.i.i = and i32 %and.i.i.i, 15
  %22 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %.for.inc.critedge.i.i_crit_edge [
    i32 1, label %.is_likely_hdmi_codec.exit.i_crit_edge
    i32 0, label %sw.bb5.i.i
  ]

.is_likely_hdmi_codec.exit.i_crit_edge:           ; preds = %21
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_likely_hdmi_codec.exit.i

.for.inc.critedge.i.i_crit_edge:                  ; preds = %21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.i

sw.bb5.i.i:                                       ; preds = %21
  %and.i.i = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb5.i.i.is_likely_hdmi_codec.exit.i_crit_edge, label %sw.bb5.i.i.for.inc.critedge.i.i_crit_edge

sw.bb5.i.i.for.inc.critedge.i.i_crit_edge:        ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge.i.i

sw.bb5.i.i.is_likely_hdmi_codec.exit.i_crit_edge: ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_likely_hdmi_codec.exit.i

for.inc.critedge.i.i:                             ; preds = %sw.bb5.i.i.for.inc.critedge.i.i_crit_edge, %.for.inc.critedge.i.i_crit_edge, %get_wcaps.exit.i.i.for.inc.critedge.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.critedge.i.i_crit_edge, %for.body.i.i.for.inc.critedge.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i.i, i32 %14)
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %14
  %lftr.wideiv.i.i = trunc i32 %indvars.iv.next.i.i to i16
  %exitcond.not.i.i = icmp eq i16 %13, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.critedge.i.i.is_likely_hdmi_codec.exit.i_crit_edge, label %for.inc.critedge.i.i.for.body.i.i_crit_edge

for.inc.critedge.i.i.for.body.i.i_crit_edge:      ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.critedge.i.i.is_likely_hdmi_codec.exit.i_crit_edge: ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_likely_hdmi_codec.exit.i

is_likely_hdmi_codec.exit.i:                      ; preds = %for.inc.critedge.i.i.is_likely_hdmi_codec.exit.i_crit_edge, %sw.bb5.i.i.is_likely_hdmi_codec.exit.i_crit_edge, %.is_likely_hdmi_codec.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp.i.i, %for.inc.critedge.i.i.is_likely_hdmi_codec.exit.i_crit_edge ], [ %cmp22.i.i, %.is_likely_hdmi_codec.exit.i_crit_edge ], [ %cmp22.i.i, %sw.bb5.i.i.is_likely_hdmi_codec.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %is_likely_hdmi_codec.exit.i.if.end6.i_crit_edge, label %is_likely_hdmi_codec.exit.i.if.then1.i_crit_edge

is_likely_hdmi_codec.exit.i.if.then1.i_crit_edge: ; preds = %is_likely_hdmi_codec.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

is_likely_hdmi_codec.exit.i.if.end6.i_crit_edge:  ; preds = %is_likely_hdmi_codec.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then1.i:                                       ; preds = %is_likely_hdmi_codec.exit.i.if.then1.i_crit_edge, %if.end.i.if.then1.i_crit_edge
  %23 = ptrtoint ptr %probe_id.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 257, ptr %probe_id.i, align 4
  %call.i.i = tail call i32 @device_attach(ptr noundef %codec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i18.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i18.i, label %codec_probed.exit.i, label %if.then1.i.if.end6.i_crit_edge

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

codec_probed.exit.i:                              ; preds = %if.then1.i
  %24 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %preset, align 8
  %tobool.i.not.i = icmp eq ptr %25, null
  br i1 %tobool.i.not.i, label %codec_probed.exit.i.if.end6.i_crit_edge, label %codec_probed.exit.i.if.end33_crit_edge

codec_probed.exit.i.if.end33_crit_edge:           ; preds = %codec_probed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

codec_probed.exit.i.if.end6.i_crit_edge:          ; preds = %codec_probed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %codec_probed.exit.i.if.end6.i_crit_edge, %if.then1.i.if.end6.i_crit_edge, %is_likely_hdmi_codec.exit.i.if.end6.i_crit_edge
  %26 = ptrtoint ptr %probe_id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 513, ptr %probe_id.i, align 4
  %call.i19.i = tail call i32 @device_attach(ptr noundef %codec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp.i20.i = icmp sgt i32 %call.i19.i, 0
  br i1 %cmp.i20.i, label %codec_probed.exit24.i, label %if.end6.i.do.body_crit_edge

if.end6.i.do.body_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

codec_probed.exit24.i:                            ; preds = %if.end6.i
  %27 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %preset, align 8
  %tobool.i22.not.i = icmp eq ptr %28, null
  br i1 %tobool.i22.not.i, label %codec_probed.exit24.i.do.body_crit_edge, label %codec_probed.exit24.i.if.end33_crit_edge

codec_probed.exit24.i.if.end33_crit_edge:         ; preds = %codec_probed.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

codec_probed.exit24.i.do.body_crit_edge:          ; preds = %codec_probed.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %codec_probed.exit24.i.do.body_crit_edge, %if.end6.i.do.body_crit_edge, %if.then20.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_hda_codec_configure.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_hda_codec_configure, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !33

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_hda_codec_configure.__UNIQUE_ID_ddebug239, ptr noundef %codec, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end33:                                         ; preds = %codec_probed.exit24.i.if.end33_crit_edge, %codec_probed.exit.i.if.end33_crit_edge, %if.end14.if.end33_crit_edge
  %29 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load35 = load i32, ptr %configured, align 4
  %bf.set = or i32 %bf.load35, -2147483648
  store i32 %bf.set, ptr %configured, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then28, %do.body, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %if.then9.cleanup_crit_edge ], [ -19, %if.then28 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_build_pcms(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_cleanup_for_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_disconnect_pcms(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_tbl_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/hda_bind.c", i32 78, i32 37}
!2 = !{ptr @__ksymtab_snd_hda_codec_set_name, !3, !"__ksymtab_snd_hda_codec_set_name", i1 false, i1 false}
!3 = !{!"../sound/pci/hda/hda_bind.c", i32 85, i32 1}
!4 = !{ptr @__ksymtab___hda_codec_driver_register, !5, !"__ksymtab___hda_codec_driver_register", i1 false, i1 false}
!5 = !{!"../sound/pci/hda/hda_bind.c", i32 193, i32 1}
!6 = !{ptr @__ksymtab_hda_codec_driver_unregister, !7, !"__ksymtab_hda_codec_driver_unregister", i1 false, i1 false}
!7 = !{!"../sound/pci/hda/hda_bind.c", i32 199, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/hda_bind.c", i32 311, i32 6}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/hda/hda_bind.c", i32 327, i32 4}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_hda_codec_configure.__UNIQUE_ID_ddebug239, !11, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!16 = !{ptr @__ksymtab_snd_hda_codec_configure, !17, !"__ksymtab_snd_hda_codec_configure", i1 false, i1 false}
!17 = !{!"../sound/pci/hda/hda_bind.c", i32 335, i32 1}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/sound/core.h", i32 190, i32 2}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i8 0, i8 2}
!31 = !{i64 2148676247}
!32 = !{i64 2148590687, i64 2148590719, i64 2148590748, i64 2148590782, i64 2148590813, i64 2148590836}
!33 = !{i64 2148207418, i64 2148207423, i64 2148207436, i64 2148207480, i64 2148207514, i64 2148207535}
